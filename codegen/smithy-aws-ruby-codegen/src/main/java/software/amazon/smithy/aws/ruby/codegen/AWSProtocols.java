package software.amazon.smithy.aws.ruby.codegen;

import software.amazon.smithy.aws.ruby.codegen.protocol.ec2.Ec2Query;
import software.amazon.smithy.aws.ruby.codegen.protocol.json.AwsJson1_1;
import software.amazon.smithy.aws.ruby.codegen.protocol.json10.AwsJson1_0;
import software.amazon.smithy.aws.ruby.codegen.protocol.query.AwsQuery;
import software.amazon.smithy.aws.ruby.codegen.protocol.restjson.RestJson1;
import software.amazon.smithy.aws.ruby.codegen.protocol.restxml.RestXml;
import software.amazon.smithy.aws.traits.auth.SigV4Trait;
import software.amazon.smithy.ruby.codegen.GenerationContext;
import software.amazon.smithy.ruby.codegen.Hearth;
import software.amazon.smithy.ruby.codegen.ProtocolGenerator;
import software.amazon.smithy.ruby.codegen.RubyDependency;
import software.amazon.smithy.ruby.codegen.RubyIntegration;
import software.amazon.smithy.ruby.codegen.auth.AuthParam;
import software.amazon.smithy.ruby.codegen.auth.AuthScheme;
import software.amazon.smithy.ruby.codegen.config.ClientConfig;
import software.amazon.smithy.utils.ListUtils;

import java.util.List;
import java.util.Map;

import static software.amazon.smithy.aws.ruby.codegen.Aws.AWS_CREDENTIALS_IDENTITY;

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
    public List<ClientConfig> getAdditionalClientConfig(GenerationContext context) {
        return List.of(AWSConfig.PROFILE);
    }

    @Override
    public List<AuthScheme> getAdditionalAuthSchemes(GenerationContext context) {
        return List.of(sigv4AuthScheme());
    }

    private AuthScheme sigv4AuthScheme() {
        String credentialProviderDocumentation = """
                A credential provider is a class that fetches your AWS credentials. This can be an instance
                of any one of the following classes:
                        
                * `AWS::SDK::Core::StaticCredentialProvider` - Used for fetching static, non-refreshing
                  credentials.
                        
                * `AWS::SDK::Core::AssumeRoleCredentialProvider` - Used when you need to assume a role.
                        
                * `AWS::SDK::Core::AssumeRoleWebIdentityCredentialProvider` - Used when you need to
                  assume a role after providing credentials via the web using a token.
                        
                * `AWS::SDK::Core::SSOCredentialProvider` - Used for loading credentials from AWS SSO
                  using an access token generated from `aws login`.
                        
                * `AWS::SDK::Core::ProcessCredentialProvider` - Used for loading credentials from a
                  process that outputs JSON to stdout.
                        
                * `AWS::SDK::Core::EC2CredentialProvider` - Used for loading credentials from the instance
                  metadata service (IMDS) on an EC2 instance.
                        
                * `AWS::SDK::Core::ECSCredentialProvider - Used for loading credentials from instances
                  running in ECS.
                        
                * `AWS::SDK::CognitoIdentity::CredentialProvider` - Used for loading credentials
                  from the Cognito Identity service.
                        
                When `:credential_provider` is not configured directly, the following
                locations will be searched for credentials:
                        
                * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY'], and other
                  ENV variables that influence credentials.
                * `~/.aws/credentials` and `~/.aws/config`
                * EC2/ECS instance profiles.
                  
                @see AWS::SDK::Core::CREDENTIAL_PROVIDER_CHAIN""";

        String identityProviderChain = "nil"; // TODO: Add the actual credential/identity provider chain
        String defaultIdentity = "%s.new(access_key_id: 'stubbed-akid', secret_access_key: 'stubbed-secret')"
                .formatted(AWS_CREDENTIALS_IDENTITY);
        String defaultConfigValue = "cfg[:stub_responses] ? %s.new(proc { %s }) : %s"
                .formatted(Hearth.IDENTITY_PROVIDER, defaultIdentity, identityProviderChain);

        ClientConfig identityProviderConfig = ClientConfig.builder()
                .name("credential_provider")
                .documentationRbsAndValidationType(Hearth.IDENTITY_PROVIDER.toString())
                .documentation(credentialProviderDocumentation)
                .defaultDynamicValue(defaultConfigValue)
                .build();

        return AuthScheme.builder()
                .shapeId(SigV4Trait.ID)
                .rubyAuthScheme("AWS::SDK::Core::AuthSchemes::SigV4.new")
                .rubyIdentityType(Aws.AWS_CREDENTIALS_IDENTITY.toString())
                .identityProviderConfig(identityProviderConfig)
                .extractSignerProperties((trait -> {
                    SigV4Trait sigv4 = (SigV4Trait) trait;
                    return Map.of(
                            "service", "'" + sigv4.getName() + "'",
                            "region", "params.region"
                            );
                }))
                .additionalConfig(AWSConfig.REGION)
                .additionalAuthParam(AuthParam.builder()
                        .name("region")
                        .rbsType("::String")
                        .paramValue("config.region")
                        .build()
                )
                .build();
    }
}
