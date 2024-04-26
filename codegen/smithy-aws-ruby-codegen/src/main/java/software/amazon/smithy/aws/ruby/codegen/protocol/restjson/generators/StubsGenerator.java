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

package software.amazon.smithy.aws.ruby.codegen.protocol.restjson.generators;

import software.amazon.smithy.model.shapes.*;
import software.amazon.smithy.model.traits.*;
import software.amazon.smithy.ruby.codegen.GenerationContext;
import software.amazon.smithy.ruby.codegen.Hearth;
import software.amazon.smithy.ruby.codegen.RubyImportContainer;
import software.amazon.smithy.ruby.codegen.generators.RestStubsGeneratorBase;
import software.amazon.smithy.ruby.codegen.traits.NoSerializeTrait;
import software.amazon.smithy.ruby.codegen.util.TimestampFormat;

import java.util.Optional;
import java.util.stream.Stream;

public class StubsGenerator extends RestStubsGeneratorBase {

    public StubsGenerator(GenerationContext context) {
        super(context);
    }

    @Override
    protected void renderBodyStub(Shape outputShape) {
        writer
                .write("http_resp.headers['Content-Type'] = 'application/json'")
                .call(() -> renderMemberStubbers(outputShape))
                .write("http_resp.body = $T.new($T.dump(data))", RubyImportContainer.STRING_IO, Hearth.JSON);
    }

    @Override
    protected void renderPayloadBodyStub(Shape outputShape, MemberShape payloadMember,
                                         Shape target) {
        String inputGetter = "stub[:" + symbolProvider.toMemberName(payloadMember) + "]";
        if (target.hasTrait(StreamingTrait.class)) {
            renderStreamingStub(outputShape);
        } else {
            target.accept(new PayloadMemberSerializer(payloadMember, inputGetter));
        }    }


    @Override
    protected void renderListStubMethod(ListShape shape) {
        writer
                .openBlock("def self.stub(stub)")
                .write("stub ||= []")
                .write("data = []")
                .openBlock("stub.each do |element|")
                .call(() -> {
                    Shape memberTarget =
                            model.expectShape(shape.getMember().getTarget());
                    memberTarget
                            .accept(new MemberSerializer(shape.getMember(),
                                    "data << ", "element",
                                    !shape.hasTrait(SparseTrait.class)));
                })
                .closeBlock("end")
                .write("data")
                .closeBlock("end");

    }

    @Override
    protected void renderMapStubMethod(MapShape shape) {
        writer
                .openBlock("def self.stub(stub)")
                .write("stub ||= {}")
                .write("data = {}")
                .openBlock("stub.each do |key, value|")
                .call(() -> {
                    Shape valueTarget = model.expectShape(shape.getValue().getTarget());
                    valueTarget
                            .accept(new MemberSerializer(shape.getValue(), "data[key] = ",
                                    "value", !shape.hasTrait(SparseTrait.class)));
                })
                .closeBlock("end")
                .write("data")
                .closeBlock("end");

    }

    @Override
    protected void renderStructureStubMethod(StructureShape shape) {
        writer
                .openBlock("def self.stub(stub)")
                .write("stub ||= $T.new", context.symbolProvider().toSymbol(shape))
                .write("data = {}")
                .call(() -> renderMemberStubbers(shape))
                .write("data")
                .closeBlock("end");
    }

    @Override
    protected void renderUnionStubMethod(UnionShape shape) {
        writer
                .openBlock("def self.stub(stub)")
                .write("data = {}")
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
                .write("data")
                .closeBlock("end");

    }

    private void renderUnionMemberStubber(UnionShape shape, MemberShape member) {
        Shape target = model.expectShape(member.getTarget());
        String symbolName = member.getMemberName();
        if (member.hasTrait(JsonNameTrait.class)) {
            symbolName = member.expectTrait(JsonNameTrait.class).getValue();
        }
        String dataSetter = "data['" + symbolName + "'] = ";
        target.accept(new MemberSerializer(member, dataSetter, "stub.__getobj__", false));
    }

