package software.amazon.smithy.aws.ruby.codegen;

import java.util.HashMap;
import java.util.Map;
import software.amazon.smithy.aws.ruby.codegen.protocol.ec2.Ec2Query;
import software.amazon.smithy.aws.ruby.codegen.protocol.json.AwsJson1_1;
import software.amazon.smithy.aws.ruby.codegen.protocol.json10.AwsJson1_0;
import software.amazon.smithy.aws.ruby.codegen.protocol.query.AwsQuery;
import software.amazon.smithy.aws.ruby.codegen.protocol.restjson.RestJson1;
import software.amazon.smithy.aws.ruby.codegen.protocol.restxml.RestXml;
import software.amazon.smithy.aws.traits.auth.SigV4Trait;
import software.amazon.smithy.model.traits.HttpBasicAuthTrait;
import software.amazon.smithy.ruby.codegen.GenerationContext;
import software.amazon.smithy.ruby.codegen.Hearth;
import software.amazon.smithy.ruby.codegen.ProtocolGenerator;
import software.amazon.smithy.ruby.codegen.RubyDependency;
import software.amazon.smithy.ruby.codegen.RubyIntegration;
import software.amazon.smithy.ruby.codegen.auth.AuthScheme;
import software.amazon.smithy.ruby.codegen.config.ClientConfig;
import software.amazon.smithy.utils.ListUtils;

import java.util.List;

public class AWSProtocols implements RubyIntegration {
    @Override
    public List<ProtocolGenerator> getProtocolGenerators() {
        return ListUtils.of(
                new AwsJson1_0(),
                new AwsJson1_1(),
                new AwsQuery(),
                new Ec2Query(),
                new RestJson1(),
                new RestXml()
        );
    }

    @Override
    public List<RubyDependency> getAdditionalGemDependencies(GenerationContext context) {
        return List.of(RubyDependency.builder()
                .type(RubyDependency.Type.DEPENDENCY)
                .gemName("aws-sdk-core")
                .importPath("aws-sdk-core")
                .version("~> 4.0.0.pre1")
                .addDependency(RubyDependency.HEARTH)
                .build());
    }

    @Override
    public List<AuthScheme> getAdditionalAuthSchemes(GenerationContext context) {
        String identityResolverDocumentation = """
                A %s that returns a %s for operations modeled with the %s auth scheme.
                """;

        String defaultIdentity = "Auth::HTTPCustomAuthIdentity.new(key: 'key')";
        String defaultConfigValue = "cfg[:stub_responses] ? %s.new(proc { %s }) : nil"
                .formatted(Hearth.IDENTITY_RESOLVER, defaultIdentity);
        String identityType = "Auth::HTTPCustomAuthIdentity";

        ClientConfig identityResolverConfig = ClientConfig.builder()
                .name("http_custom_auth_identity_resolver")
                .type(Hearth.IDENTITY_RESOLVER.toString())
                .documentation(
                        identityResolverDocumentation.formatted(
                                Hearth.IDENTITY_RESOLVER,
                                identityType,
                                HttpBasicAuthTrait.ID))
                .defaultDynamicValue(defaultConfigValue)
                .build();

        AuthScheme authScheme = AuthScheme.builder()
                .shapeId(SigV4Trait.ID)
                .rubyAuthScheme("HTTPCustomAuthScheme.new")
                .rubyIdentityType(identityType)
                .identityResolverConfig(identityResolverConfig)
                .build();

        return List.of(authScheme);
    }
}
