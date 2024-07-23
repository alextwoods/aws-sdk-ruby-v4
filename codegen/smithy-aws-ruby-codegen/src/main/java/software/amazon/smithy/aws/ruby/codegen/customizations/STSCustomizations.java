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

package software.amazon.smithy.aws.ruby.codegen.customizations;

import java.util.List;
import software.amazon.smithy.model.Model;
import software.amazon.smithy.model.shapes.ServiceShape;
import software.amazon.smithy.model.shapes.ShapeId;
import software.amazon.smithy.ruby.codegen.RubyIntegration;
import software.amazon.smithy.ruby.codegen.rulesengine.BuiltInBinding;
import software.amazon.smithy.rulesengine.aws.language.functions.AwsBuiltIns;

@SuppressWarnings("checkstyle:AbbreviationAsWordInName")
public class STSCustomizations implements RubyIntegration {
    @Override
    public boolean includeFor(ServiceShape service, Model model) {
        return service.toShapeId().equals(ShapeId.from("com.amazonaws.sts#AWSSecurityTokenServiceV20110615"));
    }

    @Override
    public List<BuiltInBinding> builtInBindings() {
        return List.of(
                BuiltInBinding.builder()
                        .builtIn(AwsBuiltIns.STS_USE_GLOBAL_ENDPOINT)
                        .fromConstantValue("'false'")
                        .build()
        );
    }

}