    private void renderMemberStubbers(Shape s) {
        Optional<MemberShape> payload =
                s.members().stream().filter((m) -> m.hasTrait(HttpPayloadTrait.class)).findFirst();

        if (payload.isPresent()) {
            MemberShape member = payload.get();
            Shape target = model.expectShape(member.getTarget());
            String symbolName = ":" + symbolProvider.toMemberName(member);
            String inputGetter = "stub[" + symbolName + "]";
            target.accept(new MemberSerializer(member, "data = ", inputGetter, true));
            writer.write("data ||= {}");
        } else {
            //remove members w/ http traits or marked NoSerialize
            Stream<MemberShape> serializeMembers = s.members().stream()
                    .filter((m) -> !m.hasTrait(HttpLabelTrait.class) && !m.hasTrait(HttpQueryTrait.class)
                            && !m.hasTrait((HttpHeaderTrait.class)));
            serializeMembers = serializeMembers.filter(NoSerializeTrait.excludeNoSerializeMembers());

            serializeMembers.forEach((member) -> {
                Shape target = model.expectShape(member.getTarget());

                String symbolName = ":" + symbolProvider.toMemberName(member);
                String dataName = "'" + member.getMemberName() + "'";
                if (member.hasTrait(JsonNameTrait.class)) {
                    dataName = "'" + member.expectTrait(JsonNameTrait.class).getValue() + "'";
                }
                String dataSetter = "data[" + dataName + "] = ";
                String inputGetter = "stub[" + symbolName + "]";
                target.accept(new MemberSerializer(member, dataSetter, inputGetter, true));
            });
        }
    }

    @Override
    protected void renderErrorStubMethod(Shape errorShape) {
        writer
                .openBlock("def self.stub(http_resp, stub:)")
                .write("data = {}")
                .call(() -> renderStatusCodeStubber(errorShape))
                .call(() -> renderHeaderStubbers(errorShape))
                .write("http_resp.headers['X-Amzn-Errortype'] = '$L'", errorShape.toShapeId().getName())
                .call(() -> renderPrefixHeadersStubbers(errorShape))
                .call(() -> renderResponseCodeStubber(errorShape))
                .call(() -> renderBodyStubber(errorShape))
                .closeBlock("end");
    }

    private class MemberSerializer extends ShapeVisitor.Default<Void> {

        private final MemberShape memberShape;
        private final String inputGetter;
        private final String dataSetter;
        private final boolean checkRequired;


        MemberSerializer(MemberShape memberShape,
                         String dataSetter, String inputGetter, boolean checkRequired) {
            this.memberShape = memberShape;
            this.inputGetter = inputGetter;
            this.dataSetter = dataSetter;
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
            writer.write("$L$T.serialize($L)",
                    dataSetter, Hearth.NUMBER_HELPER, inputGetter);
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
            writer.write("$L$T::encode64($L)$L",
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
         * For complex shapes, simply delegate to their Stubber.
         */
        private void defaultComplexSerializer(Shape shape) {
            if (checkRequired) {
                writer.write("$1L$2L.stub($3L) unless $3L.nil?", dataSetter,
                        symbolProvider.toSymbol(shape).getName(), inputGetter);
            } else {
                writer.write("$1L($2L.stub($3L) unless $3L.nil?)", dataSetter,
                        symbolProvider.toSymbol(shape).getName(), inputGetter);
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
            writer
                    .write("http_resp.headers['Content-Type'] = 'application/json'")
                    .write("http_resp.body = $T.new($T.dump($L))",
                            RubyImportContainer.STRING_IO, Hearth.JSON, inputGetter);
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
            writer
                    .write("http_resp.headers['Content-Type'] = 'application/json'")
                    .openBlock("unless $L.nil?", inputGetter)
                    .write("data = $1L.stub($2L)", symbolProvider.toSymbol(shape).getName(),
                            inputGetter)
                    .write("http_resp.body = $T.new($T.dump(data))",
                            RubyImportContainer.STRING_IO, Hearth.JSON)
                    .closeBlock("end");
            return null;
        }

        private void defaultComplexSerializer(Shape shape) {
            writer
                    .write("http_resp.headers['Content-Type'] = 'application/json'")
                    .write("data = $1L.stub($2L) unless $2L.nil?", symbolProvider.toSymbol(shape).getName(),
                            inputGetter)
                    .write("http_resp.body = $T.new($T.dump(data))",
                            RubyImportContainer.STRING_IO, Hearth.JSON);
        }

    }

}


