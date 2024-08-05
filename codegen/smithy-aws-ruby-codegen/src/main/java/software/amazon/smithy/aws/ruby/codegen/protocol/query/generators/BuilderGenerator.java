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

package software.amazon.smithy.aws.ruby.codegen.protocol.query.generators;

import java.util.stream.Stream;
import software.amazon.smithy.model.shapes.BlobShape;
import software.amazon.smithy.model.shapes.CollectionShape;
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
import software.amazon.smithy.model.traits.SparseTrait;
import software.amazon.smithy.model.traits.StreamingTrait;
import software.amazon.smithy.model.traits.TimestampFormatTrait;
import software.amazon.smithy.model.traits.XmlFlattenedTrait;
import software.amazon.smithy.model.traits.XmlNameTrait;
import software.amazon.smithy.ruby.codegen.GenerationContext;
import software.amazon.smithy.ruby.codegen.Hearth;
import software.amazon.smithy.ruby.codegen.RubyImportContainer;
import software.amazon.smithy.ruby.codegen.generators.BuilderGeneratorBase;
import software.amazon.smithy.ruby.codegen.traits.NoSerializeTrait;
import software.amazon.smithy.ruby.codegen.util.Streaming;
import software.amazon.smithy.ruby.codegen.util.TimestampFormat;

public class BuilderGenerator extends BuilderGeneratorBase {

    public BuilderGenerator(GenerationContext context) {
        super(context);
    }

    @Override
    protected void renderOperationBuildMethod(OperationShape operation, Shape inputShape, boolean isEventStream) {
        writer
                .openBlock("def self.build(http_req, input:)")
                .write("http_req.http_method = 'POST'")
                .write("http_req.append_path('/')")
                .call(() -> {
                    renderContentTypeHeaders(operation, isEventStream);
                })

                .write("context = ''")
                .write("params = $T.new", Hearth.QUERY_PARAM_LIST)
                .write("params['Action'] = '$L'", symbolProvider.toSymbol(operation).getName())
                .write("params['Version'] = '$L'", context.service().getVersion())
                .call(() -> renderMemberBuilders(inputShape))
                .call(() -> {
                    if (isEventStream) {
                        renderEventStreamInitialRequestMessage();
                    } else {
                        writer.write("http_req.body = $T.new(params.to_s)", RubyImportContainer.STRING_IO);
                    }
                })
                .closeBlock("end");
    }

    private void renderEventStreamInitialRequestMessage() {
        writer
                .write("message = Hearth::EventStream::Message.new")
                .write("message.headers[':message-type'] = "
                        + "Hearth::EventStream::HeaderValue.new(value: 'event', type: 'string')")
                .write("message.headers[':event-type'] = "
                        + "Hearth::EventStream::HeaderValue.new(value: 'initial-request', "
                        + "type: 'string')")
                .write("message.headers[':content-type'] = "
                        + "Hearth::EventStream::HeaderValue.new(value: 'application/x-www-form-urlencoded', "
                        + "type: 'string')")
                .write("message.payload = $T.new(params.to_s)", RubyImportContainer.STRING_IO)
                .write("http_req.body = message");
    }

    private void renderContentTypeHeaders(OperationShape operation, boolean isEventStream) {
        if (isEventStream) {
            writer.write("http_req.headers['Content-Type'] = 'application/vnd.amazon.eventstream'");
            if (Streaming.isEventStreaming(model, model.expectShape(operation.getOutputShape()))) {
                writer.write("http_req.headers['Accept'] = 'application/vnd.amazon.eventstream'");
            }

        } else {
            writer.write("http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'");
        }
    }

    @Override
    protected void renderEventPayloadStructureBuilder(StructureShape event) {
        writer
                .write("message.headers[':content-type'] = "
                        + "Hearth::EventStream::HeaderValue.new(value: 'application/x-www-form-urlencoded', type: 'string')")
                .write("params = $T.new", Hearth.QUERY_PARAM_LIST)
                .call(() -> renderMemberBuilders(event, "payload_input"))
                .write("message.payload = $T.new($T.encode(params.to_s))",
                        RubyImportContainer.STRING_IO);
    }

    private void renderMemberBuilders(Shape s) {
        renderMemberBuilders(s, "input");
    }

    private void renderMemberBuilders(Shape s, String input) {
        //remove members marked NoSerialize
        Stream<MemberShape> serializeMembers = s.members().stream()
                .filter(NoSerializeTrait.excludeNoSerializeMembers())
                .filter((m) -> !StreamingTrait.isEventStream(model, m));

        serializeMembers.forEach((member) -> {
            Shape target = model.expectShape(member.getTarget());
            String dataName = "'" + member.getMemberName() + "'";
            String inputGetter = input+ "." + symbolProvider.toMemberName(member);
            target.accept(new MemberSerializer(member, dataName, inputGetter, true));
        });
    }

    @Override
    protected void renderStructureBuildMethod(StructureShape shape) {
        writer
                .openBlock("def self.build(input, params, context: nil)")
                .call(() -> renderMemberBuilders(shape))
                .closeBlock("end");
    }

