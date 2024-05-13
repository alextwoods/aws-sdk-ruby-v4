package software.amazon.smithy.aws.ruby.codegen.customizations;

import software.amazon.smithy.model.Model;
import software.amazon.smithy.model.knowledge.OperationIndex;
import software.amazon.smithy.model.shapes.BlobShape;
import software.amazon.smithy.model.shapes.MemberShape;
import software.amazon.smithy.model.shapes.OperationShape;
import software.amazon.smithy.model.shapes.ServiceShape;
import software.amazon.smithy.model.shapes.Shape;
import software.amazon.smithy.model.shapes.ShapeId;
import software.amazon.smithy.model.shapes.StructureShape;
import software.amazon.smithy.model.traits.RequiresLengthTrait;
import software.amazon.smithy.model.transform.ModelTransformer;
import software.amazon.smithy.ruby.codegen.RubyIntegration;
import software.amazon.smithy.ruby.codegen.RubySettings;
import software.amazon.smithy.ruby.codegen.config.ClientConfig;
import software.amazon.smithy.ruby.codegen.config.ConfigProviderChain;
import software.amazon.smithy.ruby.codegen.rulesengine.BuiltInBinding;
import software.amazon.smithy.ruby.codegen.rulesengine.FunctionBinding;
import software.amazon.smithy.rulesengine.aws.language.functions.AwsBuiltIns;
import software.amazon.smithy.rulesengine.aws.language.functions.IsVirtualHostableS3Bucket;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

public class S3Customizations implements RubyIntegration {

    private static final String ACCELERATE_DOCS = """
            When set to `true`, accelerated bucket endpoints will be used
            for all object operations. You must first enable accelerate for
            each bucket. [Go here for more information](http://docs.aws.amazon.com/AmazonS3/latest/dev/transfer-acceleration.html).
            """;
    public static final ClientConfig USE_ACCELERATE_ENDPOINT = ClientConfig.builder()
            .name("use_accelerate_endpoint")
            .documentationRbsAndValidationType("Boolean")
            .documentation(ACCELERATE_DOCS)
            .defaultValue("false")
            .build();
    private static final String DISABLE_MRAP_DOCS = """
            When set to `false` this will option will raise errors when multi-region
            access point ARNs are used.  Multi-region access points can potentially
            result in cross region requests.
                                """;
    public static final ClientConfig DISABLE_MRAP = ClientConfig.builder()
            .name("disable_multiregion_access_points")
            .documentationRbsAndValidationType("Boolean")
            .documentation(DISABLE_MRAP_DOCS)
            .documentationDefaultValue("false")
            .defaults(ConfigProviderChain.builder()
                    .envProvider("AWS_S3_DISABLE_MULTIREGION_ACCESS_POINTS", "Boolean")
                    .sharedConfigProvider("s3_disable_multiregion_access_points", "Boolean")
                    .staticProvider("false")
                    .build())
            .build();
    private static final String PATH_STYLE_DOCS = """
            When set to `true`, the bucket name is always left in the
            request URI and never moved to the host as a sub-domain.
                                """;
    public static final ClientConfig FORCE_PATH_STYLE = ClientConfig.builder()
            .name("force_path_style")
            .documentationRbsAndValidationType("Boolean")
            .documentation(PATH_STYLE_DOCS)
            .defaultValue("false")
            .build();
    private static final String USE_ARN_REGION_DOCS = """
            For S3 ARNs passed into the `:bucket` parameter, this option will
            use the region in the ARN, allowing for cross-region requests to
            be made. Set to `false` to use the client's region instead.
            """;
    public static final ClientConfig USE_ARN_REGION = ClientConfig.builder()
            .name("use_arn_region")
            .documentationRbsAndValidationType("Boolean")
            .documentation(USE_ARN_REGION_DOCS)
            .documentationDefaultValue("true")
            .defaults(ConfigProviderChain.builder()
                    .envProvider("AWS_S3_USE_ARN_REGION", "Boolean")
                    .sharedConfigProvider("s3_use_arn_region", "Boolean")
                    .staticProvider("true")
                    .build())
            .build();

    @Override
    public boolean includeFor(ServiceShape service, Model model) {
        return service.toShapeId().equals(ShapeId.from("com.amazonaws.s3#AmazonS3"));
    }

    @Override
    public Model preprocessModel(Model model, RubySettings settings) {
        return new AddRequiresLengthToStreamingInput()
                .transform(ModelTransformer.create(), model);
    }

    @Override
    public List<BuiltInBinding> builtInBindings() {
        return List.of(
                BuiltInBinding.builder()
                        .builtIn(AwsBuiltIns.S3_ACCELERATE)
                        .fromConfig(USE_ACCELERATE_ENDPOINT)
                        .build(),
                BuiltInBinding.builder()
                        .builtIn(AwsBuiltIns.S3_DISABLE_MRAP)
                        .fromConfig(DISABLE_MRAP)
                        .build(),
                BuiltInBinding.builder()
                        .builtIn(AwsBuiltIns.S3_FORCE_PATH_STYLE)
                        .fromConfig(FORCE_PATH_STYLE)
                        .build(),
                BuiltInBinding.builder()
                        .builtIn(AwsBuiltIns.S3_USE_ARN_REGION)
                        .fromConfig(USE_ARN_REGION)
                        .build(),
                BuiltInBinding.builder()
                        .builtIn(AwsBuiltIns.S3_USE_GLOBAL_ENDPOINT)
                        .fromConstantValue("false")
                        .build()
        );
    }

    @Override
    public List<FunctionBinding> functionBindings() {
        return List.of(
                FunctionBinding.builder()
                        .id(IsVirtualHostableS3Bucket.ID)
                        .rubyMethodName("AWS::SDK::S3::Endpoints.virtual_hostable_s3_bucket?")
                        .rubySource("customizations/s3/endpoint_rules.rb")
                        .build()

        );
    }

    private static final class AddRequiresLengthToStreamingInput {

        public static final ShapeId STREAMING_BLOB_ID = ShapeId.from("com.amazonaws.s3#StreamingBlob");

        Model transform(ModelTransformer transformer, Model model) {
            // preprocess is called on all services. Transform only when the s3 streaming blob is present
            if (!model.getShape(STREAMING_BLOB_ID).isPresent()) {
                return model;
            }

            OperationIndex operationIndex = OperationIndex.of(model);

            List<Shape> updates = new ArrayList<>();
            ShapeId streamingInputBlobId = ShapeId.from("smithy.ruby.synthetic#StreamingInputBlob");
            Shape streamingInputBlob = model.expectShape(STREAMING_BLOB_ID, BlobShape.class).toBuilder()
                    .id(streamingInputBlobId)
                    .addTrait(new RequiresLengthTrait())
                    .build();

            updates.add(streamingInputBlob);

            for (OperationShape operation : model.getOperationShapes()) {
                StructureShape input = operationIndex.expectInputShape(operation);
                Optional<MemberShape> missingRequiresLength = missingRequiresLength(input);
                if (missingRequiresLength.isPresent()) {
                    //swap StreamingBlob for StreamingInputBlob
                    StructureShape updatedInput = input.toBuilder()
                            .addMember(missingRequiresLength.get().toBuilder()
                                    .target(streamingInputBlobId).build())
                            .build();
                    updates.add(updatedInput);
                }
            }
            return transformer.replaceShapes(model, updates);
        }

        private Optional<MemberShape> missingRequiresLength(StructureShape input) {
            return input.members().stream().filter(memberShape -> {
                return memberShape.getTarget().equals(STREAMING_BLOB_ID);
            }).findFirst();
        }
    }
}
