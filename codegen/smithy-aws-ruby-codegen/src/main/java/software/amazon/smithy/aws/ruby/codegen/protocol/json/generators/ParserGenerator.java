/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

package software.amazon.smithy.aws.ruby.codegen.protocol.json.generators;

import software.amazon.smithy.model.shapes.*;
import software.amazon.smithy.ruby.codegen.GenerationContext;
import software.amazon.smithy.ruby.codegen.generators.ParserGeneratorBase;

public class ParserGenerator extends ParserGeneratorBase {

    public ParserGenerator(GenerationContext context) {
        super(context);
    }

    @Override
    protected void renderUnionParseMethod(UnionShape s) {

    }

    @Override
    protected void renderMapParseMethod(MapShape s) {

    }

    @Override
    protected void renderSetParseMethod(SetShape s) {

    }

    @Override
    protected void renderListParseMethod(ListShape s) {

    }

    @Override
    protected void renderStructureParseMethod(StructureShape s) {

    }

    @Override
    protected void renderOperationParseMethod(OperationShape operation, Shape outputShape) {

    }

    @Override
    protected void renderErrorParseMethod(Shape s) {

    }

}
