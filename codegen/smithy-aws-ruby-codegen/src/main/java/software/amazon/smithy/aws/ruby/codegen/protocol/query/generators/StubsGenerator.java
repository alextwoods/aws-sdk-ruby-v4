/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

package software.amazon.smithy.aws.ruby.codegen.protocol.query.generators;

import java.util.Optional;
import java.util.stream.Stream;
import software.amazon.smithy.model.shapes.BlobShape;
import software.amazon.smithy.model.shapes.DoubleShape;
import software.amazon.smithy.model.shapes.FloatShape;
import software.amazon.smithy.model.shapes.ListShape;
import software.amazon.smithy.model.shapes.MapShape;
import software.amazon.smithy.model.shapes.MemberShape;
import software.amazon.smithy.model.shapes.OperationShape;
import software.amazon.smithy.model.shapes.SetShape;
import software.amazon.smithy.model.shapes.Shape;
import software.amazon.smithy.model.shapes.ShapeVisitor;
import software.amazon.smithy.model.shapes.StructureShape;
import software.amazon.smithy.model.shapes.TimestampShape;
import software.amazon.smithy.model.shapes.UnionShape;
import software.amazon.smithy.model.traits.SparseTrait;
import software.amazon.smithy.model.traits.TimestampFormatTrait;
import software.amazon.smithy.model.traits.XmlAttributeTrait;
import software.amazon.smithy.model.traits.XmlFlattenedTrait;
import software.amazon.smithy.model.traits.XmlNameTrait;
import software.amazon.smithy.model.traits.XmlNamespaceTrait;
import software.amazon.smithy.ruby.codegen.GenerationContext;
import software.amazon.smithy.ruby.codegen.generators.StubsGeneratorBase;
import software.amazon.smithy.ruby.codegen.trait.NoSerializeTrait;

public class StubsGenerator extends StubsGeneratorBase {

    public StubsGenerator(GenerationContext context) {
        super(context);
    }

    private void renderMemberBuilders(Shape s) {
        //remove members w/ NoSerialize
        Stream<MemberShape> serializeMembers =
                s.members().stream().filter(NoSerializeTrait.excludeNoSerializeMembers());

        serializeMembers.forEach((member) -> {
            Shape target = model.expectShape(member.getTarget());
            String symbolName = ":" + symbolProvider.toMemberName(member);
            String inputGetter = "stub[" + symbolName + "]";

            if (member.hasTrait(XmlAttributeTrait.class)) {
                String attributeName = member.getMemberName();
                if (member.hasTrait(XmlNameTrait.class)) {
                    attributeName = member.expectTrait(XmlNameTrait.class).getValue();
                }
                target.accept(new AttributeMemberSerializer(member, inputGetter, true, attributeName));
            } else {
                String nodeName = "'" + member.getMemberName() + "'";
                if (member.hasTrait(XmlNameTrait.class)) {
                    nodeName = "'" + member.expectTrait(XmlNameTrait.class).getValue() + "'";
                }
                target.accept(new MemberSerializer(member, nodeName, inputGetter, true));
            }
        });
    }

    private void writeXmlNamespaceForShape(Shape shape, String dataSetter) {
        XmlNamespaceTrait trait = shape.getTrait(XmlNamespaceTrait.class).get();
        Optional<String> prefix = trait.getPrefix();
        String uri = trait.getUri();
        String xmlns = "xmlns";
        if (prefix.isPresent()) {
            xmlns += ":" + prefix;
        }
        writer.write("$L.attributes['$L'] = '$L'", dataSetter, xmlns, uri);
    }

    private void writeNodeWithOptionalXmlNamespace(Shape shape, Runnable task) {
        if (shape.hasTrait(XmlNamespaceTrait.class)) {
            writer
                    .writeInline("node = ")
                    .call(task)
                    .call(() -> writeXmlNamespaceForShape(shape, "node"))
                    .write("xml << node");
        } else {
            writer
                    .writeInline("xml << ")
                    .call(task);
        }
    }

    @Override
    protected void renderUnionStubMethod(UnionShape shape) {
        writer
                .openBlock("def self.stub(stub = {})")
                .write( "# TODO")
                .closeBlock("end");
    }

