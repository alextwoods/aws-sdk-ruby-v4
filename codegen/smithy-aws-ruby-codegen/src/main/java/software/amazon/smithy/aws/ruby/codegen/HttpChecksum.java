package software.amazon.smithy.aws.ruby.codegen;

import software.amazon.smithy.aws.traits.HttpChecksumTrait;
import software.amazon.smithy.aws.traits.auth.UnsignedPayloadTrait;
import software.amazon.smithy.model.Model;
import software.amazon.smithy.model.shapes.ServiceShape;
import software.amazon.smithy.model.shapes.Shape;
import software.amazon.smithy.ruby.codegen.GenerationContext;
import software.amazon.smithy.ruby.codegen.RubyIntegration;
import software.amazon.smithy.ruby.codegen.middleware.Middleware;
import software.amazon.smithy.ruby.codegen.middleware.MiddlewareBuilder;
import software.amazon.smithy.ruby.codegen.middleware.MiddlewareStackStep;
import software.amazon.smithy.ruby.codegen.util.Streaming;

import java.util.HashMap;
import java.util.Map;
import java.util.stream.Collectors;

public class HttpChecksum implements RubyIntegration {
    @Override
    public boolean includeFor(ServiceShape service, Model model) {
        return model.isTraitApplied(HttpChecksumTrait.class);
    }

    @Override
    public void modifyClientMiddleware(MiddlewareBuilder middlewareBuilder, GenerationContext context) {
        Middleware checksums = (new Middleware.Builder())
                // only render when the operation has the httpChecksum trait
                .operationPredicate((model, service, operation) -> operation.hasTrait(HttpChecksumTrait.class))
                .operationParams((ctx, operation) -> {
                    Map<String, String> params = new HashMap<>();
                    HttpChecksumTrait httpChecksum = operation.expectTrait(HttpChecksumTrait.class);
                    Shape inputShape = ctx.model().expectShape(operation.getInputShape());
                    if (httpChecksum.getRequestAlgorithmMember().isPresent()) {
                        params.put("request_algorithm_member",
                                getMemberName(ctx, inputShape, httpChecksum.getRequestAlgorithmMember().get()));
                    }

                    params.put("request_checksum_required",
                            httpChecksum.isRequestChecksumRequired() ? "true" : "false");

                    if (Streaming.isStreaming(ctx.model(), inputShape)) {
                        params.put("streaming", "true");
                        if (!operation.hasTrait(UnsignedPayloadTrait.class)) {
                            params.put("signed_streaming", "true");
                        }
                        if (ctx.service().toShapeId().getName().equals("AmazonS3")) {
                            params.put("require_decoded_content_length", "true");
                        }
                    }

                    if (httpChecksum.getRequestValidationModeMember().isPresent()) {
                        params.put("request_validation_mode_member",
                                getMemberName(ctx, inputShape, httpChecksum.getRequestValidationModeMember().get()));
                        params.put("response_algorithms", "[" +
                                httpChecksum.getResponseAlgorithms().stream()
                                        .map((s) -> "'" + s + "'")
                                        .collect(Collectors.joining(", ")) + "]");
                    }

                    return params;
                })
                .klass("AWS::SDK::Core::Middleware::Checksum")
                .step(MiddlewareStackStep.AFTER_BUILD)
                .build();

        middlewareBuilder.register(checksums);
    }

    private String getMemberName(GenerationContext ctx, Shape inputShape, String member) {
        return ":" + ctx.symbolProvider().toMemberName(inputShape.getMember(member).get());
    }
}
