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

package software.amazon.smithy.aws.ruby.codegen.protocol.json10.generators;

import java.util.stream.Stream;
import software.amazon.smithy.aws.traits.protocols.AwsQueryCompatibleTrait;
import software.amazon.smithy.model.knowledge.OperationIndex;
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
import software.amazon.smithy.model.traits.EventHeaderTrait;
import software.amazon.smithy.model.traits.SparseTrait;
import software.amazon.smithy.model.traits.StreamingTrait;
import software.amazon.smithy.model.traits.TimestampFormatTrait;
import software.amazon.smithy.model.traits.UnitTypeTrait;
import software.amazon.smithy.model.traits.synthetic.OriginalShapeIdTrait;
import software.amazon.smithy.ruby.codegen.GenerationContext;
import software.amazon.smithy.ruby.codegen.Hearth;
import software.amazon.smithy.ruby.codegen.RubyCodeWriter;
import software.amazon.smithy.ruby.codegen.RubyImportContainer;
import software.amazon.smithy.ruby.codegen.generators.BuilderGeneratorBase;
import software.amazon.smithy.ruby.codegen.traits.NoSerializeTrait;
import software.amazon.smithy.ruby.codegen.util.Streaming;
import software.amazon.smithy.ruby.codegen.util.TimestampFormat;

public class BuilderGenerator extends BuilderGeneratorBase {

    public BuilderGenerator(GenerationContext context) {
        super(context);
    }

    private void renderMemberBuilders(Shape s) {
        renderMemberBuilders(s, "input");
    }
    private void renderMemberBuilders(Shape s, String input) {
        //remove members marked NoSerialize
        Stream<MemberShape> serializeMembers = s.members().stream()
                .filter(NoSerializeTrait.excludeNoSerializeMembers())
                .filter((m) -> !StreamingTrait.isEventStream(model, m) && !m.hasTrait(EventHeaderTrait.class));

        serializeMembers.forEach((member) -> {
            Shape target = model.expectShape(member.getTarget());
            String dataName = "'" + member.getMemberName() + "'";
            String dataSetter = "data[" + dataName + "] = ";
            String inputGetter = input +  "." + symbolProvider.toMemberName(member);
            target.accept(new MemberSerializer(member, dataSetter, inputGetter, true));
        });
    }

    @Override
    protected void renderOperationBuildMethod(OperationShape operation, Shape inputShape, boolean isEventStream) {
        String target = context.service().getId().getName() + "." + operation.getId().getName();
        writer
                .openBlock("def self.build(http_req, input:)")
                .write("http_req.http_method = 'POST'")
                .write("http_req.append_path('/')")
                .call(() -> renderHeaders(operation, target, isEventStream))
                .call(() -> {
                    if (isEventStream) {
                        renderEventStreamInitialRequestMessage(inputShape);
                    } else {
                        writer
                                .write("data = {}")
                                .call(() -> renderMemberBuilders(inputShape))
                                .write("http_req.body = $T.new($T.dump(data))",
                                        RubyImportContainer.STRING_IO, Hearth.JSON);
                    }
                })
                .closeBlock("end");
    }

    private void renderEventStreamInitialRequestMessage(Shape inputShape) {
        boolean serializeBody = inputShape.members().stream()
                .filter(NoSerializeTrait.excludeNoSerializeMembers())
                .filter((m) -> !StreamingTrait.isEventStream(model, m))
                .findAny().isPresent();
        if (serializeBody) {
            writer
                    .write("data = {}")
                    .call(() -> renderMemberBuilders(inputShape))
                    .write("message = Hearth::EventStream::Message.new")
                    .write("message.headers[':message-type'] = "
                            + "Hearth::EventStream::HeaderValue.new(value: 'event', type: 'string')")
                    .write("message.headers[':event-type'] = "
                            + "Hearth::EventStream::HeaderValue.new(value: 'initial-request', "
                            + "type: 'string')")
                    .write("message.headers[':content-type'] = "
                            + "Hearth::EventStream::HeaderValue.new(value: 'application/x-amz-json-1.0', "
                            + "type: 'string')")
                    .write("message.payload = $T.new($T.dump(data))",
                            RubyImportContainer.STRING_IO, Hearth.JSON)
                    .write("http_req.body = message");
        }
    }

    private void renderHeaders(OperationShape operation, String target, boolean isEventStream) {
        String contentTypeHeader;
        if (isEventStream) {
            contentTypeHeader = "application/vnd.amazon.eventstream";
        } else {
            contentTypeHeader = "application/x-amz-json-1.0";
        }
        writer.write("http_req.headers['Content-Type'] = '$L'", contentTypeHeader);

        if (Streaming.isEventStreaming(model, model.expectShape(operation.getOutputShape()))) {
            writer.write("http_req.headers['Accept'] = 'application/vnd.amazon.eventstream'");
        }

        writer.write("http_req.headers['X-Amz-Target'] = '$L'", target);

        if (context.service().hasTrait(AwsQueryCompatibleTrait.class)) {
            writer.write("http_req.headers['X-Amzn-Query-Mode'] = 'true'");
        }
    }

