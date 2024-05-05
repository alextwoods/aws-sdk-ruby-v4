$version: "2.0"

namespace aws.protocoltests.restxml

use smithy.ruby#skipTests

apply ComplexError @skipTests([
    { id: "ComplexError", reason: "Incorrect code in protocol test. Patch: https://github.com/smithy-lang/smithy/pull/2272", type: "response" }
])