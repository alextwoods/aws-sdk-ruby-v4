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

// This project doesn't produce a JAR.
tasks["jar"].enabled = false

plugins {
    id("software.amazon.smithy") version "0.6.0"
}

buildscript {
    repositories {
        mavenCentral()
    }
    dependencies {
        "classpath"("software.amazon.smithy:smithy-cli:${rootProject.extra["smithyVersion"]}")
    }
}

repositories {
    mavenLocal()
    mavenCentral()
}

dependencies {
    implementation("software.amazon.smithy:smithy-protocol-test-traits:${rootProject.extra["smithyVersion"]}")
    implementation("software.amazon.smithy:smithy-aws-protocol-tests:${rootProject.extra["smithyVersion"]}")
    implementation(project(":smithy-aws-ruby-codegen"))
}

java.sourceSets["main"].java {
    srcDirs("model", "src/main/smithy")
}