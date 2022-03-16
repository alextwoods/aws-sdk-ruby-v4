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

package software.amazon.smithy.aws.ruby.codegen.protocol.ec2.generators;

import software.amazon.smithy.aws.traits.protocols.Ec2QueryNameTrait;
import software.amazon.smithy.model.shapes.*;
import software.amazon.smithy.model.traits.SparseTrait;
import software.amazon.smithy.model.traits.TimestampFormatTrait;
import software.amazon.smithy.model.traits.XmlFlattenedTrait;
import software.amazon.smithy.model.traits.XmlNameTrait;
import software.amazon.smithy.ruby.codegen.GenerationContext;
import software.amazon.smithy.ruby.codegen.generators.BuilderGeneratorBase;
import software.amazon.smithy.ruby.codegen.trait.NoSerializeTrait;
import software.amazon.smithy.utils.StringUtils;

import java.util.stream.Stream;

public class BuilderGenerator extends BuilderGeneratorBase {

    public BuilderGenerator(GenerationContext context) {
        super(context);
    }

    private String getQueryParamName(MemberShape shape) {
        String name = StringUtils.capitalize(shape.getMemberName());
        if (shape.hasTrait(Ec2QueryNameTrait.class)) {
            name = shape.expectTrait(Ec2QueryNameTrait.class).getValue();
        }
        else if (shape.hasTrait(XmlNameTrait.class)) {
            name = StringUtils.capitalize(shape.expectTrait(XmlNameTrait.class).getValue());
        }
        return name;
    }

    @Override
    protected void renderOperationBuildMethod(OperationShape operation, Shape inputShape) {
        writer
                .openBlock("def self.build(http_req, input:)")
                .write("http_req.http_method = 'POST'")
                .write("http_req.append_path('/')")
                .write("http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'")
                .write("context = ''")
                .write("params = Hearth::Query::ParamList.new")
                .write("params['Action'] = '$L'", symbolProvider.toSymbol(operation).getName())
                .write("params['Version'] = '$L'", context.service().getVersion())
                .call(() -> renderMemberBuilders(inputShape))
                .write("http_req.body = StringIO.new(params.to_s)")
                .closeBlock("end");
    }

    private void renderMemberBuilders(Shape s) {
        //remove members w/ http traits or marked NoSerialize
        Stream<MemberShape> serializeMembers = s.members().stream()
                .filter(NoSerializeTrait.excludeNoSerializeMembers());

        serializeMembers.forEach((member) -> {
            Shape target = model.expectShape(member.getTarget());

            String dataName = writer.format("'$L'", getQueryParamName(member));
            String symbolName = ":" + symbolProvider.toMemberName(member);
            String inputGetter = "input[" + symbolName + "]";
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
                .closeBlock("end");

    }

    @Override
    protected void renderSetBuildMethod(SetShape shape) {
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
                .closeBlock("end");
    }

    @Override
    protected void renderUnionBuildMethod(UnionShape shape) {
        // TODO: There are no test cases for this, but it should likely be the case statement
        writer
                .openBlock("def self.build(input, params, context: nil)")
                .call(() -> renderMemberBuilders(shape))
                .closeBlock("end");
    }

    @Override
    protected void renderMapBuildMethod(MapShape shape) {
        // Not supported in EC2 Query
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
            writer.write("params[context + $L] = Hearth::NumberHelper.serialize($L).to_s$L", dataName, inputGetter, checkRequired());
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
            writer.write("params[context + $L] = Base64::encode64($L).strip$L",
                    dataName, inputGetter, checkRequired());
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
                        writer.write("params[context + $L] = Hearth::TimeHelper.to_epoch_seconds($L).to_s$L",
                                dataName, inputGetter, checkRequired());
                        break;
                    case HTTP_DATE:
                        writer.write("params[context + $L] = Hearth::TimeHelper.to_http_date($L)$L",
                                dataName, inputGetter, checkRequired());
                        break;
                    case DATE_TIME:
                    default:
                        writer.write("params[context + $L] = Hearth::TimeHelper.to_date_time($L)$L",
                                dataName, inputGetter, checkRequired());
                        break;
                }
            } else {
                // the default protocol format is date_time
                writer.write("params[context + $L] = Hearth::TimeHelper.to_date_time($L)$L",
                        dataName, inputGetter, checkRequired());
            }

            return null;
        }

        /**
         * For complex shapes, simply delegate to their builder.
         */
        private void defaultComplexSerializer(Shape shape) {
            writer.write("Builders::$1L.build($2L, params, context: context + $3L + '.') unless $2L.nil?",
                    symbolProvider.toSymbol(shape).getName(), inputGetter, dataName);
        }

        private void defaultCollectionSerializer(CollectionShape shape) {
            String name = dataName;
            if (memberShape.hasTrait(XmlNameTrait.class)) {
                name = "'" + memberShape.getTrait(XmlNameTrait.class).get().getValue() + "'";
            }
            String context = "context + " + name;
            writer.write("Builders::$1L.build($2L, params, context: $3L) unless $2L.nil?",
                    symbolProvider.toSymbol(shape).getName(), inputGetter, context);
        }

        @Override
        public Void listShape(ListShape shape) {
            defaultCollectionSerializer(shape);
            return null;
        }

        @Override
        public Void setShape(SetShape shape) {
            defaultCollectionSerializer(shape);
            return null;
        }

        @Override
        public Void mapShape(MapShape shape) {
            // Not supported in EC2 Query
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


