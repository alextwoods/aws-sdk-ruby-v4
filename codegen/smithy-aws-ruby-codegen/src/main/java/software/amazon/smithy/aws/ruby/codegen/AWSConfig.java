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

import software.amazon.smithy.ruby.codegen.config.ClientConfig;
import software.amazon.smithy.ruby.codegen.config.ConfigProviderChain;

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
                    .dynamicProvider("cfg[:stub_responses] ?  'us-stubbed-1' : nil")
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

    private static final String DUALSTACK_DOCUMENTATION = """
            When set to `true`, DualStack enabled endpoints (with `.aws` TLD)
            will be used if available.
            """;
    public static final ClientConfig DUALSTACK = ClientConfig.builder()
            .name("use_dualstack_endpoint")
            .documentationRbsAndValidationType("Boolean")
            .documentation(DUALSTACK_DOCUMENTATION)
            .defaults(ConfigProviderChain.builder()
                    .envProvider("AWS_USE_DUALSTACK_ENDPOINT", "Boolean")
                    .sharedConfigProvider("use_dualstack_endpoint", "Boolean")
                    .build())
            .build();

    private static final String FIPS_DOCUMENTATION = """
            When set to `true`, FIPS compatible endpoints will be used if available.
            """;
    public static final ClientConfig FIPS = ClientConfig.builder()
            .name("use_fips_endpoint")
            .documentationRbsAndValidationType("Boolean")
            .documentation(FIPS_DOCUMENTATION)
            .defaults(ConfigProviderChain.builder()
                    .envProvider("AWS_USE_FIPS_ENDPOINT", "Boolean")
                    .sharedConfigProvider("use_fips_endpoint", "Boolean")
                    .build())
            .build();

    private AWSConfig() { }
}
