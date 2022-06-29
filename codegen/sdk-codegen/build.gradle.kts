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

// This build file has been adapted from the Go v2 SDK, here:
// https://github.com/aws/aws-sdk-go-v2/blob/master/codegen/sdk-codegen/build.gradle.kts

import software.amazon.smithy.aws.traits.ServiceTrait
import software.amazon.smithy.gradle.tasks.SmithyBuild
import software.amazon.smithy.model.Model
import software.amazon.smithy.model.node.Node
import software.amazon.smithy.model.shapes.ServiceShape

val smithyVersion: String by project

fun toSnakeCase(s: String): String {
    return s
        .replace("([A-Z\\d]+)([A-Z][a-z])".toRegex(), "$1_$2")
        .replace("([a-z\\d])([A-Z])".toRegex(), "$1_$2")
        .replace(" ", "_")
        .replace('-', '_')
        .toLowerCase()
}

class ServiceDefinition(val file: File) {
    val sdkId: String
    val model: Model
    val service: ServiceShape
    val moduleName: String
    val gemName: String
    val projectionName: String
    init {
        model = Model.assembler()
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
        service = services[0]
        val serviceTrait = service.getTrait(ServiceTrait::class.javaObjectType).get();
        sdkId = serviceTrait.sdkId

        moduleName = sdkId
            .split(" ").joinToString("") { it.capitalize() }
            .replace("-", "")
            .replace("_", "")
            .capitalize();
        gemName = "aws-sdk-" + toSnakeCase(sdkId)

        projectionName = moduleName + "." + service.version.toLowerCase();
    }
}

fun forEachService(task: (service: ServiceDefinition) -> Unit) {
    val modelsDir: String by project
    val models = project.file(modelsDir);

    fileTree(models).filter { it.isFile }.files.forEach eachFile@{ file ->
        task(ServiceDefinition((file)))
    }
}

buildscript {
    val smithyVersion: String by project
    repositories {
        mavenCentral()
    }
    dependencies {
        "classpath"("software.amazon.smithy:smithy-cli:$smithyVersion")
        "classpath"("software.amazon.smithy:smithy-aws-traits:$smithyVersion")
    }
}

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
        val modelsDir: String by project
        val models = project.file(modelsDir);

        forEachService { service ->
            val projectionContents = Node.objectNodeBuilder()
                .withMember("imports", Node.fromStrings("${models.absolutePath}${File.separator}${service.file.name}"))
                .withMember(
                    "plugins",
                    Node.objectNode()
                        .withMember(
                            "ruby-codegen",
                            Node.objectNodeBuilder()
                                .withMember("service", service.service.id.toString())
                                .withMember("module", "AWS::SDK::" + service.moduleName)
                                .withMember(
                                    "gemspec",
                                    Node.objectNodeBuilder()
                                        .withMember("gemName", service.gemName)
                                        .withMember("gemVersion", "2.0.0.pre") // TODO: Read the VERSION file
                                        .withMember("gemSummary", "TEST SERVICE")
                                        .build()
                                ).build()
                        )
                ).build()
            projectionsBuilder.withMember(service.projectionName, projectionContents)
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
tasks.register<Copy>("copyGeneratedGems") {
    forEachService { service ->
        from("$buildDir/smithyprojections/sdk-codegen/${service.projectionName}/ruby-codegen")
    }
    into("$buildDir/../../../gems/")
}

tasks["buildSdk"].finalizedBy(tasks["copyGeneratedGems"])
