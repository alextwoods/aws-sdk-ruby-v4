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
import software.amazon.smithy.ruby.codegen.Hearth;
import software.amazon.smithy.ruby.codegen.config.ClientConfig;
import software.amazon.smithy.ruby.codegen.config.ConfigProviderChain;
import software.amazon.smithy.ruby.codegen.config.RespondsToConstraint;

/**
 * Utility class to define shared Config definitions.
 */
@SuppressWarnings("checkstyle:AbbreviationAsWordInName")
public final class AWSConfig {

    private static final String REGION_DOCUMENTATION = """
            The AWS region to connect to. The configured `:region` is
            used to determine the service `:endpoint`. When not provided,
            a default `:region` is searched for in the following locations:
                            
            * `ENV['AWS_REGION']`
            * `~/.aws/credentials` and `~/.aws/config`
            """;
    public static final ClientConfig REGION = ClientConfig.builder()
            .name("region")
            .documentationRbsAndValidationType("String")
            .documentation(REGION_DOCUMENTATION)
            .defaults(ConfigProviderChain.builder()
                    .dynamicProvider("('us-stubbed-1' if cfg[:stub_responses])")
                    .envProvider("AWS_REGION", "String")
                    .sharedConfigProvider("region", "String")
                    .build())
            .build();

    private static final String PROFILE_DOCUMENTATION = """
            Used when loading credentials and configuration from the shared credentials file
            at HOME/.aws/credentials.  When not specified, 'default' is used.
            """;
    public static final ClientConfig PROFILE = ClientConfig.builder()
            .name("profile")
            .documentationRbsAndValidationType("String")
            .documentation(PROFILE_DOCUMENTATION)
            .documentationDefaultValue("default")
            .defaults(ConfigProviderChain.builder()
                    .envProvider("AWS_PROFILE", "String")
                    .staticProvider("'default'")
                    .build())
            .build();

    private static final String ACCESS_KEY_ID_DOCUMENTATION = """
            The AWS access key ID to use.
            """;
    public static final ClientConfig ACCESS_KEY_ID = ClientConfig.builder()
            .name("access_key_id")
            .documentationRbsAndValidationType("String")
            .documentation(ACCESS_KEY_ID_DOCUMENTATION)
            .defaults(ConfigProviderChain.builder()
                    .dynamicProvider("('stubbed-ak' if cfg[:stub_responses])")
                    .build())
            .build();

    private final static String SECRET_ACCESS_KEY_DOCUMENTATION = """
            The AWS secret access key to use.
            """;
    public static final ClientConfig SECRET_ACCESS_KEY = ClientConfig.builder()
            .name("secret_access_key")
            .documentationRbsAndValidationType("String")
            .documentation(SECRET_ACCESS_KEY_DOCUMENTATION)
            .defaults(ConfigProviderChain.builder()
                    .dynamicProvider("('stubbed-secret' if cfg[:stub_responses])")
                    .build())
            .build();

    private final static String SESSION_TOKEN_DOCUMENTATION = """
            The AWS session token to use.
            """;
    public static final ClientConfig SESSION_TOKEN = ClientConfig.builder()
            .name("session_token")
            .documentationRbsAndValidationType("String")
            .documentation(SESSION_TOKEN_DOCUMENTATION)
            .defaults(ConfigProviderChain.builder()
                    .dynamicProvider("('stubbed-token' if cfg[:stub_responses])")
                    .build())
            .build();

