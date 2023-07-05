package software.amazon.smithy.aws.ruby.codegen.protocol.restjson;

import java.util.stream.Collectors;
import java.util.stream.Stream;
import software.amazon.smithy.aws.ruby.codegen.protocol.restjson.generators.BuilderGenerator;
import software.amazon.smithy.aws.ruby.codegen.protocol.restjson.generators.ErrorsGenerator;
import software.amazon.smithy.aws.ruby.codegen.protocol.restjson.generators.ParserGenerator;
import software.amazon.smithy.aws.ruby.codegen.protocol.restjson.generators.StubsGenerator;
import software.amazon.smithy.aws.traits.protocols.RestJson1Trait;
import software.amazon.smithy.model.Model;
import software.amazon.smithy.model.shapes.MemberShape;
import software.amazon.smithy.model.shapes.OperationShape;
import software.amazon.smithy.model.shapes.ServiceShape;
import software.amazon.smithy.model.shapes.Shape;
import software.amazon.smithy.model.shapes.ShapeId;
import software.amazon.smithy.model.traits.HttpHeaderTrait;
import software.amazon.smithy.model.traits.HttpLabelTrait;
import software.amazon.smithy.model.traits.HttpPayloadTrait;
import software.amazon.smithy.model.traits.HttpPrefixHeadersTrait;
import software.amazon.smithy.model.traits.HttpQueryParamsTrait;
import software.amazon.smithy.model.traits.HttpQueryTrait;
import software.amazon.smithy.ruby.codegen.ApplicationTransport;
import software.amazon.smithy.ruby.codegen.GenerationContext;
import software.amazon.smithy.ruby.codegen.OperationPredicate;
import software.amazon.smithy.ruby.codegen.ProtocolGenerator;

import java.util.logging.Logger;
import software.amazon.smithy.ruby.codegen.middleware.Middleware;
import software.amazon.smithy.ruby.codegen.middleware.MiddlewareBuilder;
import software.amazon.smithy.ruby.codegen.middleware.MiddlewareStackStep;
import software.amazon.smithy.ruby.codegen.trait.NoSerializeTrait;

public class RestJson1 implements ProtocolGenerator {
    private static final Logger LOGGER = Logger.getLogger(RestJson1.class.getName());

    @Override
    public ShapeId getProtocol() {
        return RestJson1Trait.ID;
    }

    @Override
    public ApplicationTransport getApplicationTransport() {
        return ApplicationTransport.createDefaultHttpApplicationTransport();
    }

    @Override
    public void generateBuilders(GenerationContext context) {
        BuilderGenerator builderGenerator = new BuilderGenerator(context);
        builderGenerator.render(context.fileManifest());
        LOGGER.info("created builders");
    }

    @Override
    public void generateParsers(GenerationContext context) {
        ParserGenerator parserGenerator = new ParserGenerator(context);
        parserGenerator.render(context.fileManifest());
        LOGGER.info("created parsers");
    }

    @Override
    public void generateErrors(GenerationContext context) {
        ErrorsGenerator errorsGenerator = new ErrorsGenerator(context);
        errorsGenerator.render(context.fileManifest());
        LOGGER.info("created errors");
    }

    @Override
    public void generateStubs(GenerationContext context) {
        StubsGenerator stubsGenerator = new StubsGenerator(context);
        stubsGenerator.render(context.fileManifest());
        LOGGER.info("created stubs");
    }

    @Override
    public void modifyClientMiddleware(MiddlewareBuilder middlewareBuilder, GenerationContext context) {
        middlewareBuilder.remove(MiddlewareStackStep.BUILD, "Hearth::HTTP::Middleware::ContentLength");

        Middleware contentLength = (new Middleware.Builder())
                .operationPredicate((model, serviceShape, operationShape) -> {
                    Shape inputShape = model.expectShape(operationShape.getInputShape());

                    Stream<MemberShape> serializeMembers = inputShape.members().stream()
                            .filter((m) -> !m.hasTrait(HttpLabelTrait.class) && !m.hasTrait(HttpQueryTrait.class)
                                    && !m.hasTrait(HttpHeaderTrait.class) && !m.hasTrait(HttpPrefixHeadersTrait.class)
                                    && !m.hasTrait(HttpQueryParamsTrait.class));
                    serializeMembers = serializeMembers.filter(NoSerializeTrait.excludeNoSerializeMembers());

                    return !serializeMembers.collect(Collectors.toList()).isEmpty();
                })
                .klass("Hearth::HTTP::Middleware::ContentLength")
                .step(MiddlewareStackStep.AFTER_BUILD)
                .build();
        middlewareBuilder.register(contentLength);
    }
}
