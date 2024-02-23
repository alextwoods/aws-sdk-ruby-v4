package software.amazon.smithy.aws.ruby.codegen;

import java.util.HashMap;
import java.util.Map;
import software.amazon.smithy.aws.ruby.codegen.protocol.ec2.Ec2Query;
import software.amazon.smithy.aws.ruby.codegen.protocol.json.AwsJson1_1;
import software.amazon.smithy.aws.ruby.codegen.protocol.json10.AwsJson1_0;
import software.amazon.smithy.aws.ruby.codegen.protocol.query.AwsQuery;
import software.amazon.smithy.aws.ruby.codegen.protocol.restjson.RestJson1;
import software.amazon.smithy.aws.ruby.codegen.protocol.restxml.RestXml;
import software.amazon.smithy.aws.traits.auth.SigV4Trait;
import software.amazon.smithy.model.traits.HttpBasicAuthTrait;
import software.amazon.smithy.ruby.codegen.GenerationContext;
import software.amazon.smithy.ruby.codegen.Hearth;
import software.amazon.smithy.ruby.codegen.ProtocolGenerator;
import software.amazon.smithy.ruby.codegen.RubyDependency;
import software.amazon.smithy.ruby.codegen.RubyIntegration;
import software.amazon.smithy.ruby.codegen.auth.AuthScheme;
import software.amazon.smithy.ruby.codegen.config.ClientConfig;
import software.amazon.smithy.ruby.codegen.rulesengine.BuiltInBinding;
import software.amazon.smithy.ruby.codegen.rulesengine.FunctionBinding;
import software.amazon.smithy.rulesengine.aws.language.functions.AwsBuiltIns;
import software.amazon.smithy.rulesengine.aws.language.functions.AwsPartition;
import software.amazon.smithy.rulesengine.aws.language.functions.IsVirtualHostableS3Bucket;
import software.amazon.smithy.rulesengine.aws.language.functions.ParseArn;
import software.amazon.smithy.rulesengine.aws.language.functions.partition.Partitions;
import software.amazon.smithy.utils.ListUtils;

import java.util.List;

public class AWSProtocols implements RubyIntegration {
    @Override
    public List<ProtocolGenerator> getProtocolGenerators() {
        return ListUtils.of(
                new AwsJson1_0(),
                new AwsJson1_1(),
                new AwsQuery(),
                new Ec2Query(),
                new RestJson1(),
                new RestXml()
        );
    }

    @Override
    public List<RubyDependency> getAdditionalGemDependencies(GenerationContext context) {
        return List.of(RubyDependency.builder()
                .type(RubyDependency.Type.DEPENDENCY)
                .gemName("aws-sdk-core")
                .importPath("aws-sdk-core")
                .version("~> 4.0.0.pre1")
                .addDependency(RubyDependency.HEARTH)
                .build());
    }

    @Override
    public List<AuthScheme> getAdditionalAuthSchemes(GenerationContext context) {
        AuthScheme authScheme = AuthScheme.builder()
                .shapeId(SigV4Trait.ID)
                .rubyAuthScheme("String.new")
                .rubyIdentityType("String")
                .build();

        return List.of(authScheme);
    }

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
                // TODO: Additional S3 and Auth specific should be in other customizations
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
                // TODO: Move this to S3 specific Integration
//                FunctionBinding.builder()
//                        .id(IsVirtualHostableS3Bucket.ID)
//                        .rubyMethodName("AWS::SDK::Core::EndpointRules.virtual_hostable_s3_bucket?")
//                        .build()

        );
    }
}
