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

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import software.amazon.smithy.build.SmithyBuildException;
import software.amazon.smithy.model.shapes.BlobShape;
import software.amazon.smithy.model.shapes.DocumentShape;
import software.amazon.smithy.model.shapes.DoubleShape;
import software.amazon.smithy.model.shapes.FloatShape;
import software.amazon.smithy.model.shapes.ListShape;
import software.amazon.smithy.model.shapes.MapShape;
import software.amazon.smithy.model.shapes.MemberShape;
import software.amazon.smithy.model.shapes.Shape;
import software.amazon.smithy.model.shapes.ShapeVisitor;
import software.amazon.smithy.model.shapes.StringShape;
import software.amazon.smithy.model.shapes.StructureShape;
import software.amazon.smithy.model.shapes.TimestampShape;
import software.amazon.smithy.model.shapes.UnionShape;
import software.amazon.smithy.model.traits.ErrorTrait;
import software.amazon.smithy.model.traits.HttpHeaderTrait;
import software.amazon.smithy.model.traits.HttpLabelTrait;
import software.amazon.smithy.model.traits.HttpPayloadTrait;
import software.amazon.smithy.model.traits.HttpPrefixHeadersTrait;
import software.amazon.smithy.model.traits.HttpResponseCodeTrait;
import software.amazon.smithy.model.traits.MediaTypeTrait;
import software.amazon.smithy.model.traits.SparseTrait;
import software.amazon.smithy.model.traits.StreamingTrait;
import software.amazon.smithy.model.traits.TimestampFormatTrait;
import software.amazon.smithy.model.traits.XmlAttributeTrait;
import software.amazon.smithy.model.traits.XmlFlattenedTrait;
import software.amazon.smithy.model.traits.XmlNameTrait;
import software.amazon.smithy.model.traits.XmlNamespaceTrait;
import software.amazon.smithy.model.traits.synthetic.OriginalShapeIdTrait;
import software.amazon.smithy.ruby.codegen.GenerationContext;
import software.amazon.smithy.ruby.codegen.Hearth;
import software.amazon.smithy.ruby.codegen.RubyImportContainer;
import software.amazon.smithy.ruby.codegen.generators.RestStubsGeneratorBase;
import software.amazon.smithy.ruby.codegen.traits.NoSerializeTrait;
import software.amazon.smithy.ruby.codegen.util.TimestampFormat;

public class StubsGenerator extends RestStubsGeneratorBase {

    public StubsGenerator(GenerationContext context) {
        super(context);
    }

    // RestXml ignores queryParam trait in service responses
    // override the base class to not filter query params from the body
    @Override
    protected void renderBodyStubber(Shape outputShape, boolean isEventStream) {
        //determine if there are any members of the input that need to be serialized to the body
        boolean serializeBody = outputShape.members().stream().anyMatch((m) -> !m.hasTrait(HttpLabelTrait.class)
                && !m.hasTrait(HttpHeaderTrait.class)
                && !m.hasTrait(HttpPrefixHeadersTrait.class)
                && !m.hasTrait(HttpResponseCodeTrait.class)
                && !StreamingTrait.isEventStream(model, m));

        if (isEventStream && serializeBody) {
            throw new SmithyBuildException(
                    "Event Stream operations in Rest Protocols must not have members "
                            + "serialized to the body in the initial response.  All members of the operation input "
                            + "should be marked with HTTP traits such as @httpLabel");
        }

        //determine if there is an httpPayload member
        List<MemberShape> httpPayloadMembers = outputShape.members()
                .stream()
                .filter((m) -> m.hasTrait(HttpPayloadTrait.class))
                .collect(Collectors.toList());
        if (httpPayloadMembers.size() == 0) {
            if (serializeBody) {
                renderBodyStub(outputShape);
            }
        } else {
            MemberShape payloadMember = httpPayloadMembers.get(0);
            Shape target = model.expectShape(payloadMember.getTarget());
            // event stream members may be marked with httpPayload in REST protocols
            // but should not be stubbed as the body.
            if (!StreamingTrait.isEventStream(model, payloadMember)) {
                renderPayloadBodyStub(outputShape, payloadMember, target);
            }
        }
    }

