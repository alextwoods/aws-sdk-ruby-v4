# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::ServerlessApplicationRepository
  # An API client for ServerlessApplicationRepository
  # See {#initialize} for a full list of supported configuration options
  # <p>The AWS Serverless Application Repository makes it easy for developers and enterprises to quickly find
  #  and deploy serverless applications in the AWS Cloud. For more information about serverless applications,
  #  see Serverless Computing and Applications on the AWS website.</p><p>The AWS Serverless Application Repository is deeply integrated with the AWS Lambda console, so that developers of
  #  all levels can get started with serverless computing without needing to learn anything new. You can use category
  #  keywords to browse for applications such as web and mobile backends, data processing applications, or chatbots.
  #  You can also search for applications by name, publisher, or event source. To use an application, you simply choose it,
  #  configure any required fields, and deploy it with a few clicks. </p><p>You can also easily publish applications, sharing them publicly with the community at large, or privately
  #  within your team or across your organization. To publish a serverless application (or app), you can use the
  #  AWS Management Console, AWS Command Line Interface (AWS CLI), or AWS SDKs to upload the code. Along with the
  #  code, you upload a simple manifest file, also known as the AWS Serverless Application Model (AWS SAM) template.
  #  For more information about AWS SAM, see AWS Serverless Application Model (AWS SAM) on the AWS Labs
  #  GitHub repository.</p><p>The AWS Serverless Application Repository Developer Guide contains more information about the two developer
  #  experiences available:</p><ul>
  #  <li>
  #  <p>Consuming Applications – Browse for applications and view information about them, including
  #  source code and readme files. Also install, configure, and deploy applications of your choosing. </p>
  #  <p>Publishing Applications – Configure and upload applications to make them available to other
  #  developers, and publish new versions of applications. </p>
  #  </li>
  #  </ul>
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
    def initialize(config = AWS::SDK::ServerlessApplicationRepository::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates an application, optionally including an AWS SAM file to create the first application version in the same call.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateApplicationInput}.
    #
    # @option params [String] :author
    #   <p>The name of the author publishing the app.</p><p>Minimum length=1. Maximum length=127.</p><p>Pattern "^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$";</p>
    #
    # @option params [String] :description
    #   <p>The description of the application.</p><p>Minimum length=1. Maximum length=256</p>
    #
    # @option params [String] :home_page_url
    #   <p>A URL with more information about the application, for example the location of your GitHub repository for the application.</p>
    #
    # @option params [Array<String>] :labels
    #   <p>Labels to improve discovery of apps in search results.</p><p>Minimum length=1. Maximum length=127. Maximum number of labels: 10</p><p>Pattern: "^[a-zA-Z0-9+\\-_:\\/@]+$";</p>
    #
    # @option params [String] :license_body
    #   <p>A local text file that contains the license of the app that matches the spdxLicenseID value of your application.
    #    The file has the format file://&lt;path>/&lt;filename>.</p><p>Maximum size 5 MB</p><p>You can specify only one of licenseBody and licenseUrl; otherwise, an error results.</p>
    #
    # @option params [String] :license_url
    #   <p>A link to the S3 object that contains the license of the app that matches the spdxLicenseID value of your application.</p><p>Maximum size 5 MB</p><p>You can specify only one of licenseBody and licenseUrl; otherwise, an error results.</p>
    #
    # @option params [String] :name
    #   <p>The name of the application that you want to publish.</p><p>Minimum length=1. Maximum length=140</p><p>Pattern: "[a-zA-Z0-9\\-]+";</p>
    #
    # @option params [String] :readme_body
    #   <p>A local text readme file in Markdown language that contains a more detailed description of the application and how it works.
    #    The file has the format file://&lt;path>/&lt;filename>.</p><p>Maximum size 5 MB</p><p>You can specify only one of readmeBody and readmeUrl; otherwise, an error results.</p>
    #
    # @option params [String] :readme_url
    #   <p>A link to the S3 object in Markdown language that contains a more detailed description of the application and how it works.</p><p>Maximum size 5 MB</p><p>You can specify only one of readmeBody and readmeUrl; otherwise, an error results.</p>
    #
    # @option params [String] :semantic_version
    #   <p>The semantic version of the application:</p><p>
    #    <a href="https://semver.org/">https://semver.org/</a>
    #    </p>
    #
    # @option params [String] :source_code_archive_url
    #   <p>A link to the S3 object that contains the ZIP archive of the source code for this version of your application.</p><p>Maximum size 50 MB</p>
    #
    # @option params [String] :source_code_url
    #   <p>A link to a public repository for the source code of your application, for example the URL of a specific GitHub commit.</p>
    #
    # @option params [String] :spdx_license_id
    #   <p>A valid identifier from <a href="https://spdx.org/licenses/">https://spdx.org/licenses/</a>.</p>
    #
    # @option params [String] :template_body
    #   <p>The local raw packaged AWS SAM template file of your application.
    #    The file has the format file://&lt;path>/&lt;filename>.</p><p>You can specify only one of templateBody and templateUrl; otherwise an error results.</p>
    #
    # @option params [String] :template_url
    #   <p>A link to the S3 object containing the packaged AWS SAM template of your application.</p><p>You can specify only one of templateBody and templateUrl; otherwise an error results.</p>
    #
    # @return [Types::CreateApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_application(
    #     author: 'Author', # required
    #     description: 'Description', # required
    #     home_page_url: 'HomePageUrl',
    #     labels: [
    #       'member'
    #     ],
    #     license_body: 'LicenseBody',
    #     license_url: 'LicenseUrl',
    #     name: 'Name', # required
    #     readme_body: 'ReadmeBody',
    #     readme_url: 'ReadmeUrl',
    #     semantic_version: 'SemanticVersion',
    #     source_code_archive_url: 'SourceCodeArchiveUrl',
    #     source_code_url: 'SourceCodeUrl',
    #     spdx_license_id: 'SpdxLicenseId',
    #     template_body: 'TemplateBody',
    #     template_url: 'TemplateUrl'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateApplicationOutput
    #   resp.data.application_id #=> String
    #   resp.data.author #=> String
    #   resp.data.creation_time #=> String
    #   resp.data.description #=> String
    #   resp.data.home_page_url #=> String
    #   resp.data.is_verified_author #=> Boolean
    #   resp.data.labels #=> Array<String>
    #   resp.data.labels[0] #=> String
    #   resp.data.license_url #=> String
    #   resp.data.name #=> String
    #   resp.data.readme_url #=> String
    #   resp.data.spdx_license_id #=> String
    #   resp.data.verified_author_url #=> String
    #   resp.data.version #=> Types::Version
    #   resp.data.version.application_id #=> String
    #   resp.data.version.creation_time #=> String
    #   resp.data.version.parameter_definitions #=> Array<ParameterDefinition>
    #   resp.data.version.parameter_definitions[0] #=> Types::ParameterDefinition
    #   resp.data.version.parameter_definitions[0].allowed_pattern #=> String
    #   resp.data.version.parameter_definitions[0].allowed_values #=> Array<String>
    #   resp.data.version.parameter_definitions[0].constraint_description #=> String
    #   resp.data.version.parameter_definitions[0].default_value #=> String
    #   resp.data.version.parameter_definitions[0].description #=> String
    #   resp.data.version.parameter_definitions[0].max_length #=> Integer
    #   resp.data.version.parameter_definitions[0].max_value #=> Integer
    #   resp.data.version.parameter_definitions[0].min_length #=> Integer
    #   resp.data.version.parameter_definitions[0].min_value #=> Integer
    #   resp.data.version.parameter_definitions[0].name #=> String
    #   resp.data.version.parameter_definitions[0].no_echo #=> Boolean
    #   resp.data.version.parameter_definitions[0].referenced_by_resources #=> Array<String>
    #   resp.data.version.parameter_definitions[0].type #=> String
    #   resp.data.version.required_capabilities #=> Array<String>
    #   resp.data.version.required_capabilities[0] #=> String, one of ["CAPABILITY_IAM", "CAPABILITY_NAMED_IAM", "CAPABILITY_AUTO_EXPAND", "CAPABILITY_RESOURCE_POLICY"]
    #   resp.data.version.resources_supported #=> Boolean
    #   resp.data.version.semantic_version #=> String
    #   resp.data.version.source_code_archive_url #=> String
    #   resp.data.version.source_code_url #=> String
    #   resp.data.version.template_url #=> String
    #
    def create_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateApplicationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateApplicationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateApplication
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::ConflictException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::CreateApplication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateApplication,
        stubs: @stubs,
        params_class: Params::CreateApplicationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_application
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an application version.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateApplicationVersionInput}.
    #
    # @option params [String] :application_id
    #   <p>The Amazon Resource Name (ARN) of the application.</p>
    #
    # @option params [String] :semantic_version
    #   <p>The semantic version of the new version.</p>
    #
    # @option params [String] :source_code_archive_url
    #   <p>A link to the S3 object that contains the ZIP archive of the source code for this version of your application.</p><p>Maximum size 50 MB</p>
    #
    # @option params [String] :source_code_url
    #   <p>A link to a public repository for the source code of your application, for example the URL of a specific GitHub commit.</p>
    #
    # @option params [String] :template_body
    #   <p>The raw packaged AWS SAM template of your application.</p>
    #
    # @option params [String] :template_url
    #   <p>A link to the packaged AWS SAM template of your application.</p>
    #
    # @return [Types::CreateApplicationVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_application_version(
    #     application_id: 'ApplicationId', # required
    #     semantic_version: 'SemanticVersion', # required
    #     source_code_archive_url: 'SourceCodeArchiveUrl',
    #     source_code_url: 'SourceCodeUrl',
    #     template_body: 'TemplateBody',
    #     template_url: 'TemplateUrl'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateApplicationVersionOutput
    #   resp.data.application_id #=> String
    #   resp.data.creation_time #=> String
    #   resp.data.parameter_definitions #=> Array<ParameterDefinition>
    #   resp.data.parameter_definitions[0] #=> Types::ParameterDefinition
    #   resp.data.parameter_definitions[0].allowed_pattern #=> String
    #   resp.data.parameter_definitions[0].allowed_values #=> Array<String>
    #   resp.data.parameter_definitions[0].allowed_values[0] #=> String
    #   resp.data.parameter_definitions[0].constraint_description #=> String
    #   resp.data.parameter_definitions[0].default_value #=> String
    #   resp.data.parameter_definitions[0].description #=> String
    #   resp.data.parameter_definitions[0].max_length #=> Integer
    #   resp.data.parameter_definitions[0].max_value #=> Integer
    #   resp.data.parameter_definitions[0].min_length #=> Integer
    #   resp.data.parameter_definitions[0].min_value #=> Integer
    #   resp.data.parameter_definitions[0].name #=> String
    #   resp.data.parameter_definitions[0].no_echo #=> Boolean
    #   resp.data.parameter_definitions[0].referenced_by_resources #=> Array<String>
    #   resp.data.parameter_definitions[0].type #=> String
    #   resp.data.required_capabilities #=> Array<String>
    #   resp.data.required_capabilities[0] #=> String, one of ["CAPABILITY_IAM", "CAPABILITY_NAMED_IAM", "CAPABILITY_AUTO_EXPAND", "CAPABILITY_RESOURCE_POLICY"]
    #   resp.data.resources_supported #=> Boolean
    #   resp.data.semantic_version #=> String
    #   resp.data.source_code_archive_url #=> String
    #   resp.data.source_code_url #=> String
    #   resp.data.template_url #=> String
    #
    def create_application_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateApplicationVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateApplicationVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateApplicationVersion
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::ConflictException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::CreateApplicationVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateApplicationVersion,
        stubs: @stubs,
        params_class: Params::CreateApplicationVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_application_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an AWS CloudFormation change set for the given application.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateCloudFormationChangeSetInput}.
    #
    # @option params [String] :application_id
    #   <p>The Amazon Resource Name (ARN) of the application.</p>
    #
    # @option params [Array<String>] :capabilities
    #   <p>A list of values that you must specify before you can deploy certain applications.
    #    Some applications might include resources that can affect permissions in your AWS
    #    account, for example, by creating new AWS Identity and Access Management (IAM) users.
    #    For those applications, you must explicitly acknowledge their capabilities by
    #    specifying this parameter.</p><p>The only valid values are CAPABILITY_IAM, CAPABILITY_NAMED_IAM,
    #    CAPABILITY_RESOURCE_POLICY, and CAPABILITY_AUTO_EXPAND.</p><p>The following resources require you to specify CAPABILITY_IAM or
    #    CAPABILITY_NAMED_IAM:
    #    <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html">AWS::IAM::Group</a>,
    #    <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html">AWS::IAM::InstanceProfile</a>,
    #    <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html">AWS::IAM::Policy</a>, and
    #    <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html">AWS::IAM::Role</a>.
    #    If the application contains IAM resources, you can specify either CAPABILITY_IAM
    #    or CAPABILITY_NAMED_IAM. If the application contains IAM resources
    #    with custom names, you must specify CAPABILITY_NAMED_IAM.</p><p>The following resources require you to specify CAPABILITY_RESOURCE_POLICY:
    #    <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-permission.html">AWS::Lambda::Permission</a>,
    #    <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html">AWS::IAM:Policy</a>,
    #    <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalingpolicy.html">AWS::ApplicationAutoScaling::ScalingPolicy</a>,
    #    <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-policy.html">AWS::S3::BucketPolicy</a>,
    #    <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-policy.html">AWS::SQS::QueuePolicy</a>, and
    #    <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-policy.html">AWS::SNS:TopicPolicy</a>.</p><p>Applications that contain one or more nested applications require you to specify
    #    CAPABILITY_AUTO_EXPAND.</p><p>If your application template contains any of the above resources, we recommend that you review
    #    all permissions associated with the application before deploying. If you don't specify
    #    this parameter for an application that requires capabilities, the call will fail.</p>
    #
    # @option params [String] :change_set_name
    #   <p>This property corresponds to the parameter of the same name for the <i>AWS CloudFormation <a href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet">CreateChangeSet</a>
    #    </i> API.</p>
    #
    # @option params [String] :client_token
    #   <p>This property corresponds to the parameter of the same name for the <i>AWS CloudFormation <a href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet">CreateChangeSet</a>
    #    </i> API.</p>
    #
    # @option params [String] :description
    #   <p>This property corresponds to the parameter of the same name for the <i>AWS CloudFormation <a href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet">CreateChangeSet</a>
    #    </i> API.</p>
    #
    # @option params [Array<String>] :notification_arns
    #   <p>This property corresponds to the parameter of the same name for the <i>AWS CloudFormation <a href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet">CreateChangeSet</a>
    #    </i> API.</p>
    #
    # @option params [Array<ParameterValue>] :parameter_overrides
    #   <p>A list of parameter values for the parameters of the application.</p>
    #
    # @option params [Array<String>] :resource_types
    #   <p>This property corresponds to the parameter of the same name for the <i>AWS CloudFormation <a href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet">CreateChangeSet</a>
    #    </i> API.</p>
    #
    # @option params [RollbackConfiguration] :rollback_configuration
    #   <p>This property corresponds to the parameter of the same name for the <i>AWS CloudFormation <a href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet">CreateChangeSet</a>
    #    </i> API.</p>
    #
    # @option params [String] :semantic_version
    #   <p>The semantic version of the application:</p><p>
    #    <a href="https://semver.org/">https://semver.org/</a>
    #    </p>
    #
    # @option params [String] :stack_name
    #   <p>This property corresponds to the parameter of the same name for the <i>AWS CloudFormation <a href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet">CreateChangeSet</a>
    #    </i> API.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>This property corresponds to the parameter of the same name for the <i>AWS CloudFormation <a href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet">CreateChangeSet</a>
    #    </i> API.</p>
    #
    # @option params [String] :template_id
    #   <p>The UUID returned by CreateCloudFormationTemplate.</p><p>Pattern: [0-9a-fA-F]{8}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{12}</p>
    #
    # @return [Types::CreateCloudFormationChangeSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cloud_formation_change_set(
    #     application_id: 'ApplicationId', # required
    #     capabilities: [
    #       'member'
    #     ],
    #     change_set_name: 'ChangeSetName',
    #     client_token: 'ClientToken',
    #     description: 'Description',
    #     parameter_overrides: [
    #       {
    #         name: 'Name', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     rollback_configuration: {
    #       monitoring_time_in_minutes: 1,
    #       rollback_triggers: [
    #         {
    #           arn: 'Arn', # required
    #           type: 'Type' # required
    #         }
    #       ]
    #     },
    #     semantic_version: 'SemanticVersion',
    #     stack_name: 'StackName', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     template_id: 'TemplateId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateCloudFormationChangeSetOutput
    #   resp.data.application_id #=> String
    #   resp.data.change_set_id #=> String
    #   resp.data.semantic_version #=> String
    #   resp.data.stack_id #=> String
    #
    def create_cloud_formation_change_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateCloudFormationChangeSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateCloudFormationChangeSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateCloudFormationChangeSet
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::CreateCloudFormationChangeSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateCloudFormationChangeSet,
        stubs: @stubs,
        params_class: Params::CreateCloudFormationChangeSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_cloud_formation_change_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an AWS CloudFormation template.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateCloudFormationTemplateInput}.
    #
    # @option params [String] :application_id
    #   <p>The Amazon Resource Name (ARN) of the application.</p>
    #
    # @option params [String] :semantic_version
    #   <p>The semantic version of the application:</p><p>
    #    <a href="https://semver.org/">https://semver.org/</a>
    #    </p>
    #
    # @return [Types::CreateCloudFormationTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cloud_formation_template(
    #     application_id: 'ApplicationId', # required
    #     semantic_version: 'SemanticVersion'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateCloudFormationTemplateOutput
    #   resp.data.application_id #=> String
    #   resp.data.creation_time #=> String
    #   resp.data.expiration_time #=> String
    #   resp.data.semantic_version #=> String
    #   resp.data.status #=> String, one of ["PREPARING", "ACTIVE", "EXPIRED"]
    #   resp.data.template_id #=> String
    #   resp.data.template_url #=> String
    #
    def create_cloud_formation_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateCloudFormationTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateCloudFormationTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateCloudFormationTemplate
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::NotFoundException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::CreateCloudFormationTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateCloudFormationTemplate,
        stubs: @stubs,
        params_class: Params::CreateCloudFormationTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_cloud_formation_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified application.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteApplicationInput}.
    #
    # @option params [String] :application_id
    #   <p>The Amazon Resource Name (ARN) of the application.</p>
    #
    # @return [Types::DeleteApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_application(
    #     application_id: 'ApplicationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteApplicationOutput
    #
    def delete_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteApplicationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteApplicationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteApplication
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::NotFoundException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::ConflictException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DeleteApplication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteApplication,
        stubs: @stubs,
        params_class: Params::DeleteApplicationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_application
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the specified application.</p>
    #
    # @param [Hash] params
    #   See {Types::GetApplicationInput}.
    #
    # @option params [String] :application_id
    #   <p>The Amazon Resource Name (ARN) of the application.</p>
    #
    # @option params [String] :semantic_version
    #   <p>The semantic version of the application to get.</p>
    #
    # @return [Types::GetApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_application(
    #     application_id: 'ApplicationId', # required
    #     semantic_version: 'SemanticVersion'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetApplicationOutput
    #   resp.data.application_id #=> String
    #   resp.data.author #=> String
    #   resp.data.creation_time #=> String
    #   resp.data.description #=> String
    #   resp.data.home_page_url #=> String
    #   resp.data.is_verified_author #=> Boolean
    #   resp.data.labels #=> Array<String>
    #   resp.data.labels[0] #=> String
    #   resp.data.license_url #=> String
    #   resp.data.name #=> String
    #   resp.data.readme_url #=> String
    #   resp.data.spdx_license_id #=> String
    #   resp.data.verified_author_url #=> String
    #   resp.data.version #=> Types::Version
    #   resp.data.version.application_id #=> String
    #   resp.data.version.creation_time #=> String
    #   resp.data.version.parameter_definitions #=> Array<ParameterDefinition>
    #   resp.data.version.parameter_definitions[0] #=> Types::ParameterDefinition
    #   resp.data.version.parameter_definitions[0].allowed_pattern #=> String
    #   resp.data.version.parameter_definitions[0].allowed_values #=> Array<String>
    #   resp.data.version.parameter_definitions[0].constraint_description #=> String
    #   resp.data.version.parameter_definitions[0].default_value #=> String
    #   resp.data.version.parameter_definitions[0].description #=> String
    #   resp.data.version.parameter_definitions[0].max_length #=> Integer
    #   resp.data.version.parameter_definitions[0].max_value #=> Integer
    #   resp.data.version.parameter_definitions[0].min_length #=> Integer
    #   resp.data.version.parameter_definitions[0].min_value #=> Integer
    #   resp.data.version.parameter_definitions[0].name #=> String
    #   resp.data.version.parameter_definitions[0].no_echo #=> Boolean
    #   resp.data.version.parameter_definitions[0].referenced_by_resources #=> Array<String>
    #   resp.data.version.parameter_definitions[0].type #=> String
    #   resp.data.version.required_capabilities #=> Array<String>
    #   resp.data.version.required_capabilities[0] #=> String, one of ["CAPABILITY_IAM", "CAPABILITY_NAMED_IAM", "CAPABILITY_AUTO_EXPAND", "CAPABILITY_RESOURCE_POLICY"]
    #   resp.data.version.resources_supported #=> Boolean
    #   resp.data.version.semantic_version #=> String
    #   resp.data.version.source_code_archive_url #=> String
    #   resp.data.version.source_code_url #=> String
    #   resp.data.version.template_url #=> String
    #
    def get_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetApplicationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetApplicationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetApplication
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::GetApplication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetApplication,
        stubs: @stubs,
        params_class: Params::GetApplicationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_application
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the policy for the application.</p>
    #
    # @param [Hash] params
    #   See {Types::GetApplicationPolicyInput}.
    #
    # @option params [String] :application_id
    #   <p>The Amazon Resource Name (ARN) of the application.</p>
    #
    # @return [Types::GetApplicationPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_application_policy(
    #     application_id: 'ApplicationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetApplicationPolicyOutput
    #   resp.data.statements #=> Array<ApplicationPolicyStatement>
    #   resp.data.statements[0] #=> Types::ApplicationPolicyStatement
    #   resp.data.statements[0].actions #=> Array<String>
    #   resp.data.statements[0].actions[0] #=> String
    #   resp.data.statements[0].principal_org_i_ds #=> Array<String>
    #   resp.data.statements[0].principals #=> Array<String>
    #   resp.data.statements[0].statement_id #=> String
    #
    def get_application_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetApplicationPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetApplicationPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetApplicationPolicy
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::GetApplicationPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetApplicationPolicy,
        stubs: @stubs,
        params_class: Params::GetApplicationPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_application_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the specified AWS CloudFormation template.</p>
    #
    # @param [Hash] params
    #   See {Types::GetCloudFormationTemplateInput}.
    #
    # @option params [String] :application_id
    #   <p>The Amazon Resource Name (ARN) of the application.</p>
    #
    # @option params [String] :template_id
    #   <p>The UUID returned by CreateCloudFormationTemplate.</p><p>Pattern: [0-9a-fA-F]{8}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{12}</p>
    #
    # @return [Types::GetCloudFormationTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_cloud_formation_template(
    #     application_id: 'ApplicationId', # required
    #     template_id: 'TemplateId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetCloudFormationTemplateOutput
    #   resp.data.application_id #=> String
    #   resp.data.creation_time #=> String
    #   resp.data.expiration_time #=> String
    #   resp.data.semantic_version #=> String
    #   resp.data.status #=> String, one of ["PREPARING", "ACTIVE", "EXPIRED"]
    #   resp.data.template_id #=> String
    #   resp.data.template_url #=> String
    #
    def get_cloud_formation_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetCloudFormationTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetCloudFormationTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetCloudFormationTemplate
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::GetCloudFormationTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetCloudFormationTemplate,
        stubs: @stubs,
        params_class: Params::GetCloudFormationTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_cloud_formation_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the list of applications nested in the containing application.</p>
    #
    # @param [Hash] params
    #   See {Types::ListApplicationDependenciesInput}.
    #
    # @option params [String] :application_id
    #   <p>The Amazon Resource Name (ARN) of the application.</p>
    #
    # @option params [Integer] :max_items
    #   <p>The total number of items to return.</p>
    #
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating.</p>
    #
    # @option params [String] :semantic_version
    #   <p>The semantic version of the application to get.</p>
    #
    # @return [Types::ListApplicationDependenciesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_application_dependencies(
    #     application_id: 'ApplicationId', # required
    #     max_items: 1,
    #     next_token: 'NextToken',
    #     semantic_version: 'SemanticVersion'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListApplicationDependenciesOutput
    #   resp.data.dependencies #=> Array<ApplicationDependencySummary>
    #   resp.data.dependencies[0] #=> Types::ApplicationDependencySummary
    #   resp.data.dependencies[0].application_id #=> String
    #   resp.data.dependencies[0].semantic_version #=> String
    #   resp.data.next_token #=> String
    #
    def list_application_dependencies(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListApplicationDependenciesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListApplicationDependenciesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListApplicationDependencies
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ListApplicationDependencies
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListApplicationDependencies,
        stubs: @stubs,
        params_class: Params::ListApplicationDependenciesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_application_dependencies
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists versions for the specified application.</p>
    #
    # @param [Hash] params
    #   See {Types::ListApplicationVersionsInput}.
    #
    # @option params [String] :application_id
    #   <p>The Amazon Resource Name (ARN) of the application.</p>
    #
    # @option params [Integer] :max_items
    #   <p>The total number of items to return.</p>
    #
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating.</p>
    #
    # @return [Types::ListApplicationVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_application_versions(
    #     application_id: 'ApplicationId', # required
    #     max_items: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListApplicationVersionsOutput
    #   resp.data.next_token #=> String
    #   resp.data.versions #=> Array<VersionSummary>
    #   resp.data.versions[0] #=> Types::VersionSummary
    #   resp.data.versions[0].application_id #=> String
    #   resp.data.versions[0].creation_time #=> String
    #   resp.data.versions[0].semantic_version #=> String
    #   resp.data.versions[0].source_code_url #=> String
    #
    def list_application_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListApplicationVersionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListApplicationVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListApplicationVersions
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ListApplicationVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListApplicationVersions,
        stubs: @stubs,
        params_class: Params::ListApplicationVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_application_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists applications owned by the requester.</p>
    #
    # @param [Hash] params
    #   See {Types::ListApplicationsInput}.
    #
    # @option params [Integer] :max_items
    #   <p>The total number of items to return.</p>
    #
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating.</p>
    #
    # @return [Types::ListApplicationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_applications(
    #     max_items: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListApplicationsOutput
    #   resp.data.applications #=> Array<ApplicationSummary>
    #   resp.data.applications[0] #=> Types::ApplicationSummary
    #   resp.data.applications[0].application_id #=> String
    #   resp.data.applications[0].author #=> String
    #   resp.data.applications[0].creation_time #=> String
    #   resp.data.applications[0].description #=> String
    #   resp.data.applications[0].home_page_url #=> String
    #   resp.data.applications[0].labels #=> Array<String>
    #   resp.data.applications[0].labels[0] #=> String
    #   resp.data.applications[0].name #=> String
    #   resp.data.applications[0].spdx_license_id #=> String
    #   resp.data.next_token #=> String
    #
    def list_applications(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListApplicationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListApplicationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListApplications
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::BadRequestException]),
        data_parser: Parsers::ListApplications
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListApplications,
        stubs: @stubs,
        params_class: Params::ListApplicationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_applications
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets the permission policy for an application. For the list of actions supported for this operation, see
    #  <a href="https://docs.aws.amazon.com/serverlessrepo/latest/devguide/access-control-resource-based.html#application-permissions">Application
    #  Permissions</a>
    #  .</p>
    #
    # @param [Hash] params
    #   See {Types::PutApplicationPolicyInput}.
    #
    # @option params [String] :application_id
    #   <p>The Amazon Resource Name (ARN) of the application.</p>
    #
    # @option params [Array<ApplicationPolicyStatement>] :statements
    #   <p>An array of policy statements applied to the application.</p>
    #
    # @return [Types::PutApplicationPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_application_policy(
    #     application_id: 'ApplicationId', # required
    #     statements: [
    #       {
    #         actions: [
    #           'member'
    #         ], # required
    #         statement_id: 'StatementId'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutApplicationPolicyOutput
    #   resp.data.statements #=> Array<ApplicationPolicyStatement>
    #   resp.data.statements[0] #=> Types::ApplicationPolicyStatement
    #   resp.data.statements[0].actions #=> Array<String>
    #   resp.data.statements[0].actions[0] #=> String
    #   resp.data.statements[0].principal_org_i_ds #=> Array<String>
    #   resp.data.statements[0].principals #=> Array<String>
    #   resp.data.statements[0].statement_id #=> String
    #
    def put_application_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutApplicationPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutApplicationPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutApplicationPolicy
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::PutApplicationPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutApplicationPolicy,
        stubs: @stubs,
        params_class: Params::PutApplicationPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_application_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Unshares an application from an AWS Organization.</p><p>This operation can be called only from the organization's master account.</p>
    #
    # @param [Hash] params
    #   See {Types::UnshareApplicationInput}.
    #
    # @option params [String] :application_id
    #   <p>The Amazon Resource Name (ARN) of the application.</p>
    #
    # @option params [String] :organization_id
    #   <p>The AWS Organization ID to unshare the application from.</p>
    #
    # @return [Types::UnshareApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.unshare_application(
    #     application_id: 'ApplicationId', # required
    #     organization_id: 'OrganizationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UnshareApplicationOutput
    #
    def unshare_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UnshareApplicationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UnshareApplicationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UnshareApplication
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::NotFoundException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::UnshareApplication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UnshareApplication,
        stubs: @stubs,
        params_class: Params::UnshareApplicationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :unshare_application
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the specified application.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateApplicationInput}.
    #
    # @option params [String] :application_id
    #   <p>The Amazon Resource Name (ARN) of the application.</p>
    #
    # @option params [String] :author
    #   <p>The name of the author publishing the app.</p><p>Minimum length=1. Maximum length=127.</p><p>Pattern "^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$";</p>
    #
    # @option params [String] :description
    #   <p>The description of the application.</p><p>Minimum length=1. Maximum length=256</p>
    #
    # @option params [String] :home_page_url
    #   <p>A URL with more information about the application, for example the location of your GitHub repository for the application.</p>
    #
    # @option params [Array<String>] :labels
    #   <p>Labels to improve discovery of apps in search results.</p><p>Minimum length=1. Maximum length=127. Maximum number of labels: 10</p><p>Pattern: "^[a-zA-Z0-9+\\-_:\\/@]+$";</p>
    #
    # @option params [String] :readme_body
    #   <p>A text readme file in Markdown language that contains a more detailed description of the application and how it works.</p><p>Maximum size 5 MB</p>
    #
    # @option params [String] :readme_url
    #   <p>A link to the readme file in Markdown language that contains a more detailed description of the application and how it works.</p><p>Maximum size 5 MB</p>
    #
    # @return [Types::UpdateApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_application(
    #     application_id: 'ApplicationId', # required
    #     author: 'Author',
    #     description: 'Description',
    #     home_page_url: 'HomePageUrl',
    #     labels: [
    #       'member'
    #     ],
    #     readme_body: 'ReadmeBody',
    #     readme_url: 'ReadmeUrl'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateApplicationOutput
    #   resp.data.application_id #=> String
    #   resp.data.author #=> String
    #   resp.data.creation_time #=> String
    #   resp.data.description #=> String
    #   resp.data.home_page_url #=> String
    #   resp.data.is_verified_author #=> Boolean
    #   resp.data.labels #=> Array<String>
    #   resp.data.labels[0] #=> String
    #   resp.data.license_url #=> String
    #   resp.data.name #=> String
    #   resp.data.readme_url #=> String
    #   resp.data.spdx_license_id #=> String
    #   resp.data.verified_author_url #=> String
    #   resp.data.version #=> Types::Version
    #   resp.data.version.application_id #=> String
    #   resp.data.version.creation_time #=> String
    #   resp.data.version.parameter_definitions #=> Array<ParameterDefinition>
    #   resp.data.version.parameter_definitions[0] #=> Types::ParameterDefinition
    #   resp.data.version.parameter_definitions[0].allowed_pattern #=> String
    #   resp.data.version.parameter_definitions[0].allowed_values #=> Array<String>
    #   resp.data.version.parameter_definitions[0].constraint_description #=> String
    #   resp.data.version.parameter_definitions[0].default_value #=> String
    #   resp.data.version.parameter_definitions[0].description #=> String
    #   resp.data.version.parameter_definitions[0].max_length #=> Integer
    #   resp.data.version.parameter_definitions[0].max_value #=> Integer
    #   resp.data.version.parameter_definitions[0].min_length #=> Integer
    #   resp.data.version.parameter_definitions[0].min_value #=> Integer
    #   resp.data.version.parameter_definitions[0].name #=> String
    #   resp.data.version.parameter_definitions[0].no_echo #=> Boolean
    #   resp.data.version.parameter_definitions[0].referenced_by_resources #=> Array<String>
    #   resp.data.version.parameter_definitions[0].type #=> String
    #   resp.data.version.required_capabilities #=> Array<String>
    #   resp.data.version.required_capabilities[0] #=> String, one of ["CAPABILITY_IAM", "CAPABILITY_NAMED_IAM", "CAPABILITY_AUTO_EXPAND", "CAPABILITY_RESOURCE_POLICY"]
    #   resp.data.version.resources_supported #=> Boolean
    #   resp.data.version.semantic_version #=> String
    #   resp.data.version.source_code_archive_url #=> String
    #   resp.data.version.source_code_url #=> String
    #   resp.data.version.template_url #=> String
    #
    def update_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateApplicationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateApplicationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateApplication
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::ConflictException, Errors::BadRequestException, Errors::TooManyRequestsException]),
        data_parser: Parsers::UpdateApplication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateApplication,
        stubs: @stubs,
        params_class: Params::UpdateApplicationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_application
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
