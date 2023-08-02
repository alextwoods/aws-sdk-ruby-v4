package software.amazon.smithy.aws.ruby.codegen;

import software.amazon.smithy.ruby.codegen.config.ClientConfig;
import software.amazon.smithy.ruby.codegen.config.ConfigProviderChain;

/**
 * Utility class to define shared Config definitions
 */
public final class AWSConfig {

    private static final String regionDocumentation = """
                The AWS region to connect to. The configured `:region` is
                used to determine the service `:endpoint`. When not passed,
                a default `:region` is searched for in the following locations:
                                
                * `ENV['AWS_REGION']`
                * `~/.aws/credentials` and `~/.aws/config`
                """;

    private static final String profileDocumentation = """
            Used when loading credentials and configuration from the shared credentials file
            at HOME/.aws/credentials.  When not specified, 'default' is used.
            """;

    public static final ClientConfig REGION = ClientConfig.builder()
            .name("region")
            .type("String")
            .documentation(regionDocumentation)
            .defaults(ConfigProviderChain.builder()
                    .envProvider("AWS_REGION", "String")
                    .sharedConfigProvider("region", "String")
                    .build())
            .build();

    public static final ClientConfig PROFILE = ClientConfig.builder()
            .name("profile")
            .type("String")
            .documentation(regionDocumentation)
            .documentationDefaultValue("default")
            .defaults(ConfigProviderChain.builder()
                    .envProvider("AWS_PROFILE", "String")
                    .staticProvider("'default'")
                    .build())
            .build();

    private AWSConfig() { }
}