    @Override
    protected void renderBodyStub(Shape outputShape) {
        String nodeName = symbolProvider.toSymbol(outputShape).getName();
        if (outputShape.hasTrait(XmlNameTrait.class)) {
            nodeName = outputShape.getTrait(XmlNameTrait.class).get().getValue();
        } else if (outputShape.hasTrait(OriginalShapeIdTrait.class)) {
            nodeName = outputShape.getTrait(OriginalShapeIdTrait.class).get().getOriginalId().getName();
        }

        writer
                .write("")
                .write("http_resp.headers['Content-Type'] = 'application/xml'")
                .write("xml = $T.new('$L')", Hearth.XML_NODE, nodeName)
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
                .write("http_resp.body = $T.new(xml.to_str) if xml", RubyImportContainer.STRING_IO);
    }

    @Override
    protected void renderPayloadBodyStub(Shape outputShape, MemberShape payloadMember,
                                         Shape target) {
        String inputGetter = "stub." + symbolProvider.toMemberName(payloadMember);
        if (target.hasTrait(StreamingTrait.class)) {
            renderStreamingStub(outputShape);
        } else {
            target.accept(new PayloadMemberSerializer(payloadMember, inputGetter));
        }
    }

    @Override
    protected void renderEventPayloadStructureStub(StructureShape eventPayload) {
        String nodeName = symbolProvider.toSymbol(eventPayload).getName();
        if (eventPayload.hasTrait(XmlNameTrait.class)) {
            nodeName = eventPayload.getTrait(XmlNameTrait.class).get().getValue();
        } else if (eventPayload.hasTrait(OriginalShapeIdTrait.class)) {
            nodeName = eventPayload.getTrait(OriginalShapeIdTrait.class).get().getOriginalId().getName();
        }

        writer
                .write("message.headers[':content-type'] = "
                        + "Hearth::EventStream::HeaderValue.new(value: 'application/xml', type: 'string')")
                .write("xml = $T.new('$L')", Hearth.XML_NODE, nodeName)
                .call(() -> renderMemberStubbers(eventPayload, "payload_payload"))
                .write("message.payload = $T.new(xml.to_str) if xml",
                        RubyImportContainer.STRING_IO);
    }


    @Override
    protected void renderListStubMethod(ListShape shape) {
        writer
                .openBlock("def self.stub(node_name, stub)")
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
                .openBlock("def self.stub(node_name, stub)")
                .write("stub ||= {}")
                .write("nodes = []")
                .openBlock("stub.each do |key, value|")
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
                .openBlock("def self.stub(node_name, stub)")
                .write("stub ||= $T.new", context.symbolProvider().toSymbol(shape))
                .write("xml = $T.new(node_name)", Hearth.XML_NODE)
                .call(() -> renderMemberStubbers(shape))
                .write("xml")
                .closeBlock("end");
    }

