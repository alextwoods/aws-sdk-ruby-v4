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

package software.amazon.smithy.aws.ruby.codegen;

import java.util.List;
import software.amazon.smithy.ruby.codegen.RubyIntegration;
import software.amazon.smithy.ruby.codegen.rulesengine.BuiltInBinding;
import software.amazon.smithy.ruby.codegen.rulesengine.FunctionBinding;
import software.amazon.smithy.rulesengine.aws.language.functions.AwsBuiltIns;
import software.amazon.smithy.rulesengine.aws.language.functions.AwsPartition;
import software.amazon.smithy.rulesengine.aws.language.functions.ParseArn;

public class EndpointRules implements RubyIntegration {
    @Override
    public List<BuiltInBinding> builtInBindings() {
        return List.of(
                BuiltInBinding.builder()
                        .builtIn(AwsBuiltIns.REGION)
                        .fromConfig(AWSConfig.REGION)
                        .build(),
                BuiltInBinding.builder()
                        .builtIn(AwsBuiltIns.DUALSTACK)
                        .fromConfig(AWSConfig.DUALSTACK)
                        .build(),
                BuiltInBinding.builder()
                        .builtIn(AwsBuiltIns.FIPS)
                        .fromConfig(AWSConfig.FIPS)
                        .build()
        );
    }

    @Override
    public List<FunctionBinding> functionBindings() {
        return List.of(
                FunctionBinding.builder()
                        .id(AwsPartition.ID)
                        .rubyMethodName("AWS::SDK::Core::EndpointRules.partition")
                        .build(),
                FunctionBinding.builder()
                        .id(ParseArn.ID)
                        .rubyMethodName("AWS::SDK::Core::EndpointRules.parse_arn")
                        .build()

        );
    }
}
