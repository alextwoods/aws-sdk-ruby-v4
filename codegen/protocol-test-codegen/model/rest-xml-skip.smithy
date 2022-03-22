$version: "1.0"

namespace aws.protocoltests.restxml

use smithy.ruby#skipTests

apply InputAndOutputWithHeaders @skipTests([
    { id: "InputAndOutputWithTimestampHeaders", reason: "Parsing header lists is currently underspecified." }
])