package software.amazon.smithy.aws.ruby.codegen;

import software.amazon.smithy.model.Model;
import software.amazon.smithy.model.shapes.ServiceShape;
import software.amazon.smithy.model.shapes.ShapeId;
import software.amazon.smithy.ruby.codegen.RubyIntegration;
import software.amazon.smithy.ruby.codegen.rulesengine.BuiltInBinding;
import software.amazon.smithy.rulesengine.aws.language.functions.AwsBuiltIns;

import java.util.List;

public class STSCustomizations implements RubyIntegration {
    @Override
    public boolean includeFor(ServiceShape service, Model model) {
        return service.toShapeId().equals(ShapeId.from("com.amazonaws.sts#AWSSecurityTokenServiceV20110615"));
    }

    @Override
    public List<BuiltInBinding> builtInBindings() {
        return List.of(
                BuiltInBinding.builder()
                        .builtIn(AwsBuiltIns.STS_USE_GLOBAL_ENDPOINT)
                        .fromConstantValue("'false'")
                        .build()
        );
    }

}
