namespace aws.protocoltests.query

use aws.api#service
use aws.protocols#awsQuery
use smithy.test#httpRequestTests
use smithy.test#httpResponseTests
use aws.protocoltests.shared#StringList
use aws.protocoltests.shared#StringMap
use aws.protocoltests.shared#GreetingStruct
use aws.protocoltests.shared#FooEnum

@service(sdkId: "Query Protocol")
@awsQuery
@xmlNamespace(uri: "https://example.com/")
service AwsQueryExtras {
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
        id: "QuerySerializeStringUnionValue",
        documentation: "Serializes a string union value",
        protocol: awsQuery,
        method: "POST",
        "uri": "/",
        headers: {
            "Content-Type": "application/x-www-form-urlencoded"
        },
        requireHeaders: [
            "Content-Length"
        ],
        body: "Action=QueryUnions&Version=2020-01-08&contents.stringValue=foo",
        bodyMediaType: "application/x-www-form-urlencoded",
        params: {
            contents: {
                stringValue: "foo"
            }
        }
    },
    {
        id: "QuerySerializeBooleanUnionValue",
        documentation: "Serializes a boolean union value",
        protocol: awsQuery,
        method: "POST",
        "uri": "/",
        headers: {
            "Content-Type": "application/x-www-form-urlencoded"
        },
        requireHeaders: [
            "Content-Length"
        ],
        body: "Action=QueryUnions&Version=2020-01-08&contents.booleanValue=true",
        bodyMediaType: "application/x-www-form-urlencoded",
        params: {
            contents: {
                booleanValue: true
            }
        }
    },
    {
        id: "QuerySerializeNumberUnionValue",
        documentation: "Serializes a number union value",
        protocol: awsQuery,
        method: "POST",
        "uri": "/",
        headers: {
            "Content-Type": "application/x-www-form-urlencoded"
        },
        requireHeaders: [
            "Content-Length"
        ],
        body: "Action=QueryUnions&Version=2020-01-08&contents.numberValue=1",
        bodyMediaType: "application/x-www-form-urlencoded",
        params: {
            contents: {
                numberValue: 1
            }
        }
    },
    {
        id: "QuerySerializeBlobUnionValue",
        documentation: "Serializes a blob union value",
        protocol: awsQuery,
        method: "POST",
        "uri": "/",
        headers: {
            "Content-Type": "application/x-www-form-urlencoded"
        },
        requireHeaders: [
            "Content-Length"
        ],
        body: "Action=QueryUnions&Version=2020-01-08&contents.blobValue=Zm9v",
        bodyMediaType: "application/x-www-form-urlencoded",
        params: {
            contents: {
                blobValue: "foo"
            }
        }
    },
    {
        id: "QuerySerializeTimestampUnionValue",
        documentation: "Serializes a timestamp union value",
        protocol: awsQuery,
        method: "POST",
        "uri": "/",
        headers: {
            "Content-Type": "application/x-www-form-urlencoded"
        },
        requireHeaders: [
            "Content-Length"
        ],
        body: "Action=QueryUnions&Version=2020-01-08&contents.timestampValue=2014-04-29T18:30:38Z",
        bodyMediaType: "application/x-www-form-urlencoded",
        params: {
            contents: {
                timestampValue: 1398796238
            }
        }
    },
    {
        id: "QuerySerializeEnumUnionValue",
        documentation: "Serializes an emum union value",
        protocol: awsQuery,
        method: "POST",
        "uri": "/",
        headers: {
            "Content-Type": "application/x-www-form-urlencoded"
        },
        requireHeaders: [
            "Content-Length"
        ],
        body: "Action=QueryUnions&Version=2020-01-08&contents.enumValue=Foo",
        bodyMediaType: "application/x-www-form-urlencoded",
        params: {
            contents: {
                enumValue: "Foo"
            }
        }
    },
    {
        id: "QuerySerializeListUnionValue",
        documentation: "Serializes a list union value",
        protocol: awsQuery,
        method: "POST",
        "uri": "/",
        headers: {
            "Content-Type": "application/x-www-form-urlencoded"
        },
        requireHeaders: [
            "Content-Length"
        ],
        body: "Action=QueryUnions&Version=2020-01-08&contents.listValue.member.1=foo&contents.listValue.member.2=bar",
        bodyMediaType: "application/x-www-form-urlencoded",
        params: {
            contents: {
                listValue: ["foo", "bar"]
            }
        }
    },
    {
        id: "QuerySerializeStructureUnionValue",
        documentation: "Serializes a structure union value",
        protocol: awsQuery,
        method: "POST",
        "uri": "/",
        headers: {
            "Content-Type": "application/x-www-form-urlencoded"
        },
        requireHeaders: [
            "Content-Length"
        ],
        body: "Action=QueryUnions&Version=2020-01-08&contents.structureValue.hi=hello",
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
