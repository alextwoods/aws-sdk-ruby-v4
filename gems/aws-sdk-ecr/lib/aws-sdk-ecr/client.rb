# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::ECR
  # An API client for AmazonEC2ContainerRegistry_V20150921
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Amazon Elastic Container Registry</fullname>
  #         <p>Amazon Elastic Container Registry (Amazon ECR) is a managed container image registry service. Customers can use the
  #             familiar Docker CLI, or their preferred client, to push, pull, and manage images. Amazon ECR
  #             provides a secure, scalable, and reliable registry for your Docker or Open Container
  #             Initiative (OCI) images. Amazon ECR supports private repositories with resource-based
  #             permissions using IAM so that specific users or Amazon EC2 instances can access
  #             repositories and images.</p>
  #         <p>Amazon ECR has service endpoints in each supported Region. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/ecr.html">Amazon ECR endpoints</a> in the
  #                 <i>Amazon Web Services General Reference</i>.</p>
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
    def initialize(config = AWS::SDK::ECR::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Checks the availability of one or more image layers in a repository.</p>
    #         <p>When an image is pushed to a repository, each image layer is checked to verify if it
    #             has been uploaded before. If it has been uploaded, then the image layer is
    #             skipped.</p>
    #         <note>
    #             <p>This operation is used by the Amazon ECR proxy and is not generally used by
    #         customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::BatchCheckLayerAvailabilityInput}.
    #
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the image layers to
    #               check. If you do not specify a registry, the default registry is assumed.</p>
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
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RepositoryNotFoundException, Errors::ServerException, Errors::InvalidParameterException]),
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

    # <p>Deletes a list of specified images within a repository. Images are specified with
    #             either an <code>imageTag</code> or <code>imageDigest</code>.</p>
    #         <p>You can remove a tag from an image by specifying the image's tag in your request. When
    #             you remove the last tag from an image, the image is deleted from your repository.</p>
    #         <p>You can completely delete an image (and all of its tags) by specifying the image's
    #             digest in your request.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchDeleteImageInput}.
    #
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the image to delete.
    #               If you do not specify a registry, the default registry is assumed.</p>
    #
    # @option params [String] :repository_name
    #   <p>The repository that contains the image to delete.</p>
    #
    # @option params [Array<ImageIdentifier>] :image_ids
    #   <p>A list of image ID references that correspond to images to delete. The format of the
    #                   <code>imageIds</code> reference is <code>imageTag=tag</code> or
    #                   <code>imageDigest=digest</code>.</p>
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
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
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

    # <p>Gets detailed information for an image. Images are specified with either an
    #                 <code>imageTag</code> or <code>imageDigest</code>.</p>
    #         <p>When an image is pulled, the BatchGetImage API is called once to retrieve the image
    #             manifest.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchGetImageInput}.
    #
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the images to
    #               describe. If you do not specify a registry, the default registry is assumed.</p>
    #
    # @option params [String] :repository_name
    #   <p>The repository that contains the images to describe.</p>
    #
    # @option params [Array<ImageIdentifier>] :image_ids
    #   <p>A list of image ID references that correspond to images to describe. The format of the
    #                   <code>imageIds</code> reference is <code>imageTag=tag</code> or
    #                   <code>imageDigest=digest</code>.</p>
    #
    # @option params [Array<String>] :accepted_media_types
    #   <p>The accepted media types for the request.</p>
    #           <p>Valid values: <code>application/vnd.docker.distribution.manifest.v1+json</code> |
    #                   <code>application/vnd.docker.distribution.manifest.v2+json</code> |
    #                   <code>application/vnd.oci.image.manifest.v1+json</code>
    #            </p>
    #
    # @return [Types::BatchGetImageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_image(
    #     registry_id: 'registryId',
    #     repository_name: 'repositoryName', # required
    #     image_ids: [
    #       {
    #         image_digest: 'imageDigest',
    #         image_tag: 'imageTag'
    #       }
    #     ], # required
    #     accepted_media_types: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchGetImageOutput
    #   resp.data.images #=> Array<Image>
    #   resp.data.images[0] #=> Types::Image
    #   resp.data.images[0].registry_id #=> String
    #   resp.data.images[0].repository_name #=> String
    #   resp.data.images[0].image_id #=> Types::ImageIdentifier
    #   resp.data.images[0].image_id.image_digest #=> String
    #   resp.data.images[0].image_id.image_tag #=> String
    #   resp.data.images[0].image_manifest #=> String
    #   resp.data.images[0].image_manifest_media_type #=> String
    #   resp.data.failures #=> Array<ImageFailure>
    #   resp.data.failures[0] #=> Types::ImageFailure
    #   resp.data.failures[0].image_id #=> Types::ImageIdentifier
    #   resp.data.failures[0].failure_code #=> String, one of ["InvalidImageDigest", "InvalidImageTag", "ImageTagDoesNotMatchDigest", "ImageNotFound", "MissingDigestAndTag", "ImageReferencedByManifestList", "KmsError"]
    #   resp.data.failures[0].failure_reason #=> String
    #
    def batch_get_image(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchGetImageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchGetImageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchGetImage
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RepositoryNotFoundException, Errors::ServerException, Errors::InvalidParameterException]),
        data_parser: Parsers::BatchGetImage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchGetImage,
        stubs: @stubs,
        params_class: Params::BatchGetImageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_get_image
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the scanning configuration for one or more repositories.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchGetRepositoryScanningConfigurationInput}.
    #
    # @option params [Array<String>] :repository_names
    #   <p>One or more repository names to get the scanning configuration for.</p>
    #
    # @return [Types::BatchGetRepositoryScanningConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_repository_scanning_configuration(
    #     repository_names: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchGetRepositoryScanningConfigurationOutput
    #   resp.data.scanning_configurations #=> Array<RepositoryScanningConfiguration>
    #   resp.data.scanning_configurations[0] #=> Types::RepositoryScanningConfiguration
    #   resp.data.scanning_configurations[0].repository_arn #=> String
    #   resp.data.scanning_configurations[0].repository_name #=> String
    #   resp.data.scanning_configurations[0].scan_on_push #=> Boolean
    #   resp.data.scanning_configurations[0].scan_frequency #=> String, one of ["SCAN_ON_PUSH", "CONTINUOUS_SCAN", "MANUAL"]
    #   resp.data.scanning_configurations[0].applied_scan_filters #=> Array<ScanningRepositoryFilter>
    #   resp.data.scanning_configurations[0].applied_scan_filters[0] #=> Types::ScanningRepositoryFilter
    #   resp.data.scanning_configurations[0].applied_scan_filters[0].filter #=> String
    #   resp.data.scanning_configurations[0].applied_scan_filters[0].filter_type #=> String, one of ["WILDCARD"]
    #   resp.data.failures #=> Array<RepositoryScanningConfigurationFailure>
    #   resp.data.failures[0] #=> Types::RepositoryScanningConfigurationFailure
    #   resp.data.failures[0].repository_name #=> String
    #   resp.data.failures[0].failure_code #=> String, one of ["REPOSITORY_NOT_FOUND"]
    #   resp.data.failures[0].failure_reason #=> String
    #
    def batch_get_repository_scanning_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchGetRepositoryScanningConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchGetRepositoryScanningConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchGetRepositoryScanningConfiguration
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RepositoryNotFoundException, Errors::ServerException, Errors::ValidationException, Errors::InvalidParameterException]),
        data_parser: Parsers::BatchGetRepositoryScanningConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchGetRepositoryScanningConfiguration,
        stubs: @stubs,
        params_class: Params::BatchGetRepositoryScanningConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_get_repository_scanning_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Informs Amazon ECR that the image layer upload has completed for a specified registry,
    #             repository name, and upload ID. You can optionally provide a <code>sha256</code> digest
    #             of the image layer for data validation purposes.</p>
    #         <p>When an image is pushed, the CompleteLayerUpload API is called once per each new image
    #             layer to verify that the upload has completed.</p>
    #         <note>
    #             <p>This operation is used by the Amazon ECR proxy and is not generally used by
    #         customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::CompleteLayerUploadInput}.
    #
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID associated with the registry to which to upload layers.
    #               If you do not specify a registry, the default registry is assumed.</p>
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository to associate with the image layer.</p>
    #
    # @option params [String] :upload_id
    #   <p>The upload ID from a previous <a>InitiateLayerUpload</a> operation to
    #               associate with the image layer.</p>
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
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EmptyUploadException, Errors::RepositoryNotFoundException, Errors::LayerPartTooSmallException, Errors::ServerException, Errors::InvalidLayerException, Errors::UploadNotFoundException, Errors::KmsException, Errors::LayerAlreadyExistsException, Errors::InvalidParameterException]),
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

    # <p>Creates a pull through cache rule. A pull through cache rule provides a way to cache
    #             images from an external public registry in your Amazon ECR private registry.</p>
    #
    # @param [Hash] params
    #   See {Types::CreatePullThroughCacheRuleInput}.
    #
    # @option params [String] :ecr_repository_prefix
    #   <p>The repository name prefix to use when caching images from the source registry.</p>
    #
    # @option params [String] :upstream_registry_url
    #   <p>The registry URL of the upstream public registry to use as the source for the pull
    #               through cache rule.</p>
    #
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID associated with the registry to create the pull through cache
    #               rule for. If you do not specify a registry, the default registry is assumed.</p>
    #
    # @return [Types::CreatePullThroughCacheRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_pull_through_cache_rule(
    #     ecr_repository_prefix: 'ecrRepositoryPrefix', # required
    #     upstream_registry_url: 'upstreamRegistryUrl', # required
    #     registry_id: 'registryId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreatePullThroughCacheRuleOutput
    #   resp.data.ecr_repository_prefix #=> String
    #   resp.data.upstream_registry_url #=> String
    #   resp.data.created_at #=> Time
    #   resp.data.registry_id #=> String
    #
    def create_pull_through_cache_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreatePullThroughCacheRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreatePullThroughCacheRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreatePullThroughCacheRule
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::PullThroughCacheRuleAlreadyExistsException, Errors::UnsupportedUpstreamRegistryException, Errors::ServerException, Errors::ValidationException, Errors::LimitExceededException, Errors::InvalidParameterException]),
        data_parser: Parsers::CreatePullThroughCacheRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreatePullThroughCacheRule,
        stubs: @stubs,
        params_class: Params::CreatePullThroughCacheRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_pull_through_cache_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a repository. For more information, see <a href="https://docs.aws.amazon.com/AmazonECR/latest/userguide/Repositories.html">Amazon ECR repositories</a> in the
    #                 <i>Amazon Elastic Container Registry User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateRepositoryInput}.
    #
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID associated with the registry to create the repository.
    #               If you do not specify a registry, the default registry is assumed.</p>
    #
    # @option params [String] :repository_name
    #   <p>The name to use for the repository. The repository name may be specified on its own
    #               (such as <code>nginx-web-app</code>) or it can be prepended with a namespace to group
    #               the repository into a category (such as <code>project-a/nginx-web-app</code>).</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The metadata that you apply to the repository to help you categorize and organize
    #               them. Each tag consists of a key and an optional value, both of which you define.
    #               Tag keys can have a maximum character length of 128 characters, and tag values can have
    #               a maximum length of 256 characters.</p>
    #
    # @option params [String] :image_tag_mutability
    #   <p>The tag mutability setting for the repository. If this parameter is omitted, the
    #               default setting of <code>MUTABLE</code> will be used which will allow image tags to be
    #               overwritten. If <code>IMMUTABLE</code> is specified, all image tags within the
    #               repository will be immutable which will prevent them from being overwritten.</p>
    #
    # @option params [ImageScanningConfiguration] :image_scanning_configuration
    #   <p>The image scanning configuration for the repository. This determines whether images
    #               are scanned for known vulnerabilities after being pushed to the repository.</p>
    #
    # @option params [EncryptionConfiguration] :encryption_configuration
    #   <p>The encryption configuration for the repository. This determines how the contents of
    #               your repository are encrypted at rest.</p>
    #
    # @return [Types::CreateRepositoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_repository(
    #     registry_id: 'registryId',
    #     repository_name: 'repositoryName', # required
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ],
    #     image_tag_mutability: 'MUTABLE', # accepts ["MUTABLE", "IMMUTABLE"]
    #     image_scanning_configuration: {
    #       scan_on_push: false
    #     },
    #     encryption_configuration: {
    #       encryption_type: 'AES256', # required - accepts ["AES256", "KMS"]
    #       kms_key: 'kmsKey'
    #     }
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
    #   resp.data.repository.image_tag_mutability #=> String, one of ["MUTABLE", "IMMUTABLE"]
    #   resp.data.repository.image_scanning_configuration #=> Types::ImageScanningConfiguration
    #   resp.data.repository.image_scanning_configuration.scan_on_push #=> Boolean
    #   resp.data.repository.encryption_configuration #=> Types::EncryptionConfiguration
    #   resp.data.repository.encryption_configuration.encryption_type #=> String, one of ["AES256", "KMS"]
    #   resp.data.repository.encryption_configuration.kms_key #=> String
    #
    def create_repository(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateRepositoryInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidTagParameterException, Errors::RepositoryAlreadyExistsException, Errors::ServerException, Errors::TooManyTagsException, Errors::KmsException, Errors::LimitExceededException, Errors::InvalidParameterException]),
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

    # <p>Deletes the lifecycle policy associated with the specified repository.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteLifecyclePolicyInput}.
    #
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the repository.
    #               If you do not specify a registry, the default registry is assumed.</p>
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository.</p>
    #
    # @return [Types::DeleteLifecyclePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_lifecycle_policy(
    #     registry_id: 'registryId',
    #     repository_name: 'repositoryName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteLifecyclePolicyOutput
    #   resp.data.registry_id #=> String
    #   resp.data.repository_name #=> String
    #   resp.data.lifecycle_policy_text #=> String
    #   resp.data.last_evaluated_at #=> Time
    #
    def delete_lifecycle_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteLifecyclePolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteLifecyclePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteLifecyclePolicy
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RepositoryNotFoundException, Errors::ServerException, Errors::LifecyclePolicyNotFoundException, Errors::InvalidParameterException]),
        data_parser: Parsers::DeleteLifecyclePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteLifecyclePolicy,
        stubs: @stubs,
        params_class: Params::DeleteLifecyclePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_lifecycle_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a pull through cache rule.</p>
    #
    # @param [Hash] params
    #   See {Types::DeletePullThroughCacheRuleInput}.
    #
    # @option params [String] :ecr_repository_prefix
    #   <p>The Amazon ECR repository prefix associated with the pull through cache rule to
    #               delete.</p>
    #
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the pull through cache
    #               rule. If you do not specify a registry, the default registry is assumed.</p>
    #
    # @return [Types::DeletePullThroughCacheRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_pull_through_cache_rule(
    #     ecr_repository_prefix: 'ecrRepositoryPrefix', # required
    #     registry_id: 'registryId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeletePullThroughCacheRuleOutput
    #   resp.data.ecr_repository_prefix #=> String
    #   resp.data.upstream_registry_url #=> String
    #   resp.data.created_at #=> Time
    #   resp.data.registry_id #=> String
    #
    def delete_pull_through_cache_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeletePullThroughCacheRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeletePullThroughCacheRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeletePullThroughCacheRule
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::PullThroughCacheRuleNotFoundException, Errors::ServerException, Errors::ValidationException, Errors::InvalidParameterException]),
        data_parser: Parsers::DeletePullThroughCacheRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeletePullThroughCacheRule,
        stubs: @stubs,
        params_class: Params::DeletePullThroughCacheRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_pull_through_cache_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the registry permissions policy.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteRegistryPolicyInput}.
    #
    # @return [Types::DeleteRegistryPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_registry_policy()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRegistryPolicyOutput
    #   resp.data.registry_id #=> String
    #   resp.data.policy_text #=> String
    #
    def delete_registry_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRegistryPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRegistryPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRegistryPolicy
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RegistryPolicyNotFoundException, Errors::ServerException, Errors::ValidationException, Errors::InvalidParameterException]),
        data_parser: Parsers::DeleteRegistryPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRegistryPolicy,
        stubs: @stubs,
        params_class: Params::DeleteRegistryPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_registry_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a repository. If the repository contains images, you must either delete all
    #             images in the repository or use the <code>force</code> option to delete the
    #             repository.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteRepositoryInput}.
    #
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the repository to
    #               delete. If you do not specify a registry, the default registry is assumed.</p>
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
    #   resp.data.repository.image_tag_mutability #=> String, one of ["MUTABLE", "IMMUTABLE"]
    #   resp.data.repository.image_scanning_configuration #=> Types::ImageScanningConfiguration
    #   resp.data.repository.image_scanning_configuration.scan_on_push #=> Boolean
    #   resp.data.repository.encryption_configuration #=> Types::EncryptionConfiguration
    #   resp.data.repository.encryption_configuration.encryption_type #=> String, one of ["AES256", "KMS"]
    #   resp.data.repository.encryption_configuration.kms_key #=> String
    #
    def delete_repository(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRepositoryInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RepositoryNotFoundException, Errors::RepositoryNotEmptyException, Errors::ServerException, Errors::KmsException, Errors::InvalidParameterException]),
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
    #   <p>The Amazon Web Services account ID associated with the registry that contains the repository policy
    #               to delete. If you do not specify a registry, the default registry is assumed.</p>
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository that is associated with the repository policy to
    #               delete.</p>
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
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RepositoryNotFoundException, Errors::ServerException, Errors::RepositoryPolicyNotFoundException, Errors::InvalidParameterException]),
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

    # <p>Returns the replication status for a specified image.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeImageReplicationStatusInput}.
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository that the image is in.</p>
    #
    # @option params [ImageIdentifier] :image_id
    #   <p>An object with identifying information for an image in an Amazon ECR repository.</p>
    #
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID associated with the registry. If you do not specify a registry, the default registry is assumed.</p>
    #
    # @return [Types::DescribeImageReplicationStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_image_replication_status(
    #     repository_name: 'repositoryName', # required
    #     image_id: {
    #       image_digest: 'imageDigest',
    #       image_tag: 'imageTag'
    #     }, # required
    #     registry_id: 'registryId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeImageReplicationStatusOutput
    #   resp.data.repository_name #=> String
    #   resp.data.image_id #=> Types::ImageIdentifier
    #   resp.data.image_id.image_digest #=> String
    #   resp.data.image_id.image_tag #=> String
    #   resp.data.replication_statuses #=> Array<ImageReplicationStatus>
    #   resp.data.replication_statuses[0] #=> Types::ImageReplicationStatus
    #   resp.data.replication_statuses[0].region #=> String
    #   resp.data.replication_statuses[0].registry_id #=> String
    #   resp.data.replication_statuses[0].status #=> String, one of ["IN_PROGRESS", "COMPLETE", "FAILED"]
    #   resp.data.replication_statuses[0].failure_code #=> String
    #
    def describe_image_replication_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeImageReplicationStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeImageReplicationStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeImageReplicationStatus
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RepositoryNotFoundException, Errors::ServerException, Errors::ValidationException, Errors::ImageNotFoundException, Errors::InvalidParameterException]),
        data_parser: Parsers::DescribeImageReplicationStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeImageReplicationStatus,
        stubs: @stubs,
        params_class: Params::DescribeImageReplicationStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_image_replication_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the scan findings for the specified image.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeImageScanFindingsInput}.
    #
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the repository in
    #               which to describe the image scan findings for. If you do not specify a registry, the default registry is assumed.</p>
    #
    # @option params [String] :repository_name
    #   <p>The repository for the image for which to describe the scan findings.</p>
    #
    # @option params [ImageIdentifier] :image_id
    #   <p>An object with identifying information for an image in an Amazon ECR repository.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #                   <code>DescribeImageScanFindings</code> request where <code>maxResults</code> was
    #               used and the results exceeded the value of that parameter. Pagination continues from the
    #               end of the previous results that returned the <code>nextToken</code> value. This value
    #               is null when there are no more results to return.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of image scan results returned by
    #                   <code>DescribeImageScanFindings</code> in paginated output. When this parameter is
    #               used, <code>DescribeImageScanFindings</code> only returns <code>maxResults</code>
    #               results in a single page along with a <code>nextToken</code> response element. The
    #               remaining results of the initial request can be seen by sending another
    #                   <code>DescribeImageScanFindings</code> request with the returned
    #                   <code>nextToken</code> value. This value can be between 1 and 1000. If this
    #               parameter is not used, then <code>DescribeImageScanFindings</code> returns up to 100
    #               results and a <code>nextToken</code> value, if applicable.</p>
    #
    # @return [Types::DescribeImageScanFindingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_image_scan_findings(
    #     registry_id: 'registryId',
    #     repository_name: 'repositoryName', # required
    #     image_id: {
    #       image_digest: 'imageDigest',
    #       image_tag: 'imageTag'
    #     }, # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeImageScanFindingsOutput
    #   resp.data.registry_id #=> String
    #   resp.data.repository_name #=> String
    #   resp.data.image_id #=> Types::ImageIdentifier
    #   resp.data.image_id.image_digest #=> String
    #   resp.data.image_id.image_tag #=> String
    #   resp.data.image_scan_status #=> Types::ImageScanStatus
    #   resp.data.image_scan_status.status #=> String, one of ["IN_PROGRESS", "COMPLETE", "FAILED", "UNSUPPORTED_IMAGE", "ACTIVE", "PENDING", "SCAN_ELIGIBILITY_EXPIRED", "FINDINGS_UNAVAILABLE"]
    #   resp.data.image_scan_status.description #=> String
    #   resp.data.image_scan_findings #=> Types::ImageScanFindings
    #   resp.data.image_scan_findings.image_scan_completed_at #=> Time
    #   resp.data.image_scan_findings.vulnerability_source_updated_at #=> Time
    #   resp.data.image_scan_findings.finding_severity_counts #=> Hash<String, Integer>
    #   resp.data.image_scan_findings.finding_severity_counts['key'] #=> Integer
    #   resp.data.image_scan_findings.findings #=> Array<ImageScanFinding>
    #   resp.data.image_scan_findings.findings[0] #=> Types::ImageScanFinding
    #   resp.data.image_scan_findings.findings[0].name #=> String
    #   resp.data.image_scan_findings.findings[0].description #=> String
    #   resp.data.image_scan_findings.findings[0].uri #=> String
    #   resp.data.image_scan_findings.findings[0].severity #=> String, one of ["INFORMATIONAL", "LOW", "MEDIUM", "HIGH", "CRITICAL", "UNDEFINED"]
    #   resp.data.image_scan_findings.findings[0].attributes #=> Array<Attribute>
    #   resp.data.image_scan_findings.findings[0].attributes[0] #=> Types::Attribute
    #   resp.data.image_scan_findings.findings[0].attributes[0].key #=> String
    #   resp.data.image_scan_findings.findings[0].attributes[0].value #=> String
    #   resp.data.image_scan_findings.enhanced_findings #=> Array<EnhancedImageScanFinding>
    #   resp.data.image_scan_findings.enhanced_findings[0] #=> Types::EnhancedImageScanFinding
    #   resp.data.image_scan_findings.enhanced_findings[0].aws_account_id #=> String
    #   resp.data.image_scan_findings.enhanced_findings[0].description #=> String
    #   resp.data.image_scan_findings.enhanced_findings[0].finding_arn #=> String
    #   resp.data.image_scan_findings.enhanced_findings[0].first_observed_at #=> Time
    #   resp.data.image_scan_findings.enhanced_findings[0].last_observed_at #=> Time
    #   resp.data.image_scan_findings.enhanced_findings[0].package_vulnerability_details #=> Types::PackageVulnerabilityDetails
    #   resp.data.image_scan_findings.enhanced_findings[0].package_vulnerability_details.cvss #=> Array<CvssScore>
    #   resp.data.image_scan_findings.enhanced_findings[0].package_vulnerability_details.cvss[0] #=> Types::CvssScore
    #   resp.data.image_scan_findings.enhanced_findings[0].package_vulnerability_details.cvss[0].base_score #=> Float
    #   resp.data.image_scan_findings.enhanced_findings[0].package_vulnerability_details.cvss[0].scoring_vector #=> String
    #   resp.data.image_scan_findings.enhanced_findings[0].package_vulnerability_details.cvss[0].source #=> String
    #   resp.data.image_scan_findings.enhanced_findings[0].package_vulnerability_details.cvss[0].version #=> String
    #   resp.data.image_scan_findings.enhanced_findings[0].package_vulnerability_details.reference_urls #=> Array<String>
    #   resp.data.image_scan_findings.enhanced_findings[0].package_vulnerability_details.reference_urls[0] #=> String
    #   resp.data.image_scan_findings.enhanced_findings[0].package_vulnerability_details.related_vulnerabilities #=> Array<String>
    #   resp.data.image_scan_findings.enhanced_findings[0].package_vulnerability_details.related_vulnerabilities[0] #=> String
    #   resp.data.image_scan_findings.enhanced_findings[0].package_vulnerability_details.source #=> String
    #   resp.data.image_scan_findings.enhanced_findings[0].package_vulnerability_details.source_url #=> String
    #   resp.data.image_scan_findings.enhanced_findings[0].package_vulnerability_details.vendor_created_at #=> Time
    #   resp.data.image_scan_findings.enhanced_findings[0].package_vulnerability_details.vendor_severity #=> String
    #   resp.data.image_scan_findings.enhanced_findings[0].package_vulnerability_details.vendor_updated_at #=> Time
    #   resp.data.image_scan_findings.enhanced_findings[0].package_vulnerability_details.vulnerability_id #=> String
    #   resp.data.image_scan_findings.enhanced_findings[0].package_vulnerability_details.vulnerable_packages #=> Array<VulnerablePackage>
    #   resp.data.image_scan_findings.enhanced_findings[0].package_vulnerability_details.vulnerable_packages[0] #=> Types::VulnerablePackage
    #   resp.data.image_scan_findings.enhanced_findings[0].package_vulnerability_details.vulnerable_packages[0].arch #=> String
    #   resp.data.image_scan_findings.enhanced_findings[0].package_vulnerability_details.vulnerable_packages[0].epoch #=> Integer
    #   resp.data.image_scan_findings.enhanced_findings[0].package_vulnerability_details.vulnerable_packages[0].file_path #=> String
    #   resp.data.image_scan_findings.enhanced_findings[0].package_vulnerability_details.vulnerable_packages[0].name #=> String
    #   resp.data.image_scan_findings.enhanced_findings[0].package_vulnerability_details.vulnerable_packages[0].package_manager #=> String
    #   resp.data.image_scan_findings.enhanced_findings[0].package_vulnerability_details.vulnerable_packages[0].release #=> String
    #   resp.data.image_scan_findings.enhanced_findings[0].package_vulnerability_details.vulnerable_packages[0].source_layer_hash #=> String
    #   resp.data.image_scan_findings.enhanced_findings[0].package_vulnerability_details.vulnerable_packages[0].version #=> String
    #   resp.data.image_scan_findings.enhanced_findings[0].remediation #=> Types::Remediation
    #   resp.data.image_scan_findings.enhanced_findings[0].remediation.recommendation #=> Types::Recommendation
    #   resp.data.image_scan_findings.enhanced_findings[0].remediation.recommendation.url #=> String
    #   resp.data.image_scan_findings.enhanced_findings[0].remediation.recommendation.text #=> String
    #   resp.data.image_scan_findings.enhanced_findings[0].resources #=> Array<Resource>
    #   resp.data.image_scan_findings.enhanced_findings[0].resources[0] #=> Types::Resource
    #   resp.data.image_scan_findings.enhanced_findings[0].resources[0].details #=> Types::ResourceDetails
    #   resp.data.image_scan_findings.enhanced_findings[0].resources[0].details.aws_ecr_container_image #=> Types::AwsEcrContainerImageDetails
    #   resp.data.image_scan_findings.enhanced_findings[0].resources[0].details.aws_ecr_container_image.architecture #=> String
    #   resp.data.image_scan_findings.enhanced_findings[0].resources[0].details.aws_ecr_container_image.author #=> String
    #   resp.data.image_scan_findings.enhanced_findings[0].resources[0].details.aws_ecr_container_image.image_hash #=> String
    #   resp.data.image_scan_findings.enhanced_findings[0].resources[0].details.aws_ecr_container_image.image_tags #=> Array<String>
    #   resp.data.image_scan_findings.enhanced_findings[0].resources[0].details.aws_ecr_container_image.image_tags[0] #=> String
    #   resp.data.image_scan_findings.enhanced_findings[0].resources[0].details.aws_ecr_container_image.platform #=> String
    #   resp.data.image_scan_findings.enhanced_findings[0].resources[0].details.aws_ecr_container_image.pushed_at #=> Time
    #   resp.data.image_scan_findings.enhanced_findings[0].resources[0].details.aws_ecr_container_image.registry #=> String
    #   resp.data.image_scan_findings.enhanced_findings[0].resources[0].details.aws_ecr_container_image.repository_name #=> String
    #   resp.data.image_scan_findings.enhanced_findings[0].resources[0].id #=> String
    #   resp.data.image_scan_findings.enhanced_findings[0].resources[0].tags #=> Hash<String, String>
    #   resp.data.image_scan_findings.enhanced_findings[0].resources[0].tags['key'] #=> String
    #   resp.data.image_scan_findings.enhanced_findings[0].resources[0].type #=> String
    #   resp.data.image_scan_findings.enhanced_findings[0].score #=> Float
    #   resp.data.image_scan_findings.enhanced_findings[0].score_details #=> Types::ScoreDetails
    #   resp.data.image_scan_findings.enhanced_findings[0].score_details.cvss #=> Types::CvssScoreDetails
    #   resp.data.image_scan_findings.enhanced_findings[0].score_details.cvss.adjustments #=> Array<CvssScoreAdjustment>
    #   resp.data.image_scan_findings.enhanced_findings[0].score_details.cvss.adjustments[0] #=> Types::CvssScoreAdjustment
    #   resp.data.image_scan_findings.enhanced_findings[0].score_details.cvss.adjustments[0].metric #=> String
    #   resp.data.image_scan_findings.enhanced_findings[0].score_details.cvss.adjustments[0].reason #=> String
    #   resp.data.image_scan_findings.enhanced_findings[0].score_details.cvss.score #=> Float
    #   resp.data.image_scan_findings.enhanced_findings[0].score_details.cvss.score_source #=> String
    #   resp.data.image_scan_findings.enhanced_findings[0].score_details.cvss.scoring_vector #=> String
    #   resp.data.image_scan_findings.enhanced_findings[0].score_details.cvss.version #=> String
    #   resp.data.image_scan_findings.enhanced_findings[0].severity #=> String
    #   resp.data.image_scan_findings.enhanced_findings[0].status #=> String
    #   resp.data.image_scan_findings.enhanced_findings[0].title #=> String
    #   resp.data.image_scan_findings.enhanced_findings[0].type #=> String
    #   resp.data.image_scan_findings.enhanced_findings[0].updated_at #=> Time
    #   resp.data.next_token #=> String
    #
    def describe_image_scan_findings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeImageScanFindingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeImageScanFindingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeImageScanFindings
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RepositoryNotFoundException, Errors::ServerException, Errors::ScanNotFoundException, Errors::ValidationException, Errors::ImageNotFoundException, Errors::InvalidParameterException]),
        data_parser: Parsers::DescribeImageScanFindings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeImageScanFindings,
        stubs: @stubs,
        params_class: Params::DescribeImageScanFindingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_image_scan_findings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns metadata about the images in a repository.</p>
    #         <note>
    #             <p>Beginning with Docker version 1.9, the Docker client compresses image layers
    #                 before pushing them to a V2 Docker registry. The output of the <code>docker
    #                     images</code> command shows the uncompressed image size, so it may return a
    #                 larger image size than the image sizes returned by <a>DescribeImages</a>.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeImagesInput}.
    #
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the repository in
    #               which to describe images. If you do not specify a registry, the default registry is assumed.</p>
    #
    # @option params [String] :repository_name
    #   <p>The repository that contains the images to describe.</p>
    #
    # @option params [Array<ImageIdentifier>] :image_ids
    #   <p>The list of image IDs for the requested repository.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #                   <code>DescribeImages</code> request where <code>maxResults</code> was used and the
    #               results exceeded the value of that parameter. Pagination continues from the end of the
    #               previous results that returned the <code>nextToken</code> value. This value is
    #                   <code>null</code> when there are no more results to return. This option cannot be
    #               used when you specify images with <code>imageIds</code>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of repository results returned by <code>DescribeImages</code> in
    #               paginated output. When this parameter is used, <code>DescribeImages</code> only returns
    #                   <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #               response element. The remaining results of the initial request can be seen by sending
    #               another <code>DescribeImages</code> request with the returned <code>nextToken</code>
    #               value. This value can be between 1 and 1000. If this
    #               parameter is not used, then <code>DescribeImages</code> returns up to
    #               100 results and a <code>nextToken</code> value, if applicable. This
    #               option cannot be used when you specify images with <code>imageIds</code>.</p>
    #
    # @option params [DescribeImagesFilter] :filter
    #   <p>The filter key and value with which to filter your <code>DescribeImages</code>
    #               results.</p>
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
    #     max_results: 1,
    #     filter: {
    #       tag_status: 'TAGGED' # accepts ["TAGGED", "UNTAGGED", "ANY"]
    #     }
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
    #   resp.data.image_details[0].image_scan_status #=> Types::ImageScanStatus
    #   resp.data.image_details[0].image_scan_status.status #=> String, one of ["IN_PROGRESS", "COMPLETE", "FAILED", "UNSUPPORTED_IMAGE", "ACTIVE", "PENDING", "SCAN_ELIGIBILITY_EXPIRED", "FINDINGS_UNAVAILABLE"]
    #   resp.data.image_details[0].image_scan_status.description #=> String
    #   resp.data.image_details[0].image_scan_findings_summary #=> Types::ImageScanFindingsSummary
    #   resp.data.image_details[0].image_scan_findings_summary.image_scan_completed_at #=> Time
    #   resp.data.image_details[0].image_scan_findings_summary.vulnerability_source_updated_at #=> Time
    #   resp.data.image_details[0].image_scan_findings_summary.finding_severity_counts #=> Hash<String, Integer>
    #   resp.data.image_details[0].image_scan_findings_summary.finding_severity_counts['key'] #=> Integer
    #   resp.data.image_details[0].image_manifest_media_type #=> String
    #   resp.data.image_details[0].artifact_media_type #=> String
    #   resp.data.image_details[0].last_recorded_pull_time #=> Time
    #   resp.data.next_token #=> String
    #
    def describe_images(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeImagesInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
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

    # <p>Returns the pull through cache rules for a registry.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribePullThroughCacheRulesInput}.
    #
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID associated with the registry to return the pull through cache
    #               rules for. If you do not specify a registry, the default registry is assumed.</p>
    #
    # @option params [Array<String>] :ecr_repository_prefixes
    #   <p>The Amazon ECR repository prefixes associated with the pull through cache rules to return.
    #               If no repository prefix value is specified, all pull through cache rules are
    #               returned.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #                   <code>DescribePullThroughCacheRulesRequest</code> request where
    #                   <code>maxResults</code> was used and the results exceeded the value of that
    #               parameter. Pagination continues from the end of the previous results that returned the
    #                   <code>nextToken</code> value. This value is null when there are no more results to
    #               return.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of pull through cache rules returned by
    #                   <code>DescribePullThroughCacheRulesRequest</code> in paginated output. When this
    #               parameter is used, <code>DescribePullThroughCacheRulesRequest</code> only returns
    #                   <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #               response element. The remaining results of the initial request can be seen by sending
    #               another <code>DescribePullThroughCacheRulesRequest</code> request with the returned
    #                   <code>nextToken</code> value. This value can be between 1 and 1000. If this
    #               parameter is not used, then <code>DescribePullThroughCacheRulesRequest</code> returns up
    #               to 100 results and a <code>nextToken</code> value, if applicable.</p>
    #
    # @return [Types::DescribePullThroughCacheRulesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_pull_through_cache_rules(
    #     registry_id: 'registryId',
    #     ecr_repository_prefixes: [
    #       'member'
    #     ],
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribePullThroughCacheRulesOutput
    #   resp.data.pull_through_cache_rules #=> Array<PullThroughCacheRule>
    #   resp.data.pull_through_cache_rules[0] #=> Types::PullThroughCacheRule
    #   resp.data.pull_through_cache_rules[0].ecr_repository_prefix #=> String
    #   resp.data.pull_through_cache_rules[0].upstream_registry_url #=> String
    #   resp.data.pull_through_cache_rules[0].created_at #=> Time
    #   resp.data.pull_through_cache_rules[0].registry_id #=> String
    #   resp.data.next_token #=> String
    #
    def describe_pull_through_cache_rules(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribePullThroughCacheRulesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribePullThroughCacheRulesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribePullThroughCacheRules
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::PullThroughCacheRuleNotFoundException, Errors::ServerException, Errors::ValidationException, Errors::InvalidParameterException]),
        data_parser: Parsers::DescribePullThroughCacheRules
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribePullThroughCacheRules,
        stubs: @stubs,
        params_class: Params::DescribePullThroughCacheRulesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_pull_through_cache_rules
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the settings for a registry. The replication configuration for a repository
    #             can be created or updated with the <a>PutReplicationConfiguration</a> API
    #             action.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeRegistryInput}.
    #
    # @return [Types::DescribeRegistryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_registry()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeRegistryOutput
    #   resp.data.registry_id #=> String
    #   resp.data.replication_configuration #=> Types::ReplicationConfiguration
    #   resp.data.replication_configuration.rules #=> Array<ReplicationRule>
    #   resp.data.replication_configuration.rules[0] #=> Types::ReplicationRule
    #   resp.data.replication_configuration.rules[0].destinations #=> Array<ReplicationDestination>
    #   resp.data.replication_configuration.rules[0].destinations[0] #=> Types::ReplicationDestination
    #   resp.data.replication_configuration.rules[0].destinations[0].region #=> String
    #   resp.data.replication_configuration.rules[0].destinations[0].registry_id #=> String
    #   resp.data.replication_configuration.rules[0].repository_filters #=> Array<RepositoryFilter>
    #   resp.data.replication_configuration.rules[0].repository_filters[0] #=> Types::RepositoryFilter
    #   resp.data.replication_configuration.rules[0].repository_filters[0].filter #=> String
    #   resp.data.replication_configuration.rules[0].repository_filters[0].filter_type #=> String, one of ["PREFIX_MATCH"]
    #
    def describe_registry(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeRegistryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeRegistryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeRegistry
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServerException, Errors::ValidationException, Errors::InvalidParameterException]),
        data_parser: Parsers::DescribeRegistry
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeRegistry,
        stubs: @stubs,
        params_class: Params::DescribeRegistryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_registry
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes image repositories in a registry.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeRepositoriesInput}.
    #
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the repositories to be
    #               described. If you do not specify a registry, the default registry is assumed.</p>
    #
    # @option params [Array<String>] :repository_names
    #   <p>A list of repositories to describe. If this parameter is omitted, then all
    #               repositories in a registry are described.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #                   <code>DescribeRepositories</code> request where <code>maxResults</code> was used and
    #               the results exceeded the value of that parameter. Pagination continues from the end of
    #               the previous results that returned the <code>nextToken</code> value. This value is
    #                   <code>null</code> when there are no more results to return. This option cannot be
    #               used when you specify repositories with <code>repositoryNames</code>.</p>
    #           <note>
    #               <p>This token should be treated as an opaque identifier that is only used to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #           </note>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of repository results returned by <code>DescribeRepositories</code>
    #               in paginated output. When this parameter is used, <code>DescribeRepositories</code> only
    #               returns <code>maxResults</code> results in a single page along with a
    #                   <code>nextToken</code> response element. The remaining results of the initial
    #               request can be seen by sending another <code>DescribeRepositories</code> request with
    #               the returned <code>nextToken</code> value. This value can be between 1
    #               and 1000. If this parameter is not used, then
    #                   <code>DescribeRepositories</code> returns up to 100 results and a
    #                   <code>nextToken</code> value, if applicable. This option cannot be used when you
    #               specify repositories with <code>repositoryNames</code>.</p>
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
    #   resp.data.repositories[0].image_tag_mutability #=> String, one of ["MUTABLE", "IMMUTABLE"]
    #   resp.data.repositories[0].image_scanning_configuration #=> Types::ImageScanningConfiguration
    #   resp.data.repositories[0].image_scanning_configuration.scan_on_push #=> Boolean
    #   resp.data.repositories[0].encryption_configuration #=> Types::EncryptionConfiguration
    #   resp.data.repositories[0].encryption_configuration.encryption_type #=> String, one of ["AES256", "KMS"]
    #   resp.data.repositories[0].encryption_configuration.kms_key #=> String
    #   resp.data.next_token #=> String
    #
    def describe_repositories(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeRepositoriesInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
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
    #             authentication credentials and can be used to access any Amazon ECR registry that your IAM
    #             principal has access to. The authorization token is valid for 12 hours.</p>
    #         <p>The <code>authorizationToken</code> returned is a base64 encoded string that can be
    #             decoded and used in a <code>docker login</code> command to authenticate to a registry.
    #             The CLI offers an <code>get-login-password</code> command that simplifies the login
    #             process. For more information, see <a href="https://docs.aws.amazon.com/AmazonECR/latest/userguide/Registries.html#registry_auth">Registry
    #                 authentication</a> in the <i>Amazon Elastic Container Registry User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAuthorizationTokenInput}.
    #
    # @option params [Array<String>] :registry_ids
    #   <p>A list of Amazon Web Services account IDs that are associated with the registries for which to get
    #               AuthorizationData objects. If you do not specify a registry, the default registry is assumed.</p>
    #
    # @return [Types::GetAuthorizationTokenOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_authorization_token(
    #     registry_ids: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAuthorizationTokenOutput
    #   resp.data.authorization_data #=> Array<AuthorizationData>
    #   resp.data.authorization_data[0] #=> Types::AuthorizationData
    #   resp.data.authorization_data[0].authorization_token #=> String
    #   resp.data.authorization_data[0].expires_at #=> Time
    #   resp.data.authorization_data[0].proxy_endpoint #=> String
    #
    def get_authorization_token(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAuthorizationTokenInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
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

    # <p>Retrieves the pre-signed Amazon S3 download URL corresponding to an image layer. You can
    #             only get URLs for image layers that are referenced in an image.</p>
    #         <p>When an image is pulled, the GetDownloadUrlForLayer API is called once per image layer
    #             that is not already cached.</p>
    #         <note>
    #             <p>This operation is used by the Amazon ECR proxy and is not generally used by
    #         customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::GetDownloadUrlForLayerInput}.
    #
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the image layer to
    #               download. If you do not specify a registry, the default registry is assumed.</p>
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository that is associated with the image layer to download.</p>
    #
    # @option params [String] :layer_digest
    #   <p>The digest of the image layer to download.</p>
    #
    # @return [Types::GetDownloadUrlForLayerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_download_url_for_layer(
    #     registry_id: 'registryId',
    #     repository_name: 'repositoryName', # required
    #     layer_digest: 'layerDigest' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDownloadUrlForLayerOutput
    #   resp.data.download_url #=> String
    #   resp.data.layer_digest #=> String
    #
    def get_download_url_for_layer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDownloadUrlForLayerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDownloadUrlForLayerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDownloadUrlForLayer
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RepositoryNotFoundException, Errors::ServerException, Errors::LayerInaccessibleException, Errors::InvalidParameterException, Errors::LayersNotFoundException]),
        data_parser: Parsers::GetDownloadUrlForLayer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDownloadUrlForLayer,
        stubs: @stubs,
        params_class: Params::GetDownloadUrlForLayerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_download_url_for_layer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the lifecycle policy for the specified repository.</p>
    #
    # @param [Hash] params
    #   See {Types::GetLifecyclePolicyInput}.
    #
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the repository.
    #               If you do not specify a registry, the default registry is assumed.</p>
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository.</p>
    #
    # @return [Types::GetLifecyclePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_lifecycle_policy(
    #     registry_id: 'registryId',
    #     repository_name: 'repositoryName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetLifecyclePolicyOutput
    #   resp.data.registry_id #=> String
    #   resp.data.repository_name #=> String
    #   resp.data.lifecycle_policy_text #=> String
    #   resp.data.last_evaluated_at #=> Time
    #
    def get_lifecycle_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetLifecyclePolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetLifecyclePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetLifecyclePolicy
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RepositoryNotFoundException, Errors::ServerException, Errors::LifecyclePolicyNotFoundException, Errors::InvalidParameterException]),
        data_parser: Parsers::GetLifecyclePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetLifecyclePolicy,
        stubs: @stubs,
        params_class: Params::GetLifecyclePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_lifecycle_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the results of the lifecycle policy preview request for the specified
    #             repository.</p>
    #
    # @param [Hash] params
    #   See {Types::GetLifecyclePolicyPreviewInput}.
    #
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the repository.
    #               If you do not specify a registry, the default registry is assumed.</p>
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository.</p>
    #
    # @option params [Array<ImageIdentifier>] :image_ids
    #   <p>The list of imageIDs to be included.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated 
    #                   <code>GetLifecyclePolicyPreviewRequest</code> request where <code>maxResults</code>
    #               was used and the  results exceeded the value of that parameter. Pagination continues
    #               from the end of the  previous results that returned the <code>nextToken</code> value.
    #               This value is  <code>null</code> when there are no more results to return. This option
    #               cannot be used when you specify images with <code>imageIds</code>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of repository results returned by
    #                   <code>GetLifecyclePolicyPreviewRequest</code> in  paginated output. When this
    #               parameter is used, <code>GetLifecyclePolicyPreviewRequest</code> only returns 
    #                   <code>maxResults</code> results in a single page along with a
    #               <code>nextToken</code>  response element. The remaining results of the initial request
    #               can be seen by sending  another <code>GetLifecyclePolicyPreviewRequest</code> request
    #               with the returned <code>nextToken</code>  value. This value can be between
    #               1 and 1000. If this  parameter is not used, then
    #                   <code>GetLifecyclePolicyPreviewRequest</code> returns up to  100
    #               results and a <code>nextToken</code> value, if  applicable. This option cannot be used
    #               when you specify images with <code>imageIds</code>.</p>
    #
    # @option params [LifecyclePolicyPreviewFilter] :filter
    #   <p>An optional parameter that filters results based on image tag status and all tags, if
    #               tagged.</p>
    #
    # @return [Types::GetLifecyclePolicyPreviewOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_lifecycle_policy_preview(
    #     registry_id: 'registryId',
    #     repository_name: 'repositoryName', # required
    #     image_ids: [
    #       {
    #         image_digest: 'imageDigest',
    #         image_tag: 'imageTag'
    #       }
    #     ],
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     filter: {
    #       tag_status: 'TAGGED' # accepts ["TAGGED", "UNTAGGED", "ANY"]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetLifecyclePolicyPreviewOutput
    #   resp.data.registry_id #=> String
    #   resp.data.repository_name #=> String
    #   resp.data.lifecycle_policy_text #=> String
    #   resp.data.status #=> String, one of ["IN_PROGRESS", "COMPLETE", "EXPIRED", "FAILED"]
    #   resp.data.next_token #=> String
    #   resp.data.preview_results #=> Array<LifecyclePolicyPreviewResult>
    #   resp.data.preview_results[0] #=> Types::LifecyclePolicyPreviewResult
    #   resp.data.preview_results[0].image_tags #=> Array<String>
    #   resp.data.preview_results[0].image_tags[0] #=> String
    #   resp.data.preview_results[0].image_digest #=> String
    #   resp.data.preview_results[0].image_pushed_at #=> Time
    #   resp.data.preview_results[0].action #=> Types::LifecyclePolicyRuleAction
    #   resp.data.preview_results[0].action.type #=> String, one of ["EXPIRE"]
    #   resp.data.preview_results[0].applied_rule_priority #=> Integer
    #   resp.data.summary #=> Types::LifecyclePolicyPreviewSummary
    #   resp.data.summary.expiring_image_total_count #=> Integer
    #
    def get_lifecycle_policy_preview(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetLifecyclePolicyPreviewInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetLifecyclePolicyPreviewInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetLifecyclePolicyPreview
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LifecyclePolicyPreviewNotFoundException, Errors::RepositoryNotFoundException, Errors::ServerException, Errors::InvalidParameterException]),
        data_parser: Parsers::GetLifecyclePolicyPreview
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetLifecyclePolicyPreview,
        stubs: @stubs,
        params_class: Params::GetLifecyclePolicyPreviewOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_lifecycle_policy_preview
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the permissions policy for a registry.</p>
    #
    # @param [Hash] params
    #   See {Types::GetRegistryPolicyInput}.
    #
    # @return [Types::GetRegistryPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_registry_policy()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRegistryPolicyOutput
    #   resp.data.registry_id #=> String
    #   resp.data.policy_text #=> String
    #
    def get_registry_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRegistryPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRegistryPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRegistryPolicy
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RegistryPolicyNotFoundException, Errors::ServerException, Errors::ValidationException, Errors::InvalidParameterException]),
        data_parser: Parsers::GetRegistryPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRegistryPolicy,
        stubs: @stubs,
        params_class: Params::GetRegistryPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_registry_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the scanning configuration for a registry.</p>
    #
    # @param [Hash] params
    #   See {Types::GetRegistryScanningConfigurationInput}.
    #
    # @return [Types::GetRegistryScanningConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_registry_scanning_configuration()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRegistryScanningConfigurationOutput
    #   resp.data.registry_id #=> String
    #   resp.data.scanning_configuration #=> Types::RegistryScanningConfiguration
    #   resp.data.scanning_configuration.scan_type #=> String, one of ["BASIC", "ENHANCED"]
    #   resp.data.scanning_configuration.rules #=> Array<RegistryScanningRule>
    #   resp.data.scanning_configuration.rules[0] #=> Types::RegistryScanningRule
    #   resp.data.scanning_configuration.rules[0].scan_frequency #=> String, one of ["SCAN_ON_PUSH", "CONTINUOUS_SCAN", "MANUAL"]
    #   resp.data.scanning_configuration.rules[0].repository_filters #=> Array<ScanningRepositoryFilter>
    #   resp.data.scanning_configuration.rules[0].repository_filters[0] #=> Types::ScanningRepositoryFilter
    #   resp.data.scanning_configuration.rules[0].repository_filters[0].filter #=> String
    #   resp.data.scanning_configuration.rules[0].repository_filters[0].filter_type #=> String, one of ["WILDCARD"]
    #
    def get_registry_scanning_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRegistryScanningConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRegistryScanningConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRegistryScanningConfiguration
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServerException, Errors::ValidationException, Errors::InvalidParameterException]),
        data_parser: Parsers::GetRegistryScanningConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRegistryScanningConfiguration,
        stubs: @stubs,
        params_class: Params::GetRegistryScanningConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_registry_scanning_configuration
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
    #   <p>The Amazon Web Services account ID associated with the registry that contains the repository.
    #               If you do not specify a registry, the default registry is assumed.</p>
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
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RepositoryNotFoundException, Errors::ServerException, Errors::RepositoryPolicyNotFoundException, Errors::InvalidParameterException]),
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
    #         <p>When an image is pushed, the InitiateLayerUpload API is called once per image layer
    #             that has not already been uploaded. Whether or not an image layer has been uploaded is
    #             determined by the BatchCheckLayerAvailability API action.</p>
    #         <note>
    #             <p>This operation is used by the Amazon ECR proxy and is not generally used by
    #         customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::InitiateLayerUploadInput}.
    #
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID associated with the registry to which you intend to upload
    #               layers. If you do not specify a registry, the default registry is assumed.</p>
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
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RepositoryNotFoundException, Errors::ServerException, Errors::KmsException, Errors::InvalidParameterException]),
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

    # <p>Lists all the image IDs for the specified repository.</p>
    #         <p>You can filter images based on whether or not they are tagged by using the
    #                 <code>tagStatus</code> filter and specifying either <code>TAGGED</code>,
    #                 <code>UNTAGGED</code> or <code>ANY</code>. For example, you can filter your results
    #             to return only <code>UNTAGGED</code> images and then pipe that result to a <a>BatchDeleteImage</a> operation to delete them. Or, you can filter your
    #             results to return only <code>TAGGED</code> images to list all of the tags in your
    #             repository.</p>
    #
    # @param [Hash] params
    #   See {Types::ListImagesInput}.
    #
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the repository in
    #               which to list images. If you do not specify a registry, the default registry is assumed.</p>
    #
    # @option params [String] :repository_name
    #   <p>The repository with image IDs to be listed.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #                   <code>ListImages</code> request where <code>maxResults</code> was used and the
    #               results exceeded the value of that parameter. Pagination continues from the end of the
    #               previous results that returned the <code>nextToken</code> value. This value is
    #                   <code>null</code> when there are no more results to return.</p>
    #           <note>
    #               <p>This token should be treated as an opaque identifier that is only used to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #           </note>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of image results returned by <code>ListImages</code> in paginated
    #               output. When this parameter is used, <code>ListImages</code> only returns
    #                   <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #               response element. The remaining results of the initial request can be seen by sending
    #               another <code>ListImages</code> request with the returned <code>nextToken</code> value.
    #               This value can be between 1 and 1000. If this parameter is
    #               not used, then <code>ListImages</code> returns up to 100 results and a
    #                   <code>nextToken</code> value, if applicable.</p>
    #
    # @option params [ListImagesFilter] :filter
    #   <p>The filter key and value with which to filter your <code>ListImages</code>
    #               results.</p>
    #
    # @return [Types::ListImagesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_images(
    #     registry_id: 'registryId',
    #     repository_name: 'repositoryName', # required
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     filter: {
    #       tag_status: 'TAGGED' # accepts ["TAGGED", "UNTAGGED", "ANY"]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListImagesOutput
    #   resp.data.image_ids #=> Array<ImageIdentifier>
    #   resp.data.image_ids[0] #=> Types::ImageIdentifier
    #   resp.data.image_ids[0].image_digest #=> String
    #   resp.data.image_ids[0].image_tag #=> String
    #   resp.data.next_token #=> String
    #
    def list_images(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListImagesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListImagesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListImages
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RepositoryNotFoundException, Errors::ServerException, Errors::InvalidParameterException]),
        data_parser: Parsers::ListImages
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListImages,
        stubs: @stubs,
        params_class: Params::ListImagesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_images
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List the tags for an Amazon ECR resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the resource for which to list the tags. Currently, the
    #               only supported resource is an Amazon ECR repository.</p>
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
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
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
    #         <p>When an image is pushed and all new image layers have been uploaded, the PutImage API
    #             is called once to create or update the image manifest and the tags associated with the
    #             image.</p>
    #
    #         <note>
    #             <p>This operation is used by the Amazon ECR proxy and is not generally used by
    #         customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::PutImageInput}.
    #
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the repository in
    #               which to put the image. If you do not specify a registry, the default registry is assumed.</p>
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository in which to put the image.</p>
    #
    # @option params [String] :image_manifest
    #   <p>The image manifest corresponding to the image to be uploaded.</p>
    #
    # @option params [String] :image_manifest_media_type
    #   <p>The media type of the image manifest. If you push an image manifest that does not
    #               contain the <code>mediaType</code> field, you must specify the
    #                   <code>imageManifestMediaType</code> in the request.</p>
    #
    # @option params [String] :image_tag
    #   <p>The tag to associate with the image. This parameter is required for images that use
    #               the Docker Image Manifest V2 Schema 2 or Open Container Initiative (OCI) formats.</p>
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
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ImageDigestDoesNotMatchException, Errors::RepositoryNotFoundException, Errors::ReferencedImagesNotFoundException, Errors::ServerException, Errors::ImageTagAlreadyExistsException, Errors::KmsException, Errors::LimitExceededException, Errors::ImageAlreadyExistsException, Errors::InvalidParameterException, Errors::LayersNotFoundException]),
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

    # <important>
    #             <p>The <code>PutImageScanningConfiguration</code> API is being deprecated, in favor
    #                 of specifying the image scanning configuration at the registry level. For more
    #                 information, see <a>PutRegistryScanningConfiguration</a>.</p>
    #         </important>
    #         <p>Updates the image scanning configuration for the specified repository.</p>
    #
    # @param [Hash] params
    #   See {Types::PutImageScanningConfigurationInput}.
    #
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the repository in
    #               which to update the image scanning configuration setting.
    #               If you do not specify a registry, the default registry is assumed.</p>
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository in which to update the image scanning configuration
    #               setting.</p>
    #
    # @option params [ImageScanningConfiguration] :image_scanning_configuration
    #   <p>The image scanning configuration for the repository. This setting determines whether
    #               images are scanned for known vulnerabilities after being pushed to the
    #               repository.</p>
    #
    # @return [Types::PutImageScanningConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_image_scanning_configuration(
    #     registry_id: 'registryId',
    #     repository_name: 'repositoryName', # required
    #     image_scanning_configuration: {
    #       scan_on_push: false
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutImageScanningConfigurationOutput
    #   resp.data.registry_id #=> String
    #   resp.data.repository_name #=> String
    #   resp.data.image_scanning_configuration #=> Types::ImageScanningConfiguration
    #   resp.data.image_scanning_configuration.scan_on_push #=> Boolean
    #
    def put_image_scanning_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutImageScanningConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutImageScanningConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutImageScanningConfiguration
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RepositoryNotFoundException, Errors::ServerException, Errors::ValidationException, Errors::InvalidParameterException]),
        data_parser: Parsers::PutImageScanningConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutImageScanningConfiguration,
        stubs: @stubs,
        params_class: Params::PutImageScanningConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_image_scanning_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the image tag mutability settings for the specified repository. For more
    #             information, see <a href="https://docs.aws.amazon.com/AmazonECR/latest/userguide/image-tag-mutability.html">Image tag
    #                 mutability</a> in the <i>Amazon Elastic Container Registry User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::PutImageTagMutabilityInput}.
    #
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the repository in
    #               which to update the image tag mutability settings. If you do not specify a registry, the default registry is assumed.</p>
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository in which to update the image tag mutability
    #               settings.</p>
    #
    # @option params [String] :image_tag_mutability
    #   <p>The tag mutability setting for the repository. If <code>MUTABLE</code> is specified,
    #               image tags can be overwritten. If <code>IMMUTABLE</code> is specified, all image tags
    #               within the repository will be immutable which will prevent them from being
    #               overwritten.</p>
    #
    # @return [Types::PutImageTagMutabilityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_image_tag_mutability(
    #     registry_id: 'registryId',
    #     repository_name: 'repositoryName', # required
    #     image_tag_mutability: 'MUTABLE' # required - accepts ["MUTABLE", "IMMUTABLE"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutImageTagMutabilityOutput
    #   resp.data.registry_id #=> String
    #   resp.data.repository_name #=> String
    #   resp.data.image_tag_mutability #=> String, one of ["MUTABLE", "IMMUTABLE"]
    #
    def put_image_tag_mutability(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutImageTagMutabilityInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutImageTagMutabilityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutImageTagMutability
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RepositoryNotFoundException, Errors::ServerException, Errors::InvalidParameterException]),
        data_parser: Parsers::PutImageTagMutability
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutImageTagMutability,
        stubs: @stubs,
        params_class: Params::PutImageTagMutabilityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_image_tag_mutability
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates or updates the lifecycle policy for the specified repository. For more
    #             information, see <a href="https://docs.aws.amazon.com/AmazonECR/latest/userguide/LifecyclePolicies.html">Lifecycle policy
    #                 template</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::PutLifecyclePolicyInput}.
    #
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the repository. If you
    #               do  not specify a registry, the default registry is assumed.</p>
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository to receive the policy.</p>
    #
    # @option params [String] :lifecycle_policy_text
    #   <p>The JSON repository policy text to apply to the repository.</p>
    #
    # @return [Types::PutLifecyclePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_lifecycle_policy(
    #     registry_id: 'registryId',
    #     repository_name: 'repositoryName', # required
    #     lifecycle_policy_text: 'lifecyclePolicyText' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutLifecyclePolicyOutput
    #   resp.data.registry_id #=> String
    #   resp.data.repository_name #=> String
    #   resp.data.lifecycle_policy_text #=> String
    #
    def put_lifecycle_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutLifecyclePolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutLifecyclePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutLifecyclePolicy
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RepositoryNotFoundException, Errors::ServerException, Errors::InvalidParameterException]),
        data_parser: Parsers::PutLifecyclePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutLifecyclePolicy,
        stubs: @stubs,
        params_class: Params::PutLifecyclePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_lifecycle_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates or updates the permissions policy for your registry.</p>
    #         <p>A registry policy is used to specify permissions for another Amazon Web Services account and is used
    #             when configuring cross-account replication. For more information, see <a href="https://docs.aws.amazon.com/AmazonECR/latest/userguide/registry-permissions.html">Registry permissions</a> in the <i>Amazon Elastic Container Registry User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::PutRegistryPolicyInput}.
    #
    # @option params [String] :policy_text
    #   <p>The JSON policy text to apply to your registry. The policy text follows the same
    #               format as IAM policy text. For more information, see <a href="https://docs.aws.amazon.com/AmazonECR/latest/userguide/registry-permissions.html">Registry
    #                   permissions</a> in the <i>Amazon Elastic Container Registry User Guide</i>.</p>
    #
    # @return [Types::PutRegistryPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_registry_policy(
    #     policy_text: 'policyText' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutRegistryPolicyOutput
    #   resp.data.registry_id #=> String
    #   resp.data.policy_text #=> String
    #
    def put_registry_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutRegistryPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutRegistryPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutRegistryPolicy
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServerException, Errors::ValidationException, Errors::InvalidParameterException]),
        data_parser: Parsers::PutRegistryPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutRegistryPolicy,
        stubs: @stubs,
        params_class: Params::PutRegistryPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_registry_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates or updates the scanning configuration for your private registry.</p>
    #
    # @param [Hash] params
    #   See {Types::PutRegistryScanningConfigurationInput}.
    #
    # @option params [String] :scan_type
    #   <p>The scanning type to set for the registry.</p>
    #           <p>When a registry scanning configuration is not defined, by default the
    #                   <code>BASIC</code> scan type is used. When basic scanning is used, you may specify
    #               filters to determine which individual repositories, or all repositories, are scanned
    #               when new images are pushed to those repositories. Alternatively, you can do manual scans
    #               of images with basic scanning.</p>
    #           <p>When the <code>ENHANCED</code> scan type is set, Amazon Inspector provides automated
    #               vulnerability scanning. You may choose between continuous scanning or scan on push and
    #               you may specify filters to determine which individual repositories, or all repositories,
    #               are scanned.</p>
    #
    # @option params [Array<RegistryScanningRule>] :rules
    #   <p>The scanning rules to use for the registry. A scanning rule is used to determine which
    #               repository filters are used and at what frequency scanning will occur.</p>
    #
    # @return [Types::PutRegistryScanningConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_registry_scanning_configuration(
    #     scan_type: 'BASIC', # accepts ["BASIC", "ENHANCED"]
    #     rules: [
    #       {
    #         scan_frequency: 'SCAN_ON_PUSH', # required - accepts ["SCAN_ON_PUSH", "CONTINUOUS_SCAN", "MANUAL"]
    #         repository_filters: [
    #           {
    #             filter: 'filter', # required
    #             filter_type: 'WILDCARD' # required - accepts ["WILDCARD"]
    #           }
    #         ] # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutRegistryScanningConfigurationOutput
    #   resp.data.registry_scanning_configuration #=> Types::RegistryScanningConfiguration
    #   resp.data.registry_scanning_configuration.scan_type #=> String, one of ["BASIC", "ENHANCED"]
    #   resp.data.registry_scanning_configuration.rules #=> Array<RegistryScanningRule>
    #   resp.data.registry_scanning_configuration.rules[0] #=> Types::RegistryScanningRule
    #   resp.data.registry_scanning_configuration.rules[0].scan_frequency #=> String, one of ["SCAN_ON_PUSH", "CONTINUOUS_SCAN", "MANUAL"]
    #   resp.data.registry_scanning_configuration.rules[0].repository_filters #=> Array<ScanningRepositoryFilter>
    #   resp.data.registry_scanning_configuration.rules[0].repository_filters[0] #=> Types::ScanningRepositoryFilter
    #   resp.data.registry_scanning_configuration.rules[0].repository_filters[0].filter #=> String
    #   resp.data.registry_scanning_configuration.rules[0].repository_filters[0].filter_type #=> String, one of ["WILDCARD"]
    #
    def put_registry_scanning_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutRegistryScanningConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutRegistryScanningConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutRegistryScanningConfiguration
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServerException, Errors::ValidationException, Errors::InvalidParameterException]),
        data_parser: Parsers::PutRegistryScanningConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutRegistryScanningConfiguration,
        stubs: @stubs,
        params_class: Params::PutRegistryScanningConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_registry_scanning_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates or updates the replication configuration for a registry. The existing
    #             replication configuration for a repository can be retrieved with the <a>DescribeRegistry</a> API action. The first time the
    #             PutReplicationConfiguration API is called, a service-linked IAM role is created in
    #             your account for the replication process. For more information, see <a href="https://docs.aws.amazon.com/AmazonECR/latest/userguide/using-service-linked-roles.html">Using
    #                 service-linked roles for Amazon ECR</a> in the
    #             <i>Amazon Elastic Container Registry User Guide</i>.</p>
    #         <note>
    #             <p>When configuring cross-account replication, the destination account must grant the
    #                 source account permission to replicate. This permission is controlled using a
    #                 registry permissions policy. For more information, see <a>PutRegistryPolicy</a>.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::PutReplicationConfigurationInput}.
    #
    # @option params [ReplicationConfiguration] :replication_configuration
    #   <p>An object representing the replication configuration for a registry.</p>
    #
    # @return [Types::PutReplicationConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_replication_configuration(
    #     replication_configuration: {
    #       rules: [
    #         {
    #           destinations: [
    #             {
    #               region: 'region', # required
    #               registry_id: 'registryId' # required
    #             }
    #           ], # required
    #           repository_filters: [
    #             {
    #               filter: 'filter', # required
    #               filter_type: 'PREFIX_MATCH' # required - accepts ["PREFIX_MATCH"]
    #             }
    #           ]
    #         }
    #       ] # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutReplicationConfigurationOutput
    #   resp.data.replication_configuration #=> Types::ReplicationConfiguration
    #   resp.data.replication_configuration.rules #=> Array<ReplicationRule>
    #   resp.data.replication_configuration.rules[0] #=> Types::ReplicationRule
    #   resp.data.replication_configuration.rules[0].destinations #=> Array<ReplicationDestination>
    #   resp.data.replication_configuration.rules[0].destinations[0] #=> Types::ReplicationDestination
    #   resp.data.replication_configuration.rules[0].destinations[0].region #=> String
    #   resp.data.replication_configuration.rules[0].destinations[0].registry_id #=> String
    #   resp.data.replication_configuration.rules[0].repository_filters #=> Array<RepositoryFilter>
    #   resp.data.replication_configuration.rules[0].repository_filters[0] #=> Types::RepositoryFilter
    #   resp.data.replication_configuration.rules[0].repository_filters[0].filter #=> String
    #   resp.data.replication_configuration.rules[0].repository_filters[0].filter_type #=> String, one of ["PREFIX_MATCH"]
    #
    def put_replication_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutReplicationConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutReplicationConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutReplicationConfiguration
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServerException, Errors::ValidationException, Errors::InvalidParameterException]),
        data_parser: Parsers::PutReplicationConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutReplicationConfiguration,
        stubs: @stubs,
        params_class: Params::PutReplicationConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_replication_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Applies a repository policy to the specified repository to control access permissions.
    #             For more information, see <a href="https://docs.aws.amazon.com/AmazonECR/latest/userguide/repository-policies.html">Amazon ECR Repository
    #                 policies</a> in the <i>Amazon Elastic Container Registry User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::SetRepositoryPolicyInput}.
    #
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the repository.
    #               If you do not specify a registry, the default registry is assumed.</p>
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository to receive the policy.</p>
    #
    # @option params [String] :policy_text
    #   <p>The JSON repository policy text to apply to the repository. For more information, see
    #                   <a href="https://docs.aws.amazon.com/AmazonECR/latest/userguide/repository-policy-examples.html">Amazon ECR repository
    #                   policies</a> in the <i>Amazon Elastic Container Registry User Guide</i>.</p>
    #
    # @option params [Boolean] :force
    #   <p>If the policy you are attempting to set on a repository policy would prevent you from
    #               setting another policy in the future, you must force the <a>SetRepositoryPolicy</a> operation. This is intended to prevent accidental
    #               repository lock outs.</p>
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
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
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

    # <p>Starts an image vulnerability scan. An image scan can only be started once per 24
    #             hours on an individual image. This limit includes if an image was scanned on initial
    #             push. For more information, see <a href="https://docs.aws.amazon.com/AmazonECR/latest/userguide/image-scanning.html">Image scanning</a> in the
    #                 <i>Amazon Elastic Container Registry User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::StartImageScanInput}.
    #
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the repository in
    #               which to start an image scan request. If you do not specify a registry, the default registry is assumed.</p>
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository that contains the images to scan.</p>
    #
    # @option params [ImageIdentifier] :image_id
    #   <p>An object with identifying information for an image in an Amazon ECR repository.</p>
    #
    # @return [Types::StartImageScanOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_image_scan(
    #     registry_id: 'registryId',
    #     repository_name: 'repositoryName', # required
    #     image_id: {
    #       image_digest: 'imageDigest',
    #       image_tag: 'imageTag'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartImageScanOutput
    #   resp.data.registry_id #=> String
    #   resp.data.repository_name #=> String
    #   resp.data.image_id #=> Types::ImageIdentifier
    #   resp.data.image_id.image_digest #=> String
    #   resp.data.image_id.image_tag #=> String
    #   resp.data.image_scan_status #=> Types::ImageScanStatus
    #   resp.data.image_scan_status.status #=> String, one of ["IN_PROGRESS", "COMPLETE", "FAILED", "UNSUPPORTED_IMAGE", "ACTIVE", "PENDING", "SCAN_ELIGIBILITY_EXPIRED", "FINDINGS_UNAVAILABLE"]
    #   resp.data.image_scan_status.description #=> String
    #
    def start_image_scan(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartImageScanInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartImageScanInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartImageScan
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RepositoryNotFoundException, Errors::ServerException, Errors::ValidationException, Errors::UnsupportedImageTypeException, Errors::ImageNotFoundException, Errors::LimitExceededException, Errors::InvalidParameterException]),
        data_parser: Parsers::StartImageScan
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartImageScan,
        stubs: @stubs,
        params_class: Params::StartImageScanOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_image_scan
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts a preview of a lifecycle policy for the specified repository. This allows you
    #             to see the results before associating the lifecycle policy with the repository.</p>
    #
    # @param [Hash] params
    #   See {Types::StartLifecyclePolicyPreviewInput}.
    #
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the repository.
    #               If you do not specify a registry, the default registry is assumed.</p>
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository to be evaluated.</p>
    #
    # @option params [String] :lifecycle_policy_text
    #   <p>The policy to be evaluated against. If you do not specify a policy, the current policy
    #               for the repository is used.</p>
    #
    # @return [Types::StartLifecyclePolicyPreviewOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_lifecycle_policy_preview(
    #     registry_id: 'registryId',
    #     repository_name: 'repositoryName', # required
    #     lifecycle_policy_text: 'lifecyclePolicyText'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartLifecyclePolicyPreviewOutput
    #   resp.data.registry_id #=> String
    #   resp.data.repository_name #=> String
    #   resp.data.lifecycle_policy_text #=> String
    #   resp.data.status #=> String, one of ["IN_PROGRESS", "COMPLETE", "EXPIRED", "FAILED"]
    #
    def start_lifecycle_policy_preview(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartLifecyclePolicyPreviewInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartLifecyclePolicyPreviewInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartLifecyclePolicyPreview
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RepositoryNotFoundException, Errors::ServerException, Errors::LifecyclePolicyNotFoundException, Errors::InvalidParameterException, Errors::LifecyclePolicyPreviewInProgressException]),
        data_parser: Parsers::StartLifecyclePolicyPreview
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartLifecyclePolicyPreview,
        stubs: @stubs,
        params_class: Params::StartLifecyclePolicyPreviewOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_lifecycle_policy_preview
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds specified tags to a resource with the specified ARN. Existing tags on a resource
    #             are not changed if they are not specified in the request parameters.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the the resource to which to add tags. Currently, the only supported
    #               resource is an Amazon ECR repository.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to add to the resource. A tag is an array of key-value pairs.
    #               Tag keys can have a maximum character length of 128 characters, and tag values can have
    #               a maximum length of 256 characters.</p>
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
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidTagParameterException, Errors::RepositoryNotFoundException, Errors::ServerException, Errors::TooManyTagsException, Errors::InvalidParameterException]),
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
    #   <p>The Amazon Resource Name (ARN) of the resource from which to remove tags. Currently, the only supported
    #               resource is an Amazon ECR repository.</p>
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
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidTagParameterException, Errors::RepositoryNotFoundException, Errors::ServerException, Errors::TooManyTagsException, Errors::InvalidParameterException]),
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
    #         <p>When an image is pushed, each new image layer is uploaded in parts. The maximum size
    #             of each image layer part can be 20971520 bytes (or about 20MB). The UploadLayerPart API
    #             is called once per each new image layer part.</p>
    #         <note>
    #             <p>This operation is used by the Amazon ECR proxy and is not generally used by
    #         customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::UploadLayerPartInput}.
    #
    # @option params [String] :registry_id
    #   <p>The Amazon Web Services account ID associated with the registry to which you are uploading layer
    #               parts. If you do not specify a registry, the default registry is assumed.</p>
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository to which you are uploading layer parts.</p>
    #
    # @option params [String] :upload_id
    #   <p>The upload ID from a previous <a>InitiateLayerUpload</a> operation to
    #               associate with the layer part upload.</p>
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
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RepositoryNotFoundException, Errors::ServerException, Errors::UploadNotFoundException, Errors::KmsException, Errors::LimitExceededException, Errors::InvalidParameterException, Errors::InvalidLayerPartException]),
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