    @Override
    protected void renderListBuildMethod(ListShape shape) {
        writer
                .openBlock("def self.build(input, params, context: '')")
                .openBlock("input.each_with_index do |element, index|")
                .call(() -> {
                    String dataName = "\".#{index+1}\"";
                    Shape memberTarget = model.expectShape(shape.getMember().getTarget());
                    memberTarget.accept(
                            new MemberSerializer(shape.getMember(),
                                    dataName, "element", !shape.hasTrait(SparseTrait.class)));
                })
                .closeBlock("end")
                .openBlock("\nif input.empty?")
                .write("params[context[0...context.rindex('.')]] = ''")
                .closeBlock("end")
                .closeBlock("end");

    }

    @Override
    protected void renderUnionBuildMethod(UnionShape shape) {
        writer
                .openBlock("def self.build(input, params, context: nil)")
                .write("case input");

        shape.members().forEach((member) -> {
            writer
                    .write("when $T", context.symbolProvider().toSymbol(member))
                    .indent();
            renderUnionMemberBuilder(member);
            writer.dedent();
        });
        writer.openBlock("else")
                .write("raise ArgumentError,\n\"Expected input to be one of the subclasses of $T\"",
                        context.symbolProvider().toSymbol(shape))
                .closeBlock("end")
                .closeBlock("end");
    }

    private void renderUnionMemberBuilder(MemberShape member) {

        Shape target = model.expectShape(member.getTarget());

        String dataName = writer.format("'$L'", member.getMemberName());
        target.accept(new MemberSerializer(member, dataName, "input.__getobj__", false));
    }

    @Override
    protected void renderMapBuildMethod(MapShape shape) {
        writer
                .openBlock("def self.build(input, params, context: '')")
                .openBlock("input.each_with_index do |(key, value), index|")
                .call(() -> {
                    String key = "key";
                    if (shape.getKey().hasTrait(XmlNameTrait.class)) {
                        key = shape.getKey().getTrait(XmlNameTrait.class).get().getValue();
                    }
                    writer.write("params[context + \".#{index+1}." + key + "\"] = key");
                    String value = "value";
                    if (shape.getValue().hasTrait(XmlNameTrait.class)) {
                        value = shape.getValue().getTrait(XmlNameTrait.class).get().getValue();
                    }
                    String dataName = "\".#{index+1}." + value + "\"";
                    Shape memberTarget = model.expectShape(shape.getValue().getTarget());
                    memberTarget.accept(
                            new MemberSerializer(shape.getValue(),
                                    dataName, "value", !shape.hasTrait(SparseTrait.class)));
                })
                .closeBlock("end")
                .closeBlock("end");
    }

    private class MemberSerializer extends ShapeVisitor.Default<Void> {

        private final String inputGetter;
        private final String dataName;
        private final MemberShape memberShape;
        private final boolean checkRequired;

        MemberSerializer(MemberShape memberShape,
                         String dataName, String inputGetter, boolean checkRequired) {
            this.inputGetter = inputGetter;
            this.dataName = dataName;
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
            writer.write("params[context + $L] = $L.to_s$L", dataName, inputGetter, checkRequired());
            return null;
        }

        private void rubyFloat() {
            writer.write("params[context + $L] = $T.serialize($L).to_s$L",
                    dataName, Hearth.NUMBER_HELPER, inputGetter, checkRequired());
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
            writer.write("params[context + $L] = $T::strict_encode64($L).strip$L",
                    dataName, RubyImportContainer.BASE64, inputGetter, checkRequired());
            return null;
        }

        @Override
        public Void timestampShape(TimestampShape shape) {
            writer.write("params[context + $L] = $L$L",
                    dataName,
                    TimestampFormat.serializeTimestamp(
                            shape, memberShape, inputGetter, TimestampFormatTrait.Format.DATE_TIME, false),
                    checkRequired());


            return null;
        }

        /**
         * For complex shapes, simply delegate to their builder.
         */
        private void defaultComplexSerializer(Shape shape) {
            writer.write("$1L.build($2L, params, context: context + $3L + '.') unless $2L.nil?",
                    symbolProvider.toSymbol(shape).getName(), inputGetter, dataName);
        }

        private void defaultCollectionSerializer(CollectionShape shape) {
            String name = dataName;
            if (memberShape.hasTrait(XmlNameTrait.class)) {
                name = "'" + memberShape.getTrait(XmlNameTrait.class).get().getValue() + "'";
            }
            String context = "context + " + name;
            if (!memberShape.hasTrait(XmlFlattenedTrait.class)) {
                String member = "member";
                if (shape.getMember().hasTrait(XmlNameTrait.class)) {
                    member = shape.getMember().getTrait(XmlNameTrait.class).get().getValue();
                }
                context += " + '." + member + "'";
            }
            writer.write("$1L.build($2L, params, context: $3L) unless $2L.nil?",
                    symbolProvider.toSymbol(shape).getName(), inputGetter, context);
        }

        @Override
        public Void listShape(ListShape shape) {
            defaultCollectionSerializer(shape);
            return null;
        }

        @Override
        public Void mapShape(MapShape shape) {
            String name = dataName;
            if (memberShape.hasTrait(XmlNameTrait.class)) {
                name = "'" + memberShape.getTrait(XmlNameTrait.class).get().getValue() + "'";
            }
            String context = "context + " + name;
            if (!memberShape.hasTrait(XmlFlattenedTrait.class)) {
                context += " + '.entry'";
            }
            writer.write("$1L.build($2L, params, context: $3L) unless $2L.nil?",
                    symbolProvider.toSymbol(shape).getName(), inputGetter, context);
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


