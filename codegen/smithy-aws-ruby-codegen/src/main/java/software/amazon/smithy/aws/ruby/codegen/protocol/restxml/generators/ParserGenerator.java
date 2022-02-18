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

import software.amazon.smithy.model.shapes.*;
import software.amazon.smithy.model.traits.*;
import software.amazon.smithy.ruby.codegen.GenerationContext;
import software.amazon.smithy.ruby.codegen.generators.RestParserGeneratorBase;
import software.amazon.smithy.ruby.codegen.trait.NoSerializeTrait;

import java.util.Optional;
import java.util.stream.Stream;

public class ParserGenerator extends RestParserGeneratorBase {

    public ParserGenerator(GenerationContext context) {
        super(context);
    }

    @Override
    protected void renderPayloadBodyParser(Shape outputShape, MemberShape payloadMember, Shape target) {

    }

    private void renderMemberParsers(Shape s) {
        Stream<MemberShape> parseMembers = s.members().stream()
                .filter((m) -> !m.hasTrait(HttpHeaderTrait.class) && !m.hasTrait(HttpPrefixHeadersTrait.class)
                        && !m.hasTrait(HttpResponseCodeTrait.class));
        parseMembers = parseMembers.filter(NoSerializeTrait.excludeNoSerializeMembers());

        parseMembers.forEach((member) -> {
            Shape target = model.expectShape(member.getTarget());
            String dataName = symbolProvider.toMemberName(member);
            String dataSetter = "data." + dataName + " = ";
            String xmlName = member.getMemberName();
            if (member.hasTrait(XmlNameTrait.class)) {
                xmlName = member.getTrait(XmlNameTrait.class).get().getValue();
            }

            if (member.hasTrait(XmlAttributeTrait.class)) {
                String valueGetter = writer.format("xml.attributes['$L']", xmlName);
                target.accept(new XmlAttributeDeserializer(member, dataSetter, valueGetter, false));
            } else {
                if (member.hasTrait(XmlFlattenedTrait.class)) {
                    writer.openBlock("xml.children('$L') do |children|", xmlName);
                    target.accept(new MemberDeserializer(member, dataSetter));
                    writer.closeBlock("end");
                } else {
                    writer.openBlock("xml.at('$L') do |node|", xmlName);
                    target.accept(new MemberDeserializer(member, dataSetter));
                    writer.closeBlock("end");
                }
            }
        });
    }

    @Override
    protected void renderBodyParser(Shape outputShape) {
        writer
                .write("body = http_resp.body.read")
                .write("xml = Hearth::XML.parse(body) unless body.empty?");

        if (outputShape.getId().getName().equals("IgnoreQueryParamsInResponseOutput")) {
            System.out.println("HERE");
        }
        renderMemberParsers(outputShape);
    }

    private String unionMemberDataName(UnionShape s, MemberShape member) {
        String dataName = member.getMemberName();
        String xmlName = dataName;
        if (member.hasTrait(XmlNameTrait.class)) {
            xmlName = member.getTrait(XmlNameTrait.class).get().getValue();
        }
        return xmlName;
    }

    @Override
    protected void renderUnionParseMethod(UnionShape s) {
        writer
                .openBlock("def self.parse(xml)")
                .write("value = xml.children.first")
                .write("key = value.name")
                .write("case key")
                .call(() -> {
                    s.members().forEach((member) -> {
                        writer
                                .write("when '$L'", unionMemberDataName(s, member))
                                .indent()
                                .write("node = value")
                                .call(() -> {
                                    Shape target = model.expectShape(member.getTarget());
                                    target.accept(new MemberDeserializer(member, "value = "));
                                })
                                .write("Types::$L::$L.new(value) if value", symbolProvider.toSymbol(s).getName(),
                                        symbolProvider.toMemberName(member))
                                .dedent();
                    });
                })
                .openBlock("else")
                .write("Types::$L::Unknown.new({name: key, value: value})", s.getId().getName())
                .closeBlock("end") // end of case
                .closeBlock("end");
    }

