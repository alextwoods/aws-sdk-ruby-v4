package software.amazon.smithy.aws.ruby.codegen;

import software.amazon.smithy.ruby.codegen.RubyIntegration;
import software.amazon.smithy.ruby.codegen.rulesengine.BuiltInBinding;
import software.amazon.smithy.ruby.codegen.rulesengine.FunctionBinding;
import software.amazon.smithy.rulesengine.aws.language.functions.AwsBuiltIns;
import software.amazon.smithy.rulesengine.aws.language.functions.AwsPartition;
import software.amazon.smithy.rulesengine.aws.language.functions.ParseArn;

import java.util.List;

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
