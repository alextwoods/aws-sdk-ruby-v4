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

package software.amazon.smithy.aws.ruby.codegen.protocol.restxml.generators;

import software.amazon.smithy.codegen.core.CodegenException;
import software.amazon.smithy.model.shapes.*;
import software.amazon.smithy.model.traits.*;
import software.amazon.smithy.model.traits.synthetic.OriginalShapeIdTrait;
import software.amazon.smithy.ruby.codegen.GenerationContext;
import software.amazon.smithy.ruby.codegen.RubyFormatter;
import software.amazon.smithy.ruby.codegen.generators.RestStubsGeneratorBase;
import software.amazon.smithy.ruby.codegen.trait.NoSerializeTrait;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class StubsGenerator extends RestStubsGeneratorBase {

    public StubsGenerator(GenerationContext context) {
        super(context);
    }

    // RestXml ignores queryParam trait in service responses
    // override the base class to not filter query params from the body
    @Override
    protected void renderOperationBodyStubber(OperationShape operation, Shape outputShape) {
        //determine if there are any members of the input that need to be serialized to the body
        boolean serializeBody = outputShape.members().stream().anyMatch((m) -> !m.hasTrait(HttpLabelTrait.class)
                && !m.hasTrait(HttpHeaderTrait.class)
                && !m.hasTrait(HttpPrefixHeadersTrait.class)
                && !m.hasTrait(HttpResponseCodeTrait.class));
        //determine if there is an httpPayload member
        List<MemberShape> httpPayloadMembers = outputShape.members()
                .stream()
                .filter((m) -> m.hasTrait(HttpPayloadTrait.class))
                .collect(Collectors.toList());
        if (httpPayloadMembers.size() == 0) {
            if (serializeBody) {
                renderBodyStub(operation, outputShape);
            }
        } else {
            MemberShape payloadMember = httpPayloadMembers.get(0);
            Shape target = model.expectShape(payloadMember.getTarget());
            renderPayloadBodyStub(operation, outputShape, payloadMember, target);
        }
    }

    @Override
    protected void renderBodyStub(OperationShape operation, Shape outputShape) {
        String nodeName = symbolProvider.toSymbol(outputShape).getName();
        if (outputShape.hasTrait(XmlNameTrait.class)) {
            nodeName = outputShape.getTrait(XmlNameTrait.class).get().getValue();
        } else if (outputShape.hasTrait(OriginalShapeIdTrait.class)) {
            // TODO: Does this need to use symbol provider as well?
            nodeName = outputShape.getTrait(OriginalShapeIdTrait.class).get().getOriginalId().getName();
        }

        writer
                .write("")
                .write("http_resp.headers['Content-Type'] = 'application/xml'")
                .write("xml = Hearth::XML::Node.new('$L')", nodeName)
                .call(() -> {
                    XmlNamespaceTrait xmlnsTrait = context.service()
                            .getTrait(XmlNamespaceTrait.class)
                            .orElse(outputShape.getTrait(XmlNamespaceTrait.class)
                                    .orElse(null));
                    if (xmlnsTrait != null) {
                        writeXmlNamespace(xmlnsTrait, "xml");
                    }
                    renderMemberStubbers(outputShape);
                })
                .write("http_resp.body = StringIO.new(xml.to_str)");
    }

    @Override
    protected void renderPayloadBodyStub(OperationShape operation, Shape outputShape, MemberShape payloadMember,
                                         Shape target) {
        String inputGetter = "stub[:" + symbolProvider.toMemberName(payloadMember) + "]";
        target.accept(new PayloadMemberSerializer(payloadMember, inputGetter));
    }


    @Override
    protected void renderListStubMethod(ListShape shape) {
        writer
                .openBlock("def self.stub(node_name, stub = [])")
                .write("stub ||= []")
                .write("xml = []")
                .openBlock("stub.each do |element|")
                .call(() -> {
                    Shape memberTarget = model.expectShape(shape.getMember().getTarget());
                    memberTarget.accept(new MemberSerializer(shape.getMember(), "node_name", "element",
                            !shape.hasTrait(SparseTrait.class)));
                })
                .closeBlock("end")
                .write("xml")
                .closeBlock("end");
    }

    @Override
    protected void renderSetStubMethod(SetShape shape) {
        writer
                .openBlock("def self.stub(node_name, stub = [])")
                .write("stub ||= []")
                .write("xml = []")
                .openBlock("stub.each do |element|")
                .call(() -> {
                    Shape memberTarget = model.expectShape(shape.getMember().getTarget());
                    memberTarget.accept(new MemberSerializer(shape.getMember(), "node_name", "element",
                            !shape.hasTrait(SparseTrait.class)));
                })
                .closeBlock("end")
                .write("xml")
                .closeBlock("end");

    }

    @Override
    protected void renderMapStubMethod(MapShape shape) {
        writer
                .openBlock("def self.stub(node_name, stub = {})")
                .write("stub ||= {}")
                .write("nodes = []")
                .openBlock("stub.each do |key, value|")
                .call(() -> {
                    writer.write("xml = Hearth::XML::Node.new(node_name)");
                    Shape keyTarget = model.expectShape(shape.getKey().getTarget());
                    String keyName = "key";
                    if (shape.getKey().hasTrait(XmlNameTrait.class)) {
                        keyName = shape.getKey().getTrait(XmlNameTrait.class).get().getValue();
                    }
                    keyTarget.accept(new MemberSerializer(shape.getKey(), "'" + keyName + "'", "key",
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
                .write("stub ||= {}")
                .write("xml = Hearth::XML::Node.new(node_name)")
                .call(() -> renderMemberStubbers(shape))
                .write("xml")
                .closeBlock("end");
    }

    @Override
    protected void renderUnionStubMethod(UnionShape shape) {
        writer
                .openBlock("def self.stub(node_name, stub = {})")
                .write("xml = Hearth::XML::Node.new(node_name)")
                .call(() -> renderUnionMemberStubbers(shape))
                .write("xml")
                .closeBlock("end");

    }

    private void renderUnionMemberStubbers(UnionShape shape) {
        shape.members().forEach((member) -> {
            Shape target = model.expectShape(member.getTarget());

            String symbolName = RubyFormatter.asSymbol(symbolProvider.toMemberName(member));
            String nodeName = "'" + member.getMemberName() + "'";
            if (member.hasTrait(XmlNameTrait.class)) {
                nodeName = "'" + member.expectTrait(XmlNameTrait.class).getValue() + "'";
            }
            String inputGetter = "stub[" + symbolName + "]";
            target.accept(new MemberSerializer(member, nodeName, inputGetter, true));
        });
    }

    private void renderMemberStubbers(Shape s) {
        //remove members w/ http traits or marked NoSerialize
        Stream<MemberShape> serializeMembers = s.members().stream()
                .filter((m) -> !m.hasTrait(HttpLabelTrait.class)
                        && !m.hasTrait((HttpHeaderTrait.class)));
        serializeMembers = serializeMembers.filter(NoSerializeTrait.excludeNoSerializeMembers());

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

    private void writeXmlNamespace(XmlNamespaceTrait xmlnsTrait, String dataSetter) {
        Optional<String> prefix = xmlnsTrait.getPrefix();
        String uri = xmlnsTrait.getUri();
        String xmlns = "xmlns";
        if (prefix.isPresent()) {
            xmlns += ":" + prefix.get();
        }
        writer.write("$L.attributes['$L'] = '$L'", dataSetter, xmlns, uri);
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

        private String xmlnsAttribute() {
            if (memberShape.hasTrait(XmlNamespaceTrait.class)) {
                XmlNamespaceTrait xmlns = memberShape.expectTrait(XmlNamespaceTrait.class);
                return writer.format(
                        ", attributes: { 'xmlns$L' => '$L' }",
                        xmlns.getPrefix().isPresent() ? ":" + xmlns.getPrefix().get() : "",
                        xmlns.getUri()
                );
            } else {
                return "";
            }
        }

        @Override
        protected Void getDefault(Shape shape) {
            writer.write("xml << Hearth::XML::Node.new($L, $L.to_s$L)$L",
                    nodeName, inputGetter, xmlnsAttribute(), checkRequired());
            return null;
        }

        private void rubyFloat() {
            writer.write("xml << Hearth::XML::Node.new($L, Hearth::NumberHelper.serialize($L).to_s$L)$L",
                    nodeName, inputGetter, xmlnsAttribute(), checkRequired());
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
        public Void blobShape(BlobShape shape) {
            writer.write("xml << Hearth::XML::Node.new($L, Base64::encode64($L).strip$L)$L",
                    nodeName, inputGetter, xmlnsAttribute(), checkRequired());
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
                                "xml << Hearth::XML::Node.new($L, Hearth::TimeHelper.to_epoch_seconds($L).to_i.to_s$L)$L",
                                nodeName, inputGetter, xmlnsAttribute(), checkRequired());
                        break;
                    case HTTP_DATE:
                        writer.write(
                                "xml << Hearth::XML::Node.new($L, Hearth::TimeHelper.to_http_date($L)$L)$L",
                                nodeName, inputGetter, xmlnsAttribute(), checkRequired());
                        break;
                    case DATE_TIME:
                    default:
                        writer.write(
                                "xml << Hearth::XML::Node.new($L, Hearth::TimeHelper.to_date_time($L)$L)$L",
                                nodeName, inputGetter, xmlnsAttribute(), checkRequired());
                        break;
                }
            } else {
                writer.write(
                        "xml << Hearth::XML::Node.new($L, Hearth::TimeHelper.to_date_time($L)$L)$L",
                        nodeName, inputGetter, xmlnsAttribute(), checkRequired());
            }
            return null;
        }

        /**
         * For complex shapes, simply delegate to their builder.
         */
        private void defaultComplexSerializer(Shape shape) {
            if (memberShape.hasTrait(XmlNamespaceTrait.class)) {
                XmlNamespaceTrait xmlns = memberShape.expectTrait(XmlNamespaceTrait.class);
                writer
                        .openBlock("unless $L.nil?", inputGetter)
                        .write("nodes = Stubs::$1L.stub($2L, $3L)",
                                symbolProvider.toSymbol(shape).getName(),
                                nodeName,
                                inputGetter)
                        .write("nodes.each { |n| n.attributes['xmlns$1L'] = '$2L' }",
                                xmlns.getPrefix().isPresent() ? ":" + xmlns.getPrefix().get() : "",
                                xmlns.getUri())
                        .write("xml << nodes")
                        .closeBlock("end");
            } else {
                writer.write("xml << Stubs::$1L.stub($2L, $3L) unless $3L.nil?",
                        symbolProvider.toSymbol(shape).getName(), nodeName,
                        inputGetter);
            }
        }

        @Override
        public Void listShape(ListShape shape) {
            if (memberShape.hasTrait(XmlFlattenedTrait.class) || shape.hasTrait(XmlFlattenedTrait.class)) {
                defaultComplexSerializer(shape);
            } else {
                String memberName = "member";
                if (shape.getMember().hasTrait(XmlNameTrait.class)) {
                    memberName = shape.getMember().getTrait(XmlNameTrait.class).get().getValue();
                }
                writer.write("xml << Hearth::XML::Node.new($2L, Stubs::$1L.stub('$4L', $3L)$5L) unless $3L.nil?",
                        symbolProvider.toSymbol(shape).getName(), nodeName,
                        inputGetter, memberName, xmlnsAttribute());
            }
            return null;
        }

        @Override
        public Void setShape(SetShape shape) {
            if (memberShape.hasTrait(XmlFlattenedTrait.class) || shape.hasTrait(XmlFlattenedTrait.class)) {
                defaultComplexSerializer(shape);
            } else {
                writer.write("xml << Hearth::XML::Node.new($2L, Stubs::$1L.stub('member', $3L)$4L) unless $3L.nil?",
                        symbolProvider.toSymbol(shape).getName(), nodeName,
                        inputGetter, xmlnsAttribute());
            }

            return null;
        }

        @Override
        public Void mapShape(MapShape shape) {
            if (memberShape.hasTrait(XmlFlattenedTrait.class) || shape.hasTrait(XmlFlattenedTrait.class)) {
                defaultComplexSerializer(shape);
            } else {
                writer.write("xml << Hearth::XML::Node.new($2L, Stubs::$1L.stub('entry', $3L)$4L) unless $3L.nil?",
                        symbolProvider.toSymbol(shape).getName(), nodeName,
                        inputGetter, xmlnsAttribute());
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
                                attributeName, inputGetter, checkRequired());
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

    private class PayloadMemberSerializer extends ShapeVisitor.Default<Void> {

        private final MemberShape memberShape;
        private final String inputGetter;

        PayloadMemberSerializer(MemberShape memberShape, String inputGetter) {
            this.memberShape = memberShape;
            this.inputGetter = inputGetter;
        }

        @Override
        protected Void getDefault(Shape shape) {
            return null;
        }

        @Override
        public Void stringShape(StringShape shape) {
            writer
                    .write("http_resp.headers['Content-Type'] = 'text/plain'")
                    .write("http_resp.body = StringIO.new($L || '')", inputGetter);
            return null;
        }

        @Override
        public Void blobShape(BlobShape shape) {
            Optional<MediaTypeTrait> mediaTypeTrait = shape.getTrait(MediaTypeTrait.class);
            String mediaType = "application/octet-stream";
            if (mediaTypeTrait.isPresent()) {
                mediaType = mediaTypeTrait.get().getValue();
            }

            writer
                    .write("http_resp.headers['Content-Type'] = '$L'", mediaType)
                    .write("http_resp.body = StringIO.new($L || '')", inputGetter);
            return null;
        }

        @Override
        public Void documentShape(DocumentShape shape) {
            // Not supported in xml
            return null;
        }

        @Override
        public Void listShape(ListShape shape) {
            defaultComplexSerializer(shape);
            return null;
        }

        @Override
        public Void mapShape(MapShape shape) {
            defaultComplexSerializer(shape);
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

        private void defaultComplexSerializer(Shape shape) {
            String nodeName = "'" + symbolProvider.toSymbol(shape).getName() + "'";
            if (memberShape.hasTrait(XmlNameTrait.class)) {
                nodeName = "'" + memberShape.expectTrait(XmlNameTrait.class).getValue() + "'";
            } else if (shape.hasTrait(XmlNameTrait.class)) {
                nodeName = "'" + shape.expectTrait(XmlNameTrait.class).getValue() + "'";
            }
            writer
                    .write("http_resp.headers['Content-Type'] = 'application/xml'")
                    .write("xml = Builders::$1L.build($2L, $3L) unless $3L.nil?", symbolProvider.toSymbol(shape).getName(),
                            nodeName, inputGetter)
                    .call(() -> {
                        if (shape.hasTrait(XmlNamespaceTrait.class)) {
                            writeXmlNamespace(
                                    shape.expectTrait(XmlNamespaceTrait.class),
                                    "xml");
                        }
                    })
                    .write("http_resp.body = StringIO.new(xml.to_str)");
        }

    }

}


