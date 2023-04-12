package software.amazon.smithy.aws.ruby.codegen;

import software.amazon.smithy.aws.traits.HttpChecksumTrait;
import software.amazon.smithy.aws.traits.auth.UnsignedPayloadTrait;
import software.amazon.smithy.model.Model;
import software.amazon.smithy.model.shapes.MemberShape;
import software.amazon.smithy.model.shapes.ServiceShape;
import software.amazon.smithy.model.shapes.Shape;
import software.amazon.smithy.model.shapes.StringShape;
import software.amazon.smithy.model.shapes.StructureShape;
import software.amazon.smithy.model.traits.OptionalAuthTrait;
import software.amazon.smithy.ruby.codegen.GenerationContext;
import software.amazon.smithy.ruby.codegen.RubyIntegration;
import software.amazon.smithy.ruby.codegen.middleware.Middleware;
import software.amazon.smithy.ruby.codegen.middleware.MiddlewareBuilder;
import software.amazon.smithy.ruby.codegen.middleware.MiddlewareStackStep;
import software.amazon.smithy.ruby.codegen.util.Streaming;

import java.util.HashMap;
import java.util.Map;
import java.util.stream.Collectors;

public class HttpChecksum implements RubyIntegration  {
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
                        MemberShape requestMember = inputShape
                                .getMember(httpChecksum.getRequestAlgorithmMember().get()).get();
                        params.put("request_algorithm_member", ":" + ctx.symbolProvider().toMemberName(requestMember));
                    }

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
                        MemberShape validationMember = inputShape
                                .getMember(httpChecksum.getRequestValidationModeMember().get()).get();
                        params.put("request_validation_mode_member", ":" + ctx.symbolProvider().toMemberName(validationMember));
                        params.put("response_algorithms", "[" +
                                httpChecksum.getResponseAlgorithms().stream()
                                        .map( (s) -> "'" + s + "'")
                                        .collect(Collectors.joining(", ")) + "]");
                    }

                    return params;
                })
                .klass("AWS::SDK::Core::Middleware::Checksum")
                .step(MiddlewareStackStep.BUILD)
                .order((byte) 1) // after the Builders have run
                .build();

        middlewareBuilder.register(checksums);
    }
}