    @Override
    protected void renderListStubMethod(ListShape shape) {
        writer
                .openBlock("def self.stub(node_name, stub = [])")
                .write("xml = []")
                .openBlock("stub.each do |element|")
                .call(() -> {
                    Shape memberTarget = model.expectShape(shape.getMember().getTarget());
                    writeNodeWithOptionalXmlNamespace(shape.getMember(), () -> {
                        memberTarget.accept(new MemberSerializer(shape.getMember(), "node_name", "element",
                                !shape.hasTrait(SparseTrait.class)));
                    });
                })
                .closeBlock("end")
                .write("xml")
                .closeBlock("end");
    }

    @Override
    protected void renderSetStubMethod(SetShape shape) {
        writer
                .openBlock("def self.stub(node_name, stub = Set.new)")
                .write("xml = Set.new")
                .openBlock("stub.each do |element|")
                .call(() -> {
                    Shape memberTarget = model.expectShape(shape.getMember().getTarget());
                    writeNodeWithOptionalXmlNamespace(shape.getMember(), () -> {
                        memberTarget.accept(new MemberSerializer(shape.getMember(), "node_name", "element",
                                !shape.hasTrait(SparseTrait.class)));
                    });
                })
                .closeBlock("end")
                .write("xml.to_a")
                .closeBlock("end");
    }

    @Override
    protected void renderMapStubMethod(MapShape shape) {
        writer
                .openBlock("def self.stub(node_name, input = {})")
                .write("nodes = []")
                .openBlock("input.each do |key, value|")
                .call(() -> {
                    writer.write("xml = Hearth::XML::Node.new(node_name)");
                    Shape keyTarget = model.expectShape(shape.getKey().getTarget());
                    String keyName = "key";
                    if (shape.getKey().hasTrait(XmlNameTrait.class)) {
                        keyName = shape.getKey().getTrait(XmlNameTrait.class).get().getValue();
                    }
                    keyTarget.accept(new MemberSerializer(shape.getValue(), "'" + keyName + "'", "key",
                            !shape.hasTrait(SparseTrait.class)));

                    Shape valueTarget = model.expectShape(shape.getValue().getTarget());
                    String valueName = "value";
                    if (shape.getValue().hasTrait(XmlNameTrait.class)) {
                        valueName = shape.getValue().getTrait(XmlNameTrait.class).get().getValue();
                    }
                    valueTarget.accept(new MemberSerializer(shape.getValue(), "'" + valueName + "'", "value",
                            !shape.hasTrait(SparseTrait.class)));

                    writer.write("nodes << xml");
                })
                .closeBlock("end")
                .write("nodes")
                .closeBlock("end");
    }

    @Override
    protected void renderStructureStubMethod(StructureShape shape) {
        writer
                .openBlock("def self.stub(node_name, stub = {})")
                .write("xml = Hearth::XML::Node.new(node_name)")
                .call(() -> {
                    if (shape.hasTrait(XmlNamespaceTrait.class)) {
                        writeXmlNamespaceForShape(shape, "xml");
                    }
                })
                .call(() -> renderMemberBuilders(shape))
                .write("xml")
                .closeBlock("end");
    }

    @Override
    protected void renderOperationStubMethod(OperationShape operation, Shape outputShape) {
        String nodeName = symbolProvider.toSymbol(operation).getName();

        writer
                .openBlock("def self.stub(http_resp, stub:)")
                .write("http_resp.headers['Content-Type'] = 'application/xml'")
                .write("response = Hearth::XML::Node.new('$LResponse')", nodeName)
                .call(() -> {
                    if (context.getService().hasTrait(XmlNamespaceTrait.class)) {
                        writeXmlNamespaceForShape(context.getService(), "response");
                    } else if(outputShape.hasTrait(XmlNamespaceTrait.class)) {
                        writeXmlNamespaceForShape(outputShape, "response");
                    }
                })
                .write("xml = Hearth::XML::Node.new('$LResult')", nodeName)
                .call(() -> renderMemberBuilders(outputShape))
                .write("response << xml")
                .write("http_resp.body = StringIO.new(response.to_str)")
                .closeBlock("end");
    }

    private class MemberSerializer extends ShapeVisitor.Default<Void> {

        private final String inputGetter;
        private final String nodeName;
        private final MemberShape memberShape;
        private final boolean checkRequired;

        MemberSerializer(MemberShape memberShape,
                         String nodeName, String inputGetter, boolean checkRequired) {
            this.inputGetter = inputGetter;
            this.nodeName = nodeName;
            this.memberShape = memberShape;
            this.checkRequired = checkRequired;
        }

