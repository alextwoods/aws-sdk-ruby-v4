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

import software.amazon.smithy.aws.traits.protocols.AwsQueryErrorTrait;
import software.amazon.smithy.model.shapes.Shape;
import software.amazon.smithy.ruby.codegen.GenerationContext;
import software.amazon.smithy.ruby.codegen.generators.ErrorsGeneratorBase;

import java.util.List;

public class ErrorsGenerator extends ErrorsGeneratorBase {

    public ErrorsGenerator(GenerationContext context) {
        super(context);
    }

    @Override
    public void renderErrorCodeBody() {
        writer
                .call(() -> renderErrorCodesMap())
                .write("")
                .openBlock("def self.error_code(resp)")
                .openBlock("if !(200..299).cover?(resp.status)")
                .write("body = resp.body.read")
                .write("resp.body.rewind")
                .write("xml = Hearth::XML.parse(body) unless body.empty?")
                .write("return unless xml && xml.name == 'Response'")
                .write("xml = xml.at('Errors')&.at('Error')")
                .openBlock("if xml")
                .write("CODES[xml.text_at('Code')]")
                .closeBlock("end")
                .closeBlock("end")
                .closeBlock("end");
    }

    private void renderErrorCodesMap() {
        writer.openBlock("CODES = {");
        List<Shape> shapes = getErrorShapes();
        shapes.forEach(shape -> {
            String shapeName = symbolProvider.toSymbol(shape).getName();
            String code = shapeName;
            if (shape.hasTrait(AwsQueryErrorTrait.class)) {
                code = shape.getTrait(AwsQueryErrorTrait.class).get().getCode();
            }
            writer.write("$S => $S,", code, shapeName);
        });
        writer
                .unwrite(",\n").write("")
                .closeBlock("}");
    }
}