    @Override
    protected void renderMapParseMethod(MapShape s) {
        writer
                .openBlock("def self.parse(xml)")
                .write("data = {}")
                .openBlock("xml.each do |entry_node|")
                .call(() -> {
                    String keyName = "key";
                    if (s.getKey().hasTrait(XmlNameTrait.class)) {
                        keyName = s.getKey().getTrait(XmlNameTrait.class).get().getValue();
                    }
                    writer.write("key = entry_node.at('$L').text", keyName);

                    Shape valueTarget = model.expectShape(s.getValue().getTarget());
                    String valueName = "value";
                    if (s.getValue().hasTrait(XmlNameTrait.class)) {
                        valueName = s.getValue().getTrait(XmlNameTrait.class).get().getValue();
                    }
                    writer.write("node = entry_node.at('$L')", valueName);
                    valueTarget.accept(new MemberDeserializer(s.getValue(), "data[key] = "));
                })
                .closeBlock("end")
                .write("data")
                .closeBlock("end");
    }

    @Override
    protected void renderSetParseMethod(SetShape s) {
        writer
                .openBlock("def self.parse(xml)")
                .write("data = Set.new")
                .openBlock("xml.each do |node|")
                .call(() -> {
                    Shape memberTarget =
                            model.expectShape(s.getMember().getTarget());
                    memberTarget
                            .accept(new MemberDeserializer(s.getMember(),
                                    "data << "));
                })
                .closeBlock("end")
                .write("data")
                .closeBlock("end");
    }

    @Override
    protected void renderListParseMethod(ListShape s) {
        writer
                .openBlock("def self.parse(xml)")
                .write("data = []")
                .openBlock("xml.each do |node|")
                .call(() -> {
                    Shape memberTarget =
                            model.expectShape(s.getMember().getTarget());
                    memberTarget
                            .accept(new MemberDeserializer(s.getMember(),
                                    "data << "));
                })
                .closeBlock("end")
                .write("data")
                .closeBlock("end");
    }

    @Override
    protected void renderStructureParseMethod(StructureShape s) {
        writer
                .openBlock("def self.parse(xml)")
                .write("data = Types::$L.new", symbolProvider.toSymbol(s).getName())
                .call(() -> renderMemberParsers(s))
                .write("return data")
                .closeBlock("end");
    }

    private class XmlAttributeDeserializer extends ShapeVisitor.Default<Void> {

        private final String valueGetter;
        private final String dataSetter;
        private final MemberShape memberShape;
        private final boolean checkRequired;

        XmlAttributeDeserializer(MemberShape memberShape,
                                 String dataSetter, String valueGetter, boolean checkRequired) {
            this.valueGetter = valueGetter;
            this.dataSetter = dataSetter;
            this.memberShape = memberShape;
            this.checkRequired = checkRequired;
        }

        private String checkRequired() {
            if (this.checkRequired) {
                return " unless " + valueGetter + ".nil?";
            } else {
                return "";
            }
        }

        /**
         * For simple shapes, just copy to the data.
         */
        @Override
        protected Void getDefault(Shape shape) {
            writer.write("$L$L$L", dataSetter, valueGetter, checkRequired());
            return null;
        }

        private void rubyFloat() {
            writer.write("$LHearth::NumberHelper.deserialize($L)$L", dataSetter, valueGetter, checkRequired());
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
            // the default protocol format is date_time, which is parsed by Time.parse
            Optional<TimestampFormatTrait> format = memberShape.getTrait(TimestampFormatTrait.class);
            if (format.isPresent()) {
                switch (format.get().getFormat()) {
                    case HTTP_DATE:
                    case DATE_TIME:
                        writer.write("$1LTime.parse($2L) if $2L", dataSetter, valueGetter);
                        break;
                    case EPOCH_SECONDS:
                    default:
                        writer.write("$1LTime.at($2L.to_i) if $2L", dataSetter, valueGetter);
                        break;
                }
            } else {
                writer.write("$1LTime.at($2L.to_i) if $2L", dataSetter, valueGetter);
            }
            return null;
        }

        // Complex shapes are not supported on xml attributes.
    }

    private class MemberDeserializer extends ShapeVisitor.Default<Void> {

        private final String dataSetter;
        private final MemberShape memberShape;

        MemberDeserializer(MemberShape memberShape, String dataSetter) {
            this.memberShape = memberShape;
            this.dataSetter = dataSetter;
        }

