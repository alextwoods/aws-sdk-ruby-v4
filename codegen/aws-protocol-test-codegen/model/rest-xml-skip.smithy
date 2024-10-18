$version: "2.0"

namespace aws.protocoltests.restxml

use smithy.ruby#skipTests

apply NestedXmlMapWithXmlName @skipTests([
    { id: "NestedXmlMapWithXmlNameSerializes", reason: "https://github.com/smithy-lang/smithy/commit/b2f4752fed01cc991101506079b485db7a7d4204#diff-a6dcbc84cdbdb08a735361879db4d59a3f41d9bcd0e6204ef7f242c87beb775aR716 does not appear to have made it into 1.52.0", type: "request" }
])
