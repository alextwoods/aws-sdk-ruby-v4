package software.amazon.smithy.aws.ruby.codegen.protocol.json10;

import java.util.logging.Logger;
import software.amazon.smithy.aws.ruby.codegen.protocol.json10.generators.BuilderGenerator;
import software.amazon.smithy.aws.ruby.codegen.protocol.json10.generators.ErrorsGenerator;
import software.amazon.smithy.aws.ruby.codegen.protocol.json10.generators.ParserGenerator;
import software.amazon.smithy.aws.ruby.codegen.protocol.json10.generators.StubsGenerator;
import software.amazon.smithy.aws.traits.protocols.AwsJson1_0Trait;
import software.amazon.smithy.model.shapes.ShapeId;
import software.amazon.smithy.ruby.codegen.ApplicationTransport;
import software.amazon.smithy.ruby.codegen.GenerationContext;
import software.amazon.smithy.ruby.codegen.ProtocolGenerator;

public class AwsJson1_0 implements ProtocolGenerator {
    private static final Logger LOGGER = Logger.getLogger(AwsJson1_0.class.getName());

    @Override
    public ShapeId getProtocol() {
        return AwsJson1_0Trait.ID;
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
        ParserGenerator parserGenerator = new ParserGenerator(context);
        parserGenerator.render(context.getFileManifest());
        LOGGER.info("created parsers");
    }

    @Override
    public void generateErrors(GenerationContext context) {
        ErrorsGenerator errorsGenerator = new ErrorsGenerator(context);
        errorsGenerator.render(context.getFileManifest());
        LOGGER.info("created errors");
    }

    @Override
    public void generateStubs(GenerationContext context) {
        StubsGenerator stubsGenerator = new StubsGenerator(context);
        stubsGenerator.render(context.getFileManifest());
        LOGGER.info("created stubs");
    }
}
