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

import software.amazon.smithy.model.Model
import software.amazon.smithy.model.node.Node
import software.amazon.smithy.model.shapes.ServiceShape
import software.amazon.smithy.gradle.tasks.SmithyBuild
import kotlin.streams.toList

plugins {
    id("software.amazon.smithy").version("0.6.0")
}

dependencies {
    implementation(project(":smithy-aws-ruby-codegen"))
}

// This project doesn't produce a JAR.
tasks["jar"].enabled = false

// Run the SmithyBuild task manually since this project needs the built JAR
// from smithy-aws-typescript-codegen.
tasks["smithyBuildJar"].enabled = false

tasks.create<SmithyBuild>("buildSdk") {
    addRuntimeClasspath = true
}

// Generates a smithy-build.json file by creating a new projection for every
// JSON file found in aws-models/. The generated smithy-build.json file is
// not committed to git since it's rebuilt each time codegen is performed.
tasks.register("generate-smithy-build") {
    doLast {
        val projectionsBuilder = Node.objectNodeBuilder()
        val modelsDirProp: String by project
        val models = project.file(modelsDirProp);

        fileTree(models).filter { it.isFile }.files.forEach eachFile@{ file ->
            val model = Model.assembler()
                    .addImport(file.absolutePath)
                    // Grab the result directly rather than worrying about checking for errors via unwrap.
                    // All we care about here is the service shape, any unchecked errors will be exposed
                    // as part of the actual build task done by the smithy gradle plugin.
                    .assemble().result.get();
            val services = model.shapes(ServiceShape::class.javaObjectType).sorted().toList();
            if (services.size != 1) {
                throw Exception("There must be exactly one service in each aws model file, but found " +
                        "${services.size} in ${file.name}: ${services.map { it.id }}");
            }
            val service = services[0]

            var (sdkId, version, remaining) = file.name.split(".")
            sdkId = sdkId.replace("-", "").toLowerCase();
            val projectionContents = Node.objectNodeBuilder()
                    .withMember("imports", Node.fromStrings("${models.getAbsolutePath()}${File.separator}${file.name}"))
                    .withMember("plugins", Node.objectNode()
                            .withMember("ruby-codegen", Node.objectNodeBuilder()
                                    .withMember("service", service.id.toString())
                                    .withMember("module", "AWS::" + sdkId.capitalize())
                                    .withMember("gemspec", Node.objectNodeBuilder()
                                        .withMember("gemName", "aws-sdk-" + sdkId.toLowerCase())
                                        .withMember("gemVersion", "4.0.0.pre")
                                        .withMember("gemSummary", "TEST SERVICE")
                                        .build())
                                    .build()))
                    .build()
            projectionsBuilder.withMember(sdkId + "." + version.toLowerCase(), projectionContents)
        }

        file("smithy-build.json").writeText(Node.prettyPrintJson(Node.objectNodeBuilder()
                .withMember("version", "1.0")
                .withMember("projections", projectionsBuilder.build())
                .build()))
    }
}

// Run the `buildSdk` automatically.
tasks["build"]
        .dependsOn(tasks["generate-smithy-build"])
        .finalizedBy(tasks["buildSdk"])

// ensure built artifacts are put into the SDK's folders
tasks.register<Copy>("copyEc2Gem") {
    //TODO: This needs to be dynamic for all services...
    from("$buildDir/smithyprojections/sdk-codegen/ec2.2016-09-15/ruby-codegen")
    into("$buildDir/../../../")
}
tasks.register<Copy>("copyJsonGem") {
    //TODO: This needs to be dynamic for all services...
    from("$buildDir/smithyprojections/sdk-codegen/sso.2019-06-10/ruby-codegen")
    into("$buildDir/../../../")
}
tasks.register<Copy>("copyJson10Gem") {
    //TODO: This needs to be dynamic for all services...
    from("$buildDir/smithyprojections/sdk-codegen/dynamodb.2012-08-10/ruby-codegen")
    into("$buildDir/../../../")
}
tasks.register<Copy>("copyQueryGem") {
    //TODO: This needs to be dynamic for all services...
    from("$buildDir/smithyprojections/sdk-codegen/sts.2011-06-15/ruby-codegen")
    into("$buildDir/../../../")
}
tasks.register<Copy>("copyRestJsonGem") {
    //TODO: This needs to be dynamic for all services...
    from("$buildDir/smithyprojections/sdk-codegen/lambda.2015-03-31/ruby-codegen")
    into("$buildDir/../../../")
}
tasks.register<Copy>("copyRestXmlGem") {
    //TODO: This needs to be dynamic for all services...
    from("$buildDir/smithyprojections/sdk-codegen/cloudfront.2020-05-31/ruby-codegen")
    into("$buildDir/../../../")
}
tasks["buildSdk"].finalizedBy(
  tasks["copyEc2Gem"], tasks["copyJsonGem"], tasks["copyJson10Gem"],
  tasks["copyQueryGem"], tasks["copyRestJsonGem"], tasks["copyRestXmlGem"]
)