    private boolean hasModeledInput(Shape inputShape) {
        return !(inputShape.hasTrait(OriginalShapeIdTrait.class)
                && inputShape.expectTrait(OriginalShapeIdTrait.class).getOriginalId().equals(UnitTypeTrait.UNIT));
    }

    @Override
    protected void renderEventPayloadStructureBuilder(StructureShape event) {
        writer
                .write("message.headers[':content-type'] = "
                        + "Hearth::EventStream::HeaderValue.new(value: 'application/x-amz-json-1.0', type: 'string')")
                .write("data = {}")
                .call(() -> renderMemberBuilders(event, "payload_input"))
                .write("message.payload = $T.new($T.dump(data))",
                        RubyImportContainer.STRING_IO, Hearth.JSON);
    }

    @Override
    protected void renderStructureBuildMethod(StructureShape shape) {
        writer
                .openBlock("def self.build(input)")
                .write("data = {}")
                .call(() -> renderMemberBuilders(shape))
                .write("data")
                .closeBlock("end");
    }

    @Override
    protected void renderListBuildMethod(ListShape shape) {
        writer
                .openBlock("def self.build(input)")
                .write("data = []")
                .openBlock("input.each do |element|")
                .call(() -> {
                    Shape memberTarget = model.expectShape(shape.getMember().getTarget());
                    memberTarget.accept(new MemberSerializer(shape.getMember(), "data << ", "element",
                            !shape.hasTrait(SparseTrait.class)));
                })
                .closeBlock("end")
                .write("data")
                .closeBlock("end");
    }

    @Override
    protected void renderUnionBuildMethod(UnionShape shape) {
        writer
                .openBlock("def self.build(input)")
                .write("data = {}")
                .write("case input");

        shape.members().forEach((member) -> {
            writer
                    .write("when $T", context.symbolProvider().toSymbol(member))
                    .indent();
            renderUnionMemberBuilder(shape, member);
            writer.dedent();
        });
        writer.openBlock("else")
                .write("raise ArgumentError,\n\"Expected input to be one of the subclasses of $T\"",
                        context.symbolProvider().toSymbol(shape))
                .closeBlock("end")
                .write("")
                .write("data")
                .closeBlock("end");
    }

    private void renderUnionMemberBuilder(UnionShape shape, MemberShape member) {
        Shape target = model.expectShape(member.getTarget());
        String dataSetter = "data['" + member.getMemberName() + "'] = ";
        if (target.isUnionShape()) {
            writer.write("input = input.__getobj__"); // need to avoid infinite recursion
        }
        target.accept(new MemberSerializer(member, dataSetter, "input", false));
    }

    @Override
    protected void renderMapBuildMethod(MapShape shape) {
        writer
                .openBlock("def self.build(input)")
                .write("data = {}")
                .openBlock("input.each do |key, value|")
                .call(() -> {
                    Shape valueTarget = model.expectShape(shape.getValue().getTarget());
                    valueTarget.accept(new MemberSerializer(shape.getValue(), "data[key] = ", "value",
                            !shape.hasTrait(SparseTrait.class)));
                })
                .closeBlock("end")
                .write("data")
                .closeBlock("end");
    }

    private class MemberSerializer extends ShapeVisitor.Default<Void> {

        private final String inputGetter;
        private final String dataSetter;
        private final MemberShape memberShape;
        private final boolean checkRequired;

        MemberSerializer(MemberShape memberShape,
                         String dataSetter, String inputGetter, boolean checkRequired) {
            this.inputGetter = inputGetter;
            this.dataSetter = dataSetter;
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
            writer.write("$L$L$L", dataSetter, inputGetter, checkRequired());
            return null;
        }

        private void rubyFloat() {
            writer.write("$1L$4T.serialize($2L)$3L",
                    dataSetter, inputGetter, checkRequired(), Hearth.NUMBER_HELPER);
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
            writer.write("$L$T::strict_encode64($L).strip$L",
                    dataSetter, RubyImportContainer.BASE64, inputGetter, checkRequired());
            return null;
        }

        @Override
        public Void timestampShape(TimestampShape shape) {
            writer.write("$L$L$L",
                    dataSetter,
                    TimestampFormat.serializeTimestamp(
                            shape, memberShape, inputGetter, TimestampFormatTrait.Format.EPOCH_SECONDS, false),
                    checkRequired());
            return null;
        }

        /**
         * For complex shapes, simply delegate to their builder.
         */
        private void defaultComplexSerializer(Shape shape) {
            if (checkRequired) {
                writer.write("$1L$2L.build($3L) unless $3L.nil?",
                        dataSetter, symbolProvider.toSymbol(shape).getName(),
                        inputGetter);
            } else {
                writer.write("$1L($2L.build($3L) unless $3L.nil?)",
                        dataSetter, symbolProvider.toSymbol(shape).getName(),
                        inputGetter);
            }
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
    }

}


