package software.amazon.smithy.aws.ruby.codegen;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;
import software.amazon.smithy.aws.traits.auth.SigV4Trait;
import software.amazon.smithy.aws.traits.auth.UnsignedPayloadTrait;
import software.amazon.smithy.model.Model;
import software.amazon.smithy.model.knowledge.ServiceIndex;
import software.amazon.smithy.model.shapes.ServiceShape;
import software.amazon.smithy.model.traits.HttpBearerAuthTrait;
import software.amazon.smithy.model.traits.OptionalAuthTrait;
import software.amazon.smithy.ruby.codegen.ClientFragment;
import software.amazon.smithy.ruby.codegen.GenerationContext;
import software.amazon.smithy.ruby.codegen.Hearth;
import software.amazon.smithy.ruby.codegen.RubyIntegration;
import software.amazon.smithy.ruby.codegen.config.ClientConfig;
import software.amazon.smithy.ruby.codegen.config.ConfigProviderChain;
import software.amazon.smithy.ruby.codegen.middleware.Middleware;
import software.amazon.smithy.ruby.codegen.middleware.MiddlewareBuilder;
import software.amazon.smithy.ruby.codegen.middleware.MiddlewareStackStep;

public class HttpBearerAuth implements RubyIntegration {

    private static final Logger LOGGER =
            Logger.getLogger(HttpBearerAuth.class.getName());

    @Override
    public boolean includeFor(ServiceShape service, Model model) {
       return new ServiceIndex(model).getAuthSchemes(service).containsKey(HttpBearerAuthTrait.ID);
    }

    @Override
    public List<ClientConfig> getAdditionalClientConfig(GenerationContext context) {
        // override the Hearth configuration (specifically documentation and defaults) with
        // AWS specific values.
        String providerDocumentation = """
                A credentials provider fetches an HTTP Bearer Token and responds to the `#identity` 
                method. This can be an instance of any one of the following classes:
                        
                * `AWS::SDK::Core::SSOBearerProvider` - Used for fetching a bearer token from
                  SSO-OIDC.
                  
                When `:http_bearer_provider` is not configured directly, the 
                AWS::SDK::Core::HTTP_BEARER_PROVIDER_CHAIN is searched.
                
                @see AWS::SDK::Core::CREDENTIALS_PROVIDER_CHAIN
                """;
        String identityProviderChain = " *AWS::SDK::Core::HTTP_BEARER_PROVIDER_CHAIN";
        String defaultIdentity = "Hearth::Identities::HTTPBearer.new(token: 'token')";
        String defaultConfigValue = "cfg[:stub_responses] ? %s.new(proc { %s }) : nil"
                .formatted(Hearth.IDENTITY_PROVIDER, defaultIdentity);

        ClientConfig identityProviderConfig = ClientConfig.builder()
                .name("http_bearer_provider")
                .documentationRbsAndValidationType(Hearth.IDENTITY_PROVIDER.toString())
                .documentation(providerDocumentation)
                .defaults(ConfigProviderChain.builder()
                        .dynamicProvider(defaultConfigValue)
                        .staticProvider(identityProviderChain)
                        .build())
                .build();

        return List.of(identityProviderConfig);
    }

}