    @Override
    protected void renderUnionStubMethod(UnionShape shape) {
        writer
                .openBlock("def self.stub(node_name, stub)")
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

    @Override
    protected void renderErrorStubMethod(Shape errorShape) {
        writer
                .openBlock("def self.stub(http_resp, stub:)")
                .write("data = {}")
                .call(() -> renderStatusCodeStubber(errorShape))
                .call(() -> renderHeaderStubbers(errorShape))
                .call(() -> renderPrefixHeadersStubbers(errorShape))
                .write("xml = $T.new('Error')", Hearth.XML_NODE)
                .write("xml << $T.new('Type', '$L')", Hearth.XML_NODE, errorType(errorShape))
                .write("xml << $T.new('Code', '$L')", Hearth.XML_NODE, errorCode(errorShape))
                .call(() -> renderMemberStubbers(errorShape))
                .write("http_resp.body = ::StringIO.new($T.new('ErrorResponse', xml).to_str) if xml",
                        Hearth.XML_NODE)
                .closeBlock("end");
    }

    private String errorType(Shape errorShape) {
        ErrorTrait errorTrait = errorShape.getTrait(ErrorTrait.class).get();
        return errorTrait.isClientError() ? "Sender" : "Receiver";
    }

    private String errorCode(Shape errorShape) {
        return errorShape.getId().getName();
    }

    private void renderUnionMemberStubber(UnionShape shape, MemberShape member) {
        Shape target = model.expectShape(member.getTarget());
        String nodeName = "'" + member.getMemberName() + "'";
        if (member.hasTrait(XmlNameTrait.class)) {
            nodeName = "'" + member.expectTrait(XmlNameTrait.class).getValue() + "'";
        }
        target.accept(new MemberSerializer(member, nodeName, "stub.__getobj__", true));
    }

    private void renderMemberStubbers(Shape s) {
        renderMemberStubbers(s, "stub");
    }

    private void renderMemberStubbers(Shape s, String input) {
        //remove members w/ http traits or marked NoSerialize
        Stream<MemberShape> serializeMembers = s.members().stream()
                .filter((m) -> !m.hasTrait(HttpLabelTrait.class)
                        && !m.hasTrait((HttpHeaderTrait.class)));
        serializeMembers = serializeMembers.filter(NoSerializeTrait.excludeNoSerializeMembers());

        serializeMembers.forEach((member) -> {
            Shape target = model.expectShape(member.getTarget());
            String inputGetter = input + "." + symbolProvider.toMemberName(member);

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
            writer.write("xml << $T.new($L, $L.to_s$L)$L",
                    Hearth.XML_NODE, nodeName, inputGetter, xmlnsAttribute(), checkRequired());
            return null;
        }

        private void rubyFloat() {
            writer.write("xml << $T.new($L, $T.serialize($L).to_s$L)$L",
                    Hearth.XML_NODE, nodeName, Hearth.NUMBER_HELPER, inputGetter, xmlnsAttribute(), checkRequired());
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
                writer.write("xml << $6T.new($2L, Stubs::$1L.stub('$4L', $3L)$5L) unless $3L.nil?",
                        symbolProvider.toSymbol(shape).getName(), nodeName,
                        inputGetter, memberName, xmlnsAttribute(), Hearth.XML_NODE);
            }
            return null;
        }

        @Override
        public Void mapShape(MapShape shape) {
            if (memberShape.hasTrait(XmlFlattenedTrait.class) || shape.hasTrait(XmlFlattenedTrait.class)) {
                defaultComplexSerializer(shape);
            } else {
                writer.write("xml << $5T.new($2L, Stubs::$1L.stub('entry', $3L)$4L) unless $3L.nil?",
                        symbolProvider.toSymbol(shape).getName(), nodeName,
                        inputGetter, xmlnsAttribute(), Hearth.XML_NODE);
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

        AttributeMemberSerializer(MemberShape memberShape, String inputGetter, boolean checkRequired,
                                  String attributeName) {
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
                    .write("http_resp.body = $T.new($L || '')", RubyImportContainer.STRING_IO, inputGetter);
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
                    .write("http_resp.body = $T.new($L || '')", RubyImportContainer.STRING_IO, inputGetter);
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
                    .write("xml = $1L.stub($2L, $3L) unless $3L.nil?", symbolProvider.toSymbol(shape).getName(),
                            nodeName, inputGetter)
                    .call(() -> {
                        if (shape.hasTrait(XmlNamespaceTrait.class)) {
                            writeXmlNamespace(
                                    shape.expectTrait(XmlNamespaceTrait.class),
                                    "xml");
                        }
                    })
                    .write("http_resp.body = $T.new(xml.to_str) if xml", RubyImportContainer.STRING_IO);
        }

    }

}


