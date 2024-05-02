package software.amazon.smithy.aws.ruby.codegen;

import software.amazon.smithy.ruby.codegen.RubyCodeWriter;
import software.amazon.smithy.ruby.codegen.RubyIntegration;

public class SdkGemSpecHelper implements RubyIntegration {
    @Override
    public void writeAdditionalSpecHelper(RubyCodeWriter writer) {
        writer.write("require_relative '../../aws-sdk-core/spec/spec_helper'");
    }
}
