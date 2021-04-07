package software.amazon.smithy.aws.ruby.codegen.protocol.restjson;

import software.amazon.smithy.aws.ruby.codegen.protocol.restjson.generators.BuilderGenerator;
import software.amazon.smithy.aws.ruby.codegen.protocol.restjson.generators.ErrorsGenerator;
import software.amazon.smithy.aws.ruby.codegen.protocol.restjson.generators.ParserGenerator;
import software.amazon.smithy.aws.traits.protocols.RestJson1Trait;
import software.amazon.smithy.model.shapes.Shape;
import software.amazon.smithy.model.shapes.ShapeId;
import software.amazon.smithy.model.traits.ErrorTrait;
import software.amazon.smithy.ruby.codegen.ApplicationTransport;
import software.amazon.smithy.ruby.codegen.GenerationContext;
import software.amazon.smithy.ruby.codegen.ProtocolGenerator;

import java.util.logging.Logger;
import java.util.stream.Stream;

public class AwsRestJson1 implements ProtocolGenerator {
    private static final Logger LOGGER = Logger.getLogger(AwsRestJson1.class.getName());

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
        builderGenerator.render(context.getFileManifest());
        LOGGER.info("created builders");
    }

    @Override
    public void generateParsers(GenerationContext context) {
        ParserGenerator parserGenerator = new ParserGenerator(context.getRubySettings(), context.getModel());
        parserGenerator.render(context.getFileManifest());
        LOGGER.info("created parsers");
    }

    @Override
    public void generateErrors(GenerationContext context) {
        Stream<Shape> errorShapeStream = context.getModel().shapes().filter((s) -> s.hasTrait(ErrorTrait.class));
        ErrorsGenerator errorsGenerator = new ErrorsGenerator(context.getRubySettings(), errorShapeStream);
        errorsGenerator.render(context.getFileManifest());
        LOGGER.info("created errors");
    }

    @Override
    public void generateStubbers(GenerationContext context) {
        LOGGER.info("Implement me!");
    }

    @Override
    public void generateProtocolUnitTests(GenerationContext context) {
        LOGGER.info("Implement me!");
    }
}
