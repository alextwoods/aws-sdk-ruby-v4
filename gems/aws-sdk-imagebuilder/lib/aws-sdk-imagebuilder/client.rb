# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::Imagebuilder
  # An API client for imagebuilder
  # See {#initialize} for a full list of supported configuration options
  # <p>EC2 Image Builder is a fully managed Amazon Web Services service that makes it easier to automate the
  #       creation, management, and deployment of customized, secure, and up-to-date "golden" server
  #       images that are pre-installed and pre-configured with software and settings to meet specific
  #       IT standards.</p>
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
    def initialize(config = AWS::SDK::Imagebuilder::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>CancelImageCreation cancels the creation of Image. This operation can only be used on
    # 			images in a non-terminal state.</p>
    #
    # @param [Hash] params
    #   See {Types::CancelImageCreationInput}.
    #
    # @option params [String] :image_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the image whose creation you want to cancel.</p>
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure
    #          idempotency of the request. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    #
    # @return [Types::CancelImageCreationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_image_creation(
    #     image_build_version_arn: 'imageBuildVersionArn', # required
    #     client_token: 'clientToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelImageCreationOutput
    #   resp.data.request_id #=> String
    #   resp.data.client_token #=> String
    #   resp.data.image_build_version_arn #=> String
    #
    def cancel_image_creation(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelImageCreationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelImageCreationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelImageCreation
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CallRateLimitExceededException, Errors::InvalidRequestException, Errors::ForbiddenException, Errors::IdempotentParameterMismatchException, Errors::ServiceUnavailableException, Errors::ClientException, Errors::ServiceException, Errors::ResourceInUseException]),
        data_parser: Parsers::CancelImageCreation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelImageCreation,
        stubs: @stubs,
        params_class: Params::CancelImageCreationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_image_creation
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new component that can be used to build, validate, test, and assess your
    # 			image. The component is based on a YAML document that you specify using exactly one
    # 			of the following methods:</p>
    # 		       <ul>
    #             <li>
    # 				           <p>Inline, using the <code>data</code> property in the request body.</p>
    # 			         </li>
    #             <li>
    # 				           <p>A URL that points to a YAML document file stored in Amazon S3, using the
    # 					<code>uri</code> property in the request body.</p>
    # 			         </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::CreateComponentInput}.
    #
    # @option params [String] :name
    #   <p>The name of the component.</p>
    #
    # @option params [String] :semantic_version
    #   <p>The semantic version of the component. This version follows the semantic version syntax.</p>
    #   		       <note>
    #   			         <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>.
    #   	You can assign values for the first three, and can filter on all of them.</p>
    #   			         <p>
    #                  <b>Assignment:</b> For the first three nodes you can assign any positive integer value, including
    #   	zero, with an upper limit of 2^30-1, or 1073741823 for each node. Image Builder automatically assigns the
    #   	build number to the fourth node.</p>
    #   			         <p>
    #                  <b>Patterns:</b> You can use any numeric pattern that adheres to the assignment requirements for
    #   	the nodes that you can assign. For example, you might choose a software version pattern, such as 1.0.0, or
    #   	a date, such as 2021.01.01.</p>
    #   		       </note>
    #
    # @option params [String] :description
    #   <p>The description of the component. Describes the contents of the component.</p>
    #
    # @option params [String] :change_description
    #   <p>The change description of the component. Describes what change has been made in this
    #   			version, or what makes this version different from other versions of this component.</p>
    #
    # @option params [String] :platform
    #   <p>The platform of the component.</p>
    #
    # @option params [Array<String>] :supported_os_versions
    #   <p> The operating system (OS) version supported by the component. If the OS information is
    #   			available, a prefix match is performed against the base image OS version during image recipe
    #   			creation.</p>
    #
    # @option params [String] :data
    #   <p>Component <code>data</code> contains inline YAML document content for the component.
    #   			Alternatively, you can specify the <code>uri</code> of a YAML document file stored in
    #   			Amazon S3. However, you cannot specify both properties.</p>
    #
    # @option params [String] :uri
    #   <p>The <code>uri</code> of a YAML component document file. This must be an S3 URL
    #   			(<code>s3://bucket/key</code>), and the requester must have permission to access
    #   			the S3 bucket it points to. If you use Amazon S3, you can specify component content
    #   			up to your service quota.</p>
    #   		       <p>Alternatively, you can specify the YAML document inline, using the component
    #   			<code>data</code> property. You cannot specify both properties.</p>
    #
    # @option params [String] :kms_key_id
    #   <p>The ID of the KMS key that should be used to encrypt this component.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags of the component.</p>
    #
    # @option params [String] :client_token
    #   <p>The idempotency token of the component.</p>
    #
    # @return [Types::CreateComponentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_component(
    #     name: 'name', # required
    #     semantic_version: 'semanticVersion', # required
    #     description: 'description',
    #     change_description: 'changeDescription',
    #     platform: 'Windows', # required - accepts ["Windows", "Linux"]
    #     supported_os_versions: [
    #       'member'
    #     ],
    #     data: 'data',
    #     uri: 'uri',
    #     kms_key_id: 'kmsKeyId',
    #     tags: {
    #       'key' => 'value'
    #     },
    #     client_token: 'clientToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateComponentOutput
    #   resp.data.request_id #=> String
    #   resp.data.client_token #=> String
    #   resp.data.component_build_version_arn #=> String
    #
    def create_component(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateComponentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateComponentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateComponent
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CallRateLimitExceededException, Errors::InvalidRequestException, Errors::ServiceQuotaExceededException, Errors::ForbiddenException, Errors::IdempotentParameterMismatchException, Errors::InvalidParameterCombinationException, Errors::ServiceUnavailableException, Errors::ClientException, Errors::InvalidVersionNumberException, Errors::ServiceException, Errors::ResourceInUseException]),
        data_parser: Parsers::CreateComponent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateComponent,
        stubs: @stubs,
        params_class: Params::CreateComponentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_component
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new container recipe. Container recipes define how images are configured, tested, and assessed.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateContainerRecipeInput}.
    #
    # @option params [String] :container_type
    #   <p>The type of container to create.</p>
    #
    # @option params [String] :name
    #   <p>The name of the container recipe.</p>
    #
    # @option params [String] :description
    #   <p>The description of the container recipe.</p>
    #
    # @option params [String] :semantic_version
    #   <p>The semantic version of the container recipe. This version follows the semantic version syntax.</p>
    #   		       <note>
    #   			         <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>.
    #   	You can assign values for the first three, and can filter on all of them.</p>
    #   			         <p>
    #                  <b>Assignment:</b> For the first three nodes you can assign any positive integer value, including
    #   	zero, with an upper limit of 2^30-1, or 1073741823 for each node. Image Builder automatically assigns the
    #   	build number to the fourth node.</p>
    #   			         <p>
    #                  <b>Patterns:</b> You can use any numeric pattern that adheres to the assignment requirements for
    #   	the nodes that you can assign. For example, you might choose a software version pattern, such as 1.0.0, or
    #   	a date, such as 2021.01.01.</p>
    #   		       </note>
    #
    # @option params [Array<ComponentConfiguration>] :components
    #   <p>Components for build and test that are included in the container recipe.</p>
    #
    # @option params [InstanceConfiguration] :instance_configuration
    #   <p>A group of options that can be used to configure an instance for building and testing container images.</p>
    #
    # @option params [String] :dockerfile_template_data
    #   <p>The Dockerfile template used to build your image as an inline data blob.</p>
    #
    # @option params [String] :dockerfile_template_uri
    #   <p>The Amazon S3 URI for the Dockerfile that will be used to build your container image.</p>
    #
    # @option params [String] :platform_override
    #   <p>Specifies the operating system platform when you use a custom base image.</p>
    #
    # @option params [String] :image_os_version_override
    #   <p>Specifies the operating system version for the base image.</p>
    #
    # @option params [String] :parent_image
    #   <p>The base image for the container recipe.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Tags that are attached to the container recipe.</p>
    #
    # @option params [String] :working_directory
    #   <p>The working directory for use during build and test workflows.</p>
    #
    # @option params [TargetContainerRepository] :target_repository
    #   <p>The destination repository for the container image.</p>
    #
    # @option params [String] :kms_key_id
    #   <p>Identifies which KMS key is used to encrypt the container image.</p>
    #
    # @option params [String] :client_token
    #   <p>The client token used to make this request idempotent.</p>
    #
    # @return [Types::CreateContainerRecipeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_container_recipe(
    #     container_type: 'DOCKER', # required - accepts ["DOCKER"]
    #     name: 'name', # required
    #     description: 'description',
    #     semantic_version: 'semanticVersion', # required
    #     components: [
    #       {
    #         component_arn: 'componentArn', # required
    #         parameters: [
    #           {
    #             name: 'name', # required
    #             value: [
    #               'member'
    #             ] # required
    #           }
    #         ]
    #       }
    #     ], # required
    #     instance_configuration: {
    #       image: 'image',
    #       block_device_mappings: [
    #         {
    #           device_name: 'deviceName',
    #           ebs: {
    #             encrypted: false,
    #             delete_on_termination: false,
    #             iops: 1,
    #             kms_key_id: 'kmsKeyId',
    #             snapshot_id: 'snapshotId',
    #             volume_size: 1,
    #             volume_type: 'standard', # accepts ["standard", "io1", "io2", "gp2", "gp3", "sc1", "st1"]
    #             throughput: 1
    #           },
    #           virtual_name: 'virtualName',
    #           no_device: 'noDevice'
    #         }
    #       ]
    #     },
    #     dockerfile_template_data: 'dockerfileTemplateData',
    #     dockerfile_template_uri: 'dockerfileTemplateUri',
    #     platform_override: 'Windows', # accepts ["Windows", "Linux"]
    #     image_os_version_override: 'imageOsVersionOverride',
    #     parent_image: 'parentImage', # required
    #     tags: {
    #       'key' => 'value'
    #     },
    #     working_directory: 'workingDirectory',
    #     target_repository: {
    #       service: 'ECR', # required - accepts ["ECR"]
    #       repository_name: 'repositoryName' # required
    #     }, # required
    #     kms_key_id: 'kmsKeyId',
    #     client_token: 'clientToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateContainerRecipeOutput
    #   resp.data.request_id #=> String
    #   resp.data.client_token #=> String
    #   resp.data.container_recipe_arn #=> String
    #
    def create_container_recipe(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateContainerRecipeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateContainerRecipeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateContainerRecipe
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CallRateLimitExceededException, Errors::ResourceAlreadyExistsException, Errors::InvalidRequestException, Errors::ServiceQuotaExceededException, Errors::ForbiddenException, Errors::IdempotentParameterMismatchException, Errors::ServiceUnavailableException, Errors::ClientException, Errors::InvalidVersionNumberException, Errors::ServiceException, Errors::ResourceInUseException]),
        data_parser: Parsers::CreateContainerRecipe
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateContainerRecipe,
        stubs: @stubs,
        params_class: Params::CreateContainerRecipeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_container_recipe
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new distribution configuration. Distribution configurations define and configure
    # 			the outputs of your pipeline.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDistributionConfigurationInput}.
    #
    # @option params [String] :name
    #   <p> The name of the distribution configuration.</p>
    #
    # @option params [String] :description
    #   <p> The description of the distribution configuration.</p>
    #
    # @option params [Array<Distribution>] :distributions
    #   <p> The distributions of the distribution configuration.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p> The tags of the distribution configuration.</p>
    #
    # @option params [String] :client_token
    #   <p> The idempotency token of the distribution configuration.</p>
    #
    # @return [Types::CreateDistributionConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_distribution_configuration(
    #     name: 'name', # required
    #     description: 'description',
    #     distributions: [
    #       {
    #         region: 'region', # required
    #         ami_distribution_configuration: {
    #           name: 'name',
    #           description: 'description',
    #           target_account_ids: [
    #             'member'
    #           ],
    #           ami_tags: {
    #             'key' => 'value'
    #           },
    #           kms_key_id: 'kmsKeyId',
    #           launch_permission: {
    #             user_groups: [
    #               'member'
    #             ],
    #             organization_arns: [
    #               'member'
    #             ],
    #             organizational_unit_arns: [
    #               'member'
    #             ]
    #           }
    #         },
    #         container_distribution_configuration: {
    #           description: 'description',
    #           target_repository: {
    #             service: 'ECR', # required - accepts ["ECR"]
    #             repository_name: 'repositoryName' # required
    #           } # required
    #         },
    #         license_configuration_arns: [
    #           'member'
    #         ],
    #         launch_template_configurations: [
    #           {
    #             launch_template_id: 'launchTemplateId', # required
    #             account_id: 'accountId',
    #             set_default_version: false
    #           }
    #         ],
    #         s3_export_configuration: {
    #           role_name: 'roleName', # required
    #           disk_image_format: 'VMDK', # required - accepts ["VMDK", "RAW", "VHD"]
    #           s3_bucket: 's3Bucket', # required
    #           s3_prefix: 's3Prefix'
    #         },
    #         fast_launch_configurations: [
    #           {
    #             enabled: false, # required
    #             snapshot_configuration: {
    #               target_resource_count: 1
    #             },
    #             max_parallel_launches: 1,
    #             launch_template: {
    #               launch_template_id: 'launchTemplateId',
    #               launch_template_name: 'launchTemplateName',
    #               launch_template_version: 'launchTemplateVersion'
    #             },
    #             account_id: 'accountId'
    #           }
    #         ]
    #       }
    #     ], # required
    #     client_token: 'clientToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDistributionConfigurationOutput
    #   resp.data.request_id #=> String
    #   resp.data.client_token #=> String
    #   resp.data.distribution_configuration_arn #=> String
    #
    def create_distribution_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDistributionConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDistributionConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDistributionConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CallRateLimitExceededException, Errors::ResourceAlreadyExistsException, Errors::InvalidRequestException, Errors::ServiceQuotaExceededException, Errors::ForbiddenException, Errors::IdempotentParameterMismatchException, Errors::InvalidParameterCombinationException, Errors::ServiceUnavailableException, Errors::ClientException, Errors::ServiceException, Errors::ResourceInUseException]),
        data_parser: Parsers::CreateDistributionConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDistributionConfiguration,
        stubs: @stubs,
        params_class: Params::CreateDistributionConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_distribution_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Creates a new image. This request will create a new image along with all of the
    # 			configured output resources defined in the distribution configuration. You must specify
    # 			exactly one recipe for your image, using either a ContainerRecipeArn or an ImageRecipeArn.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateImageInput}.
    #
    # @option params [String] :image_recipe_arn
    #   <p> The Amazon Resource Name (ARN) of the image recipe that defines how images are
    #   			configured, tested, and assessed.</p>
    #
    # @option params [String] :container_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the container recipe that defines how images are configured and tested.</p>
    #
    # @option params [String] :distribution_configuration_arn
    #   <p> The Amazon Resource Name (ARN) of the distribution configuration that defines and
    #   			configures the outputs of your pipeline.</p>
    #
    # @option params [String] :infrastructure_configuration_arn
    #   <p> The Amazon Resource Name (ARN) of the infrastructure configuration that defines the
    #   			environment in which your image will be built and tested.</p>
    #
    # @option params [ImageTestsConfiguration] :image_tests_configuration
    #   <p> The image tests configuration of the image.</p>
    #
    # @option params [Boolean] :enhanced_image_metadata_enabled
    #   <p> Collects additional information about the image being created, including the operating
    #   			system (OS) version and package list. This information is used to enhance the overall
    #   			experience of using EC2 Image Builder. Enabled by default.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p> The tags of the image.</p>
    #
    # @option params [String] :client_token
    #   <p> The idempotency token used to make this request idempotent.</p>
    #
    # @return [Types::CreateImageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_image(
    #     image_recipe_arn: 'imageRecipeArn',
    #     container_recipe_arn: 'containerRecipeArn',
    #     distribution_configuration_arn: 'distributionConfigurationArn',
    #     infrastructure_configuration_arn: 'infrastructureConfigurationArn', # required
    #     image_tests_configuration: {
    #       image_tests_enabled: false,
    #       timeout_minutes: 1
    #     },
    #     enhanced_image_metadata_enabled: false,
    #     tags: {
    #       'key' => 'value'
    #     },
    #     client_token: 'clientToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateImageOutput
    #   resp.data.request_id #=> String
    #   resp.data.client_token #=> String
    #   resp.data.image_build_version_arn #=> String
    #
    def create_image(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateImageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateImageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateImage
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CallRateLimitExceededException, Errors::InvalidRequestException, Errors::ServiceQuotaExceededException, Errors::ForbiddenException, Errors::IdempotentParameterMismatchException, Errors::ServiceUnavailableException, Errors::ClientException, Errors::ServiceException, Errors::ResourceInUseException]),
        data_parser: Parsers::CreateImage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateImage,
        stubs: @stubs,
        params_class: Params::CreateImageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_image
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Creates a new image pipeline. Image pipelines enable you to automate the creation and
    # 			distribution of images.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateImagePipelineInput}.
    #
    # @option params [String] :name
    #   <p> The name of the image pipeline.</p>
    #
    # @option params [String] :description
    #   <p> The description of the image pipeline.</p>
    #
    # @option params [String] :image_recipe_arn
    #   <p> The Amazon Resource Name (ARN) of the image recipe that will be used to configure images
    #   			created by this image pipeline.</p>
    #
    # @option params [String] :container_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the container recipe that is used to configure images created by this container pipeline.</p>
    #
    # @option params [String] :infrastructure_configuration_arn
    #   <p> The Amazon Resource Name (ARN) of the infrastructure configuration that will be used to
    #   			build images created by this image pipeline.</p>
    #
    # @option params [String] :distribution_configuration_arn
    #   <p> The Amazon Resource Name (ARN) of the distribution configuration that will be used to
    #   			configure and distribute images created by this image pipeline.</p>
    #
    # @option params [ImageTestsConfiguration] :image_tests_configuration
    #   <p> The image test configuration of the image pipeline.</p>
    #
    # @option params [Boolean] :enhanced_image_metadata_enabled
    #   <p> Collects additional information about the image being created, including the operating
    #   			system (OS) version and package list. This information is used to enhance the overall
    #   			experience of using EC2 Image Builder. Enabled by default.</p>
    #
    # @option params [Schedule] :schedule
    #   <p> The schedule of the image pipeline.</p>
    #
    # @option params [String] :status
    #   <p> The status of the image pipeline.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p> The tags of the image pipeline.</p>
    #
    # @option params [String] :client_token
    #   <p> The idempotency token used to make this request idempotent.</p>
    #
    # @return [Types::CreateImagePipelineOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_image_pipeline(
    #     name: 'name', # required
    #     description: 'description',
    #     image_recipe_arn: 'imageRecipeArn',
    #     container_recipe_arn: 'containerRecipeArn',
    #     infrastructure_configuration_arn: 'infrastructureConfigurationArn', # required
    #     distribution_configuration_arn: 'distributionConfigurationArn',
    #     image_tests_configuration: {
    #       image_tests_enabled: false,
    #       timeout_minutes: 1
    #     },
    #     enhanced_image_metadata_enabled: false,
    #     schedule: {
    #       schedule_expression: 'scheduleExpression',
    #       timezone: 'timezone',
    #       pipeline_execution_start_condition: 'EXPRESSION_MATCH_ONLY' # accepts ["EXPRESSION_MATCH_ONLY", "EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE"]
    #     },
    #     status: 'DISABLED', # accepts ["DISABLED", "ENABLED"]
    #     tags: {
    #       'key' => 'value'
    #     },
    #     client_token: 'clientToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateImagePipelineOutput
    #   resp.data.request_id #=> String
    #   resp.data.client_token #=> String
    #   resp.data.image_pipeline_arn #=> String
    #
    def create_image_pipeline(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateImagePipelineInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateImagePipelineInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateImagePipeline
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CallRateLimitExceededException, Errors::ResourceAlreadyExistsException, Errors::InvalidRequestException, Errors::ServiceQuotaExceededException, Errors::ForbiddenException, Errors::IdempotentParameterMismatchException, Errors::ServiceUnavailableException, Errors::ClientException, Errors::ServiceException, Errors::ResourceInUseException]),
        data_parser: Parsers::CreateImagePipeline
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateImagePipeline,
        stubs: @stubs,
        params_class: Params::CreateImagePipelineOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_image_pipeline
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Creates a new image recipe. Image recipes define how images are configured, tested, and
    # 			assessed.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateImageRecipeInput}.
    #
    # @option params [String] :name
    #   <p> The name of the image recipe.</p>
    #
    # @option params [String] :description
    #   <p> The description of the image recipe.</p>
    #
    # @option params [String] :semantic_version
    #   <p>The semantic version of the image recipe. This version follows the semantic version syntax.</p>
    #   		       <note>
    #   			         <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>.
    #   	You can assign values for the first three, and can filter on all of them.</p>
    #   			         <p>
    #                  <b>Assignment:</b> For the first three nodes you can assign any positive integer value, including
    #   	zero, with an upper limit of 2^30-1, or 1073741823 for each node. Image Builder automatically assigns the
    #   	build number to the fourth node.</p>
    #   			         <p>
    #                  <b>Patterns:</b> You can use any numeric pattern that adheres to the assignment requirements for
    #   	the nodes that you can assign. For example, you might choose a software version pattern, such as 1.0.0, or
    #   	a date, such as 2021.01.01.</p>
    #   		       </note>
    #
    # @option params [Array<ComponentConfiguration>] :components
    #   <p>The components of the image recipe.</p>
    #
    # @option params [String] :parent_image
    #   <p>The base image of the image recipe. The value of the string can be the ARN of the base
    #   			image or an AMI ID. The format for the ARN follows this example:
    #   			<code>arn:aws:imagebuilder:us-west-2:aws:image/windows-server-2016-english-full-base-x86/x.x.x</code>.
    #   			You can provide the specific version that you want to use, or you can use a wildcard in
    #   			all of the fields. If you enter an AMI ID for the string value, you must have access to the AMI,
    #   			and the AMI must be in the same Region in which you are using Image Builder.</p>
    #
    # @option params [Array<InstanceBlockDeviceMapping>] :block_device_mappings
    #   <p>The block device mappings of the image recipe.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p> The tags of the image recipe.</p>
    #
    # @option params [String] :working_directory
    #   <p>The working directory used during build and test workflows.</p>
    #
    # @option params [AdditionalInstanceConfiguration] :additional_instance_configuration
    #   <p>Specify additional settings and launch scripts for your build instances.</p>
    #
    # @option params [String] :client_token
    #   <p>The idempotency token used to make this request idempotent.</p>
    #
    # @return [Types::CreateImageRecipeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_image_recipe(
    #     name: 'name', # required
    #     description: 'description',
    #     semantic_version: 'semanticVersion', # required
    #     components: [
    #       {
    #         component_arn: 'componentArn', # required
    #         parameters: [
    #           {
    #             name: 'name', # required
    #             value: [
    #               'member'
    #             ] # required
    #           }
    #         ]
    #       }
    #     ], # required
    #     parent_image: 'parentImage', # required
    #     block_device_mappings: [
    #       {
    #         device_name: 'deviceName',
    #         ebs: {
    #           encrypted: false,
    #           delete_on_termination: false,
    #           iops: 1,
    #           kms_key_id: 'kmsKeyId',
    #           snapshot_id: 'snapshotId',
    #           volume_size: 1,
    #           volume_type: 'standard', # accepts ["standard", "io1", "io2", "gp2", "gp3", "sc1", "st1"]
    #           throughput: 1
    #         },
    #         virtual_name: 'virtualName',
    #         no_device: 'noDevice'
    #       }
    #     ],
    #     tags: {
    #       'key' => 'value'
    #     },
    #     working_directory: 'workingDirectory',
    #     additional_instance_configuration: {
    #       systems_manager_agent: {
    #         uninstall_after_build: false
    #       },
    #       user_data_override: 'userDataOverride'
    #     },
    #     client_token: 'clientToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateImageRecipeOutput
    #   resp.data.request_id #=> String
    #   resp.data.client_token #=> String
    #   resp.data.image_recipe_arn #=> String
    #
    def create_image_recipe(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateImageRecipeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateImageRecipeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateImageRecipe
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CallRateLimitExceededException, Errors::ResourceAlreadyExistsException, Errors::InvalidRequestException, Errors::ServiceQuotaExceededException, Errors::ForbiddenException, Errors::IdempotentParameterMismatchException, Errors::ServiceUnavailableException, Errors::ClientException, Errors::InvalidVersionNumberException, Errors::ServiceException, Errors::ResourceInUseException]),
        data_parser: Parsers::CreateImageRecipe
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateImageRecipe,
        stubs: @stubs,
        params_class: Params::CreateImageRecipeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_image_recipe
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Creates a new infrastructure configuration. An infrastructure configuration defines the
    # 			environment in which your image will be built and tested.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateInfrastructureConfigurationInput}.
    #
    # @option params [String] :name
    #   <p>The name of the infrastructure configuration.</p>
    #
    # @option params [String] :description
    #   <p>The description of the infrastructure configuration.</p>
    #
    # @option params [Array<String>] :instance_types
    #   <p>The instance types of the infrastructure configuration. You can specify one or more
    #   			instance types to use for this build. The service will pick one of these instance types based
    #   			on availability.</p>
    #
    # @option params [String] :instance_profile_name
    #   <p>The instance profile to associate with the instance used to customize your Amazon EC2 AMI.</p>
    #
    # @option params [Array<String>] :security_group_ids
    #   <p>The security group IDs to associate with the instance used to customize your Amazon EC2 AMI.</p>
    #
    # @option params [String] :subnet_id
    #   <p>The subnet ID in which to place the instance used to customize your Amazon EC2 AMI.</p>
    #
    # @option params [Logging] :logging
    #   <p>The logging configuration of the infrastructure configuration.</p>
    #
    # @option params [String] :key_pair
    #   <p>The key pair of the infrastructure configuration. You can use this to log on to and debug
    #   			the instance used to create your image.</p>
    #
    # @option params [Boolean] :terminate_instance_on_failure
    #   <p>The terminate instance on failure setting of the infrastructure configuration. Set to
    #   			false if you want Image Builder to retain the instance used to configure your AMI if the build
    #   			or test phase of your workflow fails.</p>
    #
    # @option params [String] :sns_topic_arn
    #   <p>The Amazon Resource Name (ARN) for the SNS topic to which we send image build event notifications.</p>
    #   		       <note>
    #   			         <p>EC2 Image Builder is unable to send notifications to SNS topics that are encrypted using keys
    #   				from other accounts. The key that is used to encrypt the SNS topic must reside in the
    #   				account that the Image Builder service runs under.</p>
    #   		       </note>
    #
    # @option params [Hash<String, String>] :resource_tags
    #   <p>The tags attached to the resource created by Image Builder.</p>
    #
    # @option params [InstanceMetadataOptions] :instance_metadata_options
    #   <p>The instance metadata options that you can set for the HTTP requests that
    #   			pipeline builds use to launch EC2 build and test instances.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags of the infrastructure configuration.</p>
    #
    # @option params [String] :client_token
    #   <p>The idempotency token used to make this request idempotent.</p>
    #
    # @return [Types::CreateInfrastructureConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_infrastructure_configuration(
    #     name: 'name', # required
    #     description: 'description',
    #     instance_types: [
    #       'member'
    #     ],
    #     instance_profile_name: 'instanceProfileName', # required
    #     security_group_ids: [
    #       'member'
    #     ],
    #     subnet_id: 'subnetId',
    #     logging: {
    #       s3_logs: {
    #         s3_bucket_name: 's3BucketName',
    #         s3_key_prefix: 's3KeyPrefix'
    #       }
    #     },
    #     key_pair: 'keyPair',
    #     terminate_instance_on_failure: false,
    #     sns_topic_arn: 'snsTopicArn',
    #     resource_tags: {
    #       'key' => 'value'
    #     },
    #     instance_metadata_options: {
    #       http_tokens: 'httpTokens',
    #       http_put_response_hop_limit: 1
    #     },
    #     tags: {
    #       'key' => 'value'
    #     },
    #     client_token: 'clientToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateInfrastructureConfigurationOutput
    #   resp.data.request_id #=> String
    #   resp.data.client_token #=> String
    #   resp.data.infrastructure_configuration_arn #=> String
    #
    def create_infrastructure_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateInfrastructureConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateInfrastructureConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateInfrastructureConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CallRateLimitExceededException, Errors::ResourceAlreadyExistsException, Errors::InvalidRequestException, Errors::ServiceQuotaExceededException, Errors::ForbiddenException, Errors::IdempotentParameterMismatchException, Errors::ServiceUnavailableException, Errors::ClientException, Errors::ServiceException, Errors::ResourceInUseException]),
        data_parser: Parsers::CreateInfrastructureConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateInfrastructureConfiguration,
        stubs: @stubs,
        params_class: Params::CreateInfrastructureConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_infrastructure_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Deletes a component build version.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteComponentInput}.
    #
    # @option params [String] :component_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the component build version to delete.</p>
    #
    # @return [Types::DeleteComponentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_component(
    #     component_build_version_arn: 'componentBuildVersionArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteComponentOutput
    #   resp.data.request_id #=> String
    #   resp.data.component_build_version_arn #=> String
    #
    def delete_component(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteComponentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteComponentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteComponent
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CallRateLimitExceededException, Errors::InvalidRequestException, Errors::ForbiddenException, Errors::ServiceUnavailableException, Errors::ClientException, Errors::ResourceDependencyException, Errors::ServiceException]),
        data_parser: Parsers::DeleteComponent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteComponent,
        stubs: @stubs,
        params_class: Params::DeleteComponentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_component
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a container recipe.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteContainerRecipeInput}.
    #
    # @option params [String] :container_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the container recipe to delete.</p>
    #
    # @return [Types::DeleteContainerRecipeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_container_recipe(
    #     container_recipe_arn: 'containerRecipeArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteContainerRecipeOutput
    #   resp.data.request_id #=> String
    #   resp.data.container_recipe_arn #=> String
    #
    def delete_container_recipe(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteContainerRecipeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteContainerRecipeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteContainerRecipe
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CallRateLimitExceededException, Errors::InvalidRequestException, Errors::ForbiddenException, Errors::ServiceUnavailableException, Errors::ClientException, Errors::ResourceDependencyException, Errors::ServiceException]),
        data_parser: Parsers::DeleteContainerRecipe
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteContainerRecipe,
        stubs: @stubs,
        params_class: Params::DeleteContainerRecipeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_container_recipe
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Deletes a distribution configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDistributionConfigurationInput}.
    #
    # @option params [String] :distribution_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the distribution configuration to delete.</p>
    #
    # @return [Types::DeleteDistributionConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_distribution_configuration(
    #     distribution_configuration_arn: 'distributionConfigurationArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDistributionConfigurationOutput
    #   resp.data.request_id #=> String
    #   resp.data.distribution_configuration_arn #=> String
    #
    def delete_distribution_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDistributionConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDistributionConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDistributionConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CallRateLimitExceededException, Errors::InvalidRequestException, Errors::ForbiddenException, Errors::ServiceUnavailableException, Errors::ClientException, Errors::ResourceDependencyException, Errors::ServiceException]),
        data_parser: Parsers::DeleteDistributionConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDistributionConfiguration,
        stubs: @stubs,
        params_class: Params::DeleteDistributionConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_distribution_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an Image Builder image resource. This does not delete any EC2 AMIs or ECR container images
    # 			that are created during the image build process. You must clean those up separately,
    # 			using the appropriate Amazon EC2 or Amazon ECR console actions, or API or CLI commands.</p>
    # 		       <ul>
    #             <li>
    # 				           <p>To deregister an EC2 Linux AMI, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/deregister-ami.html">Deregister
    # 						your Linux AMI</a> in the <i>
    #                      <i>Amazon EC2 User Guide</i>
    #                   </i>.</p>
    # 			         </li>
    #             <li>
    # 				           <p>To deregister an EC2 Windows AMI, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/deregister-ami.html">Deregister
    # 						your Windows AMI</a> in the <i>
    #                      <i>Amazon EC2 Windows Guide</i>
    #                   </i>.</p>
    # 			         </li>
    #             <li>
    # 				           <p>To delete a container image from Amazon ECR, see <a href="https://docs.aws.amazon.com/AmazonECR/latest/userguide/delete_image.html">Deleting
    # 						an image</a> in the <i>Amazon ECR User Guide</i>.</p>
    # 			         </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DeleteImageInput}.
    #
    # @option params [String] :image_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the Image Builder image resource to delete.</p>
    #
    # @return [Types::DeleteImageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_image(
    #     image_build_version_arn: 'imageBuildVersionArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteImageOutput
    #   resp.data.request_id #=> String
    #   resp.data.image_build_version_arn #=> String
    #
    def delete_image(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteImageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteImageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteImage
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CallRateLimitExceededException, Errors::InvalidRequestException, Errors::ForbiddenException, Errors::ServiceUnavailableException, Errors::ClientException, Errors::ResourceDependencyException, Errors::ServiceException]),
        data_parser: Parsers::DeleteImage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteImage,
        stubs: @stubs,
        params_class: Params::DeleteImageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_image
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Deletes an image pipeline.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteImagePipelineInput}.
    #
    # @option params [String] :image_pipeline_arn
    #   <p>The Amazon Resource Name (ARN) of the image pipeline to delete.</p>
    #
    # @return [Types::DeleteImagePipelineOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_image_pipeline(
    #     image_pipeline_arn: 'imagePipelineArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteImagePipelineOutput
    #   resp.data.request_id #=> String
    #   resp.data.image_pipeline_arn #=> String
    #
    def delete_image_pipeline(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteImagePipelineInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteImagePipelineInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteImagePipeline
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CallRateLimitExceededException, Errors::InvalidRequestException, Errors::ForbiddenException, Errors::ServiceUnavailableException, Errors::ClientException, Errors::ResourceDependencyException, Errors::ServiceException]),
        data_parser: Parsers::DeleteImagePipeline
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteImagePipeline,
        stubs: @stubs,
        params_class: Params::DeleteImagePipelineOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_image_pipeline
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Deletes an image recipe.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteImageRecipeInput}.
    #
    # @option params [String] :image_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the image recipe to delete.</p>
    #
    # @return [Types::DeleteImageRecipeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_image_recipe(
    #     image_recipe_arn: 'imageRecipeArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteImageRecipeOutput
    #   resp.data.request_id #=> String
    #   resp.data.image_recipe_arn #=> String
    #
    def delete_image_recipe(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteImageRecipeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteImageRecipeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteImageRecipe
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CallRateLimitExceededException, Errors::InvalidRequestException, Errors::ForbiddenException, Errors::ServiceUnavailableException, Errors::ClientException, Errors::ResourceDependencyException, Errors::ServiceException]),
        data_parser: Parsers::DeleteImageRecipe
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteImageRecipe,
        stubs: @stubs,
        params_class: Params::DeleteImageRecipeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_image_recipe
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Deletes an infrastructure configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteInfrastructureConfigurationInput}.
    #
    # @option params [String] :infrastructure_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the infrastructure configuration to delete.</p>
    #
    # @return [Types::DeleteInfrastructureConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_infrastructure_configuration(
    #     infrastructure_configuration_arn: 'infrastructureConfigurationArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteInfrastructureConfigurationOutput
    #   resp.data.request_id #=> String
    #   resp.data.infrastructure_configuration_arn #=> String
    #
    def delete_infrastructure_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteInfrastructureConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteInfrastructureConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteInfrastructureConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CallRateLimitExceededException, Errors::InvalidRequestException, Errors::ForbiddenException, Errors::ServiceUnavailableException, Errors::ClientException, Errors::ResourceDependencyException, Errors::ServiceException]),
        data_parser: Parsers::DeleteInfrastructureConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteInfrastructureConfiguration,
        stubs: @stubs,
        params_class: Params::DeleteInfrastructureConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_infrastructure_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Gets a component object.</p>
    #
    # @param [Hash] params
    #   See {Types::GetComponentInput}.
    #
    # @option params [String] :component_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the component that you want to retrieve. Regex requires
    #   			"/\d+$" suffix.</p>
    #
    # @return [Types::GetComponentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_component(
    #     component_build_version_arn: 'componentBuildVersionArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetComponentOutput
    #   resp.data.request_id #=> String
    #   resp.data.component #=> Types::Component
    #   resp.data.component.arn #=> String
    #   resp.data.component.name #=> String
    #   resp.data.component.version #=> String
    #   resp.data.component.description #=> String
    #   resp.data.component.change_description #=> String
    #   resp.data.component.type #=> String, one of ["BUILD", "TEST"]
    #   resp.data.component.platform #=> String, one of ["Windows", "Linux"]
    #   resp.data.component.supported_os_versions #=> Array<String>
    #   resp.data.component.supported_os_versions[0] #=> String
    #   resp.data.component.state #=> Types::ComponentState
    #   resp.data.component.state.status #=> String, one of ["DEPRECATED"]
    #   resp.data.component.state.reason #=> String
    #   resp.data.component.parameters #=> Array<ComponentParameterDetail>
    #   resp.data.component.parameters[0] #=> Types::ComponentParameterDetail
    #   resp.data.component.parameters[0].name #=> String
    #   resp.data.component.parameters[0].type #=> String
    #   resp.data.component.parameters[0].default_value #=> Array<String>
    #   resp.data.component.parameters[0].default_value[0] #=> String
    #   resp.data.component.parameters[0].description #=> String
    #   resp.data.component.owner #=> String
    #   resp.data.component.data #=> String
    #   resp.data.component.kms_key_id #=> String
    #   resp.data.component.encrypted #=> Boolean
    #   resp.data.component.date_created #=> String
    #   resp.data.component.tags #=> Hash<String, String>
    #   resp.data.component.tags['key'] #=> String
    #
    def get_component(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetComponentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetComponentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetComponent
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CallRateLimitExceededException, Errors::InvalidRequestException, Errors::ForbiddenException, Errors::ServiceUnavailableException, Errors::ClientException, Errors::ServiceException]),
        data_parser: Parsers::GetComponent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetComponent,
        stubs: @stubs,
        params_class: Params::GetComponentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_component
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Gets a component policy.</p>
    #
    # @param [Hash] params
    #   See {Types::GetComponentPolicyInput}.
    #
    # @option params [String] :component_arn
    #   <p>The Amazon Resource Name (ARN) of the component whose policy you want to retrieve.</p>
    #
    # @return [Types::GetComponentPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_component_policy(
    #     component_arn: 'componentArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetComponentPolicyOutput
    #   resp.data.request_id #=> String
    #   resp.data.policy #=> String
    #
    def get_component_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetComponentPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetComponentPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetComponentPolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CallRateLimitExceededException, Errors::InvalidRequestException, Errors::ForbiddenException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException, Errors::ServiceException]),
        data_parser: Parsers::GetComponentPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetComponentPolicy,
        stubs: @stubs,
        params_class: Params::GetComponentPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_component_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a container recipe.</p>
    #
    # @param [Hash] params
    #   See {Types::GetContainerRecipeInput}.
    #
    # @option params [String] :container_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the container recipe to retrieve.</p>
    #
    # @return [Types::GetContainerRecipeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_container_recipe(
    #     container_recipe_arn: 'containerRecipeArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetContainerRecipeOutput
    #   resp.data.request_id #=> String
    #   resp.data.container_recipe #=> Types::ContainerRecipe
    #   resp.data.container_recipe.arn #=> String
    #   resp.data.container_recipe.container_type #=> String, one of ["DOCKER"]
    #   resp.data.container_recipe.name #=> String
    #   resp.data.container_recipe.description #=> String
    #   resp.data.container_recipe.platform #=> String, one of ["Windows", "Linux"]
    #   resp.data.container_recipe.owner #=> String
    #   resp.data.container_recipe.version #=> String
    #   resp.data.container_recipe.components #=> Array<ComponentConfiguration>
    #   resp.data.container_recipe.components[0] #=> Types::ComponentConfiguration
    #   resp.data.container_recipe.components[0].component_arn #=> String
    #   resp.data.container_recipe.components[0].parameters #=> Array<ComponentParameter>
    #   resp.data.container_recipe.components[0].parameters[0] #=> Types::ComponentParameter
    #   resp.data.container_recipe.components[0].parameters[0].name #=> String
    #   resp.data.container_recipe.components[0].parameters[0].value #=> Array<String>
    #   resp.data.container_recipe.components[0].parameters[0].value[0] #=> String
    #   resp.data.container_recipe.instance_configuration #=> Types::InstanceConfiguration
    #   resp.data.container_recipe.instance_configuration.image #=> String
    #   resp.data.container_recipe.instance_configuration.block_device_mappings #=> Array<InstanceBlockDeviceMapping>
    #   resp.data.container_recipe.instance_configuration.block_device_mappings[0] #=> Types::InstanceBlockDeviceMapping
    #   resp.data.container_recipe.instance_configuration.block_device_mappings[0].device_name #=> String
    #   resp.data.container_recipe.instance_configuration.block_device_mappings[0].ebs #=> Types::EbsInstanceBlockDeviceSpecification
    #   resp.data.container_recipe.instance_configuration.block_device_mappings[0].ebs.encrypted #=> Boolean
    #   resp.data.container_recipe.instance_configuration.block_device_mappings[0].ebs.delete_on_termination #=> Boolean
    #   resp.data.container_recipe.instance_configuration.block_device_mappings[0].ebs.iops #=> Integer
    #   resp.data.container_recipe.instance_configuration.block_device_mappings[0].ebs.kms_key_id #=> String
    #   resp.data.container_recipe.instance_configuration.block_device_mappings[0].ebs.snapshot_id #=> String
    #   resp.data.container_recipe.instance_configuration.block_device_mappings[0].ebs.volume_size #=> Integer
    #   resp.data.container_recipe.instance_configuration.block_device_mappings[0].ebs.volume_type #=> String, one of ["standard", "io1", "io2", "gp2", "gp3", "sc1", "st1"]
    #   resp.data.container_recipe.instance_configuration.block_device_mappings[0].ebs.throughput #=> Integer
    #   resp.data.container_recipe.instance_configuration.block_device_mappings[0].virtual_name #=> String
    #   resp.data.container_recipe.instance_configuration.block_device_mappings[0].no_device #=> String
    #   resp.data.container_recipe.dockerfile_template_data #=> String
    #   resp.data.container_recipe.kms_key_id #=> String
    #   resp.data.container_recipe.encrypted #=> Boolean
    #   resp.data.container_recipe.parent_image #=> String
    #   resp.data.container_recipe.date_created #=> String
    #   resp.data.container_recipe.tags #=> Hash<String, String>
    #   resp.data.container_recipe.tags['key'] #=> String
    #   resp.data.container_recipe.working_directory #=> String
    #   resp.data.container_recipe.target_repository #=> Types::TargetContainerRepository
    #   resp.data.container_recipe.target_repository.service #=> String, one of ["ECR"]
    #   resp.data.container_recipe.target_repository.repository_name #=> String
    #
    def get_container_recipe(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetContainerRecipeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetContainerRecipeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetContainerRecipe
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CallRateLimitExceededException, Errors::InvalidRequestException, Errors::ForbiddenException, Errors::ServiceUnavailableException, Errors::ClientException, Errors::ServiceException]),
        data_parser: Parsers::GetContainerRecipe
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetContainerRecipe,
        stubs: @stubs,
        params_class: Params::GetContainerRecipeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_container_recipe
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the policy for a container recipe.</p>
    #
    # @param [Hash] params
    #   See {Types::GetContainerRecipePolicyInput}.
    #
    # @option params [String] :container_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the container recipe for the policy being requested.</p>
    #
    # @return [Types::GetContainerRecipePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_container_recipe_policy(
    #     container_recipe_arn: 'containerRecipeArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetContainerRecipePolicyOutput
    #   resp.data.request_id #=> String
    #   resp.data.policy #=> String
    #
    def get_container_recipe_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetContainerRecipePolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetContainerRecipePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetContainerRecipePolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CallRateLimitExceededException, Errors::InvalidRequestException, Errors::ForbiddenException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException, Errors::ServiceException]),
        data_parser: Parsers::GetContainerRecipePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetContainerRecipePolicy,
        stubs: @stubs,
        params_class: Params::GetContainerRecipePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_container_recipe_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Gets a distribution configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDistributionConfigurationInput}.
    #
    # @option params [String] :distribution_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the distribution configuration that you want to
    #   			retrieve.</p>
    #
    # @return [Types::GetDistributionConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_distribution_configuration(
    #     distribution_configuration_arn: 'distributionConfigurationArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDistributionConfigurationOutput
    #   resp.data.request_id #=> String
    #   resp.data.distribution_configuration #=> Types::DistributionConfiguration
    #   resp.data.distribution_configuration.arn #=> String
    #   resp.data.distribution_configuration.name #=> String
    #   resp.data.distribution_configuration.description #=> String
    #   resp.data.distribution_configuration.distributions #=> Array<Distribution>
    #   resp.data.distribution_configuration.distributions[0] #=> Types::Distribution
    #   resp.data.distribution_configuration.distributions[0].region #=> String
    #   resp.data.distribution_configuration.distributions[0].ami_distribution_configuration #=> Types::AmiDistributionConfiguration
    #   resp.data.distribution_configuration.distributions[0].ami_distribution_configuration.name #=> String
    #   resp.data.distribution_configuration.distributions[0].ami_distribution_configuration.description #=> String
    #   resp.data.distribution_configuration.distributions[0].ami_distribution_configuration.target_account_ids #=> Array<String>
    #   resp.data.distribution_configuration.distributions[0].ami_distribution_configuration.target_account_ids[0] #=> String
    #   resp.data.distribution_configuration.distributions[0].ami_distribution_configuration.ami_tags #=> Hash<String, String>
    #   resp.data.distribution_configuration.distributions[0].ami_distribution_configuration.ami_tags['key'] #=> String
    #   resp.data.distribution_configuration.distributions[0].ami_distribution_configuration.kms_key_id #=> String
    #   resp.data.distribution_configuration.distributions[0].ami_distribution_configuration.launch_permission #=> Types::LaunchPermissionConfiguration
    #   resp.data.distribution_configuration.distributions[0].ami_distribution_configuration.launch_permission.user_ids #=> Array<String>
    #   resp.data.distribution_configuration.distributions[0].ami_distribution_configuration.launch_permission.user_groups #=> Array<String>
    #   resp.data.distribution_configuration.distributions[0].ami_distribution_configuration.launch_permission.user_groups[0] #=> String
    #   resp.data.distribution_configuration.distributions[0].ami_distribution_configuration.launch_permission.organization_arns #=> Array<String>
    #   resp.data.distribution_configuration.distributions[0].ami_distribution_configuration.launch_permission.organization_arns[0] #=> String
    #   resp.data.distribution_configuration.distributions[0].ami_distribution_configuration.launch_permission.organizational_unit_arns #=> Array<String>
    #   resp.data.distribution_configuration.distributions[0].ami_distribution_configuration.launch_permission.organizational_unit_arns[0] #=> String
    #   resp.data.distribution_configuration.distributions[0].container_distribution_configuration #=> Types::ContainerDistributionConfiguration
    #   resp.data.distribution_configuration.distributions[0].container_distribution_configuration.description #=> String
    #   resp.data.distribution_configuration.distributions[0].container_distribution_configuration.container_tags #=> Array<String>
    #   resp.data.distribution_configuration.distributions[0].container_distribution_configuration.target_repository #=> Types::TargetContainerRepository
    #   resp.data.distribution_configuration.distributions[0].container_distribution_configuration.target_repository.service #=> String, one of ["ECR"]
    #   resp.data.distribution_configuration.distributions[0].container_distribution_configuration.target_repository.repository_name #=> String
    #   resp.data.distribution_configuration.distributions[0].license_configuration_arns #=> Array<String>
    #   resp.data.distribution_configuration.distributions[0].license_configuration_arns[0] #=> String
    #   resp.data.distribution_configuration.distributions[0].launch_template_configurations #=> Array<LaunchTemplateConfiguration>
    #   resp.data.distribution_configuration.distributions[0].launch_template_configurations[0] #=> Types::LaunchTemplateConfiguration
    #   resp.data.distribution_configuration.distributions[0].launch_template_configurations[0].launch_template_id #=> String
    #   resp.data.distribution_configuration.distributions[0].launch_template_configurations[0].account_id #=> String
    #   resp.data.distribution_configuration.distributions[0].launch_template_configurations[0].set_default_version #=> Boolean
    #   resp.data.distribution_configuration.distributions[0].s3_export_configuration #=> Types::S3ExportConfiguration
    #   resp.data.distribution_configuration.distributions[0].s3_export_configuration.role_name #=> String
    #   resp.data.distribution_configuration.distributions[0].s3_export_configuration.disk_image_format #=> String, one of ["VMDK", "RAW", "VHD"]
    #   resp.data.distribution_configuration.distributions[0].s3_export_configuration.s3_bucket #=> String
    #   resp.data.distribution_configuration.distributions[0].s3_export_configuration.s3_prefix #=> String
    #   resp.data.distribution_configuration.distributions[0].fast_launch_configurations #=> Array<FastLaunchConfiguration>
    #   resp.data.distribution_configuration.distributions[0].fast_launch_configurations[0] #=> Types::FastLaunchConfiguration
    #   resp.data.distribution_configuration.distributions[0].fast_launch_configurations[0].enabled #=> Boolean
    #   resp.data.distribution_configuration.distributions[0].fast_launch_configurations[0].snapshot_configuration #=> Types::FastLaunchSnapshotConfiguration
    #   resp.data.distribution_configuration.distributions[0].fast_launch_configurations[0].snapshot_configuration.target_resource_count #=> Integer
    #   resp.data.distribution_configuration.distributions[0].fast_launch_configurations[0].max_parallel_launches #=> Integer
    #   resp.data.distribution_configuration.distributions[0].fast_launch_configurations[0].launch_template #=> Types::FastLaunchLaunchTemplateSpecification
    #   resp.data.distribution_configuration.distributions[0].fast_launch_configurations[0].launch_template.launch_template_id #=> String
    #   resp.data.distribution_configuration.distributions[0].fast_launch_configurations[0].launch_template.launch_template_name #=> String
    #   resp.data.distribution_configuration.distributions[0].fast_launch_configurations[0].launch_template.launch_template_version #=> String
    #   resp.data.distribution_configuration.distributions[0].fast_launch_configurations[0].account_id #=> String
    #   resp.data.distribution_configuration.timeout_minutes #=> Integer
    #   resp.data.distribution_configuration.date_created #=> String
    #   resp.data.distribution_configuration.date_updated #=> String
    #   resp.data.distribution_configuration.tags #=> Hash<String, String>
    #
    def get_distribution_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDistributionConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDistributionConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDistributionConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CallRateLimitExceededException, Errors::InvalidRequestException, Errors::ForbiddenException, Errors::ServiceUnavailableException, Errors::ClientException, Errors::ServiceException]),
        data_parser: Parsers::GetDistributionConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDistributionConfiguration,
        stubs: @stubs,
        params_class: Params::GetDistributionConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_distribution_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Gets an image.</p>
    #
    # @param [Hash] params
    #   See {Types::GetImageInput}.
    #
    # @option params [String] :image_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the image that you want to retrieve.</p>
    #
    # @return [Types::GetImageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_image(
    #     image_build_version_arn: 'imageBuildVersionArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetImageOutput
    #   resp.data.request_id #=> String
    #   resp.data.image #=> Types::Image
    #   resp.data.image.arn #=> String
    #   resp.data.image.type #=> String, one of ["AMI", "DOCKER"]
    #   resp.data.image.name #=> String
    #   resp.data.image.version #=> String
    #   resp.data.image.platform #=> String, one of ["Windows", "Linux"]
    #   resp.data.image.enhanced_image_metadata_enabled #=> Boolean
    #   resp.data.image.os_version #=> String
    #   resp.data.image.state #=> Types::ImageState
    #   resp.data.image.state.status #=> String, one of ["PENDING", "CREATING", "BUILDING", "TESTING", "DISTRIBUTING", "INTEGRATING", "AVAILABLE", "CANCELLED", "FAILED", "DEPRECATED", "DELETED"]
    #   resp.data.image.state.reason #=> String
    #   resp.data.image.image_recipe #=> Types::ImageRecipe
    #   resp.data.image.image_recipe.arn #=> String
    #   resp.data.image.image_recipe.type #=> String, one of ["AMI", "DOCKER"]
    #   resp.data.image.image_recipe.name #=> String
    #   resp.data.image.image_recipe.description #=> String
    #   resp.data.image.image_recipe.platform #=> String, one of ["Windows", "Linux"]
    #   resp.data.image.image_recipe.owner #=> String
    #   resp.data.image.image_recipe.version #=> String
    #   resp.data.image.image_recipe.components #=> Array<ComponentConfiguration>
    #   resp.data.image.image_recipe.components[0] #=> Types::ComponentConfiguration
    #   resp.data.image.image_recipe.components[0].component_arn #=> String
    #   resp.data.image.image_recipe.components[0].parameters #=> Array<ComponentParameter>
    #   resp.data.image.image_recipe.components[0].parameters[0] #=> Types::ComponentParameter
    #   resp.data.image.image_recipe.components[0].parameters[0].name #=> String
    #   resp.data.image.image_recipe.components[0].parameters[0].value #=> Array<String>
    #   resp.data.image.image_recipe.components[0].parameters[0].value[0] #=> String
    #   resp.data.image.image_recipe.parent_image #=> String
    #   resp.data.image.image_recipe.block_device_mappings #=> Array<InstanceBlockDeviceMapping>
    #   resp.data.image.image_recipe.block_device_mappings[0] #=> Types::InstanceBlockDeviceMapping
    #   resp.data.image.image_recipe.block_device_mappings[0].device_name #=> String
    #   resp.data.image.image_recipe.block_device_mappings[0].ebs #=> Types::EbsInstanceBlockDeviceSpecification
    #   resp.data.image.image_recipe.block_device_mappings[0].ebs.encrypted #=> Boolean
    #   resp.data.image.image_recipe.block_device_mappings[0].ebs.delete_on_termination #=> Boolean
    #   resp.data.image.image_recipe.block_device_mappings[0].ebs.iops #=> Integer
    #   resp.data.image.image_recipe.block_device_mappings[0].ebs.kms_key_id #=> String
    #   resp.data.image.image_recipe.block_device_mappings[0].ebs.snapshot_id #=> String
    #   resp.data.image.image_recipe.block_device_mappings[0].ebs.volume_size #=> Integer
    #   resp.data.image.image_recipe.block_device_mappings[0].ebs.volume_type #=> String, one of ["standard", "io1", "io2", "gp2", "gp3", "sc1", "st1"]
    #   resp.data.image.image_recipe.block_device_mappings[0].ebs.throughput #=> Integer
    #   resp.data.image.image_recipe.block_device_mappings[0].virtual_name #=> String
    #   resp.data.image.image_recipe.block_device_mappings[0].no_device #=> String
    #   resp.data.image.image_recipe.date_created #=> String
    #   resp.data.image.image_recipe.tags #=> Hash<String, String>
    #   resp.data.image.image_recipe.tags['key'] #=> String
    #   resp.data.image.image_recipe.working_directory #=> String
    #   resp.data.image.image_recipe.additional_instance_configuration #=> Types::AdditionalInstanceConfiguration
    #   resp.data.image.image_recipe.additional_instance_configuration.systems_manager_agent #=> Types::SystemsManagerAgent
    #   resp.data.image.image_recipe.additional_instance_configuration.systems_manager_agent.uninstall_after_build #=> Boolean
    #   resp.data.image.image_recipe.additional_instance_configuration.user_data_override #=> String
    #   resp.data.image.container_recipe #=> Types::ContainerRecipe
    #   resp.data.image.container_recipe.arn #=> String
    #   resp.data.image.container_recipe.container_type #=> String, one of ["DOCKER"]
    #   resp.data.image.container_recipe.name #=> String
    #   resp.data.image.container_recipe.description #=> String
    #   resp.data.image.container_recipe.platform #=> String, one of ["Windows", "Linux"]
    #   resp.data.image.container_recipe.owner #=> String
    #   resp.data.image.container_recipe.version #=> String
    #   resp.data.image.container_recipe.components #=> Array<ComponentConfiguration>
    #   resp.data.image.container_recipe.instance_configuration #=> Types::InstanceConfiguration
    #   resp.data.image.container_recipe.instance_configuration.image #=> String
    #   resp.data.image.container_recipe.instance_configuration.block_device_mappings #=> Array<InstanceBlockDeviceMapping>
    #   resp.data.image.container_recipe.dockerfile_template_data #=> String
    #   resp.data.image.container_recipe.kms_key_id #=> String
    #   resp.data.image.container_recipe.encrypted #=> Boolean
    #   resp.data.image.container_recipe.parent_image #=> String
    #   resp.data.image.container_recipe.date_created #=> String
    #   resp.data.image.container_recipe.tags #=> Hash<String, String>
    #   resp.data.image.container_recipe.working_directory #=> String
    #   resp.data.image.container_recipe.target_repository #=> Types::TargetContainerRepository
    #   resp.data.image.container_recipe.target_repository.service #=> String, one of ["ECR"]
    #   resp.data.image.container_recipe.target_repository.repository_name #=> String
    #   resp.data.image.source_pipeline_name #=> String
    #   resp.data.image.source_pipeline_arn #=> String
    #   resp.data.image.infrastructure_configuration #=> Types::InfrastructureConfiguration
    #   resp.data.image.infrastructure_configuration.arn #=> String
    #   resp.data.image.infrastructure_configuration.name #=> String
    #   resp.data.image.infrastructure_configuration.description #=> String
    #   resp.data.image.infrastructure_configuration.instance_types #=> Array<String>
    #   resp.data.image.infrastructure_configuration.instance_types[0] #=> String
    #   resp.data.image.infrastructure_configuration.instance_profile_name #=> String
    #   resp.data.image.infrastructure_configuration.security_group_ids #=> Array<String>
    #   resp.data.image.infrastructure_configuration.security_group_ids[0] #=> String
    #   resp.data.image.infrastructure_configuration.subnet_id #=> String
    #   resp.data.image.infrastructure_configuration.logging #=> Types::Logging
    #   resp.data.image.infrastructure_configuration.logging.s3_logs #=> Types::S3Logs
    #   resp.data.image.infrastructure_configuration.logging.s3_logs.s3_bucket_name #=> String
    #   resp.data.image.infrastructure_configuration.logging.s3_logs.s3_key_prefix #=> String
    #   resp.data.image.infrastructure_configuration.key_pair #=> String
    #   resp.data.image.infrastructure_configuration.terminate_instance_on_failure #=> Boolean
    #   resp.data.image.infrastructure_configuration.sns_topic_arn #=> String
    #   resp.data.image.infrastructure_configuration.date_created #=> String
    #   resp.data.image.infrastructure_configuration.date_updated #=> String
    #   resp.data.image.infrastructure_configuration.resource_tags #=> Hash<String, String>
    #   resp.data.image.infrastructure_configuration.resource_tags['key'] #=> String
    #   resp.data.image.infrastructure_configuration.instance_metadata_options #=> Types::InstanceMetadataOptions
    #   resp.data.image.infrastructure_configuration.instance_metadata_options.http_tokens #=> String
    #   resp.data.image.infrastructure_configuration.instance_metadata_options.http_put_response_hop_limit #=> Integer
    #   resp.data.image.infrastructure_configuration.tags #=> Hash<String, String>
    #   resp.data.image.distribution_configuration #=> Types::DistributionConfiguration
    #   resp.data.image.distribution_configuration.arn #=> String
    #   resp.data.image.distribution_configuration.name #=> String
    #   resp.data.image.distribution_configuration.description #=> String
    #   resp.data.image.distribution_configuration.distributions #=> Array<Distribution>
    #   resp.data.image.distribution_configuration.distributions[0] #=> Types::Distribution
    #   resp.data.image.distribution_configuration.distributions[0].region #=> String
    #   resp.data.image.distribution_configuration.distributions[0].ami_distribution_configuration #=> Types::AmiDistributionConfiguration
    #   resp.data.image.distribution_configuration.distributions[0].ami_distribution_configuration.name #=> String
    #   resp.data.image.distribution_configuration.distributions[0].ami_distribution_configuration.description #=> String
    #   resp.data.image.distribution_configuration.distributions[0].ami_distribution_configuration.target_account_ids #=> Array<String>
    #   resp.data.image.distribution_configuration.distributions[0].ami_distribution_configuration.target_account_ids[0] #=> String
    #   resp.data.image.distribution_configuration.distributions[0].ami_distribution_configuration.ami_tags #=> Hash<String, String>
    #   resp.data.image.distribution_configuration.distributions[0].ami_distribution_configuration.kms_key_id #=> String
    #   resp.data.image.distribution_configuration.distributions[0].ami_distribution_configuration.launch_permission #=> Types::LaunchPermissionConfiguration
    #   resp.data.image.distribution_configuration.distributions[0].ami_distribution_configuration.launch_permission.user_ids #=> Array<String>
    #   resp.data.image.distribution_configuration.distributions[0].ami_distribution_configuration.launch_permission.user_groups #=> Array<String>
    #   resp.data.image.distribution_configuration.distributions[0].ami_distribution_configuration.launch_permission.user_groups[0] #=> String
    #   resp.data.image.distribution_configuration.distributions[0].ami_distribution_configuration.launch_permission.organization_arns #=> Array<String>
    #   resp.data.image.distribution_configuration.distributions[0].ami_distribution_configuration.launch_permission.organization_arns[0] #=> String
    #   resp.data.image.distribution_configuration.distributions[0].ami_distribution_configuration.launch_permission.organizational_unit_arns #=> Array<String>
    #   resp.data.image.distribution_configuration.distributions[0].ami_distribution_configuration.launch_permission.organizational_unit_arns[0] #=> String
    #   resp.data.image.distribution_configuration.distributions[0].container_distribution_configuration #=> Types::ContainerDistributionConfiguration
    #   resp.data.image.distribution_configuration.distributions[0].container_distribution_configuration.description #=> String
    #   resp.data.image.distribution_configuration.distributions[0].container_distribution_configuration.container_tags #=> Array<String>
    #   resp.data.image.distribution_configuration.distributions[0].container_distribution_configuration.target_repository #=> Types::TargetContainerRepository
    #   resp.data.image.distribution_configuration.distributions[0].license_configuration_arns #=> Array<String>
    #   resp.data.image.distribution_configuration.distributions[0].license_configuration_arns[0] #=> String
    #   resp.data.image.distribution_configuration.distributions[0].launch_template_configurations #=> Array<LaunchTemplateConfiguration>
    #   resp.data.image.distribution_configuration.distributions[0].launch_template_configurations[0] #=> Types::LaunchTemplateConfiguration
    #   resp.data.image.distribution_configuration.distributions[0].launch_template_configurations[0].launch_template_id #=> String
    #   resp.data.image.distribution_configuration.distributions[0].launch_template_configurations[0].account_id #=> String
    #   resp.data.image.distribution_configuration.distributions[0].launch_template_configurations[0].set_default_version #=> Boolean
    #   resp.data.image.distribution_configuration.distributions[0].s3_export_configuration #=> Types::S3ExportConfiguration
    #   resp.data.image.distribution_configuration.distributions[0].s3_export_configuration.role_name #=> String
    #   resp.data.image.distribution_configuration.distributions[0].s3_export_configuration.disk_image_format #=> String, one of ["VMDK", "RAW", "VHD"]
    #   resp.data.image.distribution_configuration.distributions[0].s3_export_configuration.s3_bucket #=> String
    #   resp.data.image.distribution_configuration.distributions[0].s3_export_configuration.s3_prefix #=> String
    #   resp.data.image.distribution_configuration.distributions[0].fast_launch_configurations #=> Array<FastLaunchConfiguration>
    #   resp.data.image.distribution_configuration.distributions[0].fast_launch_configurations[0] #=> Types::FastLaunchConfiguration
    #   resp.data.image.distribution_configuration.distributions[0].fast_launch_configurations[0].enabled #=> Boolean
    #   resp.data.image.distribution_configuration.distributions[0].fast_launch_configurations[0].snapshot_configuration #=> Types::FastLaunchSnapshotConfiguration
    #   resp.data.image.distribution_configuration.distributions[0].fast_launch_configurations[0].snapshot_configuration.target_resource_count #=> Integer
    #   resp.data.image.distribution_configuration.distributions[0].fast_launch_configurations[0].max_parallel_launches #=> Integer
    #   resp.data.image.distribution_configuration.distributions[0].fast_launch_configurations[0].launch_template #=> Types::FastLaunchLaunchTemplateSpecification
    #   resp.data.image.distribution_configuration.distributions[0].fast_launch_configurations[0].launch_template.launch_template_id #=> String
    #   resp.data.image.distribution_configuration.distributions[0].fast_launch_configurations[0].launch_template.launch_template_name #=> String
    #   resp.data.image.distribution_configuration.distributions[0].fast_launch_configurations[0].launch_template.launch_template_version #=> String
    #   resp.data.image.distribution_configuration.distributions[0].fast_launch_configurations[0].account_id #=> String
    #   resp.data.image.distribution_configuration.timeout_minutes #=> Integer
    #   resp.data.image.distribution_configuration.date_created #=> String
    #   resp.data.image.distribution_configuration.date_updated #=> String
    #   resp.data.image.distribution_configuration.tags #=> Hash<String, String>
    #   resp.data.image.image_tests_configuration #=> Types::ImageTestsConfiguration
    #   resp.data.image.image_tests_configuration.image_tests_enabled #=> Boolean
    #   resp.data.image.image_tests_configuration.timeout_minutes #=> Integer
    #   resp.data.image.date_created #=> String
    #   resp.data.image.output_resources #=> Types::OutputResources
    #   resp.data.image.output_resources.amis #=> Array<Ami>
    #   resp.data.image.output_resources.amis[0] #=> Types::Ami
    #   resp.data.image.output_resources.amis[0].region #=> String
    #   resp.data.image.output_resources.amis[0].image #=> String
    #   resp.data.image.output_resources.amis[0].name #=> String
    #   resp.data.image.output_resources.amis[0].description #=> String
    #   resp.data.image.output_resources.amis[0].state #=> Types::ImageState
    #   resp.data.image.output_resources.amis[0].account_id #=> String
    #   resp.data.image.output_resources.containers #=> Array<Container>
    #   resp.data.image.output_resources.containers[0] #=> Types::Container
    #   resp.data.image.output_resources.containers[0].region #=> String
    #   resp.data.image.output_resources.containers[0].image_uris #=> Array<String>
    #   resp.data.image.tags #=> Hash<String, String>
    #   resp.data.image.build_type #=> String, one of ["USER_INITIATED", "SCHEDULED", "IMPORT"]
    #
    def get_image(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetImageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetImageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetImage
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CallRateLimitExceededException, Errors::InvalidRequestException, Errors::ForbiddenException, Errors::ServiceUnavailableException, Errors::ClientException, Errors::ServiceException]),
        data_parser: Parsers::GetImage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetImage,
        stubs: @stubs,
        params_class: Params::GetImageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_image
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Gets an image pipeline.</p>
    #
    # @param [Hash] params
    #   See {Types::GetImagePipelineInput}.
    #
    # @option params [String] :image_pipeline_arn
    #   <p>The Amazon Resource Name (ARN) of the image pipeline that you want to retrieve.</p>
    #
    # @return [Types::GetImagePipelineOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_image_pipeline(
    #     image_pipeline_arn: 'imagePipelineArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetImagePipelineOutput
    #   resp.data.request_id #=> String
    #   resp.data.image_pipeline #=> Types::ImagePipeline
    #   resp.data.image_pipeline.arn #=> String
    #   resp.data.image_pipeline.name #=> String
    #   resp.data.image_pipeline.description #=> String
    #   resp.data.image_pipeline.platform #=> String, one of ["Windows", "Linux"]
    #   resp.data.image_pipeline.enhanced_image_metadata_enabled #=> Boolean
    #   resp.data.image_pipeline.image_recipe_arn #=> String
    #   resp.data.image_pipeline.container_recipe_arn #=> String
    #   resp.data.image_pipeline.infrastructure_configuration_arn #=> String
    #   resp.data.image_pipeline.distribution_configuration_arn #=> String
    #   resp.data.image_pipeline.image_tests_configuration #=> Types::ImageTestsConfiguration
    #   resp.data.image_pipeline.image_tests_configuration.image_tests_enabled #=> Boolean
    #   resp.data.image_pipeline.image_tests_configuration.timeout_minutes #=> Integer
    #   resp.data.image_pipeline.schedule #=> Types::Schedule
    #   resp.data.image_pipeline.schedule.schedule_expression #=> String
    #   resp.data.image_pipeline.schedule.timezone #=> String
    #   resp.data.image_pipeline.schedule.pipeline_execution_start_condition #=> String, one of ["EXPRESSION_MATCH_ONLY", "EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE"]
    #   resp.data.image_pipeline.status #=> String, one of ["DISABLED", "ENABLED"]
    #   resp.data.image_pipeline.date_created #=> String
    #   resp.data.image_pipeline.date_updated #=> String
    #   resp.data.image_pipeline.date_last_run #=> String
    #   resp.data.image_pipeline.date_next_run #=> String
    #   resp.data.image_pipeline.tags #=> Hash<String, String>
    #   resp.data.image_pipeline.tags['key'] #=> String
    #
    def get_image_pipeline(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetImagePipelineInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetImagePipelineInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetImagePipeline
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CallRateLimitExceededException, Errors::InvalidRequestException, Errors::ForbiddenException, Errors::ServiceUnavailableException, Errors::ClientException, Errors::ServiceException]),
        data_parser: Parsers::GetImagePipeline
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetImagePipeline,
        stubs: @stubs,
        params_class: Params::GetImagePipelineOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_image_pipeline
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Gets an image policy.</p>
    #
    # @param [Hash] params
    #   See {Types::GetImagePolicyInput}.
    #
    # @option params [String] :image_arn
    #   <p>The Amazon Resource Name (ARN) of the image whose policy you want to retrieve.</p>
    #
    # @return [Types::GetImagePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_image_policy(
    #     image_arn: 'imageArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetImagePolicyOutput
    #   resp.data.request_id #=> String
    #   resp.data.policy #=> String
    #
    def get_image_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetImagePolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetImagePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetImagePolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CallRateLimitExceededException, Errors::InvalidRequestException, Errors::ForbiddenException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException, Errors::ServiceException]),
        data_parser: Parsers::GetImagePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetImagePolicy,
        stubs: @stubs,
        params_class: Params::GetImagePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_image_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Gets an image recipe.</p>
    #
    # @param [Hash] params
    #   See {Types::GetImageRecipeInput}.
    #
    # @option params [String] :image_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the image recipe that you want to retrieve.</p>
    #
    # @return [Types::GetImageRecipeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_image_recipe(
    #     image_recipe_arn: 'imageRecipeArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetImageRecipeOutput
    #   resp.data.request_id #=> String
    #   resp.data.image_recipe #=> Types::ImageRecipe
    #   resp.data.image_recipe.arn #=> String
    #   resp.data.image_recipe.type #=> String, one of ["AMI", "DOCKER"]
    #   resp.data.image_recipe.name #=> String
    #   resp.data.image_recipe.description #=> String
    #   resp.data.image_recipe.platform #=> String, one of ["Windows", "Linux"]
    #   resp.data.image_recipe.owner #=> String
    #   resp.data.image_recipe.version #=> String
    #   resp.data.image_recipe.components #=> Array<ComponentConfiguration>
    #   resp.data.image_recipe.components[0] #=> Types::ComponentConfiguration
    #   resp.data.image_recipe.components[0].component_arn #=> String
    #   resp.data.image_recipe.components[0].parameters #=> Array<ComponentParameter>
    #   resp.data.image_recipe.components[0].parameters[0] #=> Types::ComponentParameter
    #   resp.data.image_recipe.components[0].parameters[0].name #=> String
    #   resp.data.image_recipe.components[0].parameters[0].value #=> Array<String>
    #   resp.data.image_recipe.components[0].parameters[0].value[0] #=> String
    #   resp.data.image_recipe.parent_image #=> String
    #   resp.data.image_recipe.block_device_mappings #=> Array<InstanceBlockDeviceMapping>
    #   resp.data.image_recipe.block_device_mappings[0] #=> Types::InstanceBlockDeviceMapping
    #   resp.data.image_recipe.block_device_mappings[0].device_name #=> String
    #   resp.data.image_recipe.block_device_mappings[0].ebs #=> Types::EbsInstanceBlockDeviceSpecification
    #   resp.data.image_recipe.block_device_mappings[0].ebs.encrypted #=> Boolean
    #   resp.data.image_recipe.block_device_mappings[0].ebs.delete_on_termination #=> Boolean
    #   resp.data.image_recipe.block_device_mappings[0].ebs.iops #=> Integer
    #   resp.data.image_recipe.block_device_mappings[0].ebs.kms_key_id #=> String
    #   resp.data.image_recipe.block_device_mappings[0].ebs.snapshot_id #=> String
    #   resp.data.image_recipe.block_device_mappings[0].ebs.volume_size #=> Integer
    #   resp.data.image_recipe.block_device_mappings[0].ebs.volume_type #=> String, one of ["standard", "io1", "io2", "gp2", "gp3", "sc1", "st1"]
    #   resp.data.image_recipe.block_device_mappings[0].ebs.throughput #=> Integer
    #   resp.data.image_recipe.block_device_mappings[0].virtual_name #=> String
    #   resp.data.image_recipe.block_device_mappings[0].no_device #=> String
    #   resp.data.image_recipe.date_created #=> String
    #   resp.data.image_recipe.tags #=> Hash<String, String>
    #   resp.data.image_recipe.tags['key'] #=> String
    #   resp.data.image_recipe.working_directory #=> String
    #   resp.data.image_recipe.additional_instance_configuration #=> Types::AdditionalInstanceConfiguration
    #   resp.data.image_recipe.additional_instance_configuration.systems_manager_agent #=> Types::SystemsManagerAgent
    #   resp.data.image_recipe.additional_instance_configuration.systems_manager_agent.uninstall_after_build #=> Boolean
    #   resp.data.image_recipe.additional_instance_configuration.user_data_override #=> String
    #
    def get_image_recipe(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetImageRecipeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetImageRecipeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetImageRecipe
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CallRateLimitExceededException, Errors::InvalidRequestException, Errors::ForbiddenException, Errors::ServiceUnavailableException, Errors::ClientException, Errors::ServiceException]),
        data_parser: Parsers::GetImageRecipe
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetImageRecipe,
        stubs: @stubs,
        params_class: Params::GetImageRecipeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_image_recipe
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Gets an image recipe policy.</p>
    #
    # @param [Hash] params
    #   See {Types::GetImageRecipePolicyInput}.
    #
    # @option params [String] :image_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the image recipe whose policy you want to retrieve.</p>
    #
    # @return [Types::GetImageRecipePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_image_recipe_policy(
    #     image_recipe_arn: 'imageRecipeArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetImageRecipePolicyOutput
    #   resp.data.request_id #=> String
    #   resp.data.policy #=> String
    #
    def get_image_recipe_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetImageRecipePolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetImageRecipePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetImageRecipePolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CallRateLimitExceededException, Errors::InvalidRequestException, Errors::ForbiddenException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException, Errors::ServiceException]),
        data_parser: Parsers::GetImageRecipePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetImageRecipePolicy,
        stubs: @stubs,
        params_class: Params::GetImageRecipePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_image_recipe_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Gets an infrastructure configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::GetInfrastructureConfigurationInput}.
    #
    # @option params [String] :infrastructure_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the infrastructure configuration that you want to
    #   			retrieve.</p>
    #
    # @return [Types::GetInfrastructureConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_infrastructure_configuration(
    #     infrastructure_configuration_arn: 'infrastructureConfigurationArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetInfrastructureConfigurationOutput
    #   resp.data.request_id #=> String
    #   resp.data.infrastructure_configuration #=> Types::InfrastructureConfiguration
    #   resp.data.infrastructure_configuration.arn #=> String
    #   resp.data.infrastructure_configuration.name #=> String
    #   resp.data.infrastructure_configuration.description #=> String
    #   resp.data.infrastructure_configuration.instance_types #=> Array<String>
    #   resp.data.infrastructure_configuration.instance_types[0] #=> String
    #   resp.data.infrastructure_configuration.instance_profile_name #=> String
    #   resp.data.infrastructure_configuration.security_group_ids #=> Array<String>
    #   resp.data.infrastructure_configuration.security_group_ids[0] #=> String
    #   resp.data.infrastructure_configuration.subnet_id #=> String
    #   resp.data.infrastructure_configuration.logging #=> Types::Logging
    #   resp.data.infrastructure_configuration.logging.s3_logs #=> Types::S3Logs
    #   resp.data.infrastructure_configuration.logging.s3_logs.s3_bucket_name #=> String
    #   resp.data.infrastructure_configuration.logging.s3_logs.s3_key_prefix #=> String
    #   resp.data.infrastructure_configuration.key_pair #=> String
    #   resp.data.infrastructure_configuration.terminate_instance_on_failure #=> Boolean
    #   resp.data.infrastructure_configuration.sns_topic_arn #=> String
    #   resp.data.infrastructure_configuration.date_created #=> String
    #   resp.data.infrastructure_configuration.date_updated #=> String
    #   resp.data.infrastructure_configuration.resource_tags #=> Hash<String, String>
    #   resp.data.infrastructure_configuration.resource_tags['key'] #=> String
    #   resp.data.infrastructure_configuration.instance_metadata_options #=> Types::InstanceMetadataOptions
    #   resp.data.infrastructure_configuration.instance_metadata_options.http_tokens #=> String
    #   resp.data.infrastructure_configuration.instance_metadata_options.http_put_response_hop_limit #=> Integer
    #   resp.data.infrastructure_configuration.tags #=> Hash<String, String>
    #   resp.data.infrastructure_configuration.tags['key'] #=> String
    #
    def get_infrastructure_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetInfrastructureConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetInfrastructureConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetInfrastructureConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CallRateLimitExceededException, Errors::InvalidRequestException, Errors::ForbiddenException, Errors::ServiceUnavailableException, Errors::ClientException, Errors::ServiceException]),
        data_parser: Parsers::GetInfrastructureConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetInfrastructureConfiguration,
        stubs: @stubs,
        params_class: Params::GetInfrastructureConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_infrastructure_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Imports a component and transforms its data into a component document.</p>
    #
    # @param [Hash] params
    #   See {Types::ImportComponentInput}.
    #
    # @option params [String] :name
    #   <p> The name of the component.</p>
    #
    # @option params [String] :semantic_version
    #   <p>The semantic version of the component. This version follows the semantic version syntax.</p>
    #   		       <note>
    #   			         <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>.
    #   	You can assign values for the first three, and can filter on all of them.</p>
    #   			         <p>
    #                  <b>Filtering:</b> With semantic versioning, you have the flexibility to use wildcards (x)
    #   	to specify the most recent versions or nodes when selecting the base image or components for your
    #   	recipe. When you use a wildcard in any node, all nodes to the right of the first wildcard must also be
    #   	wildcards.</p>
    #   		       </note>
    #
    # @option params [String] :description
    #   <p>The description of the component. Describes the contents of the component.</p>
    #
    # @option params [String] :change_description
    #   <p>The change description of the component. Describes what change has been made in this
    #   			version, or what makes this version different from other versions of this component.</p>
    #
    # @option params [String] :type
    #   <p>The type of the component denotes whether the component is used to build the image, or only
    #   			to test it.</p>
    #
    # @option params [String] :format
    #   <p>The format of the resource that you want to import as a component.</p>
    #
    # @option params [String] :platform
    #   <p>The platform of the component.</p>
    #
    # @option params [String] :data
    #   <p>The data of the component. Used to specify the data inline. Either <code>data</code> or
    #   			<code>uri</code> can be used to specify the data within the component.</p>
    #
    # @option params [String] :uri
    #   <p>The uri of the component. Must be an Amazon S3 URL and the requester must have permission to
    #   			access the Amazon S3 bucket. If you use Amazon S3, you can specify component content up to your service
    #   			quota. Either <code>data</code> or <code>uri</code> can be used to specify the data within the
    #   			component.</p>
    #
    # @option params [String] :kms_key_id
    #   <p>The ID of the KMS key that should be used to encrypt this component.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags of the component.</p>
    #
    # @option params [String] :client_token
    #   <p>The idempotency token of the component.</p>
    #
    # @return [Types::ImportComponentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_component(
    #     name: 'name', # required
    #     semantic_version: 'semanticVersion', # required
    #     description: 'description',
    #     change_description: 'changeDescription',
    #     type: 'BUILD', # required - accepts ["BUILD", "TEST"]
    #     format: 'SHELL', # required - accepts ["SHELL"]
    #     platform: 'Windows', # required - accepts ["Windows", "Linux"]
    #     data: 'data',
    #     uri: 'uri',
    #     kms_key_id: 'kmsKeyId',
    #     tags: {
    #       'key' => 'value'
    #     },
    #     client_token: 'clientToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ImportComponentOutput
    #   resp.data.request_id #=> String
    #   resp.data.client_token #=> String
    #   resp.data.component_build_version_arn #=> String
    #
    def import_component(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ImportComponentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ImportComponentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ImportComponent
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CallRateLimitExceededException, Errors::InvalidRequestException, Errors::ForbiddenException, Errors::IdempotentParameterMismatchException, Errors::InvalidParameterCombinationException, Errors::ServiceUnavailableException, Errors::ClientException, Errors::InvalidVersionNumberException, Errors::ServiceException, Errors::ResourceInUseException]),
        data_parser: Parsers::ImportComponent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ImportComponent,
        stubs: @stubs,
        params_class: Params::ImportComponentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :import_component
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>When you export your virtual machine (VM) from its virtualization environment,
    # 			that process creates a set of one or more disk container files that act as
    # 			snapshots of your VM’s environment, settings, and data. The Amazon EC2 API
    # 			<a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportImage.html">ImportImage</a>
    # 			action uses those files to import your VM and create an AMI. To import using the
    # 			CLI command, see <a href="https://docs.aws.amazon.com/cli/latest/reference/ec2/import-image.html">import-image</a>
    # 		       </p>
    # 		       <p>You can reference the task ID from the VM import to pull in the AMI that
    # 			the import created as the base image for your Image Builder recipe.</p>
    #
    # @param [Hash] params
    #   See {Types::ImportVmImageInput}.
    #
    # @option params [String] :name
    #   <p>The name of the base image that is created by the import process.</p>
    #
    # @option params [String] :semantic_version
    #   <p>The semantic version to attach to the base image that was created during the
    #   			import process. This version follows the semantic version syntax.</p>
    #   		       <note>
    #   			         <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>.
    #   	You can assign values for the first three, and can filter on all of them.</p>
    #   			         <p>
    #                  <b>Assignment:</b> For the first three nodes you can assign any positive integer value, including
    #   	zero, with an upper limit of 2^30-1, or 1073741823 for each node. Image Builder automatically assigns the
    #   	build number to the fourth node.</p>
    #   			         <p>
    #                  <b>Patterns:</b> You can use any numeric pattern that adheres to the assignment requirements for
    #   	the nodes that you can assign. For example, you might choose a software version pattern, such as 1.0.0, or
    #   	a date, such as 2021.01.01.</p>
    #   		       </note>
    #
    # @option params [String] :description
    #   <p>The description for the base image that is created by the import process.</p>
    #
    # @option params [String] :platform
    #   <p>The operating system platform for the imported VM.</p>
    #
    # @option params [String] :os_version
    #   <p>The operating system version for the imported VM.</p>
    #
    # @option params [String] :vm_import_task_id
    #   <p>The <code>importTaskId</code> (API) or <code>ImportTaskId</code> (CLI) from the
    #   			Amazon EC2 VM import process. Image Builder retrieves information from the import process to pull
    #   			in the AMI that is created from the VM source as the base image for your recipe.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Tags that are attached to the import resources.</p>
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure
    #          idempotency of the request. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    #
    # @return [Types::ImportVmImageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_vm_image(
    #     name: 'name', # required
    #     semantic_version: 'semanticVersion', # required
    #     description: 'description',
    #     platform: 'Windows', # required - accepts ["Windows", "Linux"]
    #     os_version: 'osVersion',
    #     vm_import_task_id: 'vmImportTaskId', # required
    #     tags: {
    #       'key' => 'value'
    #     },
    #     client_token: 'clientToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ImportVmImageOutput
    #   resp.data.request_id #=> String
    #   resp.data.image_arn #=> String
    #   resp.data.client_token #=> String
    #
    def import_vm_image(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ImportVmImageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ImportVmImageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ImportVmImage
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableException, Errors::ClientException, Errors::ServiceException]),
        data_parser: Parsers::ImportVmImage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ImportVmImage,
        stubs: @stubs,
        params_class: Params::ImportVmImageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :import_vm_image
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns the list of component build versions for the specified semantic version.</p>
    # 		       <note>
    # 			         <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>.
    # 	You can assign values for the first three, and can filter on all of them.</p>
    # 			         <p>
    #                <b>Filtering:</b> With semantic versioning, you have the flexibility to use wildcards (x)
    # 	to specify the most recent versions or nodes when selecting the base image or components for your
    # 	recipe. When you use a wildcard in any node, all nodes to the right of the first wildcard must also be
    # 	wildcards.</p>
    # 		       </note>
    #
    # @param [Hash] params
    #   See {Types::ListComponentBuildVersionsInput}.
    #
    # @option params [String] :component_version_arn
    #   <p>The component version Amazon Resource Name (ARN) whose versions you want to list.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum items to return in a request.</p>
    #
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. This is the NextToken from a previously
    #   			truncated response.</p>
    #
    # @return [Types::ListComponentBuildVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_component_build_versions(
    #     component_version_arn: 'componentVersionArn', # required
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListComponentBuildVersionsOutput
    #   resp.data.request_id #=> String
    #   resp.data.component_summary_list #=> Array<ComponentSummary>
    #   resp.data.component_summary_list[0] #=> Types::ComponentSummary
    #   resp.data.component_summary_list[0].arn #=> String
    #   resp.data.component_summary_list[0].name #=> String
    #   resp.data.component_summary_list[0].version #=> String
    #   resp.data.component_summary_list[0].platform #=> String, one of ["Windows", "Linux"]
    #   resp.data.component_summary_list[0].supported_os_versions #=> Array<String>
    #   resp.data.component_summary_list[0].supported_os_versions[0] #=> String
    #   resp.data.component_summary_list[0].state #=> Types::ComponentState
    #   resp.data.component_summary_list[0].state.status #=> String, one of ["DEPRECATED"]
    #   resp.data.component_summary_list[0].state.reason #=> String
    #   resp.data.component_summary_list[0].type #=> String, one of ["BUILD", "TEST"]
    #   resp.data.component_summary_list[0].owner #=> String
    #   resp.data.component_summary_list[0].description #=> String
    #   resp.data.component_summary_list[0].change_description #=> String
    #   resp.data.component_summary_list[0].date_created #=> String
    #   resp.data.component_summary_list[0].tags #=> Hash<String, String>
    #   resp.data.component_summary_list[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_component_build_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListComponentBuildVersionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListComponentBuildVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListComponentBuildVersions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CallRateLimitExceededException, Errors::InvalidRequestException, Errors::InvalidPaginationTokenException, Errors::ForbiddenException, Errors::ServiceUnavailableException, Errors::ClientException, Errors::ServiceException]),
        data_parser: Parsers::ListComponentBuildVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListComponentBuildVersions,
        stubs: @stubs,
        params_class: Params::ListComponentBuildVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_component_build_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the list of component build versions for the specified semantic version.</p>
    # 		       <note>
    # 			         <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>.
    # 	You can assign values for the first three, and can filter on all of them.</p>
    # 			         <p>
    #                <b>Filtering:</b> With semantic versioning, you have the flexibility to use wildcards (x)
    # 	to specify the most recent versions or nodes when selecting the base image or components for your
    # 	recipe. When you use a wildcard in any node, all nodes to the right of the first wildcard must also be
    # 	wildcards.</p>
    # 		       </note>
    #
    # @param [Hash] params
    #   See {Types::ListComponentsInput}.
    #
    # @option params [String] :owner
    #   <p>The owner defines which components you want to list. By default, this request will only
    #   			show components owned by your account. You can use this field to specify if you want to view
    #   			components owned by yourself, by Amazon, or those components that have been shared with you by
    #   			other customers.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>Use the following filters to streamline results:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <code>description</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>name</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>platform</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>supportedOsVersion</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>type</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>version</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [Boolean] :by_name
    #   <p>Returns the list of component build versions for the specified name.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum items to return in a request.</p>
    #
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. This is the NextToken from a previously
    #   			truncated response.</p>
    #
    # @return [Types::ListComponentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_components(
    #     owner: 'Self', # accepts ["Self", "Shared", "Amazon"]
    #     filters: [
    #       {
    #         name: 'name',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     by_name: false,
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListComponentsOutput
    #   resp.data.request_id #=> String
    #   resp.data.component_version_list #=> Array<ComponentVersion>
    #   resp.data.component_version_list[0] #=> Types::ComponentVersion
    #   resp.data.component_version_list[0].arn #=> String
    #   resp.data.component_version_list[0].name #=> String
    #   resp.data.component_version_list[0].version #=> String
    #   resp.data.component_version_list[0].description #=> String
    #   resp.data.component_version_list[0].platform #=> String, one of ["Windows", "Linux"]
    #   resp.data.component_version_list[0].supported_os_versions #=> Array<String>
    #   resp.data.component_version_list[0].supported_os_versions[0] #=> String
    #   resp.data.component_version_list[0].type #=> String, one of ["BUILD", "TEST"]
    #   resp.data.component_version_list[0].owner #=> String
    #   resp.data.component_version_list[0].date_created #=> String
    #   resp.data.next_token #=> String
    #
    def list_components(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListComponentsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListComponentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListComponents
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CallRateLimitExceededException, Errors::InvalidRequestException, Errors::InvalidPaginationTokenException, Errors::ForbiddenException, Errors::ServiceUnavailableException, Errors::ClientException, Errors::ServiceException]),
        data_parser: Parsers::ListComponents
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListComponents,
        stubs: @stubs,
        params_class: Params::ListComponentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_components
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of container recipes.</p>
    #
    # @param [Hash] params
    #   See {Types::ListContainerRecipesInput}.
    #
    # @option params [String] :owner
    #   <p>Returns container recipes belonging to the specified owner, that have been shared with you. You can omit this field to return container recipes belonging to your account.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>Use the following filters to streamline results:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <code>containerType</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>name</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>parentImage</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>platform</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the list.</p>
    #
    # @option params [String] :next_token
    #   <p>Provides a token for pagination, which determines where to begin the next set of results when the current set reaches the maximum for one request.</p>
    #
    # @return [Types::ListContainerRecipesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_container_recipes(
    #     owner: 'Self', # accepts ["Self", "Shared", "Amazon"]
    #     filters: [
    #       {
    #         name: 'name',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListContainerRecipesOutput
    #   resp.data.request_id #=> String
    #   resp.data.container_recipe_summary_list #=> Array<ContainerRecipeSummary>
    #   resp.data.container_recipe_summary_list[0] #=> Types::ContainerRecipeSummary
    #   resp.data.container_recipe_summary_list[0].arn #=> String
    #   resp.data.container_recipe_summary_list[0].container_type #=> String, one of ["DOCKER"]
    #   resp.data.container_recipe_summary_list[0].name #=> String
    #   resp.data.container_recipe_summary_list[0].platform #=> String, one of ["Windows", "Linux"]
    #   resp.data.container_recipe_summary_list[0].owner #=> String
    #   resp.data.container_recipe_summary_list[0].parent_image #=> String
    #   resp.data.container_recipe_summary_list[0].date_created #=> String
    #   resp.data.container_recipe_summary_list[0].tags #=> Hash<String, String>
    #   resp.data.container_recipe_summary_list[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_container_recipes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListContainerRecipesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListContainerRecipesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListContainerRecipes
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CallRateLimitExceededException, Errors::InvalidRequestException, Errors::InvalidPaginationTokenException, Errors::ForbiddenException, Errors::ServiceUnavailableException, Errors::ClientException, Errors::ServiceException]),
        data_parser: Parsers::ListContainerRecipes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListContainerRecipes,
        stubs: @stubs,
        params_class: Params::ListContainerRecipesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_container_recipes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of distribution configurations.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDistributionConfigurationsInput}.
    #
    # @option params [Array<Filter>] :filters
    #   <p>You can filter on <code>name</code> to streamline results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum items to return in a request.</p>
    #
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. This is the NextToken from a previously
    #   			truncated response.</p>
    #
    # @return [Types::ListDistributionConfigurationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_distribution_configurations(
    #     filters: [
    #       {
    #         name: 'name',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDistributionConfigurationsOutput
    #   resp.data.request_id #=> String
    #   resp.data.distribution_configuration_summary_list #=> Array<DistributionConfigurationSummary>
    #   resp.data.distribution_configuration_summary_list[0] #=> Types::DistributionConfigurationSummary
    #   resp.data.distribution_configuration_summary_list[0].arn #=> String
    #   resp.data.distribution_configuration_summary_list[0].name #=> String
    #   resp.data.distribution_configuration_summary_list[0].description #=> String
    #   resp.data.distribution_configuration_summary_list[0].date_created #=> String
    #   resp.data.distribution_configuration_summary_list[0].date_updated #=> String
    #   resp.data.distribution_configuration_summary_list[0].tags #=> Hash<String, String>
    #   resp.data.distribution_configuration_summary_list[0].tags['key'] #=> String
    #   resp.data.distribution_configuration_summary_list[0].regions #=> Array<String>
    #   resp.data.distribution_configuration_summary_list[0].regions[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_distribution_configurations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDistributionConfigurationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDistributionConfigurationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDistributionConfigurations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CallRateLimitExceededException, Errors::InvalidRequestException, Errors::InvalidPaginationTokenException, Errors::ForbiddenException, Errors::ServiceUnavailableException, Errors::ClientException, Errors::ServiceException]),
        data_parser: Parsers::ListDistributionConfigurations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDistributionConfigurations,
        stubs: @stubs,
        params_class: Params::ListDistributionConfigurationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_distribution_configurations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns a list of image build versions.</p>
    #
    # @param [Hash] params
    #   See {Types::ListImageBuildVersionsInput}.
    #
    # @option params [String] :image_version_arn
    #   <p>The Amazon Resource Name (ARN) of the image whose build versions you want to retrieve.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>Use the following filters to streamline results:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <code>name</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>osVersion</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>platform</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>type</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>version</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum items to return in a request.</p>
    #
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. This is the NextToken from a previously
    #   			truncated response.</p>
    #
    # @return [Types::ListImageBuildVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_image_build_versions(
    #     image_version_arn: 'imageVersionArn', # required
    #     filters: [
    #       {
    #         name: 'name',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListImageBuildVersionsOutput
    #   resp.data.request_id #=> String
    #   resp.data.image_summary_list #=> Array<ImageSummary>
    #   resp.data.image_summary_list[0] #=> Types::ImageSummary
    #   resp.data.image_summary_list[0].arn #=> String
    #   resp.data.image_summary_list[0].name #=> String
    #   resp.data.image_summary_list[0].type #=> String, one of ["AMI", "DOCKER"]
    #   resp.data.image_summary_list[0].version #=> String
    #   resp.data.image_summary_list[0].platform #=> String, one of ["Windows", "Linux"]
    #   resp.data.image_summary_list[0].os_version #=> String
    #   resp.data.image_summary_list[0].state #=> Types::ImageState
    #   resp.data.image_summary_list[0].state.status #=> String, one of ["PENDING", "CREATING", "BUILDING", "TESTING", "DISTRIBUTING", "INTEGRATING", "AVAILABLE", "CANCELLED", "FAILED", "DEPRECATED", "DELETED"]
    #   resp.data.image_summary_list[0].state.reason #=> String
    #   resp.data.image_summary_list[0].owner #=> String
    #   resp.data.image_summary_list[0].date_created #=> String
    #   resp.data.image_summary_list[0].output_resources #=> Types::OutputResources
    #   resp.data.image_summary_list[0].output_resources.amis #=> Array<Ami>
    #   resp.data.image_summary_list[0].output_resources.amis[0] #=> Types::Ami
    #   resp.data.image_summary_list[0].output_resources.amis[0].region #=> String
    #   resp.data.image_summary_list[0].output_resources.amis[0].image #=> String
    #   resp.data.image_summary_list[0].output_resources.amis[0].name #=> String
    #   resp.data.image_summary_list[0].output_resources.amis[0].description #=> String
    #   resp.data.image_summary_list[0].output_resources.amis[0].state #=> Types::ImageState
    #   resp.data.image_summary_list[0].output_resources.amis[0].account_id #=> String
    #   resp.data.image_summary_list[0].output_resources.containers #=> Array<Container>
    #   resp.data.image_summary_list[0].output_resources.containers[0] #=> Types::Container
    #   resp.data.image_summary_list[0].output_resources.containers[0].region #=> String
    #   resp.data.image_summary_list[0].output_resources.containers[0].image_uris #=> Array<String>
    #   resp.data.image_summary_list[0].output_resources.containers[0].image_uris[0] #=> String
    #   resp.data.image_summary_list[0].tags #=> Hash<String, String>
    #   resp.data.image_summary_list[0].tags['key'] #=> String
    #   resp.data.image_summary_list[0].build_type #=> String, one of ["USER_INITIATED", "SCHEDULED", "IMPORT"]
    #   resp.data.next_token #=> String
    #
    def list_image_build_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListImageBuildVersionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListImageBuildVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListImageBuildVersions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CallRateLimitExceededException, Errors::InvalidRequestException, Errors::InvalidPaginationTokenException, Errors::ForbiddenException, Errors::ServiceUnavailableException, Errors::ClientException, Errors::ServiceException]),
        data_parser: Parsers::ListImageBuildVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListImageBuildVersions,
        stubs: @stubs,
        params_class: Params::ListImageBuildVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_image_build_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List the Packages that are associated with an Image Build Version, as determined by Amazon Web Services Systems Manager Inventory at build time.</p>
    #
    # @param [Hash] params
    #   See {Types::ListImagePackagesInput}.
    #
    # @option params [String] :image_build_version_arn
    #   <p>Filter results for the ListImagePackages request by the Image Build Version ARN</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maxiumum number of results to return from the ListImagePackages request.</p>
    #
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. This is the NextToken from a previously truncated response.</p>
    #
    # @return [Types::ListImagePackagesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_image_packages(
    #     image_build_version_arn: 'imageBuildVersionArn', # required
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListImagePackagesOutput
    #   resp.data.request_id #=> String
    #   resp.data.image_package_list #=> Array<ImagePackage>
    #   resp.data.image_package_list[0] #=> Types::ImagePackage
    #   resp.data.image_package_list[0].package_name #=> String
    #   resp.data.image_package_list[0].package_version #=> String
    #   resp.data.next_token #=> String
    #
    def list_image_packages(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListImagePackagesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListImagePackagesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListImagePackages
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CallRateLimitExceededException, Errors::InvalidRequestException, Errors::InvalidPaginationTokenException, Errors::ForbiddenException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException, Errors::ClientException, Errors::ServiceException]),
        data_parser: Parsers::ListImagePackages
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListImagePackages,
        stubs: @stubs,
        params_class: Params::ListImagePackagesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_image_packages
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns a list of images created by the specified pipeline.</p>
    #
    # @param [Hash] params
    #   See {Types::ListImagePipelineImagesInput}.
    #
    # @option params [String] :image_pipeline_arn
    #   <p>The Amazon Resource Name (ARN) of the image pipeline whose images you want to view.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>Use the following filters to streamline results:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <code>name</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>version</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum items to return in a request.</p>
    #
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. This is the NextToken from a previously
    #   			truncated response.</p>
    #
    # @return [Types::ListImagePipelineImagesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_image_pipeline_images(
    #     image_pipeline_arn: 'imagePipelineArn', # required
    #     filters: [
    #       {
    #         name: 'name',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListImagePipelineImagesOutput
    #   resp.data.request_id #=> String
    #   resp.data.image_summary_list #=> Array<ImageSummary>
    #   resp.data.image_summary_list[0] #=> Types::ImageSummary
    #   resp.data.image_summary_list[0].arn #=> String
    #   resp.data.image_summary_list[0].name #=> String
    #   resp.data.image_summary_list[0].type #=> String, one of ["AMI", "DOCKER"]
    #   resp.data.image_summary_list[0].version #=> String
    #   resp.data.image_summary_list[0].platform #=> String, one of ["Windows", "Linux"]
    #   resp.data.image_summary_list[0].os_version #=> String
    #   resp.data.image_summary_list[0].state #=> Types::ImageState
    #   resp.data.image_summary_list[0].state.status #=> String, one of ["PENDING", "CREATING", "BUILDING", "TESTING", "DISTRIBUTING", "INTEGRATING", "AVAILABLE", "CANCELLED", "FAILED", "DEPRECATED", "DELETED"]
    #   resp.data.image_summary_list[0].state.reason #=> String
    #   resp.data.image_summary_list[0].owner #=> String
    #   resp.data.image_summary_list[0].date_created #=> String
    #   resp.data.image_summary_list[0].output_resources #=> Types::OutputResources
    #   resp.data.image_summary_list[0].output_resources.amis #=> Array<Ami>
    #   resp.data.image_summary_list[0].output_resources.amis[0] #=> Types::Ami
    #   resp.data.image_summary_list[0].output_resources.amis[0].region #=> String
    #   resp.data.image_summary_list[0].output_resources.amis[0].image #=> String
    #   resp.data.image_summary_list[0].output_resources.amis[0].name #=> String
    #   resp.data.image_summary_list[0].output_resources.amis[0].description #=> String
    #   resp.data.image_summary_list[0].output_resources.amis[0].state #=> Types::ImageState
    #   resp.data.image_summary_list[0].output_resources.amis[0].account_id #=> String
    #   resp.data.image_summary_list[0].output_resources.containers #=> Array<Container>
    #   resp.data.image_summary_list[0].output_resources.containers[0] #=> Types::Container
    #   resp.data.image_summary_list[0].output_resources.containers[0].region #=> String
    #   resp.data.image_summary_list[0].output_resources.containers[0].image_uris #=> Array<String>
    #   resp.data.image_summary_list[0].output_resources.containers[0].image_uris[0] #=> String
    #   resp.data.image_summary_list[0].tags #=> Hash<String, String>
    #   resp.data.image_summary_list[0].tags['key'] #=> String
    #   resp.data.image_summary_list[0].build_type #=> String, one of ["USER_INITIATED", "SCHEDULED", "IMPORT"]
    #   resp.data.next_token #=> String
    #
    def list_image_pipeline_images(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListImagePipelineImagesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListImagePipelineImagesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListImagePipelineImages
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CallRateLimitExceededException, Errors::InvalidRequestException, Errors::InvalidPaginationTokenException, Errors::ForbiddenException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException, Errors::ClientException, Errors::ServiceException]),
        data_parser: Parsers::ListImagePipelineImages
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListImagePipelineImages,
        stubs: @stubs,
        params_class: Params::ListImagePipelineImagesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_image_pipeline_images
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of image pipelines.</p>
    #
    # @param [Hash] params
    #   See {Types::ListImagePipelinesInput}.
    #
    # @option params [Array<Filter>] :filters
    #   <p>Use the following filters to streamline results:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <code>description</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>distributionConfigurationArn</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>imageRecipeArn</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>infrastructureConfigurationArn</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>name</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>status</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum items to return in a request.</p>
    #
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. This is the NextToken from a previously
    #   			truncated response.</p>
    #
    # @return [Types::ListImagePipelinesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_image_pipelines(
    #     filters: [
    #       {
    #         name: 'name',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListImagePipelinesOutput
    #   resp.data.request_id #=> String
    #   resp.data.image_pipeline_list #=> Array<ImagePipeline>
    #   resp.data.image_pipeline_list[0] #=> Types::ImagePipeline
    #   resp.data.image_pipeline_list[0].arn #=> String
    #   resp.data.image_pipeline_list[0].name #=> String
    #   resp.data.image_pipeline_list[0].description #=> String
    #   resp.data.image_pipeline_list[0].platform #=> String, one of ["Windows", "Linux"]
    #   resp.data.image_pipeline_list[0].enhanced_image_metadata_enabled #=> Boolean
    #   resp.data.image_pipeline_list[0].image_recipe_arn #=> String
    #   resp.data.image_pipeline_list[0].container_recipe_arn #=> String
    #   resp.data.image_pipeline_list[0].infrastructure_configuration_arn #=> String
    #   resp.data.image_pipeline_list[0].distribution_configuration_arn #=> String
    #   resp.data.image_pipeline_list[0].image_tests_configuration #=> Types::ImageTestsConfiguration
    #   resp.data.image_pipeline_list[0].image_tests_configuration.image_tests_enabled #=> Boolean
    #   resp.data.image_pipeline_list[0].image_tests_configuration.timeout_minutes #=> Integer
    #   resp.data.image_pipeline_list[0].schedule #=> Types::Schedule
    #   resp.data.image_pipeline_list[0].schedule.schedule_expression #=> String
    #   resp.data.image_pipeline_list[0].schedule.timezone #=> String
    #   resp.data.image_pipeline_list[0].schedule.pipeline_execution_start_condition #=> String, one of ["EXPRESSION_MATCH_ONLY", "EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE"]
    #   resp.data.image_pipeline_list[0].status #=> String, one of ["DISABLED", "ENABLED"]
    #   resp.data.image_pipeline_list[0].date_created #=> String
    #   resp.data.image_pipeline_list[0].date_updated #=> String
    #   resp.data.image_pipeline_list[0].date_last_run #=> String
    #   resp.data.image_pipeline_list[0].date_next_run #=> String
    #   resp.data.image_pipeline_list[0].tags #=> Hash<String, String>
    #   resp.data.image_pipeline_list[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_image_pipelines(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListImagePipelinesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListImagePipelinesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListImagePipelines
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CallRateLimitExceededException, Errors::InvalidRequestException, Errors::InvalidPaginationTokenException, Errors::ForbiddenException, Errors::ServiceUnavailableException, Errors::ClientException, Errors::ServiceException]),
        data_parser: Parsers::ListImagePipelines
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListImagePipelines,
        stubs: @stubs,
        params_class: Params::ListImagePipelinesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_image_pipelines
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns a list of image recipes.</p>
    #
    # @param [Hash] params
    #   See {Types::ListImageRecipesInput}.
    #
    # @option params [String] :owner
    #   <p>The owner defines which image recipes you want to list. By default, this request will only
    #   			show image recipes owned by your account. You can use this field to specify if you want to
    #   			view image recipes owned by yourself, by Amazon, or those image recipes that have been shared
    #   			with you by other customers.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>Use the following filters to streamline results:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <code>name</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>parentImage</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>platform</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum items to return in a request.</p>
    #
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. This is the NextToken from a previously
    #   			truncated response.</p>
    #
    # @return [Types::ListImageRecipesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_image_recipes(
    #     owner: 'Self', # accepts ["Self", "Shared", "Amazon"]
    #     filters: [
    #       {
    #         name: 'name',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListImageRecipesOutput
    #   resp.data.request_id #=> String
    #   resp.data.image_recipe_summary_list #=> Array<ImageRecipeSummary>
    #   resp.data.image_recipe_summary_list[0] #=> Types::ImageRecipeSummary
    #   resp.data.image_recipe_summary_list[0].arn #=> String
    #   resp.data.image_recipe_summary_list[0].name #=> String
    #   resp.data.image_recipe_summary_list[0].platform #=> String, one of ["Windows", "Linux"]
    #   resp.data.image_recipe_summary_list[0].owner #=> String
    #   resp.data.image_recipe_summary_list[0].parent_image #=> String
    #   resp.data.image_recipe_summary_list[0].date_created #=> String
    #   resp.data.image_recipe_summary_list[0].tags #=> Hash<String, String>
    #   resp.data.image_recipe_summary_list[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_image_recipes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListImageRecipesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListImageRecipesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListImageRecipes
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CallRateLimitExceededException, Errors::InvalidRequestException, Errors::InvalidPaginationTokenException, Errors::ForbiddenException, Errors::ServiceUnavailableException, Errors::ClientException, Errors::ServiceException]),
        data_parser: Parsers::ListImageRecipes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListImageRecipes,
        stubs: @stubs,
        params_class: Params::ListImageRecipesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_image_recipes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns the list of images that you have access to.</p>
    #
    # @param [Hash] params
    #   See {Types::ListImagesInput}.
    #
    # @option params [String] :owner
    #   <p>The owner defines which images you want to list. By default, this request will only show
    #   			images owned by your account. You can use this field to specify if you want to view images
    #   			owned by yourself, by Amazon, or those images that have been shared with you by other
    #   			customers.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>Use the following filters to streamline results:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <code>name</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>osVersion</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>platform</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>type</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>version</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [Boolean] :by_name
    #   <p>Requests a list of images with a specific recipe name.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum items to return in a request.</p>
    #
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. This is the NextToken from a previously
    #   			truncated response.</p>
    #
    # @option params [Boolean] :include_deprecated
    #   <p>Includes deprecated images in the response list.</p>
    #
    # @return [Types::ListImagesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_images(
    #     owner: 'Self', # accepts ["Self", "Shared", "Amazon"]
    #     filters: [
    #       {
    #         name: 'name',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     by_name: false,
    #     max_results: 1,
    #     next_token: 'nextToken',
    #     include_deprecated: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListImagesOutput
    #   resp.data.request_id #=> String
    #   resp.data.image_version_list #=> Array<ImageVersion>
    #   resp.data.image_version_list[0] #=> Types::ImageVersion
    #   resp.data.image_version_list[0].arn #=> String
    #   resp.data.image_version_list[0].name #=> String
    #   resp.data.image_version_list[0].type #=> String, one of ["AMI", "DOCKER"]
    #   resp.data.image_version_list[0].version #=> String
    #   resp.data.image_version_list[0].platform #=> String, one of ["Windows", "Linux"]
    #   resp.data.image_version_list[0].os_version #=> String
    #   resp.data.image_version_list[0].owner #=> String
    #   resp.data.image_version_list[0].date_created #=> String
    #   resp.data.image_version_list[0].build_type #=> String, one of ["USER_INITIATED", "SCHEDULED", "IMPORT"]
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CallRateLimitExceededException, Errors::InvalidRequestException, Errors::InvalidPaginationTokenException, Errors::ForbiddenException, Errors::ServiceUnavailableException, Errors::ClientException, Errors::ServiceException]),
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

    # <p> Returns a list of infrastructure configurations.</p>
    #
    # @param [Hash] params
    #   See {Types::ListInfrastructureConfigurationsInput}.
    #
    # @option params [Array<Filter>] :filters
    #   <p>You can filter on <code>name</code> to streamline results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum items to return in a request.</p>
    #
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. This is the NextToken from a previously
    #   			truncated response.</p>
    #
    # @return [Types::ListInfrastructureConfigurationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_infrastructure_configurations(
    #     filters: [
    #       {
    #         name: 'name',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListInfrastructureConfigurationsOutput
    #   resp.data.request_id #=> String
    #   resp.data.infrastructure_configuration_summary_list #=> Array<InfrastructureConfigurationSummary>
    #   resp.data.infrastructure_configuration_summary_list[0] #=> Types::InfrastructureConfigurationSummary
    #   resp.data.infrastructure_configuration_summary_list[0].arn #=> String
    #   resp.data.infrastructure_configuration_summary_list[0].name #=> String
    #   resp.data.infrastructure_configuration_summary_list[0].description #=> String
    #   resp.data.infrastructure_configuration_summary_list[0].date_created #=> String
    #   resp.data.infrastructure_configuration_summary_list[0].date_updated #=> String
    #   resp.data.infrastructure_configuration_summary_list[0].resource_tags #=> Hash<String, String>
    #   resp.data.infrastructure_configuration_summary_list[0].resource_tags['key'] #=> String
    #   resp.data.infrastructure_configuration_summary_list[0].tags #=> Hash<String, String>
    #   resp.data.infrastructure_configuration_summary_list[0].tags['key'] #=> String
    #   resp.data.infrastructure_configuration_summary_list[0].instance_types #=> Array<String>
    #   resp.data.infrastructure_configuration_summary_list[0].instance_types[0] #=> String
    #   resp.data.infrastructure_configuration_summary_list[0].instance_profile_name #=> String
    #   resp.data.next_token #=> String
    #
    def list_infrastructure_configurations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListInfrastructureConfigurationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListInfrastructureConfigurationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListInfrastructureConfigurations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CallRateLimitExceededException, Errors::InvalidRequestException, Errors::InvalidPaginationTokenException, Errors::ForbiddenException, Errors::ServiceUnavailableException, Errors::ClientException, Errors::ServiceException]),
        data_parser: Parsers::ListInfrastructureConfigurations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListInfrastructureConfigurations,
        stubs: @stubs,
        params_class: Params::ListInfrastructureConfigurationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_infrastructure_configurations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns the list of tags for the specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource whose tags you want to retrieve.</p>
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
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::ServiceException]),
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

    # <p> Applies a policy to a component. We recommend that you call the RAM API <a href="https://docs.aws.amazon.com/ram/latest/APIReference/API_CreateResourceShare.html">CreateResourceShare</a> to share resources. If you call the Image Builder API
    # 			<code>PutComponentPolicy</code>, you must also call the RAM API <a href="https://docs.aws.amazon.com/ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html">PromoteResourceShareCreatedFromPolicy</a> in order for the resource to be visible to
    # 			all principals with whom the resource is shared.</p>
    #
    # @param [Hash] params
    #   See {Types::PutComponentPolicyInput}.
    #
    # @option params [String] :component_arn
    #   <p>The Amazon Resource Name (ARN) of the component that this policy should be applied to.</p>
    #
    # @option params [String] :policy
    #   <p>The policy to apply.</p>
    #
    # @return [Types::PutComponentPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_component_policy(
    #     component_arn: 'componentArn', # required
    #     policy: 'policy' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutComponentPolicyOutput
    #   resp.data.request_id #=> String
    #   resp.data.component_arn #=> String
    #
    def put_component_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutComponentPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutComponentPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutComponentPolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CallRateLimitExceededException, Errors::InvalidRequestException, Errors::ForbiddenException, Errors::InvalidParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException, Errors::ClientException, Errors::ServiceException]),
        data_parser: Parsers::PutComponentPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutComponentPolicy,
        stubs: @stubs,
        params_class: Params::PutComponentPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_component_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Applies a policy to a container image. We recommend that you call the RAM API CreateResourceShare (https://docs.aws.amazon.com//ram/latest/APIReference/API_CreateResourceShare.html) to share resources. If you call the Image Builder API <code>PutContainerImagePolicy</code>, you must also call the RAM API PromoteResourceShareCreatedFromPolicy (https://docs.aws.amazon.com//ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html) in order for the resource to be visible to all principals with whom the resource is shared.</p>
    #
    # @param [Hash] params
    #   See {Types::PutContainerRecipePolicyInput}.
    #
    # @option params [String] :container_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the container recipe that this policy should be applied to.</p>
    #
    # @option params [String] :policy
    #   <p>The policy to apply to the container recipe.</p>
    #
    # @return [Types::PutContainerRecipePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_container_recipe_policy(
    #     container_recipe_arn: 'containerRecipeArn', # required
    #     policy: 'policy' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutContainerRecipePolicyOutput
    #   resp.data.request_id #=> String
    #   resp.data.container_recipe_arn #=> String
    #
    def put_container_recipe_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutContainerRecipePolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutContainerRecipePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutContainerRecipePolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CallRateLimitExceededException, Errors::InvalidRequestException, Errors::ForbiddenException, Errors::InvalidParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException, Errors::ClientException, Errors::ServiceException]),
        data_parser: Parsers::PutContainerRecipePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutContainerRecipePolicy,
        stubs: @stubs,
        params_class: Params::PutContainerRecipePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_container_recipe_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Applies a policy to an image. We recommend that you call the RAM API <a href="https://docs.aws.amazon.com/ram/latest/APIReference/API_CreateResourceShare.html">CreateResourceShare</a> to share resources. If you call the Image Builder API
    # 			<code>PutImagePolicy</code>, you must also call the RAM API <a href="https://docs.aws.amazon.com/ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html">PromoteResourceShareCreatedFromPolicy</a> in order for the resource to be visible to
    # 			all principals with whom the resource is shared.</p>
    #
    # @param [Hash] params
    #   See {Types::PutImagePolicyInput}.
    #
    # @option params [String] :image_arn
    #   <p>The Amazon Resource Name (ARN) of the image that this policy should be applied to.</p>
    #
    # @option params [String] :policy
    #   <p>The policy to apply.</p>
    #
    # @return [Types::PutImagePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_image_policy(
    #     image_arn: 'imageArn', # required
    #     policy: 'policy' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutImagePolicyOutput
    #   resp.data.request_id #=> String
    #   resp.data.image_arn #=> String
    #
    def put_image_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutImagePolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutImagePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutImagePolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CallRateLimitExceededException, Errors::InvalidRequestException, Errors::ForbiddenException, Errors::InvalidParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException, Errors::ClientException, Errors::ServiceException]),
        data_parser: Parsers::PutImagePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutImagePolicy,
        stubs: @stubs,
        params_class: Params::PutImagePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_image_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Applies a policy to an image recipe. We recommend that you call the RAM API <a href="https://docs.aws.amazon.com/ram/latest/APIReference/API_CreateResourceShare.html">CreateResourceShare</a> to share resources. If you call the Image Builder API
    # 			<code>PutImageRecipePolicy</code>, you must also call the RAM API <a href="https://docs.aws.amazon.com/ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html">PromoteResourceShareCreatedFromPolicy</a> in order for the resource to be visible to
    # 			all principals with whom the resource is shared.</p>
    #
    # @param [Hash] params
    #   See {Types::PutImageRecipePolicyInput}.
    #
    # @option params [String] :image_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the image recipe that this policy should be applied to.</p>
    #
    # @option params [String] :policy
    #   <p>The policy to apply.</p>
    #
    # @return [Types::PutImageRecipePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_image_recipe_policy(
    #     image_recipe_arn: 'imageRecipeArn', # required
    #     policy: 'policy' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutImageRecipePolicyOutput
    #   resp.data.request_id #=> String
    #   resp.data.image_recipe_arn #=> String
    #
    def put_image_recipe_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutImageRecipePolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutImageRecipePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutImageRecipePolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CallRateLimitExceededException, Errors::InvalidRequestException, Errors::ForbiddenException, Errors::InvalidParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException, Errors::ClientException, Errors::ServiceException]),
        data_parser: Parsers::PutImageRecipePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutImageRecipePolicy,
        stubs: @stubs,
        params_class: Params::PutImageRecipePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_image_recipe_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Manually triggers a pipeline to create an image.</p>
    #
    # @param [Hash] params
    #   See {Types::StartImagePipelineExecutionInput}.
    #
    # @option params [String] :image_pipeline_arn
    #   <p>The Amazon Resource Name (ARN) of the image pipeline that you want to manually invoke.</p>
    #
    # @option params [String] :client_token
    #   <p>The idempotency token used to make this request idempotent.</p>
    #
    # @return [Types::StartImagePipelineExecutionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_image_pipeline_execution(
    #     image_pipeline_arn: 'imagePipelineArn', # required
    #     client_token: 'clientToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartImagePipelineExecutionOutput
    #   resp.data.request_id #=> String
    #   resp.data.client_token #=> String
    #   resp.data.image_build_version_arn #=> String
    #
    def start_image_pipeline_execution(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartImagePipelineExecutionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartImagePipelineExecutionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartImagePipelineExecution
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CallRateLimitExceededException, Errors::InvalidRequestException, Errors::ForbiddenException, Errors::ResourceNotFoundException, Errors::IdempotentParameterMismatchException, Errors::ServiceUnavailableException, Errors::ClientException, Errors::ServiceException, Errors::ResourceInUseException]),
        data_parser: Parsers::StartImagePipelineExecution
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartImagePipelineExecution,
        stubs: @stubs,
        params_class: Params::StartImagePipelineExecutionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_image_pipeline_execution
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Adds a tag to a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to tag.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to apply to the resource.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'resourceArn', # required
    #     tags: {
    #       'key' => 'value'
    #     } # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::ServiceException]),
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

    # <p> Removes a tag from a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to untag.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys to remove from the resource.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::ServiceException]),
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

    # <p> Updates a new distribution configuration. Distribution configurations define and
    # 			configure the outputs of your pipeline.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDistributionConfigurationInput}.
    #
    # @option params [String] :distribution_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the distribution configuration that you want to update.</p>
    #
    # @option params [String] :description
    #   <p>The description of the distribution configuration.</p>
    #
    # @option params [Array<Distribution>] :distributions
    #   <p>The distributions of the distribution configuration.</p>
    #
    # @option params [String] :client_token
    #   <p>The idempotency token of the distribution configuration.</p>
    #
    # @return [Types::UpdateDistributionConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_distribution_configuration(
    #     distribution_configuration_arn: 'distributionConfigurationArn', # required
    #     description: 'description',
    #     distributions: [
    #       {
    #         region: 'region', # required
    #         ami_distribution_configuration: {
    #           name: 'name',
    #           description: 'description',
    #           target_account_ids: [
    #             'member'
    #           ],
    #           ami_tags: {
    #             'key' => 'value'
    #           },
    #           kms_key_id: 'kmsKeyId',
    #           launch_permission: {
    #             user_groups: [
    #               'member'
    #             ],
    #             organization_arns: [
    #               'member'
    #             ],
    #             organizational_unit_arns: [
    #               'member'
    #             ]
    #           }
    #         },
    #         container_distribution_configuration: {
    #           description: 'description',
    #           target_repository: {
    #             service: 'ECR', # required - accepts ["ECR"]
    #             repository_name: 'repositoryName' # required
    #           } # required
    #         },
    #         license_configuration_arns: [
    #           'member'
    #         ],
    #         launch_template_configurations: [
    #           {
    #             launch_template_id: 'launchTemplateId', # required
    #             account_id: 'accountId',
    #             set_default_version: false
    #           }
    #         ],
    #         s3_export_configuration: {
    #           role_name: 'roleName', # required
    #           disk_image_format: 'VMDK', # required - accepts ["VMDK", "RAW", "VHD"]
    #           s3_bucket: 's3Bucket', # required
    #           s3_prefix: 's3Prefix'
    #         },
    #         fast_launch_configurations: [
    #           {
    #             enabled: false, # required
    #             snapshot_configuration: {
    #               target_resource_count: 1
    #             },
    #             max_parallel_launches: 1,
    #             launch_template: {
    #               launch_template_id: 'launchTemplateId',
    #               launch_template_name: 'launchTemplateName',
    #               launch_template_version: 'launchTemplateVersion'
    #             },
    #             account_id: 'accountId'
    #           }
    #         ]
    #       }
    #     ], # required
    #     client_token: 'clientToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDistributionConfigurationOutput
    #   resp.data.request_id #=> String
    #   resp.data.client_token #=> String
    #   resp.data.distribution_configuration_arn #=> String
    #
    def update_distribution_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDistributionConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDistributionConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDistributionConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CallRateLimitExceededException, Errors::InvalidRequestException, Errors::ForbiddenException, Errors::IdempotentParameterMismatchException, Errors::InvalidParameterCombinationException, Errors::ServiceUnavailableException, Errors::ClientException, Errors::ServiceException, Errors::ResourceInUseException]),
        data_parser: Parsers::UpdateDistributionConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDistributionConfiguration,
        stubs: @stubs,
        params_class: Params::UpdateDistributionConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_distribution_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Updates an image pipeline. Image pipelines enable you to automate the creation and
    # 			distribution of images.</p>
    # 		       <note>
    #             <p>UpdateImagePipeline does not support selective updates for the pipeline.
    # 			You must specify all of the required properties in the update request, not just
    # 			the properties that have changed.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::UpdateImagePipelineInput}.
    #
    # @option params [String] :image_pipeline_arn
    #   <p>The Amazon Resource Name (ARN) of the image pipeline that you want to update.</p>
    #
    # @option params [String] :description
    #   <p>The description of the image pipeline.</p>
    #
    # @option params [String] :image_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the image recipe that will be used to configure images
    #   			updated by this image pipeline.</p>
    #
    # @option params [String] :container_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the container pipeline to update.</p>
    #
    # @option params [String] :infrastructure_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the infrastructure configuration that will be used to
    #   			build images updated by this image pipeline.</p>
    #
    # @option params [String] :distribution_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the distribution configuration that will be used to
    #   			configure and distribute images updated by this image pipeline.</p>
    #
    # @option params [ImageTestsConfiguration] :image_tests_configuration
    #   <p>The image test configuration of the image pipeline.</p>
    #
    # @option params [Boolean] :enhanced_image_metadata_enabled
    #   <p> Collects additional information about the image being created, including the operating
    #   			system (OS) version and package list. This information is used to enhance the overall
    #   			experience of using EC2 Image Builder. Enabled by default.</p>
    #
    # @option params [Schedule] :schedule
    #   <p>The schedule of the image pipeline.</p>
    #
    # @option params [String] :status
    #   <p>The status of the image pipeline.</p>
    #
    # @option params [String] :client_token
    #   <p>The idempotency token used to make this request idempotent.</p>
    #
    # @return [Types::UpdateImagePipelineOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_image_pipeline(
    #     image_pipeline_arn: 'imagePipelineArn', # required
    #     description: 'description',
    #     image_recipe_arn: 'imageRecipeArn',
    #     container_recipe_arn: 'containerRecipeArn',
    #     infrastructure_configuration_arn: 'infrastructureConfigurationArn', # required
    #     distribution_configuration_arn: 'distributionConfigurationArn',
    #     image_tests_configuration: {
    #       image_tests_enabled: false,
    #       timeout_minutes: 1
    #     },
    #     enhanced_image_metadata_enabled: false,
    #     schedule: {
    #       schedule_expression: 'scheduleExpression',
    #       timezone: 'timezone',
    #       pipeline_execution_start_condition: 'EXPRESSION_MATCH_ONLY' # accepts ["EXPRESSION_MATCH_ONLY", "EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE"]
    #     },
    #     status: 'DISABLED', # accepts ["DISABLED", "ENABLED"]
    #     client_token: 'clientToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateImagePipelineOutput
    #   resp.data.request_id #=> String
    #   resp.data.client_token #=> String
    #   resp.data.image_pipeline_arn #=> String
    #
    def update_image_pipeline(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateImagePipelineInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateImagePipelineInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateImagePipeline
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CallRateLimitExceededException, Errors::InvalidRequestException, Errors::ForbiddenException, Errors::IdempotentParameterMismatchException, Errors::ServiceUnavailableException, Errors::ClientException, Errors::ServiceException, Errors::ResourceInUseException]),
        data_parser: Parsers::UpdateImagePipeline
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateImagePipeline,
        stubs: @stubs,
        params_class: Params::UpdateImagePipelineOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_image_pipeline
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Updates a new infrastructure configuration. An infrastructure configuration defines the
    # 			environment in which your image will be built and tested.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateInfrastructureConfigurationInput}.
    #
    # @option params [String] :infrastructure_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the infrastructure configuration that you want to
    #   			update.</p>
    #
    # @option params [String] :description
    #   <p>The description of the infrastructure configuration.</p>
    #
    # @option params [Array<String>] :instance_types
    #   <p>The instance types of the infrastructure configuration. You can specify one or more
    #   			instance types to use for this build. The service will pick one of these instance types based
    #   			on availability.</p>
    #
    # @option params [String] :instance_profile_name
    #   <p>The instance profile to associate with the instance used to customize your Amazon EC2 AMI.</p>
    #
    # @option params [Array<String>] :security_group_ids
    #   <p>The security group IDs to associate with the instance used to customize your Amazon EC2 AMI.</p>
    #
    # @option params [String] :subnet_id
    #   <p>The subnet ID to place the instance used to customize your Amazon EC2 AMI in.</p>
    #
    # @option params [Logging] :logging
    #   <p>The logging configuration of the infrastructure configuration.</p>
    #
    # @option params [String] :key_pair
    #   <p>The key pair of the infrastructure configuration. You can use this to log on to and debug
    #   			the instance used to create your image.</p>
    #
    # @option params [Boolean] :terminate_instance_on_failure
    #   <p>The terminate instance on failure setting of the infrastructure configuration. Set to
    #   			false if you want Image Builder to retain the instance used to configure your AMI if the build
    #   			or test phase of your workflow fails.</p>
    #
    # @option params [String] :sns_topic_arn
    #   <p>The Amazon Resource Name (ARN) for the SNS topic to which we send image build event notifications.</p>
    #   		       <note>
    #   			         <p>EC2 Image Builder is unable to send notifications to SNS topics that are encrypted using keys
    #   				from other accounts. The key that is used to encrypt the SNS topic must reside in the
    #   				account that the Image Builder service runs under.</p>
    #   		       </note>
    #
    # @option params [String] :client_token
    #   <p>The idempotency token used to make this request idempotent.</p>
    #
    # @option params [Hash<String, String>] :resource_tags
    #   <p>The tags attached to the resource created by Image Builder.</p>
    #
    # @option params [InstanceMetadataOptions] :instance_metadata_options
    #   <p>The instance metadata options that you can set for the HTTP requests that pipeline builds
    #   			use to launch EC2 build and test instances. For more information about instance metadata
    #   			options, see one of the following links:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>
    #                     <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configuring-instance-metadata-options.html">Configure
    #   					the instance metadata options</a> in the <i>
    #                        <i>Amazon EC2 User Guide</i>
    #                     </i>
    #   					for Linux instances.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <a href="https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/configuring-instance-metadata-options.html">Configure
    #   					the instance metadata options</a> in the <i>
    #                        <i>Amazon EC2 Windows Guide</i>
    #                     </i>
    #   					for Windows instances.</p>
    #   			         </li>
    #            </ul>
    #
    # @return [Types::UpdateInfrastructureConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_infrastructure_configuration(
    #     infrastructure_configuration_arn: 'infrastructureConfigurationArn', # required
    #     description: 'description',
    #     instance_types: [
    #       'member'
    #     ],
    #     instance_profile_name: 'instanceProfileName', # required
    #     security_group_ids: [
    #       'member'
    #     ],
    #     subnet_id: 'subnetId',
    #     logging: {
    #       s3_logs: {
    #         s3_bucket_name: 's3BucketName',
    #         s3_key_prefix: 's3KeyPrefix'
    #       }
    #     },
    #     key_pair: 'keyPair',
    #     terminate_instance_on_failure: false,
    #     sns_topic_arn: 'snsTopicArn',
    #     client_token: 'clientToken', # required
    #     resource_tags: {
    #       'key' => 'value'
    #     },
    #     instance_metadata_options: {
    #       http_tokens: 'httpTokens',
    #       http_put_response_hop_limit: 1
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateInfrastructureConfigurationOutput
    #   resp.data.request_id #=> String
    #   resp.data.client_token #=> String
    #   resp.data.infrastructure_configuration_arn #=> String
    #
    def update_infrastructure_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateInfrastructureConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateInfrastructureConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateInfrastructureConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CallRateLimitExceededException, Errors::InvalidRequestException, Errors::ForbiddenException, Errors::IdempotentParameterMismatchException, Errors::ServiceUnavailableException, Errors::ClientException, Errors::ServiceException, Errors::ResourceInUseException]),
        data_parser: Parsers::UpdateInfrastructureConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateInfrastructureConfiguration,
        stubs: @stubs,
        params_class: Params::UpdateInfrastructureConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_infrastructure_configuration
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
