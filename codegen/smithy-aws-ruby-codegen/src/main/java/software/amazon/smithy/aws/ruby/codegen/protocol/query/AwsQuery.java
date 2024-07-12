package software.amazon.smithy.aws.ruby.codegen.protocol.query;

import java.util.List;
import java.util.logging.Logger;
import software.amazon.smithy.aws.ruby.codegen.protocol.query.generators.ErrorsGenerator;
import software.amazon.smithy.aws.ruby.codegen.protocol.query.generators.BuilderGenerator;
import software.amazon.smithy.aws.ruby.codegen.protocol.query.generators.ParserGenerator;
import software.amazon.smithy.aws.ruby.codegen.protocol.query.generators.StubsGenerator;
import software.amazon.smithy.aws.traits.protocols.AwsQueryTrait;
import software.amazon.smithy.aws.traits.protocols.RestJson1Trait;
import software.amazon.smithy.model.Model;
import software.amazon.smithy.model.shapes.ServiceShape;
import software.amazon.smithy.model.shapes.ShapeId;
import software.amazon.smithy.ruby.codegen.ApplicationTransport;
import software.amazon.smithy.ruby.codegen.GenerationContext;
import software.amazon.smithy.ruby.codegen.ProtocolGenerator;

public class AwsQuery implements ProtocolGenerator {
    private static final Logger LOGGER = Logger.getLogger(AwsQuery.class.getName());

    @Override
    public ShapeId getProtocol() {
        return AwsQueryTrait.ID;
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
}