    private static final String CREDENTIALS_PROVIDER_DOCUMENTATION = """
            A credentials provider is a class that fetches your AWS credentials and responds to the `#identity` 
            method. This can be an instance of any one of the following classes:
                    
            * `AWS::SDK::Core::StaticCredentialsProvider` - Used for fetching static, non-refreshing
              credentials.

            * `AWS::SDK::Core::ProcessCredentialsProvider` - Used for loading credentials from a
              process that outputs JSON to stdout.

            * `AWS::SDK::STS::AssumeRoleCredentialsProvider` - Used when you need to assume a role.
                    
            * `AWS::SDK::STS::AssumeRoleWebIdentityCredentialsProvider` - Used when you need to
              assume a role after providing credentials via the web using a token.
                    
            * `AWS::SDK::SSO::RoleCredentialsProvider` - Used for loading credentials from AWS SSO
              using an access token generated from `aws login`.
                    
            * `AWS::SDK::Core::InstanceCredentialsProvider` - Used for loading credentials from the instance
              metadata service (IMDS) on an EC2 instance.
                    
            * `AWS::SDK::Core::ContainerCredentialsProvider - Used for loading credentials from instances
              running in ECS.
                    
            When `:credentials_provider` is not configured directly, the following
            locations will be searched for credentials:
                    
            * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY'], and other
              ENV variables that influence credentials.
            * `~/.aws/credentials` and `~/.aws/config`
            * EC2/ECS instance profiles.
              
            @see AWS::SDK::Core::CredentialsProviderChain
            """;
    public static final ClientConfig CREDENTIALS_PROVIDER = ClientConfig.builder()
            .name("credentials_provider")
            .documentationRbsAndValidationType(Hearth.IDENTITY_PROVIDER.toString())
            .documentation(CREDENTIALS_PROVIDER_DOCUMENTATION)
            .documentationDefaultValue("AWS::SDK::Core::CredentialsProviderChain.new")
            .defaults(ConfigProviderChain.builder()
                    // .dynamicProvider("cfg[:credentials_provider_chain]")
                    .dynamicProvider("AWS::SDK::Core::CredentialsProviderChain.new(cfg)")
                    .build())
            .build();

//    private static final String CREDENTIALS_PROVIDER_CHAIN_DOCUMENTATION = """
//            The credentials provider chain responds to `#call(config)` and evaluates a chain of
//            potential credentials providers. The first non-nil value from the chain is used and is
//            expected to be a class that responds to the `#identity` method.
//            """;
//    public static final ClientConfig CREDENTIALS_PROVIDER_CHAIN = ClientConfig.builder()
//            .name("credentials_provider_chain")
//            .documentationType("#call(config)")
//            .documentationDefaultValue("AWS::SDK::Core::CredentialsProviderChain")
//            .documentation(CREDENTIALS_PROVIDER_CHAIN_DOCUMENTATION)
//            .defaults(ConfigProviderChain.builder()
//                    .staticProvider("AWS::SDK::Core::CredentialsProviderChain")
//                    .build())
//            .constraint(new RespondsToConstraint(List.of("call")))
//            .build();

    private static final String DUALSTACK_DOCUMENTATION = """
            When set to `true`, DualStack enabled endpoints (with `.aws` TLD)
            will be used if available.
            """;
    public static final ClientConfig DUALSTACK = ClientConfig.builder()
            .name("use_dualstack_endpoint")
            .documentationRbsAndValidationType("Boolean")
            .documentation(DUALSTACK_DOCUMENTATION)
            .documentationDefaultValue("false")
            .defaults(ConfigProviderChain.builder()
                    .envProvider("AWS_USE_DUALSTACK_ENDPOINT", "Boolean")
                    .sharedConfigProvider("use_dualstack_endpoint", "Boolean")
                    .staticProvider("false")
                    .build())
            .build();

    private static final String FIPS_DOCUMENTATION = """
            When set to `true`, FIPS compatible endpoints will be used if available.
            """;
    public static final ClientConfig FIPS = ClientConfig.builder()
            .name("use_fips_endpoint")
            .documentationRbsAndValidationType("Boolean")
            .documentation(FIPS_DOCUMENTATION)
            .documentationDefaultValue("false")
            .defaults(ConfigProviderChain.builder()
                    .envProvider("AWS_USE_FIPS_ENDPOINT", "Boolean")
                    .sharedConfigProvider("use_fips_endpoint", "Boolean")
                    .staticProvider("false")
                    .build())
            .build();

    private AWSConfig() {
    }
}
