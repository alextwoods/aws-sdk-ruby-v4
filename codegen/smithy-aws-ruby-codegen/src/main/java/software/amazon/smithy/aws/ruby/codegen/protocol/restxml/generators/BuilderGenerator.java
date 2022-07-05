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

package software.amazon.smithy.aws.ruby.codegen.protocol.restxml.generators;

import software.amazon.smithy.codegen.core.Symbol;
import software.amazon.smithy.model.shapes.*;
import software.amazon.smithy.model.traits.*;
import software.amazon.smithy.model.traits.synthetic.OriginalShapeIdTrait;
import software.amazon.smithy.ruby.codegen.GenerationContext;
import software.amazon.smithy.ruby.codegen.generators.RestBuilderGeneratorBase;
import software.amazon.smithy.ruby.codegen.trait.NoSerializeTrait;
import software.amazon.smithy.ruby.codegen.util.TimestampFormat;

import java.util.Optional;
import java.util.stream.Stream;

public class BuilderGenerator extends RestBuilderGeneratorBase {

    public BuilderGenerator(GenerationContext context) {
        super(context);
    }


    private void renderMemberBuilders(Shape s) {
        //remove members w/ http traits or marked NoSerialize
        Stream<MemberShape> serializeMembers = s.members().stream()
                .filter((m) -> !m.hasTrait(HttpLabelTrait.class) && !m.hasTrait(HttpQueryTrait.class)
                        && !m.hasTrait(HttpHeaderTrait.class) && !m.hasTrait(HttpPrefixHeadersTrait.class)
                        && !m.hasTrait(HttpQueryParamsTrait.class));
        serializeMembers = serializeMembers.filter(NoSerializeTrait.excludeNoSerializeMembers());

        serializeMembers.forEach((member) -> {
            Shape target = model.expectShape(member.getTarget());
            String symbolName = ":" + symbolProvider.toMemberName(member);
            String inputGetter = "input[" + symbolName + "]";

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
    protected void renderPayloadBodyBuilder(OperationShape operation, Shape inputShape, MemberShape payloadMember, Shape target) {
        String symbolName = ":" + symbolProvider.toMemberName(payloadMember);
        String inputGetter = "input[" + symbolName + "]";
        if (target.hasTrait(StreamingTrait.class)) {
            renderStreamingBodyBuilder(inputShape);
        } else {
            target.accept(new PayloadMemberSerializer(payloadMember, inputGetter));
        }
    }

    @Override
    protected void renderBodyBuilder(OperationShape operation, Shape inputShape) {
        String nodeName = symbolProvider.toSymbol(inputShape).getName();
        if (inputShape.hasTrait(XmlNameTrait.class)) {
            nodeName = inputShape.getTrait(XmlNameTrait.class).get().getValue();
        } else if (inputShape.hasTrait(OriginalShapeIdTrait.class)) {
            // TODO: Does this need to use symbol provider as well?
            nodeName = inputShape.getTrait(OriginalShapeIdTrait.class).get().getOriginalId().getName();
        }

        writer
                .write("")
                .write("http_req.headers['Content-Type'] = 'application/xml'")
                .write("xml = Hearth::XML::Node.new('$L')", nodeName)
                .call(() -> {
                    XmlNamespaceTrait xmlnsTrait = context.service()
                            .getTrait(XmlNamespaceTrait.class)
                            .orElse(inputShape.getTrait(XmlNamespaceTrait.class)
                                    .orElse(null));
                    if (xmlnsTrait != null) {
                        writeXmlNamespace(xmlnsTrait, "xml");
                    }
                    renderMemberBuilders(inputShape);
                })
                .write("http_req.body = StringIO.new(xml.to_str)");
    }

    @Override
    protected void renderStructureBuildMethod(StructureShape shape) {
        writer
                .openBlock("def self.build(node_name, input)")
                .write("xml = Hearth::XML::Node.new(node_name)")
                .call(() -> renderMemberBuilders(shape))
                .write("xml")
                .closeBlock("end");
    }

    @Override
    protected void renderListBuildMethod(ListShape shape) {
        writer
                .openBlock("def self.build(node_name, input)")
                .write("xml = []")
                .openBlock("input.each do |element|")
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
    protected void renderUnionBuildMethod(UnionShape shape) {
        Symbol symbol = symbolProvider.toSymbol(shape);
        writer
                .openBlock("def self.build(node_name, input)")
                .write("xml = Hearth::XML::Node.new(node_name)")
                .write("case input");

        shape.members().forEach((member) -> {
            writer
                    .write("when Types::$L::$L", shape.getId().getName(), symbolProvider.toMemberName(member))
                    .indent();
            renderUnionMemberBuilder(shape, member);
            writer.dedent();
        });
        writer.openBlock("else")
                .write("raise ArgumentError,\n\"Expected input to be one of the subclasses of Types::$L\"",
                        symbol.getName())
                .closeBlock("end")
                .write("")
                .write("xml")
                .closeBlock("end");
    }

    private void renderUnionMemberBuilder(UnionShape shape, MemberShape member) {
        Shape target = model.expectShape(member.getTarget());
        String nodeName = "'" + member.getMemberName() + "'";
        if (member.hasTrait(XmlNameTrait.class)) {
            nodeName = "'" + member.expectTrait(XmlNameTrait.class).getValue() + "'";
        }
        target.accept(new MemberSerializer(member, nodeName, "input.__getobj__", false));
    }

    @Override
    protected void renderMapBuildMethod(MapShape shape) {
        writer
                .openBlock("def self.build(node_name, input)")
                .write("nodes = []")
                .openBlock("input.each do |key, value|")
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
            writer.write("xml << Hearth::XML::Node.new($L, $L$L)$L",
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
                        .write("nodes = Builders::$1L.build($2L, $3L)",
                                symbolProvider.toSymbol(shape).getName(),
                                nodeName,
                                inputGetter)
                        .write("nodes.each { |n| n.attributes['xmlns$1L'] = '$2L' }",
                                xmlns.getPrefix().isPresent() ? ":" + xmlns.getPrefix().get() : "",
                                xmlns.getUri())
                        .write("xml << nodes")
                        .closeBlock("end");
            } else {
                writer.write("xml << Builders::$1L.build($2L, $3L) unless $3L.nil?",
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
                writer.write("xml << Hearth::XML::Node.new($2L, Builders::$1L.build('$4L', $3L)$5L) unless $3L.nil?",
                        symbolProvider.toSymbol(shape).getName(), nodeName,
                        inputGetter, memberName, xmlnsAttribute());
            }
            return null;
        }

        @Override
        public Void mapShape(MapShape shape) {
            if (memberShape.hasTrait(XmlFlattenedTrait.class) || shape.hasTrait(XmlFlattenedTrait.class)) {
                defaultComplexSerializer(shape);
            } else {
                writer.write("xml << Hearth::XML::Node.new($2L, Builders::$1L.build('entry', $3L)$4L) unless $3L.nil?",
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
            writer.write("xml.attributes['$L'] = $L$L",
                    attributeName,
                    TimestampFormat.serializeTimestamp(
                            shape, memberShape, inputGetter, TimestampFormatTrait.Format.EPOCH_SECONDS, true),
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
                    .write("http_req.headers['Content-Type'] = 'text/plain'")
                    .write("http_req.body = StringIO.new($L || '')", inputGetter);
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
                    .write("http_req.headers['Content-Type'] = '$L'", mediaType)
                    .write("http_req.body = StringIO.new($L || '')", inputGetter);
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
                    .write("http_req.headers['Content-Type'] = 'application/xml'")
                    .write("xml = Builders::$1L.build($2L, $3L) unless $3L.nil?", symbolProvider.toSymbol(shape).getName(),
                            nodeName, inputGetter)
                    .call(() -> {
                        if (shape.hasTrait(XmlNamespaceTrait.class)) {
                            writeXmlNamespace(
                                    shape.expectTrait(XmlNamespaceTrait.class),
                                    "xml");
                        }
                    })
                    .write("http_req.body = StringIO.new(xml.to_str)");
        }

    }

}