        private String checkRequired() {
            if (this.checkRequired) {
                return " unless " + inputGetter + ".nil?";
            } else {
                return "";
            }
        }

        @Override
        protected Void getDefault(Shape shape) {
            writeNodeWithOptionalXmlNamespace(shape, () -> {
                writer.write("Hearth::XML::Node.new($L, $L.to_s)$L",
                        nodeName, inputGetter, checkRequired());
            });

            return null;
        }

        private void rubyFloat(Shape shape) {
            writeNodeWithOptionalXmlNamespace(shape, () -> {
                writer.write("Hearth::XML::Node.new($L, Hearth::NumberHelper.serialize($L).to_s)$L",
                        nodeName, inputGetter, checkRequired());
            });
        }

        @Override
        public Void doubleShape(DoubleShape shape) {
            rubyFloat(shape);
            return null;
        }

        @Override
        public Void floatShape(FloatShape shape) {
            rubyFloat(shape);
            return null;
        }

        @Override
        public Void blobShape(BlobShape shape) {
            writeNodeWithOptionalXmlNamespace(shape, () -> {
                writer.write("Hearth::XML::Node.new($L, Base64::encode64($L).strip)$L",
                        nodeName, inputGetter, checkRequired());
            });

            return null;
        }

        @Override
        public Void timestampShape(TimestampShape shape) {
            TimestampFormatTrait.Format format = null;
            if (memberShape.hasTrait(TimestampFormatTrait.class)) {
                format = memberShape.getTrait(TimestampFormatTrait.class).get().getFormat();
            } else if (shape.hasTrait(TimestampFormatTrait.class)) {
                format = shape.getTrait(TimestampFormatTrait.class).get().getFormat();
            }

            if (format != null) {
                switch (format) {
                    case EPOCH_SECONDS:
                        writeNodeWithOptionalXmlNamespace(shape, () -> {
                            writer.write("Hearth::XML::Node.new($L, Hearth::TimeHelper.to_epoch_seconds($L).to_i.to_s)$L",
                                    nodeName, inputGetter, checkRequired());
                        });
                        break;
                    case HTTP_DATE:
                        writeNodeWithOptionalXmlNamespace(shape, () -> {
                            writer.write("Hearth::XML::Node.new($L, Hearth::TimeHelper.to_http_date($L))$L",
                                    nodeName, inputGetter, checkRequired());
                        });
                        break;
                    case DATE_TIME:
                    default:
                        // the default protocol format is date_time
                        writeNodeWithOptionalXmlNamespace(shape, () -> {
                            writer.write("Hearth::XML::Node.new($L, Hearth::TimeHelper.to_date_time($L))$L",
                                    nodeName, inputGetter, checkRequired());
                        });
                        break;
                }
            } else {
                writeNodeWithOptionalXmlNamespace(shape, () -> {
                    writer.write("Hearth::XML::Node.new($L, Hearth::TimeHelper.to_date_time($L))$L",
                            nodeName, inputGetter, checkRequired());
                });
            }
            return null;
        }

        /**
         * For complex shapes, simply delegate to their builder.
         */
        private void defaultComplexSerializer(Shape shape) {
            // TODO: handle sparse/checkRequired better?
            writer.write("xml << Stubs::$1L.stub($2L, $3L) unless $3L.nil?",
                    symbolProvider.toSymbol(shape).getName(), nodeName,
                    inputGetter);
        }

        @Override
        public Void listShape(ListShape shape) {
            if (memberShape.hasTrait(XmlFlattenedTrait.class) || shape.hasTrait(XmlFlattenedTrait.class)) {
                writer.write("xml << Stubs::$1L.stub($2L, $3L) unless $3L.nil?",
                        symbolProvider.toSymbol(shape).getName(), nodeName, inputGetter);
            } else {
                String memberName = "member";
                if (shape.getMember().hasTrait(XmlNameTrait.class)) {
                    memberName = shape.getMember().getTrait(XmlNameTrait.class).get().getValue();
                }
                String finalMemberName = memberName;
                writeNodeWithOptionalXmlNamespace(shape, () -> {
                    writer.write("Hearth::XML::Node.new($2L, Stubs::$1L.stub('$4L', $3L)) unless $3L.nil?",
                            symbolProvider.toSymbol(shape).getName(), nodeName,
                            inputGetter, finalMemberName);
                });
            }
            return null;
        }

