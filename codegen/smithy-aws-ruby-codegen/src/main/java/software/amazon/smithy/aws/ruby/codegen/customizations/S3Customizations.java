package software.amazon.smithy.aws.ruby.codegen.customizations;

import software.amazon.smithy.aws.traits.HttpChecksumTrait;
import software.amazon.smithy.aws.traits.auth.SigV4Trait;
import software.amazon.smithy.model.Model;
import software.amazon.smithy.model.knowledge.TopDownIndex;
import software.amazon.smithy.model.shapes.ServiceShape;
import software.amazon.smithy.model.shapes.ShapeId;
import software.amazon.smithy.ruby.codegen.GenerationContext;
import software.amazon.smithy.ruby.codegen.RubyIntegration;
import software.amazon.smithy.ruby.codegen.auth.AuthScheme;
import software.amazon.smithy.ruby.codegen.config.ClientConfig;
import software.amazon.smithy.ruby.codegen.config.ConfigProviderChain;
import software.amazon.smithy.ruby.codegen.rulesengine.BuiltInBinding;
import software.amazon.smithy.ruby.codegen.rulesengine.FunctionBinding;
import software.amazon.smithy.rulesengine.aws.language.functions.AwsBuiltIns;
import software.amazon.smithy.rulesengine.aws.language.functions.IsVirtualHostableS3Bucket;

import java.util.List;

public class S3Customizations implements RubyIntegration {

    @Override
    public boolean includeFor(ServiceShape service, Model model) {
        return service.toShapeId().equals(ShapeId.from("com.amazonaws.s3#AmazonS3"));
    }


    @Override
    public List<BuiltInBinding> builtInBindings() {
        return List.of(
                BuiltInBinding.builder()
                        .builtIn(AwsBuiltIns.S3_ACCELERATE)
                        .fromConfig(S3_ACCELERATE)
                        .build(),
                BuiltInBinding.builder()
                        .builtIn(AwsBuiltIns.S3_DISABLE_MRAP)
                        .fromConfig(S3_DISABLE_MRAP)
                        .build(),
                BuiltInBinding.builder()
                        .builtIn(AwsBuiltIns.S3_FORCE_PATH_STYLE)
                        .fromConfig(S3_FORCE_PATH_STYLE)
                        .build(),
                BuiltInBinding.builder()
                        .builtIn(AwsBuiltIns.S3_USE_ARN_REGION)
                        .fromConfig(S3_USE_ARN_REGION)
                        .build(),
                BuiltInBinding.builder()
                        .builtIn(AwsBuiltIns.S3_USE_GLOBAL_ENDPOINT)
                        .fromConstantValue("false")
                        .build()
        );
    }

    @Override
    public List<FunctionBinding> functionBindings() {
        return List.of(
                FunctionBinding.builder()
                        .id(IsVirtualHostableS3Bucket.ID)
                        .rubyMethodName("AWS::SDK::S3::Endpoints.virtual_hostable_s3_bucket?")
                        .rubySource("smithy-aws-ruby-codegen/customizations/s3/endpoint_rules.rb")
                        .build()

        );
    }


    public static final ClientConfig S3_ACCELERATE = ClientConfig.builder()
            .name("use_accelerate_endpoint")
            .type("Boolean")
            .documentation("""
                    When set to `true`, accelerated bucket endpoints will be used
                    for all object operations. You must first enable accelerate for
                    each bucket. [Go here for more information](http://docs.aws.amazon.com/AmazonS3/latest/dev/transfer-acceleration.html).
                    """)
            .defaultValue("false")
            .build();

    public static final ClientConfig S3_DISABLE_MRAP = ClientConfig.builder()
            .name("s3_disable_multiregion_access_points")
            .type("Boolean")
            .documentation("""
When set to `false` this will option will raise errors when multi-region
access point ARNs are used.  Multi-region access points can potentially
result in cross region requests.
                    """)
            .documentationDefaultValue("false")
            .defaults(ConfigProviderChain.builder()
                    .envProvider("AWS_S3_DISABLE_MULTIREGION_ACCESS_POINTS", "Boolean")
                    .sharedConfigProvider("s3_disable_multiregion_access_points", "Boolean")
                    .staticProvider("false")
                    .build())
            .build();

    public static final ClientConfig S3_FORCE_PATH_STYLE = ClientConfig.builder()
            .name("force_path_style")
            .type("Boolean")
            .documentation("""
When set to `true`, the bucket name is always left in the
request URI and never moved to the host as a sub-domain.
                    """)
            .defaultValue("false")
            .build();

    public static final ClientConfig S3_USE_ARN_REGION = ClientConfig.builder()
            .name("s3_use_arn_region")
            .type("Boolean")
            .documentation("""
When set to `false` this will option will raise errors when multi-region
access point ARNs are used.  Multi-region access points can potentially
result in cross region requests.
                    """)
            .documentationDefaultValue("true")
            .defaults(ConfigProviderChain.builder()
                    .envProvider("AWS_S3_USE_ARN_REGION", "Boolean")
                    .sharedConfigProvider("s3_use_arn_region", "Boolean")
                    .staticProvider("true")
                    .build())
            .build();
}