        /**
         * For simple shapes, copy the text data.
         */
        @Override
        protected Void getDefault(Shape shape) {
            writer.write("$Lnode.text", dataSetter);
            return null;
        }

        private void rubyFloat() {
            writer.write("$LHearth::NumberHelper.deserialize(node.text)", dataSetter);
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
        public Void booleanShape(BooleanShape shape) {
            writer.write("$L(node.text == 'true')", dataSetter);
            return null;
        }


        @Override
        public Void integerShape(IntegerShape shape) {
            writer.write("$Lnode.text&.to_i", dataSetter);
            return null;
        }

        @Override
        public Void byteShape(ByteShape shape) {
            writer.write("$Lnode.text&.to_i", dataSetter);
            return null;
        }

        @Override
        public Void longShape(LongShape shape) {
            writer.write("$Lnode.text&.to_i", dataSetter);
            return null;
        }

        @Override
        public Void shortShape(ShortShape shape) {
            writer.write("$Lnode.text&.to_i", dataSetter);
            return null;
        }

        @Override
        public Void stringShape(StringShape shape) {
            writer.write("$L(node.text || '')", dataSetter);
            return null;
        }

        @Override
        public Void blobShape(BlobShape shape) {
            writer.write("$1L((Base64::decode64(node.text) unless node.text.nil?) || '')", dataSetter);
            return null;
        }

        @Override
        public Void timestampShape(TimestampShape shape) {
            // the default protocol format is date_time, which is parsed by Time.parse
            Optional<TimestampFormatTrait> format = memberShape.getTrait(TimestampFormatTrait.class);
            if (format.isPresent()) {
                switch (format.get().getFormat()) {
                    case HTTP_DATE:
                    case DATE_TIME:
                        writer.write("$1LTime.parse(node.text) if node.text", dataSetter);
                        break;
                    case EPOCH_SECONDS:
                    default:
                        writer.write("$1LTime.at(node.text.to_i) if node.text", dataSetter);
                        break;
                }
            } else {
                writer.write("$1LTime.parse(node.text) if node.text", dataSetter);
            }
            return null;
        }

        /**
         * For complex shapes, simply delegate to their builder.
         */
        private void defaultComplexDeserializer(Shape shape) {
            writer.write("$1LParsers::$2L.parse(node)",
                    dataSetter, symbolProvider.toSymbol(shape).getName());
        }

        @Override
        public Void listShape(ListShape shape) {
            MemberShape targetMember = shape.getMember();
            String xmlName = targetMember.getMemberName();
            if (targetMember.hasTrait(XmlNameTrait.class)) {
                xmlName = targetMember.getTrait(XmlNameTrait.class).get().getValue();
            }
            if (!memberShape.hasTrait(XmlFlattenedTrait.class)) {
                writer.write("children = node.children('$L')", xmlName);
            }
            writer.write("$1LParsers::$2L.parse(children)",
                    dataSetter, symbolProvider.toSymbol(shape).getName());
            return null;
        }

        @Override
        public Void setShape(SetShape shape) {
            MemberShape targetMember = shape.getMember();
            String xmlName = targetMember.getMemberName();
            if (targetMember.hasTrait(XmlNameTrait.class)) {
                xmlName = targetMember.getTrait(XmlNameTrait.class).get().getValue();
            }
            if (!memberShape.hasTrait(XmlFlattenedTrait.class)) {
                writer.write("children = node.children('$L')", xmlName);
            }
            writer.write("$1LParsers::$2L.parse(children)",
                    dataSetter, symbolProvider.toSymbol(shape).getName());
            return null;
        }

        @Override
        public Void mapShape(MapShape shape) {
            if (!memberShape.hasTrait(XmlFlattenedTrait.class)) {
                writer.write("children = node.children('entry')");
            }
            writer.write("$1LParsers::$2L.parse(children)",
                    dataSetter, symbolProvider.toSymbol(shape).getName());
            return null;
        }

        @Override
        public Void structureShape(StructureShape shape) {
            defaultComplexDeserializer(shape);
            return null;
        }

        @Override
        public Void unionShape(UnionShape shape) {
            defaultComplexDeserializer(shape);
            return null;
        }
    }
}

