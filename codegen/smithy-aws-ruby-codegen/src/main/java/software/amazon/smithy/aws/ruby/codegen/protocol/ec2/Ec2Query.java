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

package software.amazon.smithy.aws.ruby.codegen.protocol.ec2;

import java.util.List;
import java.util.logging.Logger;
import software.amazon.smithy.aws.ruby.codegen.protocol.ec2.generators.BuilderGenerator;
import software.amazon.smithy.aws.ruby.codegen.protocol.ec2.generators.ErrorsGenerator;
import software.amazon.smithy.aws.ruby.codegen.protocol.ec2.generators.ParserGenerator;
import software.amazon.smithy.aws.ruby.codegen.protocol.ec2.generators.StubsGenerator;
import software.amazon.smithy.aws.traits.protocols.Ec2QueryTrait;
import software.amazon.smithy.aws.traits.protocols.RestJson1Trait;
import software.amazon.smithy.model.Model;
import software.amazon.smithy.model.shapes.ServiceShape;
import software.amazon.smithy.model.shapes.ShapeId;
import software.amazon.smithy.ruby.codegen.ApplicationTransport;
import software.amazon.smithy.ruby.codegen.GenerationContext;
import software.amazon.smithy.ruby.codegen.ProtocolGenerator;

public class Ec2Query implements ProtocolGenerator {
    private static final Logger LOGGER = Logger.getLogger(Ec2Query.class.getName());

    @Override
    public ShapeId getProtocol() {
        return Ec2QueryTrait.ID;
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
