$version: "2.0"

namespace aws.protocoltests.json10

use smithy.ruby#skipTests

apply OperationWithRequiredMembers @skipTests([
    { id: "AwsJson10ClientErrorCorrectsWhenServerFailsToSerializeRequiredValues", reason: "TODO: We need to correctly support values for required members in responses", type: "response" }
])
