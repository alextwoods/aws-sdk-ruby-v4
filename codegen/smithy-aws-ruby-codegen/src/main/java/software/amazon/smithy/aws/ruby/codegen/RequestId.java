package software.amazon.smithy.aws.ruby.codegen;

import software.amazon.smithy.ruby.codegen.GenerationContext;
import software.amazon.smithy.ruby.codegen.RubyIntegration;
import software.amazon.smithy.ruby.codegen.middleware.Middleware;
import software.amazon.smithy.ruby.codegen.middleware.MiddlewareBuilder;
import software.amazon.smithy.ruby.codegen.middleware.MiddlewareStackStep;

public class RequestId implements RubyIntegration {
    @Override
    public void modifyClientMiddleware(MiddlewareBuilder middlewareBuilder, GenerationContext context) {
        Middleware requestId = Middleware.builder()
                .klass("Middleware::RequestId")
                .step(MiddlewareStackStep.PARSE)
                .rubySource("middleware/request_id.rb")
                .build();
        middlewareBuilder.register(requestId);
    }
}
