package software.amazon.smithy.aws.ruby.codegen;

import software.amazon.smithy.ruby.codegen.GenerationContext;
import software.amazon.smithy.ruby.codegen.RubyIntegration;
import software.amazon.smithy.ruby.codegen.config.ClientConfig;
import software.amazon.smithy.ruby.codegen.config.ConfigProviderChain;
import software.amazon.smithy.ruby.codegen.middleware.Middleware;

import software.amazon.smithy.ruby.codegen.middleware.MiddlewareBuilder;
import software.amazon.smithy.ruby.codegen.middleware.MiddlewareStackStep;

public class Signers implements RubyIntegration {

    @Override
    public void modifyClientMiddleware(MiddlewareBuilder middlewareBuilder, GenerationContext context) {
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

        ClientConfig credentialProvider = (new ClientConfig.Builder())
                .name("credential_provider")
                .type("AWS::SDK::Core::CredentialProvider")
                .documentation(credentialProviderDocumentation)
                .defaultValue("*AWS::SDK::Core::CREDENTIAL_PROVIDER_CHAIN")
                .build();

        String regionDocumentation = """
                The AWS region to connect to. The configured `:region` is
                used to determine the service `:endpoint`. When not passed,
                a default `:region` is searched for in the following locations:
                                
                * `ENV['AWS_REGION']`
                * `~/.aws/credentials` and `~/.aws/config`
                """;

        ClientConfig region = (new ClientConfig.Builder())
                .name("region")
                .type("String")
                .documentation(regionDocumentation)
                .defaults(new ConfigProviderChain.Builder()
                        .envProvider("AWS_REGION", "String")
                        .sharedConfigProvider("region", "String")
                        .staticProvider("nil")
                        .build())
                .defaultValue("nil")
                .build();

        Middleware signer = (new Middleware.Builder())
                .klass("Middleware::Signer")
                .step(MiddlewareStackStep.FINALIZE)
                .addConfig(credentialProvider)
                .addConfig(region)
                .build();
        middlewareBuilder.register(signer);
    }
}
