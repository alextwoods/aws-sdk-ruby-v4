package software.amazon.smithy.aws.ruby.codegen;

import software.amazon.smithy.aws.ruby.codegen.protocol.restjson.AwsRestJson1;
import software.amazon.smithy.aws.ruby.codegen.protocol.awsquery.AwsQuery;
import software.amazon.smithy.ruby.codegen.ProtocolGenerator;
import software.amazon.smithy.ruby.codegen.RubyIntegration;
import software.amazon.smithy.utils.ListUtils;

import java.util.List;

public class AddProtocols implements RubyIntegration {
    @Override
    public List<ProtocolGenerator> getProtocolGenerators() {
        return ListUtils.of(
                new AwsRestJson1(),
//                new AwsJsonRpc1_0(),
//                new AwsJsonRpc1_1(),
//                new AwsRestXml(),
                new AwsQuery()
//                new Ec2Query()
        );
    }
}
