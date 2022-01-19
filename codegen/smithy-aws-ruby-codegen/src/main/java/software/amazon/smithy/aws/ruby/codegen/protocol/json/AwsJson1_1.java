package software.amazon.smithy.aws.ruby.codegen.protocol.json;

import java.util.logging.Logger;
import software.amazon.smithy.aws.ruby.codegen.protocol.json.generators.BuilderGenerator;
import software.amazon.smithy.aws.ruby.codegen.protocol.json.generators.ErrorsGenerator;
import software.amazon.smithy.aws.ruby.codegen.protocol.json.generators.ParserGenerator;
import software.amazon.smithy.aws.ruby.codegen.protocol.json.generators.StubsGenerator;
import software.amazon.smithy.aws.traits.protocols.AwsJson1_1Trait;
import software.amazon.smithy.model.shapes.ShapeId;
import software.amazon.smithy.ruby.codegen.ApplicationTransport;
import software.amazon.smithy.ruby.codegen.GenerationContext;
import software.amazon.smithy.ruby.codegen.ProtocolGenerator;

public class AwsJson1_1 implements ProtocolGenerator {
    private static final Logger LOGGER = Logger.getLogger(AwsJson1_1.class.getName());

    @Override
    public ShapeId getProtocol() {
        return AwsJson1_1Trait.ID;
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
