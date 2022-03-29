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

package software.amazon.smithy.aws.ruby.codegen.protocol.json10.generators;

import software.amazon.smithy.ruby.codegen.GenerationContext;
import software.amazon.smithy.ruby.codegen.generators.ErrorsGeneratorBase;

public class ErrorsGenerator extends ErrorsGeneratorBase {

    public ErrorsGenerator(GenerationContext context) {
        super(context);
    }

    @Override
    public void renderErrorCodeBody() {
        writer
                .write("")
                .openBlock("if !(200..299).cover?(resp.status)")
                .write("json = Hearth::JSON.load(resp.body)")
                .write("resp.body.rewind")
                .write("code = json['__type'] || json['code'] if json")
                .closeBlock("end")
                .write("code ||= resp.headers['x-amzn-errortype']")
                .openBlock("if code")
                .write("code.split('#').last.split(':').first")
                .closeBlock("end");
    }
}
