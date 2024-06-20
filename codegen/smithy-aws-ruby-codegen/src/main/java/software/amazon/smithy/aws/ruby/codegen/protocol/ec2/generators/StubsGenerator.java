/*
 * Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

package software.amazon.smithy.aws.ruby.codegen.protocol.ec2.generators;

import java.util.Optional;
import java.util.stream.Stream;

import software.amazon.smithy.aws.traits.protocols.AwsQueryErrorTrait;
import software.amazon.smithy.codegen.core.Symbol;
import software.amazon.smithy.model.shapes.BlobShape;
import software.amazon.smithy.model.shapes.DoubleShape;
import software.amazon.smithy.model.shapes.FloatShape;
import software.amazon.smithy.model.shapes.ListShape;
import software.amazon.smithy.model.shapes.MapShape;
import software.amazon.smithy.model.shapes.MemberShape;
import software.amazon.smithy.model.shapes.OperationShape;
import software.amazon.smithy.model.shapes.Shape;
import software.amazon.smithy.model.shapes.ShapeVisitor;
import software.amazon.smithy.model.shapes.StructureShape;
import software.amazon.smithy.model.shapes.TimestampShape;
import software.amazon.smithy.model.shapes.UnionShape;
import software.amazon.smithy.model.traits.ErrorTrait;
import software.amazon.smithy.model.traits.SparseTrait;
import software.amazon.smithy.model.traits.TimestampFormatTrait;
import software.amazon.smithy.model.traits.XmlAttributeTrait;
import software.amazon.smithy.model.traits.XmlFlattenedTrait;
import software.amazon.smithy.model.traits.XmlNameTrait;
import software.amazon.smithy.model.traits.XmlNamespaceTrait;
import software.amazon.smithy.ruby.codegen.GenerationContext;
import software.amazon.smithy.ruby.codegen.Hearth;
import software.amazon.smithy.ruby.codegen.RubyImportContainer;
import software.amazon.smithy.ruby.codegen.generators.StubsGeneratorBase;
import software.amazon.smithy.ruby.codegen.traits.NoSerializeTrait;
import software.amazon.smithy.ruby.codegen.util.TimestampFormat;

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

    @Override
    protected void renderUnionStubMethod(UnionShape shape) {
        writer
                .openBlock("def self.stub(node_name, stub = {})")
                .write("xml = $T.new(node_name)", Hearth.XML_NODE)
                .write("case stub");

        shape.members().forEach((member) -> {
            writer
                    .write("when $T", context.symbolProvider().toSymbol(member))
                    .indent();
            renderUnionMemberStubber(shape, member);
            writer.dedent();
        });
        writer.openBlock("else")
                .write("raise ArgumentError,\n\"Expected input to be one of the subclasses of $T\"",
                        context.symbolProvider().toSymbol(shape))
                .closeBlock("end")
                .write("")
                .write("xml")
                .closeBlock("end");

    }

    private void renderUnionMemberStubber(UnionShape shape, MemberShape member) {
        Shape target = model.expectShape(member.getTarget());
        String nodeName = "'" + member.getMemberName() + "'";
        if (member.hasTrait(XmlNameTrait.class)) {
            nodeName = "'" + member.expectTrait(XmlNameTrait.class).getValue() + "'";
        }
        target.accept(new MemberSerializer(member, nodeName, "stub.__getobj__", true));
    }

    @Override
    protected void renderListStubMethod(ListShape shape) {
        writer
                .openBlock("def self.stub(node_name, stub = [])")
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
                .openBlock("def self.stub(node_name, input = {})")
                .write("nodes = []")
                .openBlock("input.each do |key, value|")
                .call(() -> {
                    writer.write("xml = $T.new(node_name)", Hearth.XML_NODE);
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
                .write("xml = $T.new(node_name)", Hearth.XML_NODE)
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
                .write("xml = $T.new('$LResponse')", Hearth.XML_NODE, nodeName)
                .call(() -> {
                    if (context.service().hasTrait(XmlNamespaceTrait.class)) {
                        writeXmlNamespaceForShape(context.service(), "xml");
                    }
                })
                .call(() -> renderMemberBuilders(outputShape))
                .write("http_resp.body = $T.new(xml.to_str) if xml", RubyImportContainer.STRING_IO)
                .write("http_resp.status = 200")
                .closeBlock("end");
    }

    @Override
    protected void renderErrorStubMethod(Shape errorShape) {
        writer
                .openBlock("def self.stub(http_resp, stub:)")
                .write("data = {}")
                .call(() -> renderStatusCodeStubber(errorShape))
                .write("xml = $T.new('Error')", Hearth.XML_NODE )
                .write("xml << $T.new('Code', '$L')", Hearth.XML_NODE, errorCode(errorShape))
                .call(() -> renderMemberBuilders(errorShape))
                .write("http_resp.body = "
                                + "::StringIO.new($1T.new('Response', $1T.new('Errors', xml)).to_str) if xml",
                        Hearth.XML_NODE)
                .closeBlock("end");
    }

    private String errorCode(Shape errorShape) {
        return errorShape.getTrait(AwsQueryErrorTrait.class)
                .map(t -> t.getCode()).orElse(errorShape.getId().getName());
    }

    private void renderStatusCodeStubber(Shape errorShape) {
        String statusCode = "";
        Optional<AwsQueryErrorTrait> optionalHttpErrorTrait = errorShape.getTrait(AwsQueryErrorTrait.class);
        if (optionalHttpErrorTrait.isPresent()) {
            statusCode = Integer.toString(optionalHttpErrorTrait.get().getHttpResponseCode());
        } else {
            ErrorTrait errorTrait = errorShape.getTrait(ErrorTrait.class).get();
            if (errorTrait.isClientError()) {
                statusCode = "400";
            } else if (errorTrait.isServerError()) {
                statusCode = "500";
            }
        }

        this.writer.write("http_resp.status = $1L", new Object[]{statusCode});
    }

    private void writeXmlNamespaceForShape(Shape shape, String dataSetter) {
        XmlNamespaceTrait trait = shape.getTrait(XmlNamespaceTrait.class).get();
        Optional<String> prefix = trait.getPrefix();
        String uri = trait.getUri();
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
            writer.write("xml << $T.new($L, $L.to_s$L)$L",
                    Hearth.XML_NODE, nodeName, inputGetter, xmlnsAttribute(), checkRequired());
            return null;
        }

        private void rubyFloat() {
            writer.write("xml << $T.new($L, $T.serialize($L).to_s$L)$L",
                    Hearth.XML_NODE, nodeName, Hearth.NUMBER_HELPER,
                    inputGetter, xmlnsAttribute(), checkRequired());
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
            writer.write("xml << $T.new($L, $T::strict_encode64($L).strip$L)$L",
                    Hearth.XML_NODE, nodeName, RubyImportContainer.BASE64,
                    inputGetter, xmlnsAttribute(), checkRequired());
            return null;
        }

        @Override
        public Void timestampShape(TimestampShape shape) {
            writer.write("xml << $T.new($L, $L$L)$L",
                    Hearth.XML_NODE,
                    nodeName,
                    TimestampFormat.serializeTimestamp(
                            shape, memberShape, inputGetter, TimestampFormatTrait.Format.DATE_TIME, true),
                    xmlnsAttribute(),
                    checkRequired());
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
                        .write("nodes = $1L.stub($2L, $3L)",
                                symbolProvider.toSymbol(shape).getName(),
                                nodeName,
                                inputGetter)
                        .write("nodes.each { |n| n.attributes['xmlns$1L'] = '$2L' }",
                                xmlns.getPrefix().isPresent() ? ":" + xmlns.getPrefix().get() : "",
                                xmlns.getUri())
                        .write("xml << nodes")
                        .closeBlock("end");
            } else {
                writer.write("xml << $1L.stub($2L, $3L) unless $3L.nil?",
                        symbolProvider.toSymbol(shape).getName(), nodeName, inputGetter);
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
                writer.write("xml << $6T::Node.new($2L, $1L.stub('$4L', $3L)$5L) unless $3L.nil?",
                        symbolProvider.toSymbol(shape).getName(), nodeName,
                        inputGetter, memberName, xmlnsAttribute(), Hearth.XML);
            }
            return null;
        }

        @Override
        public Void mapShape(MapShape shape) {
            if (memberShape.hasTrait(XmlFlattenedTrait.class) || shape.hasTrait(XmlFlattenedTrait.class)) {
                defaultComplexSerializer(shape);
            } else {
                writer.write("xml << $5T::Node.new($2L, $1L.stub('entry', $3L)$4L) unless $3L.nil?",
                        symbolProvider.toSymbol(shape).getName(), nodeName,
                        inputGetter, xmlnsAttribute(), Hearth.XML);
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
            writer.write("xml.attributes['$L'] = $T.serialize($L).to_s$L",
                    attributeName, Hearth.NUMBER_HELPER, inputGetter, checkRequired());
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
            writer.write("xml.attributes['$L'] = $L$L",
                    attributeName,
                    TimestampFormat.serializeTimestamp(
                            shape, memberShape, inputGetter, TimestampFormatTrait.Format.DATE_TIME, true),
                    checkRequired());

            return null;
        }

        @Override
        public Void listShape(ListShape shape) {
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


