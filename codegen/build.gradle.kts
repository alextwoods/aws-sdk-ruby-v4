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

plugins {
    `java-library`
    checkstyle
    jacoco
    id("com.github.spotbugs") version "4.7.1"
}

allprojects {
    repositories {
        mavenLocal()
        mavenCentral()
    }
}

extra["smithyVersion"] = "1.47.0"

// The root project doesn't produce a JAR.
tasks["jar"].enabled = false
