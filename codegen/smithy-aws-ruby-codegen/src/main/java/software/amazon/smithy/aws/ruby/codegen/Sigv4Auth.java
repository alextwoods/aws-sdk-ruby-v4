package software.amazon.smithy.aws.ruby.codegen;

import java.util.HashMap;
import java.util.Map;
import java.util.logging.Logger;
import software.amazon.smithy.aws.traits.auth.SigV4Trait;
import software.amazon.smithy.aws.traits.auth.UnsignedPayloadTrait;
import software.amazon.smithy.model.Model;
import software.amazon.smithy.model.knowledge.ServiceIndex;
import software.amazon.smithy.model.shapes.ServiceShape;
import software.amazon.smithy.model.traits.OptionalAuthTrait;
import software.amazon.smithy.ruby.codegen.ClientFragment;
import software.amazon.smithy.ruby.codegen.GenerationContext;
import software.amazon.smithy.ruby.codegen.RubyIntegration;
import software.amazon.smithy.ruby.codegen.config.ClientConfig;
import software.amazon.smithy.ruby.codegen.middleware.Middleware;
import software.amazon.smithy.ruby.codegen.middleware.MiddlewareBuilder;
import software.amazon.smithy.ruby.codegen.middleware.MiddlewareStackStep;

public class Sigv4Auth implements RubyIntegration {

    private static final Logger LOGGER =
            Logger.getLogger(Sigv4Auth.class.getName());

    @Override
    public boolean includeFor(ServiceShape service, Model model) {
       return false; // new ServiceIndex(model).getAuthSchemes(service).containsKey(SigV4Trait.ID);
    }

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

        ClientConfig credentialProvider = ClientConfig.builder()
                .name("credential_provider")
                .type("AWS::SDK::Core::CredentialProvider")
                .documentation(credentialProviderDocumentation)
                .defaultValue("AWS::SDK::Core::CREDENTIAL_PROVIDER_CHAIN")
                .build();

        SigV4Trait sigV4Trait = (SigV4Trait) new ServiceIndex(context.model())
                .getAuthSchemes(context.service()).get(SigV4Trait.ID);

        ClientFragment initializeSigner = new ClientFragment.Builder()
                .addConfig(credentialProvider)
                .addConfig(AWSConfig.REGION)
                .addConfig(AWSConfig.PROFILE)
                .build();

        String signerDefault = """
            AWS::SigV4::Signer.new(service: '%s', region: cfg[:region], credential_provider: cfg[:credential_provider])
            """.formatted(sigV4Trait.getName());

        ClientConfig signer = ClientConfig.builder()
                .name("signer")
                .type("AWS::SigV4::Signer")
                .documentation("An instance of SigV4 signer used to sign requests.")
                .defaultDynamicValue(signerDefault)
                .build();

        Middleware signatureV4 = Middleware.builder()
                // Do not render if operation has optional auth
                .operationPredicate((model, service, operation) -> !operation.hasTrait(OptionalAuthTrait.class))
                .addConfig(signer)
                // If has unsigned body, then pass true
                .operationParams((ctx, operation) -> {
                    Map<String, String> params = new HashMap<>();
                    if (operation.hasTrait(UnsignedPayloadTrait.class)) {
                        params.put("unsigned_body", "true");
                    }
                    return params;
                })
                .klass("AWS::SDK::Core::Middleware::SignatureV4")
                .step(MiddlewareStackStep.SIGN)
                .build();

        middlewareBuilder.register(signatureV4);
    }
}
