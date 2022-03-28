package software.amazon.smithy.aws.ruby.codegen;

import software.amazon.smithy.ruby.codegen.GenerationContext;
import software.amazon.smithy.ruby.codegen.RubyIntegration;
import software.amazon.smithy.ruby.codegen.middleware.Middleware;
import software.amazon.smithy.ruby.codegen.middleware.MiddlewareBuilder;
import software.amazon.smithy.ruby.codegen.middleware.MiddlewareStackStep;

public class RequestId implements RubyIntegration {
    @Override
    public void modifyClientMiddleware(MiddlewareBuilder middlewareBuilder, GenerationContext context) {
        Middleware requestId = (new Middleware.Builder())
                .klass("Middleware::RequestId")
                .step(MiddlewareStackStep.DESERIALIZE)
                .rubySource("smithy-aws-ruby-codegen/middleware/request_id.rb")
                .build();
        middlewareBuilder.register(requestId);
    }
}
