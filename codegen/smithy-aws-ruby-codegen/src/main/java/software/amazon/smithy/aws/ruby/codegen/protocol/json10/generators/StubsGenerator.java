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
import software.amazon.smithy.model.traits.JsonNameTrait;
import software.amazon.smithy.model.traits.SparseTrait;
import software.amazon.smithy.model.traits.TimestampFormatTrait;
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
        String symbolName = "'" + member.getMemberName() + "'";
        String dataSetter = "data[" + symbolName + "] = ";
        target.accept(new MemberSerializer(member, dataSetter, "stub.__getobj__", false));
    }

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
                            .accept(new MemberSerializer(shape.getMember(),"data << ", "element", !shape.hasTrait(SparseTrait.class)));
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
                            .accept(new MemberSerializer(shape.getValue(), "data[key] = ", "value", !shape.hasTrait(SparseTrait.class)));
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
    protected void renderOperationStubMethod(OperationShape operation, Shape outputShape) {
        writer
                .openBlock("def self.stub(http_resp, stub:)")
                .write("data = {}")
                .call(() -> renderMemberStubbers(outputShape))
                .write("http_resp.body = $T.new($T.dump(data))", RubyImportContainer.STRING_IO, Hearth.JSON)
                .write("http_resp.status = 200")
                .closeBlock("end");
    }

    @Override
    protected void renderErrorStubMethod(Shape shape) {
        // todo
    }

    private void renderMemberStubbers(Shape s) {
        //remove members w/ http traits or marked NoSerialize
        Stream<MemberShape> serializeMembers = s.members().stream()
                .filter(NoSerializeTrait.excludeNoSerializeMembers());

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
}


