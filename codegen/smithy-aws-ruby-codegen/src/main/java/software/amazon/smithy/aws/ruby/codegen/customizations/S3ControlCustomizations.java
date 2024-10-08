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
import software.amazon.smithy.ruby.codegen.config.ClientConfig;
import software.amazon.smithy.ruby.codegen.config.ConfigProviderChain;
import software.amazon.smithy.ruby.codegen.rulesengine.BuiltInBinding;
import software.amazon.smithy.rulesengine.aws.language.functions.AwsBuiltIns;

public class S3ControlCustomizations implements RubyIntegration {

    @Override
    public boolean includeFor(ServiceShape service, Model model) {
        return service.toShapeId().equals(ShapeId.from("com.amazonaws.s3control#AWSS3ControlServiceV20180820"));
    }

    @Override
    public List<BuiltInBinding> builtInBindings() {
        return List.of(BuiltInBinding.builder()
                .builtIn(AwsBuiltIns.S3_CONTROL_USE_ARN_REGION)
                .fromConfig(USE_ARN_REGION)
                .build());
    }

    private static final String USE_ARN_REGION_DOCS = """
            For S3 and S3 Outposts ARNs passed into the `:bucket` or `:name`
            parameter, this option will use the region in the ARN, allowing
            for cross-region requests to be made. Set to `false` to use the
            client's region instead.
                                """;
    public static final ClientConfig USE_ARN_REGION = ClientConfig.builder()
            .name("use_arn_region")
            .documentationRbsAndValidationType("Boolean")
            .documentation(USE_ARN_REGION_DOCS)
            .documentationDefaultValue("true")
            .defaults(ConfigProviderChain.builder()
                    .envProvider("AWS_S3_USE_ARN_REGION", "Boolean")
                    .sharedConfigProvider("s3_use_arn_region", "Boolean")
                    .staticProvider("true")
                    .build())
            .build();
}
