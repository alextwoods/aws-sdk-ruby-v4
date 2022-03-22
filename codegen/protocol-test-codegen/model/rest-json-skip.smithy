$version: "1.0"

namespace aws.protocoltests.restjson

use smithy.ruby#skipTests

apply InputAndOutputWithHeaders @skipTests([
    { id: "RestJsonInputAndOutputWithTimestampHeaders", reason: "Parsing header lists is currently underspecified.", type: "response" },
    { id: "RestJsonInputAndOutputWithQuotedStringHeaders", reason: "Parsing header lists is currently underspecified.", type: "response" }
])