$version: "2.0"

namespace aws.protocoltests.restjson

use smithy.ruby#skipTests

apply OperationWithDefaults @skipTests([
    { id: "RestJsonClientIgnoresDefaultValuesIfMemberValuesArePresentInResponse", reason: "Incorrect timestamp in test: https://github.com/smithy-lang/smithy/pull/2341", type: "response" }
])