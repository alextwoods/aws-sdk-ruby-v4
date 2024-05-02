$version: "2.0"

namespace aws.protocoltests.json10

use smithy.ruby#skipTests

apply OperationWithDefaults @skipTests([
    { id: "AwsJson10ClientPopulatesDefaultValuesInInput", reason: "Default values are not currently fully supported.", type: "request" },
    { id: "AwsJson10ClientPopulatesDefaultsValuesWhenMissingInResponse", reason: "Default values are not currently fully supported", type: "response" }
])

apply OperationWithNestedStructure @skipTests([
    { id: "AwsJson10ClientPopulatesNestedDefaultValuesWhenMissing", reason: "Default values are not currently fully supported.", type: "request" },
    { id: "AwsJson10ClientPopulatesNestedDefaultsWhenMissingInResponseBody", reason: "Default values are not currently fully supported", type: "response" }
])

apply OperationWithRequiredMembers @skipTests([
    { id: "AwsJson10ClientErrorCorrectsWhenServerFailsToSerializeRequiredValues", reason: "Default values are not currently fully supported", type: "response" }
])