        @Override
        public Void setShape(SetShape shape) {
            if (memberShape.hasTrait(XmlFlattenedTrait.class) || shape.hasTrait(XmlFlattenedTrait.class)) {
                writer.write("xml << Stubs::$1L.stub($2L, $3L) unless $3L.nil?",
                        symbolProvider.toSymbol(shape).getName(), nodeName,
                        inputGetter);
            } else {
                writeNodeWithOptionalXmlNamespace(shape, () -> {
                    writer.write("Hearth::XML::Node.new($2L, Stubs::$1L.stub('member', $3L)) unless $3L.nil?",
                            symbolProvider.toSymbol(shape).getName(), nodeName,
                            inputGetter);
                });
            }

            return null;
        }

        @Override
        public Void mapShape(MapShape shape) {
            if (memberShape.hasTrait(XmlFlattenedTrait.class) || shape.hasTrait(XmlFlattenedTrait.class)) {
                writer.write("xml << Stubs::$1L.stub($2L, $3L) unless $3L.nil?",
                        symbolProvider.toSymbol(shape).getName(), nodeName,
                        inputGetter);
            } else {
                writeNodeWithOptionalXmlNamespace(shape, () -> {
                    writer.write("Hearth::XML::Node.new($2L, Stubs::$1L.stub('entry', $3L)) unless $3L.nil?",
                            symbolProvider.toSymbol(shape).getName(), nodeName,
                            inputGetter);
                });
            }

            return null;
        }

        @Override
        public Void structureShape(StructureShape shape) {
            defaultComplexSerializer(shape);
            return null;
        }

        @Override
        public Void unionShape(UnionShape shape) {
            defaultComplexSerializer(shape);
            return null;
        }
    }

    private class AttributeMemberSerializer extends ShapeVisitor.Default<Void> {

        private final String inputGetter;
        private final MemberShape memberShape;
        private final boolean checkRequired;
        private final String attributeName;

        AttributeMemberSerializer(MemberShape memberShape, String inputGetter, boolean checkRequired, String attributeName) {
            this.inputGetter = inputGetter;
            this.memberShape = memberShape;
            this.checkRequired = checkRequired;
            this.attributeName = attributeName;
        }

        private String checkRequired() {
            if (this.checkRequired) {
                return " unless " + inputGetter + ".nil?";
            } else {
                return "";
            }
        }

        @Override
        protected Void getDefault(Shape shape) {
            writer.write("xml.attributes['$L'] = $L$L", attributeName, inputGetter, checkRequired());
            return null;
        }

        private void rubyFloat() {
            writer.write("xml.attributes['$L'] = Hearth::NumberHelper.serialize($L).to_s$L",
                    attributeName, inputGetter, checkRequired());
        }

        @Override
        public Void doubleShape(DoubleShape shape) {
            rubyFloat();
            return null;
        }

        @Override
        public Void floatShape(FloatShape shape) {
            rubyFloat();
            return null;
        }

        @Override
        public Void timestampShape(TimestampShape shape) {
            // the default protocol format is date_time
            Optional<TimestampFormatTrait> format = memberShape.getTrait(TimestampFormatTrait.class);
            if (format.isPresent()) {
                switch (format.get().getFormat()) {
                    case EPOCH_SECONDS:
                        writer.write(
                                "xml.attributes['$L'] = Hearth::TimeHelper.to_epoch_seconds($L).to_i.to_s$L",
                                attributeName, inputGetter, checkRequired());
                        break;
                    case HTTP_DATE:
                        writer.write(
                                "xml.attributes['$L'] = Hearth::TimeHelper.to_http_date($L)$L",
                                attributeName, inputGetter,checkRequired());
                        break;
                    case DATE_TIME:
                    default:
                        writer.write(
                                "xml.attributes['$L'] = Hearth::TimeHelper.to_date_time($L)$L",
                                attributeName, inputGetter, checkRequired());
                        break;
                }
            } else {
                writer.write(
                        "xml.attributes['$L'] = Hearth::TimeHelper.to_date_time($L)$L",
                        attributeName, inputGetter, checkRequired());
            }
            return null;
        }

        @Override
        public Void listShape(ListShape shape) {
            return null;
        }

        @Override
        public Void setShape(SetShape shape) {
            return null;
        }

        @Override
        public Void mapShape(MapShape shape) {
            return null;
        }

        @Override
        public Void structureShape(StructureShape shape) {
            return null;
        }

        @Override
        public Void unionShape(UnionShape shape) {
            return null;
        }
    }
}


