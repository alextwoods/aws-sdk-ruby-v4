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

    public static final ClientConfig REGION = (new ClientConfig.Builder())
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

    private AWSConfig() { }
}
