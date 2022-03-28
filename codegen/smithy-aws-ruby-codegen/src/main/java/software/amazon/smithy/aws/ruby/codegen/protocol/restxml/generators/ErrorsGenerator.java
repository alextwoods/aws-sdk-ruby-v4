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

import software.amazon.smithy.aws.ruby.codegen.protocol.restxml.RestXml;
import software.amazon.smithy.aws.traits.protocols.RestXmlTrait;
import software.amazon.smithy.ruby.codegen.GenerationContext;
import software.amazon.smithy.ruby.codegen.generators.ErrorsGeneratorBase;

public class ErrorsGenerator extends ErrorsGeneratorBase {

    public ErrorsGenerator(GenerationContext context) {
        super(context);
    }

    @Override
    public void renderErrorCodeBody() {
        writer
                .openBlock("if !(200..299).cover?(resp.status)")
                .write("body = resp.body.read")
                .write("resp.body.rewind")
                .write("xml = Hearth::XML.parse(body) unless body.empty?")
                .write("return unless xml")
                .call( () -> {
                    if (context.service()
                            .getTrait(RestXmlTrait.class).get().isNoErrorWrapping()) {
                        writer
                                .write("return unless xml.name == 'Error'");
                    } else {
                        writer
                                .write("return unless xml.name == 'ErrorResponse'")
                                .write("xml = xml.at('Error')");
                    }
                })
                .openBlock("if xml")
                .write("xml.text_at('Code')")
                .closeBlock("end")
                .closeBlock("end");
    }
}
