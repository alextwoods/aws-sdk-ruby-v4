package software.amazon.smithy.aws.ruby.codegen;

import software.amazon.smithy.codegen.core.Symbol;

/**
 * Utility class to hold AWS namespaced constants
 */
public final class Aws {

    private Aws() { }

    public static final Symbol AWS_CREDENTIALS_IDENTITY = Symbol.builder()
            .namespace("AWS::SDK::Core", "::")
            .name("Credentials").build();
}
