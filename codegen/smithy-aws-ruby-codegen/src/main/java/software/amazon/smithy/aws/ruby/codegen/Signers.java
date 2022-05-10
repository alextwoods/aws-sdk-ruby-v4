package software.amazon.smithy.aws.ruby.codegen;

import software.amazon.smithy.ruby.codegen.RubyIntegration;
import software.amazon.smithy.ruby.codegen.middleware.Middleware;

import java.util.Collections;
import java.util.List;

public class Signers implements RubyIntegration {

    public List<Middleware> getClientMiddleware() {
//        ClientConfig credentials = (new ClientConfig.Builder())
//                .name("credentials")
//                .type("CredentialProvider")
//                .documentation("AWS credentials")
//                .build();
//
//        ClientConfig region = (new ClientConfig.Builder())
//                .name("region")
//                .type("String")
//                .documentation("AWS region for the request")
//                .build();
//
//        Middleware signer = (new Middleware.Builder())
//                .klass("Naws::Middleware::Signer")
//                .step(MiddlewareStackStep.FINALIZE)
//                .addConfig(credentials)
//                .addConfig(region)
//                .rubySource("../customizations/signer.rb")
//                .build();
        // TODO: Protocol tests don't have a way to remove this currently
        // return Collections.singletonList(signer);

        return Collections.emptyList();
    }

}
