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
import java.util.logging.Logger;
import software.amazon.smithy.model.Model;
import software.amazon.smithy.model.knowledge.ServiceIndex;
import software.amazon.smithy.model.shapes.ServiceShape;
import software.amazon.smithy.model.traits.HttpBearerAuthTrait;
import software.amazon.smithy.ruby.codegen.GenerationContext;
import software.amazon.smithy.ruby.codegen.Hearth;
import software.amazon.smithy.ruby.codegen.RubyIntegration;
import software.amazon.smithy.ruby.codegen.config.ClientConfig;
import software.amazon.smithy.ruby.codegen.config.ConfigProviderChain;

public class HttpBearerAuth implements RubyIntegration {

    private static final Logger LOGGER =
            Logger.getLogger(HttpBearerAuth.class.getName());

    @Override
    public boolean includeFor(ServiceShape service, Model model) {
        return new ServiceIndex(model).getAuthSchemes(service).containsKey(HttpBearerAuthTrait.ID);
    }

    @Override
    public List<ClientConfig> getAdditionalClientConfig(GenerationContext context) {
        String providerDocumentation = """
                A credentials provider fetches an HTTP Bearer Token and responds to the `#identity` 
                method. This can be an instance of any one of the following classes:
                        
                * `AWS::SDK::SSO::TokenProvider` - Used for fetching a bearer token from
                  SSO-OIDC.

                @see AWS::SDK::Core::CREDENTIALS_PROVIDER_CHAIN
                """;

        String identityProviderChain = "AWS::SDK::Core::HTTPBearerProviderChain";
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
