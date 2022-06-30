# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::ECRPUBLIC
  # An API client for SpencerFrontendService
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Amazon Elastic Container Registry Public</fullname>
  #          <p>Amazon Elastic Container Registry (Amazon ECR) is a managed container image registry service. Amazon ECR provides both
  #          public and private registries to host your container images. You can use the familiar
  #          Docker CLI, or their preferred client, to push, pull, and manage images. Amazon ECR provides a
  #          secure, scalable, and reliable registry for your Docker or Open Container Initiative (OCI)
  #          images. Amazon ECR supports public repositories with this API. For information about the Amazon ECR
  #          API for private repositories, see <a href="https://docs.aws.amazon.com/AmazonECR/latest/APIReference/Welcome.html">Amazon Elastic Container Registry API Reference</a>.</p>
  #
  class Client
    include Hearth::ClientStubs

    @middleware = Hearth::MiddlewareBuilder.new

    def self.middleware
      @middleware
    end

    # @param [Config] config
    #   An instance of {Config}
    #
    def initialize(config = AWS::SDK::ECRPUBLIC::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Checks the availability of one or more image layers within a repository in a public
    #          registry. When an image is pushed to a repository, each image layer is checked to verify if
    #          it has been uploaded before. If it has been uploaded, then the image layer is
    #          skipped.</p>
    #          <note>
    #             <p>This operation is used by the Amazon ECR proxy and is not generally used by customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::BatchCheckLayerAvailabilityInput}.
    #
    # @option params [String] :registry_id
    #   <p>The AWS account ID associated with the public registry that contains the image layers to
    #            check. If you do not specify a registry, the default public registry is assumed.</p>
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository that is associated with the image layers to check.</p>
    #
    # @option params [Array<String>] :layer_digests
    #   <p>The digests of the image layers to check.</p>
    #
    # @return [Types::BatchCheckLayerAvailabilityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_check_layer_availability(
    #     registry_id: 'registryId',
    #     repository_name: 'repositoryName', # required
    #     layer_digests: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchCheckLayerAvailabilityOutput
    #   resp.data.layers #=> Array<Layer>
    #   resp.data.layers[0] #=> Types::Layer
    #   resp.data.layers[0].layer_digest #=> String
    #   resp.data.layers[0].layer_availability #=> String, one of ["AVAILABLE", "UNAVAILABLE"]
    #   resp.data.layers[0].layer_size #=> Integer
    #   resp.data.layers[0].media_type #=> String
    #   resp.data.failures #=> Array<LayerFailure>
    #   resp.data.failures[0] #=> Types::LayerFailure
    #   resp.data.failures[0].layer_digest #=> String
    #   resp.data.failures[0].failure_code #=> String, one of ["InvalidLayerDigest", "MissingLayerDigest"]
    #   resp.data.failures[0].failure_reason #=> String
    #
    def batch_check_layer_availability(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchCheckLayerAvailabilityInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchCheckLayerAvailabilityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchCheckLayerAvailability
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RepositoryNotFoundException, Errors::ServerException, Errors::InvalidParameterException, Errors::RegistryNotFoundException]),
        data_parser: Parsers::BatchCheckLayerAvailability
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchCheckLayerAvailability,
        stubs: @stubs,
        params_class: Params::BatchCheckLayerAvailabilityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_check_layer_availability
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a list of specified images within a repository in a public registry. Images are
    #          specified with either an <code>imageTag</code> or <code>imageDigest</code>.</p>
    #          <p>You can remove a tag from an image by specifying the image's tag in your request. When
    #          you remove the last tag from an image, the image is deleted from your repository.</p>
    #          <p>You can completely delete an image (and all of its tags) by specifying the image's
    #          digest in your request.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchDeleteImageInput}.
    #
    # @option params [String] :registry_id
    #   <p>The AWS account ID associated with the registry that contains the image to delete.
    #            If you do not specify a registry, the default public registry is assumed.</p>
    #
    # @option params [String] :repository_name
    #   <p>The repository in a public registry that contains the image to delete.</p>
    #
    # @option params [Array<ImageIdentifier>] :image_ids
    #   <p>A list of image ID references that correspond to images to delete. The format of the
    #               <code>imageIds</code> reference is <code>imageTag=tag</code> or
    #               <code>imageDigest=digest</code>.</p>
    #
    # @return [Types::BatchDeleteImageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_image(
    #     registry_id: 'registryId',
    #     repository_name: 'repositoryName', # required
    #     image_ids: [
    #       {
    #         image_digest: 'imageDigest',
    #         image_tag: 'imageTag'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchDeleteImageOutput
    #   resp.data.image_ids #=> Array<ImageIdentifier>
    #   resp.data.image_ids[0] #=> Types::ImageIdentifier
    #   resp.data.image_ids[0].image_digest #=> String
    #   resp.data.image_ids[0].image_tag #=> String
    #   resp.data.failures #=> Array<ImageFailure>
    #   resp.data.failures[0] #=> Types::ImageFailure
    #   resp.data.failures[0].image_id #=> Types::ImageIdentifier
    #   resp.data.failures[0].failure_code #=> String, one of ["InvalidImageDigest", "InvalidImageTag", "ImageTagDoesNotMatchDigest", "ImageNotFound", "MissingDigestAndTag", "ImageReferencedByManifestList", "KmsError"]
    #   resp.data.failures[0].failure_reason #=> String
    #
    def batch_delete_image(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchDeleteImageInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchDeleteImageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchDeleteImage
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RepositoryNotFoundException, Errors::ServerException, Errors::InvalidParameterException]),
        data_parser: Parsers::BatchDeleteImage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchDeleteImage,
        stubs: @stubs,
        params_class: Params::BatchDeleteImageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_delete_image
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Informs Amazon ECR that the image layer upload has completed for a specified public registry,
    #          repository name, and upload ID. You can optionally provide a <code>sha256</code> digest of
    #          the image layer for data validation purposes.</p>
    #          <p>When an image is pushed, the CompleteLayerUpload API is called once per each new image
    #          layer to verify that the upload has completed.</p>
    #          <note>
    #             <p>This operation is used by the Amazon ECR proxy and is not generally used by customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::CompleteLayerUploadInput}.
    #
    # @option params [String] :registry_id
    #   <p>The AWS account ID associated with the registry to which to upload layers.
    #            If you do not specify a registry, the default public registry is assumed.</p>
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository in a public registry to associate with the image
    #            layer.</p>
    #
    # @option params [String] :upload_id
    #   <p>The upload ID from a previous <a>InitiateLayerUpload</a> operation to
    #            associate with the image layer.</p>
    #
    # @option params [Array<String>] :layer_digests
    #   <p>The <code>sha256</code> digest of the image layer.</p>
    #
    # @return [Types::CompleteLayerUploadOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.complete_layer_upload(
    #     registry_id: 'registryId',
    #     repository_name: 'repositoryName', # required
    #     upload_id: 'uploadId', # required
    #     layer_digests: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CompleteLayerUploadOutput
    #   resp.data.registry_id #=> String
    #   resp.data.repository_name #=> String
    #   resp.data.upload_id #=> String
    #   resp.data.layer_digest #=> String
    #
    def complete_layer_upload(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CompleteLayerUploadInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CompleteLayerUploadInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CompleteLayerUpload
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LayerAlreadyExistsException, Errors::RepositoryNotFoundException, Errors::UnsupportedCommandException, Errors::EmptyUploadException, Errors::InvalidLayerException, Errors::ServerException, Errors::InvalidParameterException, Errors::LayerPartTooSmallException, Errors::RegistryNotFoundException, Errors::UploadNotFoundException]),
        data_parser: Parsers::CompleteLayerUpload
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CompleteLayerUpload,
        stubs: @stubs,
        params_class: Params::CompleteLayerUploadOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :complete_layer_upload
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a repository in a public registry. For more information, see <a href="https://docs.aws.amazon.com/AmazonECR/latest/userguide/Repositories.html">Amazon ECR
    #             repositories</a> in the <i>Amazon Elastic Container Registry User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateRepositoryInput}.
    #
    # @option params [String] :repository_name
    #   <p>The name to use for the repository. This appears publicly in the Amazon ECR Public Gallery.
    #            The repository name may be specified on its own (such as <code>nginx-web-app</code>) or it
    #            can be prepended with a namespace to group the repository into a category (such as
    #               <code>project-a/nginx-web-app</code>).</p>
    #
    # @option params [RepositoryCatalogDataInput] :catalog_data
    #   <p>The details about the repository that are publicly visible in the
    #            Amazon ECR Public Gallery.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The metadata that you apply to the repository to help you categorize and organize them.
    #            Each tag consists of a key and an optional value, both of which you define.
    #            Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters.</p>
    #
    # @return [Types::CreateRepositoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_repository(
    #     repository_name: 'repositoryName', # required
    #     catalog_data: {
    #       description: 'description',
    #       architectures: [
    #         'member'
    #       ],
    #       operating_systems: [
    #         'member'
    #       ],
    #       logo_image_blob: 'logoImageBlob',
    #       about_text: 'aboutText',
    #       usage_text: 'usageText'
    #     },
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateRepositoryOutput
    #   resp.data.repository #=> Types::Repository
    #   resp.data.repository.repository_arn #=> String
    #   resp.data.repository.registry_id #=> String
    #   resp.data.repository.repository_name #=> String
    #   resp.data.repository.repository_uri #=> String
    #   resp.data.repository.created_at #=> Time
    #   resp.data.catalog_data #=> Types::RepositoryCatalogData
    #   resp.data.catalog_data.description #=> String
    #   resp.data.catalog_data.architectures #=> Array<String>
    #   resp.data.catalog_data.architectures[0] #=> String
    #   resp.data.catalog_data.operating_systems #=> Array<String>
    #   resp.data.catalog_data.operating_systems[0] #=> String
    #   resp.data.catalog_data.logo_url #=> String
    #   resp.data.catalog_data.about_text #=> String
    #   resp.data.catalog_data.usage_text #=> String
    #   resp.data.catalog_data.marketplace_certified #=> Boolean
    #
    def create_repository(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateRepositoryInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateRepositoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateRepository
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::InvalidTagParameterException, Errors::ServerException, Errors::TooManyTagsException, Errors::InvalidParameterException, Errors::RepositoryAlreadyExistsException]),
        data_parser: Parsers::CreateRepository
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateRepository,
        stubs: @stubs,
        params_class: Params::CreateRepositoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_repository
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a repository in a public registry. If the repository contains images, you must
    #          either delete all images in the repository or use the <code>force</code> option which
    #          deletes all images on your behalf before deleting the repository.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteRepositoryInput}.
    #
    # @option params [String] :registry_id
    #   <p>The AWS account ID associated with the public registry that contains the repository to
    #            delete. If you do not specify a registry, the default public registry is assumed.</p>
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository to delete.</p>
    #
    # @option params [Boolean] :force
    #   <p> If a repository contains images, forces the deletion.</p>
    #
    # @return [Types::DeleteRepositoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_repository(
    #     registry_id: 'registryId',
    #     repository_name: 'repositoryName', # required
    #     force: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRepositoryOutput
    #   resp.data.repository #=> Types::Repository
    #   resp.data.repository.repository_arn #=> String
    #   resp.data.repository.registry_id #=> String
    #   resp.data.repository.repository_name #=> String
    #   resp.data.repository.repository_uri #=> String
    #   resp.data.repository.created_at #=> Time
    #
    def delete_repository(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRepositoryInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRepositoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRepository
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RepositoryNotFoundException, Errors::ServerException, Errors::RepositoryNotEmptyException, Errors::InvalidParameterException]),
        data_parser: Parsers::DeleteRepository
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRepository,
        stubs: @stubs,
        params_class: Params::DeleteRepositoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_repository
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the repository policy associated with the specified repository.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteRepositoryPolicyInput}.
    #
    # @option params [String] :registry_id
    #   <p>The AWS account ID associated with the public registry that contains the repository
    #            policy to delete. If you do not specify a registry, the default public registry is assumed.</p>
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository that is associated with the repository policy to
    #            delete.</p>
    #
    # @return [Types::DeleteRepositoryPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_repository_policy(
    #     registry_id: 'registryId',
    #     repository_name: 'repositoryName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRepositoryPolicyOutput
    #   resp.data.registry_id #=> String
    #   resp.data.repository_name #=> String
    #   resp.data.policy_text #=> String
    #
    def delete_repository_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRepositoryPolicyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRepositoryPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRepositoryPolicy
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RepositoryNotFoundException, Errors::RepositoryPolicyNotFoundException, Errors::ServerException, Errors::InvalidParameterException]),
        data_parser: Parsers::DeleteRepositoryPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRepositoryPolicy,
        stubs: @stubs,
        params_class: Params::DeleteRepositoryPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_repository_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the image tag details for a repository in a public registry.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeImageTagsInput}.
    #
    # @option params [String] :registry_id
    #   <p>The AWS account ID associated with the public registry that contains the repository in
    #            which to describe images. If you do not specify a registry, the default public registry is assumed.</p>
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository that contains the image tag details to describe.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #               <code>DescribeImageTags</code> request where <code>maxResults</code> was used and the
    #            results exceeded the value of that parameter. Pagination continues from the end of the
    #            previous results that returned the <code>nextToken</code> value. This value is
    #               <code>null</code> when there are no more results to return. This option cannot be used
    #            when you specify images with <code>imageIds</code>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of repository results returned by <code>DescribeImageTags</code> in
    #            paginated output. When this parameter is used, <code>DescribeImageTags</code> only returns
    #               <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #            response element. The remaining results of the initial request can be seen by sending
    #            another <code>DescribeImageTags</code> request with the returned <code>nextToken</code>
    #            value. This value can be between 1 and 1000. If this parameter
    #            is not used, then <code>DescribeImageTags</code> returns up to 100
    #            results and a <code>nextToken</code> value, if applicable. This option cannot be used when
    #            you specify images with <code>imageIds</code>.</p>
    #
    # @return [Types::DescribeImageTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_image_tags(
    #     registry_id: 'registryId',
    #     repository_name: 'repositoryName', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeImageTagsOutput
    #   resp.data.image_tag_details #=> Array<ImageTagDetail>
    #   resp.data.image_tag_details[0] #=> Types::ImageTagDetail
    #   resp.data.image_tag_details[0].image_tag #=> String
    #   resp.data.image_tag_details[0].created_at #=> Time
    #   resp.data.image_tag_details[0].image_detail #=> Types::ReferencedImageDetail
    #   resp.data.image_tag_details[0].image_detail.image_digest #=> String
    #   resp.data.image_tag_details[0].image_detail.image_size_in_bytes #=> Integer
    #   resp.data.image_tag_details[0].image_detail.image_pushed_at #=> Time
    #   resp.data.image_tag_details[0].image_detail.image_manifest_media_type #=> String
    #   resp.data.image_tag_details[0].image_detail.artifact_media_type #=> String
    #   resp.data.next_token #=> String
    #
    def describe_image_tags(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeImageTagsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeImageTagsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeImageTags
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RepositoryNotFoundException, Errors::ServerException, Errors::InvalidParameterException]),
        data_parser: Parsers::DescribeImageTags
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeImageTags,
        stubs: @stubs,
        params_class: Params::DescribeImageTagsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_image_tags
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns metadata about the images in a repository in a public registry.</p>
    #          <note>
    #             <p>Beginning with Docker version 1.9, the Docker client compresses image layers before
    #             pushing them to a V2 Docker registry. The output of the <code>docker images</code>
    #             command shows the uncompressed image size, so it may return a larger image size than the
    #             image sizes returned by <a>DescribeImages</a>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeImagesInput}.
    #
    # @option params [String] :registry_id
    #   <p>The AWS account ID associated with the public registry that contains the repository in
    #            which to describe images. If you do not specify a registry, the default public registry is assumed.</p>
    #
    # @option params [String] :repository_name
    #   <p>The repository that contains the images to describe.</p>
    #
    # @option params [Array<ImageIdentifier>] :image_ids
    #   <p>The list of image IDs for the requested repository.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #               <code>DescribeImages</code> request where <code>maxResults</code> was used and the
    #            results exceeded the value of that parameter. Pagination continues from the end of the
    #            previous results that returned the <code>nextToken</code> value. This value is
    #               <code>null</code> when there are no more results to return. This option cannot be used
    #            when you specify images with <code>imageIds</code>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of repository results returned by <code>DescribeImages</code> in
    #            paginated output. When this parameter is used, <code>DescribeImages</code> only returns
    #               <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #            response element. The remaining results of the initial request can be seen by sending
    #            another <code>DescribeImages</code> request with the returned <code>nextToken</code> value.
    #            This value can be between 1 and 1000. If this parameter is not
    #            used, then <code>DescribeImages</code> returns up to 100 results and a
    #               <code>nextToken</code> value, if applicable. This option cannot be used when you specify
    #            images with <code>imageIds</code>.</p>
    #
    # @return [Types::DescribeImagesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_images(
    #     registry_id: 'registryId',
    #     repository_name: 'repositoryName', # required
    #     image_ids: [
    #       {
    #         image_digest: 'imageDigest',
    #         image_tag: 'imageTag'
    #       }
    #     ],
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeImagesOutput
    #   resp.data.image_details #=> Array<ImageDetail>
    #   resp.data.image_details[0] #=> Types::ImageDetail
    #   resp.data.image_details[0].registry_id #=> String
    #   resp.data.image_details[0].repository_name #=> String
    #   resp.data.image_details[0].image_digest #=> String
    #   resp.data.image_details[0].image_tags #=> Array<String>
    #   resp.data.image_details[0].image_tags[0] #=> String
    #   resp.data.image_details[0].image_size_in_bytes #=> Integer
    #   resp.data.image_details[0].image_pushed_at #=> Time
    #   resp.data.image_details[0].image_manifest_media_type #=> String
    #   resp.data.image_details[0].artifact_media_type #=> String
    #   resp.data.next_token #=> String
    #
    def describe_images(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeImagesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeImagesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeImages
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RepositoryNotFoundException, Errors::ServerException, Errors::ImageNotFoundException, Errors::InvalidParameterException]),
        data_parser: Parsers::DescribeImages
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeImages,
        stubs: @stubs,
        params_class: Params::DescribeImagesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_images
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns details for a public registry.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeRegistriesInput}.
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #               <code>DescribeRegistries</code> request where <code>maxResults</code> was used and the
    #            results exceeded the value of that parameter. Pagination continues from the end of the
    #            previous results that returned the <code>nextToken</code> value. This value is
    #               <code>null</code> when there are no more results to return.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of repository results returned by <code>DescribeRegistries</code> in
    #            paginated output. When this parameter is used, <code>DescribeRegistries</code> only returns
    #               <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #            response element. The remaining results of the initial request can be seen by sending
    #            another <code>DescribeRegistries</code> request with the returned <code>nextToken</code>
    #            value. This value can be between 1 and 1000. If this parameter
    #            is not used, then <code>DescribeRegistries</code> returns up to 100
    #            results and a <code>nextToken</code> value, if applicable.</p>
    #
    # @return [Types::DescribeRegistriesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_registries(
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeRegistriesOutput
    #   resp.data.registries #=> Array<Registry>
    #   resp.data.registries[0] #=> Types::Registry
    #   resp.data.registries[0].registry_id #=> String
    #   resp.data.registries[0].registry_arn #=> String
    #   resp.data.registries[0].registry_uri #=> String
    #   resp.data.registries[0].verified #=> Boolean
    #   resp.data.registries[0].aliases #=> Array<RegistryAlias>
    #   resp.data.registries[0].aliases[0] #=> Types::RegistryAlias
    #   resp.data.registries[0].aliases[0].name #=> String
    #   resp.data.registries[0].aliases[0].status #=> String, one of ["ACTIVE", "PENDING", "REJECTED"]
    #   resp.data.registries[0].aliases[0].primary_registry_alias #=> Boolean
    #   resp.data.registries[0].aliases[0].default_registry_alias #=> Boolean
    #   resp.data.next_token #=> String
    #
    def describe_registries(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeRegistriesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeRegistriesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeRegistries
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedCommandException, Errors::ServerException, Errors::InvalidParameterException]),
        data_parser: Parsers::DescribeRegistries
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeRegistries,
        stubs: @stubs,
        params_class: Params::DescribeRegistriesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_registries
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes repositories in a public registry.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeRepositoriesInput}.
    #
    # @option params [String] :registry_id
    #   <p>The AWS account ID associated with the registry that contains the repositories to be
    #            described. If you do not specify a registry, the default public registry is assumed.</p>
    #
    # @option params [Array<String>] :repository_names
    #   <p>A list of repositories to describe. If this parameter is omitted, then all repositories
    #            in a registry are described.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #               <code>DescribeRepositories</code> request where <code>maxResults</code> was used and the
    #            results exceeded the value of that parameter. Pagination continues from the end of the
    #            previous results that returned the <code>nextToken</code> value. This value is
    #               <code>null</code> when there are no more results to return. This option cannot be used
    #            when you specify repositories with <code>repositoryNames</code>.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of repository results returned by <code>DescribeRepositories</code>
    #            in paginated output. When this parameter is used, <code>DescribeRepositories</code> only
    #            returns <code>maxResults</code> results in a single page along with a
    #               <code>nextToken</code> response element. The remaining results of the initial request
    #            can be seen by sending another <code>DescribeRepositories</code> request with the returned
    #               <code>nextToken</code> value. This value can be between 1 and
    #            1000. If this parameter is not used, then <code>DescribeRepositories</code>
    #            returns up to 100 results and a <code>nextToken</code> value, if
    #            applicable. This option cannot be used when you specify repositories with
    #               <code>repositoryNames</code>.</p>
    #
    # @return [Types::DescribeRepositoriesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_repositories(
    #     registry_id: 'registryId',
    #     repository_names: [
    #       'member'
    #     ],
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeRepositoriesOutput
    #   resp.data.repositories #=> Array<Repository>
    #   resp.data.repositories[0] #=> Types::Repository
    #   resp.data.repositories[0].repository_arn #=> String
    #   resp.data.repositories[0].registry_id #=> String
    #   resp.data.repositories[0].repository_name #=> String
    #   resp.data.repositories[0].repository_uri #=> String
    #   resp.data.repositories[0].created_at #=> Time
    #   resp.data.next_token #=> String
    #
    def describe_repositories(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeRepositoriesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeRepositoriesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeRepositories
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RepositoryNotFoundException, Errors::ServerException, Errors::InvalidParameterException]),
        data_parser: Parsers::DescribeRepositories
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeRepositories,
        stubs: @stubs,
        params_class: Params::DescribeRepositoriesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_repositories
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves an authorization token. An authorization token represents your IAM
    #          authentication credentials and can be used to access any Amazon ECR registry that your IAM
    #          principal has access to. The authorization token is valid for 12 hours. This API requires
    #          the <code>ecr-public:GetAuthorizationToken</code> and
    #             <code>sts:GetServiceBearerToken</code> permissions.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAuthorizationTokenInput}.
    #
    # @return [Types::GetAuthorizationTokenOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_authorization_token()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAuthorizationTokenOutput
    #   resp.data.authorization_data #=> Types::AuthorizationData
    #   resp.data.authorization_data.authorization_token #=> String
    #   resp.data.authorization_data.expires_at #=> Time
    #
    def get_authorization_token(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAuthorizationTokenInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAuthorizationTokenInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAuthorizationToken
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServerException, Errors::InvalidParameterException]),
        data_parser: Parsers::GetAuthorizationToken
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAuthorizationToken,
        stubs: @stubs,
        params_class: Params::GetAuthorizationTokenOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_authorization_token
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves catalog metadata for a public registry.</p>
    #
    # @param [Hash] params
    #   See {Types::GetRegistryCatalogDataInput}.
    #
    # @return [Types::GetRegistryCatalogDataOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_registry_catalog_data()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRegistryCatalogDataOutput
    #   resp.data.registry_catalog_data #=> Types::RegistryCatalogData
    #   resp.data.registry_catalog_data.display_name #=> String
    #
    def get_registry_catalog_data(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRegistryCatalogDataInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRegistryCatalogDataInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRegistryCatalogData
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedCommandException, Errors::ServerException]),
        data_parser: Parsers::GetRegistryCatalogData
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRegistryCatalogData,
        stubs: @stubs,
        params_class: Params::GetRegistryCatalogDataOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_registry_catalog_data
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieve catalog metadata for a repository in a public registry. This metadata is
    #          displayed publicly in the Amazon ECR Public Gallery.</p>
    #
    # @param [Hash] params
    #   See {Types::GetRepositoryCatalogDataInput}.
    #
    # @option params [String] :registry_id
    #   <p>The AWS account ID associated with the registry that contains the repositories to be
    #            described. If you do not specify a registry, the default public registry is assumed.</p>
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository to retrieve the catalog metadata for.</p>
    #
    # @return [Types::GetRepositoryCatalogDataOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_repository_catalog_data(
    #     registry_id: 'registryId',
    #     repository_name: 'repositoryName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRepositoryCatalogDataOutput
    #   resp.data.catalog_data #=> Types::RepositoryCatalogData
    #   resp.data.catalog_data.description #=> String
    #   resp.data.catalog_data.architectures #=> Array<String>
    #   resp.data.catalog_data.architectures[0] #=> String
    #   resp.data.catalog_data.operating_systems #=> Array<String>
    #   resp.data.catalog_data.operating_systems[0] #=> String
    #   resp.data.catalog_data.logo_url #=> String
    #   resp.data.catalog_data.about_text #=> String
    #   resp.data.catalog_data.usage_text #=> String
    #   resp.data.catalog_data.marketplace_certified #=> Boolean
    #
    def get_repository_catalog_data(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRepositoryCatalogDataInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRepositoryCatalogDataInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRepositoryCatalogData
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RepositoryNotFoundException, Errors::ServerException, Errors::InvalidParameterException]),
        data_parser: Parsers::GetRepositoryCatalogData
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRepositoryCatalogData,
        stubs: @stubs,
        params_class: Params::GetRepositoryCatalogDataOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_repository_catalog_data
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the repository policy for the specified repository.</p>
    #
    # @param [Hash] params
    #   See {Types::GetRepositoryPolicyInput}.
    #
    # @option params [String] :registry_id
    #   <p>The AWS account ID associated with the public registry that contains the repository.
    #            If you do not specify a registry, the default public registry is assumed.</p>
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository with the policy to retrieve.</p>
    #
    # @return [Types::GetRepositoryPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_repository_policy(
    #     registry_id: 'registryId',
    #     repository_name: 'repositoryName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRepositoryPolicyOutput
    #   resp.data.registry_id #=> String
    #   resp.data.repository_name #=> String
    #   resp.data.policy_text #=> String
    #
    def get_repository_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRepositoryPolicyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRepositoryPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRepositoryPolicy
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RepositoryNotFoundException, Errors::RepositoryPolicyNotFoundException, Errors::ServerException, Errors::InvalidParameterException]),
        data_parser: Parsers::GetRepositoryPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRepositoryPolicy,
        stubs: @stubs,
        params_class: Params::GetRepositoryPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_repository_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Notifies Amazon ECR that you intend to upload an image layer.</p>
    #          <p>When an image is pushed, the InitiateLayerUpload API is called once per image layer that
    #          has not already been uploaded. Whether or not an image layer has been uploaded is
    #          determined by the BatchCheckLayerAvailability API action.</p>
    #          <note>
    #             <p>This operation is used by the Amazon ECR proxy and is not generally used by customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::InitiateLayerUploadInput}.
    #
    # @option params [String] :registry_id
    #   <p>The AWS account ID associated with the registry to which you intend to upload layers.
    #            If you do not specify a registry, the default public registry is assumed.</p>
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository to which you intend to upload layers.</p>
    #
    # @return [Types::InitiateLayerUploadOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.initiate_layer_upload(
    #     registry_id: 'registryId',
    #     repository_name: 'repositoryName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::InitiateLayerUploadOutput
    #   resp.data.upload_id #=> String
    #   resp.data.part_size #=> Integer
    #
    def initiate_layer_upload(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::InitiateLayerUploadInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::InitiateLayerUploadInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::InitiateLayerUpload
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RepositoryNotFoundException, Errors::UnsupportedCommandException, Errors::ServerException, Errors::InvalidParameterException, Errors::RegistryNotFoundException]),
        data_parser: Parsers::InitiateLayerUpload
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::InitiateLayerUpload,
        stubs: @stubs,
        params_class: Params::InitiateLayerUploadOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :initiate_layer_upload
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List the tags for an Amazon ECR Public resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the resource for which to list the tags. Currently, the
    #            supported resource is an Amazon ECR Public repository.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'resourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForResourceOutput
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #
    def list_tags_for_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTagsForResourceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTagsForResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTagsForResource
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RepositoryNotFoundException, Errors::ServerException, Errors::InvalidParameterException]),
        data_parser: Parsers::ListTagsForResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTagsForResource,
        stubs: @stubs,
        params_class: Params::ListTagsForResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_tags_for_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates or updates the image manifest and tags associated with an image.</p>
    #          <p>When an image is pushed and all new image layers have been uploaded, the PutImage API is
    #          called once to create or update the image manifest and the tags associated with the
    #          image.</p>
    #
    #          <note>
    #             <p>This operation is used by the Amazon ECR proxy and is not generally used by customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::PutImageInput}.
    #
    # @option params [String] :registry_id
    #   <p>The AWS account ID associated with the public registry that contains the repository in
    #            which to put the image. If you do not specify a registry, the default public registry is assumed.</p>
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository in which to put the image.</p>
    #
    # @option params [String] :image_manifest
    #   <p>The image manifest corresponding to the image to be uploaded.</p>
    #
    # @option params [String] :image_manifest_media_type
    #   <p>The media type of the image manifest. If you push an image manifest that does not
    #            contain the <code>mediaType</code> field, you must specify the
    #               <code>imageManifestMediaType</code> in the request.</p>
    #
    # @option params [String] :image_tag
    #   <p>The tag to associate with the image. This parameter is required for images that use the
    #            Docker Image Manifest V2 Schema 2 or Open Container Initiative (OCI) formats.</p>
    #
    # @option params [String] :image_digest
    #   <p>The image digest of the image manifest corresponding to the image.</p>
    #
    # @return [Types::PutImageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_image(
    #     registry_id: 'registryId',
    #     repository_name: 'repositoryName', # required
    #     image_manifest: 'imageManifest', # required
    #     image_manifest_media_type: 'imageManifestMediaType',
    #     image_tag: 'imageTag',
    #     image_digest: 'imageDigest'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutImageOutput
    #   resp.data.image #=> Types::Image
    #   resp.data.image.registry_id #=> String
    #   resp.data.image.repository_name #=> String
    #   resp.data.image.image_id #=> Types::ImageIdentifier
    #   resp.data.image.image_id.image_digest #=> String
    #   resp.data.image.image_id.image_tag #=> String
    #   resp.data.image.image_manifest #=> String
    #   resp.data.image.image_manifest_media_type #=> String
    #
    def put_image(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutImageInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutImageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutImage
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ImageDigestDoesNotMatchException, Errors::LimitExceededException, Errors::RepositoryNotFoundException, Errors::UnsupportedCommandException, Errors::ImageTagAlreadyExistsException, Errors::ReferencedImagesNotFoundException, Errors::ServerException, Errors::LayersNotFoundException, Errors::ImageAlreadyExistsException, Errors::InvalidParameterException, Errors::RegistryNotFoundException]),
        data_parser: Parsers::PutImage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutImage,
        stubs: @stubs,
        params_class: Params::PutImageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_image
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Create or updates the catalog data for a public registry.</p>
    #
    # @param [Hash] params
    #   See {Types::PutRegistryCatalogDataInput}.
    #
    # @option params [String] :display_name
    #   <p>The display name for a public registry. The display name is shown as the repository
    #            author in the Amazon ECR Public Gallery.</p>
    #            <note>
    #               <p>The registry display name is only publicly visible in the Amazon ECR Public Gallery for
    #               verified accounts.</p>
    #            </note>
    #
    # @return [Types::PutRegistryCatalogDataOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_registry_catalog_data(
    #     display_name: 'displayName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutRegistryCatalogDataOutput
    #   resp.data.registry_catalog_data #=> Types::RegistryCatalogData
    #   resp.data.registry_catalog_data.display_name #=> String
    #
    def put_registry_catalog_data(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutRegistryCatalogDataInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutRegistryCatalogDataInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutRegistryCatalogData
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedCommandException, Errors::ServerException, Errors::InvalidParameterException]),
        data_parser: Parsers::PutRegistryCatalogData
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutRegistryCatalogData,
        stubs: @stubs,
        params_class: Params::PutRegistryCatalogDataOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_registry_catalog_data
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates or updates the catalog data for a repository in a public registry.</p>
    #
    # @param [Hash] params
    #   See {Types::PutRepositoryCatalogDataInput}.
    #
    # @option params [String] :registry_id
    #   <p>The AWS account ID associated with the public registry the repository is in.
    #            If you do not specify a registry, the default public registry is assumed.</p>
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository to create or update the catalog data for.</p>
    #
    # @option params [RepositoryCatalogDataInput] :catalog_data
    #   <p>An object containing the catalog data for a repository. This data is publicly visible in
    #            the Amazon ECR Public Gallery.</p>
    #
    # @return [Types::PutRepositoryCatalogDataOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_repository_catalog_data(
    #     registry_id: 'registryId',
    #     repository_name: 'repositoryName', # required
    #     catalog_data: {
    #       description: 'description',
    #       architectures: [
    #         'member'
    #       ],
    #       operating_systems: [
    #         'member'
    #       ],
    #       logo_image_blob: 'logoImageBlob',
    #       about_text: 'aboutText',
    #       usage_text: 'usageText'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutRepositoryCatalogDataOutput
    #   resp.data.catalog_data #=> Types::RepositoryCatalogData
    #   resp.data.catalog_data.description #=> String
    #   resp.data.catalog_data.architectures #=> Array<String>
    #   resp.data.catalog_data.architectures[0] #=> String
    #   resp.data.catalog_data.operating_systems #=> Array<String>
    #   resp.data.catalog_data.operating_systems[0] #=> String
    #   resp.data.catalog_data.logo_url #=> String
    #   resp.data.catalog_data.about_text #=> String
    #   resp.data.catalog_data.usage_text #=> String
    #   resp.data.catalog_data.marketplace_certified #=> Boolean
    #
    def put_repository_catalog_data(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutRepositoryCatalogDataInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutRepositoryCatalogDataInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutRepositoryCatalogData
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RepositoryNotFoundException, Errors::ServerException, Errors::InvalidParameterException]),
        data_parser: Parsers::PutRepositoryCatalogData
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutRepositoryCatalogData,
        stubs: @stubs,
        params_class: Params::PutRepositoryCatalogDataOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_repository_catalog_data
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Applies a repository policy to the specified public repository to control access
    #          permissions. For more information, see <a href="https://docs.aws.amazon.com/AmazonECR/latest/userguide/repository-policies.html">Amazon ECR Repository
    #             Policies</a> in the <i>Amazon Elastic Container Registry User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::SetRepositoryPolicyInput}.
    #
    # @option params [String] :registry_id
    #   <p>The AWS account ID associated with the registry that contains the repository.
    #            If you do not specify a registry, the default public registry is assumed.</p>
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository to receive the policy.</p>
    #
    # @option params [String] :policy_text
    #   <p>The JSON repository policy text to apply to the repository. For more information, see
    #               <a href="https://docs.aws.amazon.com/AmazonECR/latest/userguide/repository-policy-examples.html">Amazon ECR Repository
    #               Policies</a> in the <i>Amazon Elastic Container Registry User Guide</i>.</p>
    #
    # @option params [Boolean] :force
    #   <p>If the policy you are attempting to set on a repository policy would prevent you from
    #            setting another policy in the future, you must force the <a>SetRepositoryPolicy</a> operation. This is intended to prevent accidental
    #            repository lock outs.</p>
    #
    # @return [Types::SetRepositoryPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_repository_policy(
    #     registry_id: 'registryId',
    #     repository_name: 'repositoryName', # required
    #     policy_text: 'policyText', # required
    #     force: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetRepositoryPolicyOutput
    #   resp.data.registry_id #=> String
    #   resp.data.repository_name #=> String
    #   resp.data.policy_text #=> String
    #
    def set_repository_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetRepositoryPolicyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetRepositoryPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetRepositoryPolicy
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RepositoryNotFoundException, Errors::ServerException, Errors::InvalidParameterException]),
        data_parser: Parsers::SetRepositoryPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetRepositoryPolicy,
        stubs: @stubs,
        params_class: Params::SetRepositoryPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_repository_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates the specified tags to a resource with the specified <code>resourceArn</code>.
    #          If existing tags on a resource are not specified in the request parameters, they are not
    #          changed. When a resource is deleted, the tags associated with that resource are deleted as
    #          well.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to which to add tags. Currently, the
    #            supported resource is an Amazon ECR Public repository.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to add to the resource. A tag is an array of key-value pairs.
    #            Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'resourceArn', # required
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TagResourceOutput
    #
    def tag_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TagResourceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TagResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TagResource
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RepositoryNotFoundException, Errors::InvalidTagParameterException, Errors::ServerException, Errors::TooManyTagsException, Errors::InvalidParameterException]),
        data_parser: Parsers::TagResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TagResource,
        stubs: @stubs,
        params_class: Params::TagResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :tag_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes specified tags from a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource from which to delete tags. Currently, the supported
    #            resource is an Amazon ECR Public repository.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of the tags to be removed.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_arn: 'resourceArn', # required
    #     tag_keys: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UntagResourceOutput
    #
    def untag_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UntagResourceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UntagResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UntagResource
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RepositoryNotFoundException, Errors::InvalidTagParameterException, Errors::ServerException, Errors::TooManyTagsException, Errors::InvalidParameterException]),
        data_parser: Parsers::UntagResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UntagResource,
        stubs: @stubs,
        params_class: Params::UntagResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :untag_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Uploads an image layer part to Amazon ECR.</p>
    #          <p>When an image is pushed, each new image layer is uploaded in parts. The maximum size of
    #          each image layer part can be 20971520 bytes (or about 20MB). The UploadLayerPart API is
    #          called once per each new image layer part.</p>
    #          <note>
    #             <p>This operation is used by the Amazon ECR proxy and is not generally used by customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::UploadLayerPartInput}.
    #
    # @option params [String] :registry_id
    #   <p>The AWS account ID associated with the registry to which you are uploading layer parts.
    #            If you do not specify a registry, the default public registry is assumed.</p>
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository to which you are uploading layer parts.</p>
    #
    # @option params [String] :upload_id
    #   <p>The upload ID from a previous <a>InitiateLayerUpload</a> operation to
    #            associate with the layer part upload.</p>
    #
    # @option params [Integer] :part_first_byte
    #   <p>The position of the first byte of the layer part witin the overall image layer.</p>
    #
    # @option params [Integer] :part_last_byte
    #   <p>The position of the last byte of the layer part within the overall image layer.</p>
    #
    # @option params [String] :layer_part_blob
    #   <p>The base64-encoded layer part payload.</p>
    #
    # @return [Types::UploadLayerPartOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.upload_layer_part(
    #     registry_id: 'registryId',
    #     repository_name: 'repositoryName', # required
    #     upload_id: 'uploadId', # required
    #     part_first_byte: 1, # required
    #     part_last_byte: 1, # required
    #     layer_part_blob: 'layerPartBlob' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UploadLayerPartOutput
    #   resp.data.registry_id #=> String
    #   resp.data.repository_name #=> String
    #   resp.data.upload_id #=> String
    #   resp.data.last_byte_received #=> Integer
    #
    def upload_layer_part(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UploadLayerPartInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UploadLayerPartInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UploadLayerPart
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::RepositoryNotFoundException, Errors::UnsupportedCommandException, Errors::ServerException, Errors::InvalidParameterException, Errors::RegistryNotFoundException, Errors::UploadNotFoundException, Errors::InvalidLayerPartException]),
        data_parser: Parsers::UploadLayerPart
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UploadLayerPart,
        stubs: @stubs,
        params_class: Params::UploadLayerPartOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :upload_layer_part
        )
      )
      raise resp.error if resp.error
      resp
    end

    private

    def apply_middleware(middleware_stack, middleware)
      Client.middleware.apply(middleware_stack)
      @middleware.apply(middleware_stack)
      Hearth::MiddlewareBuilder.new(middleware).apply(middleware_stack)
    end
  end
end
