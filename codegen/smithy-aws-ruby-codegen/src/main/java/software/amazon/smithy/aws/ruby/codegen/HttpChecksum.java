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

import java.util.HashMap;
import java.util.Map;
import java.util.stream.Collectors;
import software.amazon.smithy.aws.traits.HttpChecksumTrait;
import software.amazon.smithy.aws.traits.auth.UnsignedPayloadTrait;
import software.amazon.smithy.model.Model;
import software.amazon.smithy.model.knowledge.TopDownIndex;
import software.amazon.smithy.model.shapes.ServiceShape;
import software.amazon.smithy.model.shapes.Shape;
import software.amazon.smithy.ruby.codegen.GenerationContext;
import software.amazon.smithy.ruby.codegen.RubyIntegration;
import software.amazon.smithy.ruby.codegen.middleware.Middleware;
import software.amazon.smithy.ruby.codegen.middleware.MiddlewareBuilder;
import software.amazon.smithy.ruby.codegen.middleware.MiddlewareStackStep;
import software.amazon.smithy.ruby.codegen.util.Streaming;

public class HttpChecksum implements RubyIntegration {
    @Override
    public boolean includeFor(ServiceShape service, Model model) {
        return TopDownIndex.of(model).getContainedOperations(service).stream()
                .anyMatch((o) -> o.hasTrait(HttpChecksumTrait.class));
    }

    @Override
    public void modifyClientMiddleware(MiddlewareBuilder middlewareBuilder, GenerationContext context) {
        Middleware checksums = Middleware.builder()
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
                .relative(Middleware.Relative.builder()
                        .before("Hearth::HTTP::Middleware::ContentLength")
                        .optional()
                        .build())
                .build();

        middlewareBuilder.register(checksums);
    }

    private String getMemberName(GenerationContext ctx, Shape inputShape, String member) {
        return ":" + ctx.symbolProvider().toMemberName(inputShape.getMember(member).get());
    }
}
