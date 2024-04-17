package software.amazon.smithy.aws.ruby.codegen;

import software.amazon.smithy.codegen.core.Symbol;

/**
 * Utility class to hold AWS namespaced constants
 */
public final class Aws {

    private Aws() { }

    public static final Symbol SIGV4_IDENTITY = Symbol.builder()
            .namespace("AWS::SDK::Core::Identities", "::")
            .name("SigV4").build();
}
