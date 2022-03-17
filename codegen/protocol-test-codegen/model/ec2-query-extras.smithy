namespace aws.protocoltests.ec2

use aws.api#service
use aws.protocols#ec2Query
use smithy.test#httpRequestTests
use smithy.test#httpResponseTests
use aws.protocoltests.shared#StringList
use aws.protocoltests.shared#StringMap
use aws.protocoltests.shared#GreetingStruct
use aws.protocoltests.shared#FooEnum

@service(sdkId: "EC2 Protocol")
@ec2Query
@xmlNamespace(uri: "https://example.com/")
service AwsEc2QueryExtras {
    version: "2020-01-08",
    operations: [
        QueryUnions
    ]
}


/// This operation uses unions for inputs and outputs.
@idempotent
operation QueryUnions {
    input: QueryUnionsInput,
    output: QueryUnionsOutput,
}

@input
structure QueryUnionsInput {
    contents: MyUnion
}

@output
structure QueryUnionsOutput {
    contents: MyUnion
}

/// A union with a representative set of types for members.
union MyUnion {
    stringValue: String,
    booleanValue: Boolean,
    numberValue: Integer,
    blobValue: Blob,
    timestampValue: Timestamp,
    enumValue: FooEnum,
    listValue: StringList,
    mapValue: StringMap,
    structureValue: GreetingStruct,
}

apply QueryUnions @httpRequestTests([
    {
        id: "Ec2SerializeStringUnionValue",
        documentation: "Serializes a string union value",
        protocol: ec2Query,
        method: "POST",
        "uri": "/",
        headers: {
            "Content-Type": "application/x-www-form-urlencoded"
        },
        requireHeaders: [
            "Content-Length"
        ],
        body: "Action=QueryUnions&Version=2020-01-08&Contents.StringValue=foo",
        bodyMediaType: "application/x-www-form-urlencoded",
        params: {
            contents: {
                stringValue: "foo"
            }
        }
    }
])
