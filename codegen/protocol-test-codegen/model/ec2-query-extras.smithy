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
    },
    {
        id: "Ec2SerializeBooleanUnionValue",
        documentation: "Serializes a boolean union value",
        protocol: ec2Query,
        method: "POST",
        "uri": "/",
        headers: {
            "Content-Type": "application/x-www-form-urlencoded"
        },
        requireHeaders: [
            "Content-Length"
        ],
        body: "Action=QueryUnions&Version=2020-01-08&Contents.BooleanValue=true",
        bodyMediaType: "application/x-www-form-urlencoded",
        params: {
            contents: {
                booleanValue: true
            }
        }
    },
    {
        id: "Ec2SerializeNumberUnionValue",
        documentation: "Serializes a number union value",
        protocol: ec2Query,
        method: "POST",
        "uri": "/",
        headers: {
            "Content-Type": "application/x-www-form-urlencoded"
        },
        requireHeaders: [
            "Content-Length"
        ],
        body: "Action=QueryUnions&Version=2020-01-08&Contents.NumberValue=1",
        bodyMediaType: "application/x-www-form-urlencoded",
        params: {
            contents: {
                numberValue: 1
            }
        }
    },
    {
        id: "Ec2SerializeBlobUnionValue",
        documentation: "Serializes a blob union value",
        protocol: ec2Query,
        method: "POST",
        "uri": "/",
        headers: {
            "Content-Type": "application/x-www-form-urlencoded"
        },
        requireHeaders: [
            "Content-Length"
        ],
        body: "Action=QueryUnions&Version=2020-01-08&Contents.BlobValue=Zm9v",
        bodyMediaType: "application/x-www-form-urlencoded",
        params: {
            contents: {
                blobValue: "foo"
            }
        }
    },
    {
        id: "Ec2SerializeTimestampUnionValue",
        documentation: "Serializes a timestamp union value",
        protocol: ec2Query,
        method: "POST",
        "uri": "/",
        headers: {
            "Content-Type": "application/x-www-form-urlencoded"
        },
        requireHeaders: [
            "Content-Length"
        ],
        body: "Action=QueryUnions&Version=2020-01-08&Contents.TimestampValue=2014-04-29T18:30:38Z",
        bodyMediaType: "application/x-www-form-urlencoded",
        params: {
            contents: {
                timestampValue: 1398796238
            }
        }
    },
    {
        id: "Ec2SerializeEnumUnionValue",
        documentation: "Serializes an emum union value",
        protocol: ec2Query,
        method: "POST",
        "uri": "/",
        headers: {
            "Content-Type": "application/x-www-form-urlencoded"
        },
        requireHeaders: [
            "Content-Length"
        ],
        body: "Action=QueryUnions&Version=2020-01-08&Contents.EnumValue=Foo",
        bodyMediaType: "application/x-www-form-urlencoded",
        params: {
            contents: {
                enumValue: "Foo"
            }
        }
    },
    {
        id: "Ec2SerializeListUnionValue",
        documentation: "Serializes a list union value",
        protocol: ec2Query,
        method: "POST",
        "uri": "/",
        headers: {
            "Content-Type": "application/x-www-form-urlencoded"
        },
        requireHeaders: [
            "Content-Length"
        ],
        body: "Action=QueryUnions&Version=2020-01-08&Contents.ListValue.1=foo&Contents.ListValue.2=bar",
        bodyMediaType: "application/x-www-form-urlencoded",
        params: {
            contents: {
                listValue: ["foo", "bar"]
            }
        }
    },
    {
        id: "Ec2SerializeStructureUnionValue",
        documentation: "Serializes a structure union value",
        protocol: ec2Query,
        method: "POST",
        "uri": "/",
        headers: {
            "Content-Type": "application/x-www-form-urlencoded"
        },
        requireHeaders: [
            "Content-Length"
        ],
        body: "Action=QueryUnions&Version=2020-01-08&Contents.StructureValue.Hi=hello",
        bodyMediaType: "application/x-www-form-urlencoded",
        params: {
            contents: {
                "structureValue": {
                    "hi": "hello"
                }
            }
        }
    }
])
