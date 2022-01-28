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

import software.amazon.smithy.model.shapes.*;
import software.amazon.smithy.model.traits.TimestampFormatTrait;
import software.amazon.smithy.ruby.codegen.GenerationContext;
import software.amazon.smithy.ruby.codegen.generators.BuilderGeneratorBase;
import software.amazon.smithy.ruby.codegen.trait.NoSerializeTrait;

import java.util.Optional;
import java.util.stream.Stream;

public class BuilderGenerator extends BuilderGeneratorBase {

    public BuilderGenerator(GenerationContext context) {
        super(context);
    }

    @Override
    protected void renderOperationBuildMethod(OperationShape operation, Shape inputShape) {
        writer
                .openBlock("def self.build(http_req, input:)")
                .write("http_req.http_method = 'POST'")
                .write("http_req.append_path('/')")
                .write("http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'")
                .write("query = {}")
                .write("context = ''")
                .write("query['Action'] = '$L'", symbolProvider.toSymbol(operation).getName())
                .write("query['Version'] = '$L'", context.getService().getVersion())
                .call(() -> renderMemberBuilders(inputShape))
                // temporary hack- need a query param utility
                .write("params = query.map { |k, v| \"#{k}=#{v}\" }.join(\"&\")")
                .write("http_req.body = StringIO.new(params)")
                .closeBlock("end");
    }

    private void renderMemberBuilders(Shape s) {
        //remove members w/ http traits or marked NoSerialize
        Stream<MemberShape> serializeMembers = s.members().stream()
                .filter(NoSerializeTrait.excludeNoSerializeMembers());

        serializeMembers.forEach((member) -> {
            Shape target = model.expectShape(member.getTarget());

            String dataName = member.getMemberName(); // TODO: account for other name traits
            String symbolName = ":" + symbolProvider.toMemberName(member);
            String inputGetter = "input[" + symbolName + "]";
            target.accept(new MemberSerializer(member, dataName, inputGetter, true));
        });
    }

    @Override
    protected void renderStructureBuildMethod(StructureShape shape) {
        writer
                .openBlock("def self.build(input, query, context: nil)")
                .call(() -> renderMemberBuilders(shape))
                .closeBlock("end");
    }

    @Override
    protected void renderListBuildMethod(ListShape shape) {

    }

    @Override
    protected void renderSetBuildMethod(SetShape shape) {

    }

    @Override
    protected void renderUnionBuildMethod(UnionShape shape) {

    }

    @Override
    protected void renderMapBuildMethod(MapShape shape) {

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
            writer.write("query[context + '$L'] = $L$L", dataName, inputGetter, checkRequired());
            return null;
        }

        private void rubyFloat() {
            writer.write("query[context + '$L'] = Seahorse::NumberHelper.serialize($L)$L", dataName, inputGetter, checkRequired());
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
            writer.write("query[context + '$L'] = Base64::encode64($L).strip$L",
                    dataName, inputGetter, checkRequired());
            return null;
        }

        @Override
        public Void timestampShape(TimestampShape shape) {

            // the default protocol format is date_time
            Optional<TimestampFormatTrait> format = memberShape.getTrait(TimestampFormatTrait.class);
            if (format.isPresent()) {
                switch (format.get().getFormat()) {
                    case EPOCH_SECONDS:
                        writer.write("query[context + '$L'] = Seahorse::TimeHelper.to_epoch_seconds($L)$L",
                                dataName, inputGetter, checkRequired());
                        break;
                    case HTTP_DATE:
                        writer.write("query[context + '$L'] = Seahorse::TimeHelper.to_http_date($L)$L",
                                dataName, inputGetter, checkRequired());
                        break;
                    case DATE_TIME:
                    default:
                        writer.write("query[context + '$L'] = Seahorse::TimeHelper.to_date_time($L)$L",
                                dataName, inputGetter, checkRequired());
                        break;
                }
            } else {
                writer.write("query[context + '$L'] = Seahorse::TimeHelper.to_epoch_seconds($L)$L",
                        dataName, inputGetter, checkRequired());            }
            return null;
        }

        /**
         * For complex shapes, simply delegate to their builder.
         */
        private void defaultComplexSerializer(Shape shape) {
            writer.write("Builders::$1L.build($2L, query, context: context + '$3L.') unless $2L.nil?",
                    symbolProvider.toSymbol(shape).getName(), inputGetter, dataName);
        }

        @Override
        public Void listShape(ListShape shape) {
            defaultComplexSerializer(shape);
            return null;
        }

        @Override
        public Void setShape(SetShape shape) {
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


