# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::CodeDeploy
  # An API client for CodeDeploy_20141006
  # See {#initialize} for a full list of supported configuration options
  # <fullname>AWS CodeDeploy</fullname>
  #         <p>AWS CodeDeploy is a deployment service that automates application deployments to
  #             Amazon EC2 instances, on-premises instances running in your own facility, serverless AWS
  #             Lambda functions, or applications in an Amazon ECS service.</p>
  #         <p>You can deploy a nearly unlimited variety of application content, such as an updated
  #             Lambda function, updated applications in an Amazon ECS service, code, web and
  #             configuration files, executables, packages, scripts, multimedia files, and so on. AWS
  #             CodeDeploy can deploy application content stored in Amazon S3 buckets, GitHub
  #             repositories, or Bitbucket repositories. You do not need to make changes to your
  #             existing code before you can use AWS CodeDeploy.</p>
  #         <p>AWS CodeDeploy makes it easier for you to rapidly release new features, helps you
  #             avoid downtime during application deployment, and handles the complexity of updating
  #             your applications, without many of the risks associated with error-prone manual
  #             deployments.</p>
  #         <p>
  #             <b>AWS CodeDeploy Components</b>
  #         </p>
  #         <p>Use the information in this guide to help you work with the following AWS CodeDeploy
  #             components:</p>
  #         <ul>
  #             <li>
  #                 <p>
  #                     <b>Application</b>: A name that uniquely identifies
  #                     the application you want to deploy. AWS CodeDeploy uses this name, which
  #                     functions as a container, to ensure the correct combination of revision,
  #                     deployment configuration, and deployment group are referenced during a
  #                     deployment.</p>
  #             </li>
  #             <li>
  #                 <p>
  #                     <b>Deployment group</b>: A set of individual
  #                     instances, CodeDeploy Lambda deployment configuration settings, or an Amazon ECS
  #                     service and network details. A Lambda deployment group specifies how to route
  #                     traffic to a new version of a Lambda function. An Amazon ECS deployment group
  #                     specifies the service created in Amazon ECS to deploy, a load balancer, and a
  #                     listener to reroute production traffic to an updated containerized application.
  #                     An EC2/On-premises deployment group contains individually tagged instances,
  #                     Amazon EC2 instances in Amazon EC2 Auto Scaling groups, or both. All deployment
  #                     groups can specify optional trigger, alarm, and rollback settings.</p>
  #             </li>
  #             <li>
  #                 <p>
  #                     <b>Deployment configuration</b>: A set of deployment
  #                     rules and deployment success and failure conditions used by AWS CodeDeploy
  #                     during a deployment.</p>
  #             </li>
  #             <li>
  #                 <p>
  #                     <b>Deployment</b>: The process and the components used
  #                     when updating a Lambda function, a containerized application in an Amazon ECS
  #                     service, or of installing content on one or more instances. </p>
  #             </li>
  #             <li>
  #                 <p>
  #                     <b>Application revisions</b>: For an AWS Lambda
  #                     deployment, this is an AppSpec file that specifies the Lambda function to be
  #                     updated and one or more functions to validate deployment lifecycle events. For
  #                     an Amazon ECS deployment, this is an AppSpec file that specifies the Amazon ECS
  #                     task definition, container, and port where production traffic is rerouted. For
  #                     an EC2/On-premises deployment, this is an archive file that contains source
  #                     content—source code, webpages, executable files, and deployment scripts—along
  #                     with an AppSpec file. Revisions are stored in Amazon S3 buckets or GitHub
  #                     repositories. For Amazon S3, a revision is uniquely identified by its Amazon S3
  #                     object key and its ETag, version, or both. For GitHub, a revision is uniquely
  #                     identified by its commit ID.</p>
  #             </li>
  #          </ul>
  #         <p>This guide also contains information to help you get details about the instances in
  #             your deployments, to make on-premises instances available for AWS CodeDeploy
  #             deployments, to get details about a Lambda function deployment, and to get details about
  #             Amazon ECS service deployments.</p>
  #         <p>
  #             <b>AWS CodeDeploy Information Resources</b>
  #          </p>
  #         <ul>
  #             <li>
  #                 <p>
  #                   <a href="https://docs.aws.amazon.com/codedeploy/latest/userguide">AWS CodeDeploy
  #                         User Guide</a>
  #                </p>
  #             </li>
  #             <li>
  #                 <p>
  #                   <a href="https://docs.aws.amazon.com/codedeploy/latest/APIReference/">AWS
  #                         CodeDeploy API Reference Guide</a>
  #                </p>
  #             </li>
  #             <li>
  #                 <p>
  #                   <a href="https://docs.aws.amazon.com/cli/latest/reference/deploy/index.html">AWS
  #                         CLI Reference for AWS CodeDeploy</a>
  #                </p>
  #             </li>
  #             <li>
  #                 <p>
  #                     <a href="https://forums.aws.amazon.com/forum.jspa?forumID=179">AWS CodeDeploy
  #                         Developer Forum</a>
  #                 </p>
  #             </li>
  #          </ul>
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
    def initialize(config = AWS::SDK::CodeDeploy::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Adds tags to on-premises instances.</p>
    #
    # @param [Hash] params
    #   See {Types::AddTagsToOnPremisesInstancesInput}.
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tag key-value pairs to add to the on-premises instances.</p>
    #           <p>Keys and values are both required. Keys cannot be null or empty strings. Value-only
    #               tags are not allowed.</p>
    #
    # @option params [Array<String>] :instance_names
    #   <p>The names of the on-premises instances to which to add tags.</p>
    #
    # @return [Types::AddTagsToOnPremisesInstancesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_tags_to_on_premises_instances(
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ], # required
    #     instance_names: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AddTagsToOnPremisesInstancesOutput
    #
    def add_tags_to_on_premises_instances(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddTagsToOnPremisesInstancesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AddTagsToOnPremisesInstancesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AddTagsToOnPremisesInstances
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InstanceLimitExceededException, Errors::InstanceNameRequiredException, Errors::InstanceNotRegisteredException, Errors::InvalidInstanceNameException, Errors::InvalidTagException, Errors::TagLimitExceededException, Errors::TagRequiredException]),
        data_parser: Parsers::AddTagsToOnPremisesInstances
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AddTagsToOnPremisesInstances,
        stubs: @stubs,
        params_class: Params::AddTagsToOnPremisesInstancesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :add_tags_to_on_premises_instances
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about one or more application revisions. The maximum number of
    #             application revisions that can be returned is 25.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchGetApplicationRevisionsInput}.
    #
    # @option params [String] :application_name
    #   <p>The name of an AWS CodeDeploy application about which to get revision
    #               information.</p>
    #
    # @option params [Array<RevisionLocation>] :revisions
    #   <p>An array of <code>RevisionLocation</code> objects that specify information to get
    #               about the application revisions, including type and location. The maximum number of
    #                   <code>RevisionLocation</code> objects you can specify is 25.</p>
    #
    # @return [Types::BatchGetApplicationRevisionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_application_revisions(
    #     application_name: 'applicationName', # required
    #     revisions: [
    #       {
    #         revision_type: 'S3', # accepts ["S3", "GitHub", "String", "AppSpecContent"]
    #         s3_location: {
    #           bucket: 'bucket',
    #           key: 'key',
    #           bundle_type: 'tar', # accepts ["tar", "tgz", "zip", "YAML", "JSON"]
    #           version: 'version',
    #           e_tag: 'eTag'
    #         },
    #         git_hub_location: {
    #           repository: 'repository',
    #           commit_id: 'commitId'
    #         },
    #         string: {
    #           content: 'content',
    #           sha256: 'sha256'
    #         },
    #         app_spec_content: {
    #           content: 'content',
    #           sha256: 'sha256'
    #         }
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchGetApplicationRevisionsOutput
    #   resp.data.application_name #=> String
    #   resp.data.error_message #=> String
    #   resp.data.revisions #=> Array<RevisionInfo>
    #   resp.data.revisions[0] #=> Types::RevisionInfo
    #   resp.data.revisions[0].revision_location #=> Types::RevisionLocation
    #   resp.data.revisions[0].revision_location.revision_type #=> String, one of ["S3", "GitHub", "String", "AppSpecContent"]
    #   resp.data.revisions[0].revision_location.s3_location #=> Types::S3Location
    #   resp.data.revisions[0].revision_location.s3_location.bucket #=> String
    #   resp.data.revisions[0].revision_location.s3_location.key #=> String
    #   resp.data.revisions[0].revision_location.s3_location.bundle_type #=> String, one of ["tar", "tgz", "zip", "YAML", "JSON"]
    #   resp.data.revisions[0].revision_location.s3_location.version #=> String
    #   resp.data.revisions[0].revision_location.s3_location.e_tag #=> String
    #   resp.data.revisions[0].revision_location.git_hub_location #=> Types::GitHubLocation
    #   resp.data.revisions[0].revision_location.git_hub_location.repository #=> String
    #   resp.data.revisions[0].revision_location.git_hub_location.commit_id #=> String
    #   resp.data.revisions[0].revision_location.string #=> Types::RawString
    #   resp.data.revisions[0].revision_location.string.content #=> String
    #   resp.data.revisions[0].revision_location.string.sha256 #=> String
    #   resp.data.revisions[0].revision_location.app_spec_content #=> Types::AppSpecContent
    #   resp.data.revisions[0].revision_location.app_spec_content.content #=> String
    #   resp.data.revisions[0].revision_location.app_spec_content.sha256 #=> String
    #   resp.data.revisions[0].generic_revision_info #=> Types::GenericRevisionInfo
    #   resp.data.revisions[0].generic_revision_info.description #=> String
    #   resp.data.revisions[0].generic_revision_info.deployment_groups #=> Array<String>
    #   resp.data.revisions[0].generic_revision_info.deployment_groups[0] #=> String
    #   resp.data.revisions[0].generic_revision_info.first_used_time #=> Time
    #   resp.data.revisions[0].generic_revision_info.last_used_time #=> Time
    #   resp.data.revisions[0].generic_revision_info.register_time #=> Time
    #
    def batch_get_application_revisions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchGetApplicationRevisionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchGetApplicationRevisionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchGetApplicationRevisions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ApplicationDoesNotExistException, Errors::ApplicationNameRequiredException, Errors::BatchLimitExceededException, Errors::InvalidApplicationNameException, Errors::InvalidRevisionException, Errors::RevisionRequiredException]),
        data_parser: Parsers::BatchGetApplicationRevisions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchGetApplicationRevisions,
        stubs: @stubs,
        params_class: Params::BatchGetApplicationRevisionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_get_application_revisions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about one or more applications. The maximum number of applications
    #             that can be returned is 100.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchGetApplicationsInput}.
    #
    # @option params [Array<String>] :application_names
    #   <p>A list of application names separated by spaces. The maximum number of application
    #               names you can specify is 100.</p>
    #
    # @return [Types::BatchGetApplicationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_applications(
    #     application_names: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchGetApplicationsOutput
    #   resp.data.applications_info #=> Array<ApplicationInfo>
    #   resp.data.applications_info[0] #=> Types::ApplicationInfo
    #   resp.data.applications_info[0].application_id #=> String
    #   resp.data.applications_info[0].application_name #=> String
    #   resp.data.applications_info[0].create_time #=> Time
    #   resp.data.applications_info[0].linked_to_git_hub #=> Boolean
    #   resp.data.applications_info[0].git_hub_account_name #=> String
    #   resp.data.applications_info[0].compute_platform #=> String, one of ["Server", "Lambda", "ECS"]
    #
    def batch_get_applications(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchGetApplicationsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchGetApplicationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchGetApplications
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ApplicationDoesNotExistException, Errors::ApplicationNameRequiredException, Errors::BatchLimitExceededException, Errors::InvalidApplicationNameException]),
        data_parser: Parsers::BatchGetApplications
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchGetApplications,
        stubs: @stubs,
        params_class: Params::BatchGetApplicationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_get_applications
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about one or more deployment groups.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchGetDeploymentGroupsInput}.
    #
    # @option params [String] :application_name
    #   <p>The name of an AWS CodeDeploy application associated with the applicable IAM user or
    #               AWS account.</p>
    #
    # @option params [Array<String>] :deployment_group_names
    #   <p>The names of the deployment groups.</p>
    #
    # @return [Types::BatchGetDeploymentGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_deployment_groups(
    #     application_name: 'applicationName', # required
    #     deployment_group_names: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchGetDeploymentGroupsOutput
    #   resp.data.deployment_groups_info #=> Array<DeploymentGroupInfo>
    #   resp.data.deployment_groups_info[0] #=> Types::DeploymentGroupInfo
    #   resp.data.deployment_groups_info[0].application_name #=> String
    #   resp.data.deployment_groups_info[0].deployment_group_id #=> String
    #   resp.data.deployment_groups_info[0].deployment_group_name #=> String
    #   resp.data.deployment_groups_info[0].deployment_config_name #=> String
    #   resp.data.deployment_groups_info[0].ec2_tag_filters #=> Array<EC2TagFilter>
    #   resp.data.deployment_groups_info[0].ec2_tag_filters[0] #=> Types::EC2TagFilter
    #   resp.data.deployment_groups_info[0].ec2_tag_filters[0].key #=> String
    #   resp.data.deployment_groups_info[0].ec2_tag_filters[0].value #=> String
    #   resp.data.deployment_groups_info[0].ec2_tag_filters[0].type #=> String, one of ["KEY_ONLY", "VALUE_ONLY", "KEY_AND_VALUE"]
    #   resp.data.deployment_groups_info[0].on_premises_instance_tag_filters #=> Array<TagFilter>
    #   resp.data.deployment_groups_info[0].on_premises_instance_tag_filters[0] #=> Types::TagFilter
    #   resp.data.deployment_groups_info[0].on_premises_instance_tag_filters[0].key #=> String
    #   resp.data.deployment_groups_info[0].on_premises_instance_tag_filters[0].value #=> String
    #   resp.data.deployment_groups_info[0].on_premises_instance_tag_filters[0].type #=> String, one of ["KEY_ONLY", "VALUE_ONLY", "KEY_AND_VALUE"]
    #   resp.data.deployment_groups_info[0].auto_scaling_groups #=> Array<AutoScalingGroup>
    #   resp.data.deployment_groups_info[0].auto_scaling_groups[0] #=> Types::AutoScalingGroup
    #   resp.data.deployment_groups_info[0].auto_scaling_groups[0].name #=> String
    #   resp.data.deployment_groups_info[0].auto_scaling_groups[0].hook #=> String
    #   resp.data.deployment_groups_info[0].service_role_arn #=> String
    #   resp.data.deployment_groups_info[0].target_revision #=> Types::RevisionLocation
    #   resp.data.deployment_groups_info[0].target_revision.revision_type #=> String, one of ["S3", "GitHub", "String", "AppSpecContent"]
    #   resp.data.deployment_groups_info[0].target_revision.s3_location #=> Types::S3Location
    #   resp.data.deployment_groups_info[0].target_revision.s3_location.bucket #=> String
    #   resp.data.deployment_groups_info[0].target_revision.s3_location.key #=> String
    #   resp.data.deployment_groups_info[0].target_revision.s3_location.bundle_type #=> String, one of ["tar", "tgz", "zip", "YAML", "JSON"]
    #   resp.data.deployment_groups_info[0].target_revision.s3_location.version #=> String
    #   resp.data.deployment_groups_info[0].target_revision.s3_location.e_tag #=> String
    #   resp.data.deployment_groups_info[0].target_revision.git_hub_location #=> Types::GitHubLocation
    #   resp.data.deployment_groups_info[0].target_revision.git_hub_location.repository #=> String
    #   resp.data.deployment_groups_info[0].target_revision.git_hub_location.commit_id #=> String
    #   resp.data.deployment_groups_info[0].target_revision.string #=> Types::RawString
    #   resp.data.deployment_groups_info[0].target_revision.string.content #=> String
    #   resp.data.deployment_groups_info[0].target_revision.string.sha256 #=> String
    #   resp.data.deployment_groups_info[0].target_revision.app_spec_content #=> Types::AppSpecContent
    #   resp.data.deployment_groups_info[0].target_revision.app_spec_content.content #=> String
    #   resp.data.deployment_groups_info[0].target_revision.app_spec_content.sha256 #=> String
    #   resp.data.deployment_groups_info[0].trigger_configurations #=> Array<TriggerConfig>
    #   resp.data.deployment_groups_info[0].trigger_configurations[0] #=> Types::TriggerConfig
    #   resp.data.deployment_groups_info[0].trigger_configurations[0].trigger_name #=> String
    #   resp.data.deployment_groups_info[0].trigger_configurations[0].trigger_target_arn #=> String
    #   resp.data.deployment_groups_info[0].trigger_configurations[0].trigger_events #=> Array<String>
    #   resp.data.deployment_groups_info[0].trigger_configurations[0].trigger_events[0] #=> String, one of ["DeploymentStart", "DeploymentSuccess", "DeploymentFailure", "DeploymentStop", "DeploymentRollback", "DeploymentReady", "InstanceStart", "InstanceSuccess", "InstanceFailure", "InstanceReady"]
    #   resp.data.deployment_groups_info[0].alarm_configuration #=> Types::AlarmConfiguration
    #   resp.data.deployment_groups_info[0].alarm_configuration.enabled #=> Boolean
    #   resp.data.deployment_groups_info[0].alarm_configuration.ignore_poll_alarm_failure #=> Boolean
    #   resp.data.deployment_groups_info[0].alarm_configuration.alarms #=> Array<Alarm>
    #   resp.data.deployment_groups_info[0].alarm_configuration.alarms[0] #=> Types::Alarm
    #   resp.data.deployment_groups_info[0].alarm_configuration.alarms[0].name #=> String
    #   resp.data.deployment_groups_info[0].auto_rollback_configuration #=> Types::AutoRollbackConfiguration
    #   resp.data.deployment_groups_info[0].auto_rollback_configuration.enabled #=> Boolean
    #   resp.data.deployment_groups_info[0].auto_rollback_configuration.events #=> Array<String>
    #   resp.data.deployment_groups_info[0].auto_rollback_configuration.events[0] #=> String, one of ["DEPLOYMENT_FAILURE", "DEPLOYMENT_STOP_ON_ALARM", "DEPLOYMENT_STOP_ON_REQUEST"]
    #   resp.data.deployment_groups_info[0].deployment_style #=> Types::DeploymentStyle
    #   resp.data.deployment_groups_info[0].deployment_style.deployment_type #=> String, one of ["IN_PLACE", "BLUE_GREEN"]
    #   resp.data.deployment_groups_info[0].deployment_style.deployment_option #=> String, one of ["WITH_TRAFFIC_CONTROL", "WITHOUT_TRAFFIC_CONTROL"]
    #   resp.data.deployment_groups_info[0].outdated_instances_strategy #=> String, one of ["UPDATE", "IGNORE"]
    #   resp.data.deployment_groups_info[0].blue_green_deployment_configuration #=> Types::BlueGreenDeploymentConfiguration
    #   resp.data.deployment_groups_info[0].blue_green_deployment_configuration.terminate_blue_instances_on_deployment_success #=> Types::BlueInstanceTerminationOption
    #   resp.data.deployment_groups_info[0].blue_green_deployment_configuration.terminate_blue_instances_on_deployment_success.action #=> String, one of ["TERMINATE", "KEEP_ALIVE"]
    #   resp.data.deployment_groups_info[0].blue_green_deployment_configuration.terminate_blue_instances_on_deployment_success.termination_wait_time_in_minutes #=> Integer
    #   resp.data.deployment_groups_info[0].blue_green_deployment_configuration.deployment_ready_option #=> Types::DeploymentReadyOption
    #   resp.data.deployment_groups_info[0].blue_green_deployment_configuration.deployment_ready_option.action_on_timeout #=> String, one of ["CONTINUE_DEPLOYMENT", "STOP_DEPLOYMENT"]
    #   resp.data.deployment_groups_info[0].blue_green_deployment_configuration.deployment_ready_option.wait_time_in_minutes #=> Integer
    #   resp.data.deployment_groups_info[0].blue_green_deployment_configuration.green_fleet_provisioning_option #=> Types::GreenFleetProvisioningOption
    #   resp.data.deployment_groups_info[0].blue_green_deployment_configuration.green_fleet_provisioning_option.action #=> String, one of ["DISCOVER_EXISTING", "COPY_AUTO_SCALING_GROUP"]
    #   resp.data.deployment_groups_info[0].load_balancer_info #=> Types::LoadBalancerInfo
    #   resp.data.deployment_groups_info[0].load_balancer_info.elb_info_list #=> Array<ELBInfo>
    #   resp.data.deployment_groups_info[0].load_balancer_info.elb_info_list[0] #=> Types::ELBInfo
    #   resp.data.deployment_groups_info[0].load_balancer_info.elb_info_list[0].name #=> String
    #   resp.data.deployment_groups_info[0].load_balancer_info.target_group_info_list #=> Array<TargetGroupInfo>
    #   resp.data.deployment_groups_info[0].load_balancer_info.target_group_info_list[0] #=> Types::TargetGroupInfo
    #   resp.data.deployment_groups_info[0].load_balancer_info.target_group_info_list[0].name #=> String
    #   resp.data.deployment_groups_info[0].load_balancer_info.target_group_pair_info_list #=> Array<TargetGroupPairInfo>
    #   resp.data.deployment_groups_info[0].load_balancer_info.target_group_pair_info_list[0] #=> Types::TargetGroupPairInfo
    #   resp.data.deployment_groups_info[0].load_balancer_info.target_group_pair_info_list[0].target_groups #=> Array<TargetGroupInfo>
    #   resp.data.deployment_groups_info[0].load_balancer_info.target_group_pair_info_list[0].prod_traffic_route #=> Types::TrafficRoute
    #   resp.data.deployment_groups_info[0].load_balancer_info.target_group_pair_info_list[0].prod_traffic_route.listener_arns #=> Array<String>
    #   resp.data.deployment_groups_info[0].load_balancer_info.target_group_pair_info_list[0].prod_traffic_route.listener_arns[0] #=> String
    #   resp.data.deployment_groups_info[0].load_balancer_info.target_group_pair_info_list[0].test_traffic_route #=> Types::TrafficRoute
    #   resp.data.deployment_groups_info[0].last_successful_deployment #=> Types::LastDeploymentInfo
    #   resp.data.deployment_groups_info[0].last_successful_deployment.deployment_id #=> String
    #   resp.data.deployment_groups_info[0].last_successful_deployment.status #=> String, one of ["Created", "Queued", "InProgress", "Baking", "Succeeded", "Failed", "Stopped", "Ready"]
    #   resp.data.deployment_groups_info[0].last_successful_deployment.end_time #=> Time
    #   resp.data.deployment_groups_info[0].last_successful_deployment.create_time #=> Time
    #   resp.data.deployment_groups_info[0].last_attempted_deployment #=> Types::LastDeploymentInfo
    #   resp.data.deployment_groups_info[0].ec2_tag_set #=> Types::EC2TagSet
    #   resp.data.deployment_groups_info[0].ec2_tag_set.ec2_tag_set_list #=> Array<Array<EC2TagFilter>>
    #   resp.data.deployment_groups_info[0].on_premises_tag_set #=> Types::OnPremisesTagSet
    #   resp.data.deployment_groups_info[0].on_premises_tag_set.on_premises_tag_set_list #=> Array<Array<TagFilter>>
    #   resp.data.deployment_groups_info[0].compute_platform #=> String, one of ["Server", "Lambda", "ECS"]
    #   resp.data.deployment_groups_info[0].ecs_services #=> Array<ECSService>
    #   resp.data.deployment_groups_info[0].ecs_services[0] #=> Types::ECSService
    #   resp.data.deployment_groups_info[0].ecs_services[0].service_name #=> String
    #   resp.data.deployment_groups_info[0].ecs_services[0].cluster_name #=> String
    #   resp.data.error_message #=> String
    #
    def batch_get_deployment_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchGetDeploymentGroupsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchGetDeploymentGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchGetDeploymentGroups
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ApplicationDoesNotExistException, Errors::ApplicationNameRequiredException, Errors::BatchLimitExceededException, Errors::DeploymentConfigDoesNotExistException, Errors::DeploymentGroupNameRequiredException, Errors::InvalidApplicationNameException, Errors::InvalidDeploymentGroupNameException]),
        data_parser: Parsers::BatchGetDeploymentGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchGetDeploymentGroups,
        stubs: @stubs,
        params_class: Params::BatchGetDeploymentGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_get_deployment_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p> This method works, but is deprecated. Use <code>BatchGetDeploymentTargets</code>
    #                 instead. </p>
    #         </note>
    #         <p> Returns an array of one or more instances associated with a deployment. This method
    #             works with EC2/On-premises and AWS Lambda compute platforms. The newer
    #                 <code>BatchGetDeploymentTargets</code> works with all compute platforms. The maximum
    #             number of instances that can be returned is 25.</p>
    #
    # @deprecated
    #   This operation is deprecated, use BatchGetDeploymentTargets instead.
    #
    # @param [Hash] params
    #   See {Types::BatchGetDeploymentInstancesInput}.
    #
    # @option params [String] :deployment_id
    #   <p> The unique ID of a deployment. </p>
    #
    # @option params [Array<String>] :instance_ids
    #   <p>The unique IDs of instances used in the deployment. The maximum number of instance IDs
    #               you can specify is 25.</p>
    #
    # @return [Types::BatchGetDeploymentInstancesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_deployment_instances(
    #     deployment_id: 'deploymentId', # required
    #     instance_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchGetDeploymentInstancesOutput
    #   resp.data.instances_summary #=> Array<InstanceSummary>
    #   resp.data.instances_summary[0] #=> Types::InstanceSummary
    #   resp.data.instances_summary[0].deployment_id #=> String
    #   resp.data.instances_summary[0].instance_id #=> String
    #   resp.data.instances_summary[0].status #=> String, one of ["Pending", "InProgress", "Succeeded", "Failed", "Skipped", "Unknown", "Ready"]
    #   resp.data.instances_summary[0].last_updated_at #=> Time
    #   resp.data.instances_summary[0].lifecycle_events #=> Array<LifecycleEvent>
    #   resp.data.instances_summary[0].lifecycle_events[0] #=> Types::LifecycleEvent
    #   resp.data.instances_summary[0].lifecycle_events[0].lifecycle_event_name #=> String
    #   resp.data.instances_summary[0].lifecycle_events[0].diagnostics #=> Types::Diagnostics
    #   resp.data.instances_summary[0].lifecycle_events[0].diagnostics.error_code #=> String, one of ["Success", "ScriptMissing", "ScriptNotExecutable", "ScriptTimedOut", "ScriptFailed", "UnknownError"]
    #   resp.data.instances_summary[0].lifecycle_events[0].diagnostics.script_name #=> String
    #   resp.data.instances_summary[0].lifecycle_events[0].diagnostics.message #=> String
    #   resp.data.instances_summary[0].lifecycle_events[0].diagnostics.log_tail #=> String
    #   resp.data.instances_summary[0].lifecycle_events[0].start_time #=> Time
    #   resp.data.instances_summary[0].lifecycle_events[0].end_time #=> Time
    #   resp.data.instances_summary[0].lifecycle_events[0].status #=> String, one of ["Pending", "InProgress", "Succeeded", "Failed", "Skipped", "Unknown"]
    #   resp.data.instances_summary[0].instance_type #=> String, one of ["Blue", "Green"]
    #   resp.data.error_message #=> String
    #
    def batch_get_deployment_instances(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchGetDeploymentInstancesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchGetDeploymentInstancesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchGetDeploymentInstances
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BatchLimitExceededException, Errors::DeploymentDoesNotExistException, Errors::DeploymentIdRequiredException, Errors::InstanceIdRequiredException, Errors::InvalidComputePlatformException, Errors::InvalidDeploymentIdException, Errors::InvalidInstanceNameException]),
        data_parser: Parsers::BatchGetDeploymentInstances
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchGetDeploymentInstances,
        stubs: @stubs,
        params_class: Params::BatchGetDeploymentInstancesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_get_deployment_instances
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns an array of one or more targets associated with a deployment. This method
    #             works with all compute types and should be used instead of the deprecated
    #                 <code>BatchGetDeploymentInstances</code>. The maximum number of targets that can be
    #             returned is 25.</p>
    #         <p> The type of targets returned depends on the deployment's compute platform or
    #             deployment method: </p>
    #         <ul>
    #             <li>
    #                 <p>
    #                     <b>EC2/On-premises</b>: Information about EC2 instance
    #                     targets. </p>
    #             </li>
    #             <li>
    #                 <p>
    #                     <b>AWS Lambda</b>: Information about Lambda functions
    #                     targets. </p>
    #             </li>
    #             <li>
    #                 <p>
    #                     <b>Amazon ECS</b>: Information about Amazon ECS
    #                     service targets. </p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <b>CloudFormation</b>: Information about targets of
    #                     blue/green deployments initiated by a CloudFormation stack update.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::BatchGetDeploymentTargetsInput}.
    #
    # @option params [String] :deployment_id
    #   <p> The unique ID of a deployment. </p>
    #
    # @option params [Array<String>] :target_ids
    #   <p> The unique IDs of the deployment targets. The compute platform of the deployment
    #               determines the type of the targets and their formats. The maximum number of deployment
    #               target IDs you can specify is 25.</p>
    #           <ul>
    #               <li>
    #                   <p> For deployments that use the EC2/On-premises compute platform, the target IDs
    #                       are EC2 or on-premises instances IDs, and their target type is
    #                           <code>instanceTarget</code>. </p>
    #               </li>
    #               <li>
    #                   <p> For deployments that use the AWS Lambda compute platform, the target IDs are
    #                       the names of Lambda functions, and their target type is
    #                           <code>instanceTarget</code>. </p>
    #               </li>
    #               <li>
    #                   <p> For deployments that use the Amazon ECS compute platform, the target IDs are
    #                       pairs of Amazon ECS clusters and services specified using the format
    #                           <code><clustername>:<servicename></code>. Their target type is
    #                           <code>ecsTarget</code>. </p>
    #               </li>
    #               <li>
    #                   <p> For deployments that are deployed with AWS CloudFormation, the target IDs are
    #                       CloudFormation stack IDs. Their target type is
    #                       <code>cloudFormationTarget</code>. </p>
    #               </li>
    #            </ul>
    #
    # @return [Types::BatchGetDeploymentTargetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_deployment_targets(
    #     deployment_id: 'deploymentId',
    #     target_ids: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchGetDeploymentTargetsOutput
    #   resp.data.deployment_targets #=> Array<DeploymentTarget>
    #   resp.data.deployment_targets[0] #=> Types::DeploymentTarget
    #   resp.data.deployment_targets[0].deployment_target_type #=> String, one of ["InstanceTarget", "LambdaTarget", "ECSTarget", "CloudFormationTarget"]
    #   resp.data.deployment_targets[0].instance_target #=> Types::InstanceTarget
    #   resp.data.deployment_targets[0].instance_target.deployment_id #=> String
    #   resp.data.deployment_targets[0].instance_target.target_id #=> String
    #   resp.data.deployment_targets[0].instance_target.target_arn #=> String
    #   resp.data.deployment_targets[0].instance_target.status #=> String, one of ["Pending", "InProgress", "Succeeded", "Failed", "Skipped", "Unknown", "Ready"]
    #   resp.data.deployment_targets[0].instance_target.last_updated_at #=> Time
    #   resp.data.deployment_targets[0].instance_target.lifecycle_events #=> Array<LifecycleEvent>
    #   resp.data.deployment_targets[0].instance_target.lifecycle_events[0] #=> Types::LifecycleEvent
    #   resp.data.deployment_targets[0].instance_target.lifecycle_events[0].lifecycle_event_name #=> String
    #   resp.data.deployment_targets[0].instance_target.lifecycle_events[0].diagnostics #=> Types::Diagnostics
    #   resp.data.deployment_targets[0].instance_target.lifecycle_events[0].diagnostics.error_code #=> String, one of ["Success", "ScriptMissing", "ScriptNotExecutable", "ScriptTimedOut", "ScriptFailed", "UnknownError"]
    #   resp.data.deployment_targets[0].instance_target.lifecycle_events[0].diagnostics.script_name #=> String
    #   resp.data.deployment_targets[0].instance_target.lifecycle_events[0].diagnostics.message #=> String
    #   resp.data.deployment_targets[0].instance_target.lifecycle_events[0].diagnostics.log_tail #=> String
    #   resp.data.deployment_targets[0].instance_target.lifecycle_events[0].start_time #=> Time
    #   resp.data.deployment_targets[0].instance_target.lifecycle_events[0].end_time #=> Time
    #   resp.data.deployment_targets[0].instance_target.lifecycle_events[0].status #=> String, one of ["Pending", "InProgress", "Succeeded", "Failed", "Skipped", "Unknown"]
    #   resp.data.deployment_targets[0].instance_target.instance_label #=> String, one of ["Blue", "Green"]
    #   resp.data.deployment_targets[0].lambda_target #=> Types::LambdaTarget
    #   resp.data.deployment_targets[0].lambda_target.deployment_id #=> String
    #   resp.data.deployment_targets[0].lambda_target.target_id #=> String
    #   resp.data.deployment_targets[0].lambda_target.target_arn #=> String
    #   resp.data.deployment_targets[0].lambda_target.status #=> String, one of ["Pending", "InProgress", "Succeeded", "Failed", "Skipped", "Unknown", "Ready"]
    #   resp.data.deployment_targets[0].lambda_target.last_updated_at #=> Time
    #   resp.data.deployment_targets[0].lambda_target.lifecycle_events #=> Array<LifecycleEvent>
    #   resp.data.deployment_targets[0].lambda_target.lambda_function_info #=> Types::LambdaFunctionInfo
    #   resp.data.deployment_targets[0].lambda_target.lambda_function_info.function_name #=> String
    #   resp.data.deployment_targets[0].lambda_target.lambda_function_info.function_alias #=> String
    #   resp.data.deployment_targets[0].lambda_target.lambda_function_info.current_version #=> String
    #   resp.data.deployment_targets[0].lambda_target.lambda_function_info.target_version #=> String
    #   resp.data.deployment_targets[0].lambda_target.lambda_function_info.target_version_weight #=> Float
    #   resp.data.deployment_targets[0].ecs_target #=> Types::ECSTarget
    #   resp.data.deployment_targets[0].ecs_target.deployment_id #=> String
    #   resp.data.deployment_targets[0].ecs_target.target_id #=> String
    #   resp.data.deployment_targets[0].ecs_target.target_arn #=> String
    #   resp.data.deployment_targets[0].ecs_target.last_updated_at #=> Time
    #   resp.data.deployment_targets[0].ecs_target.lifecycle_events #=> Array<LifecycleEvent>
    #   resp.data.deployment_targets[0].ecs_target.status #=> String, one of ["Pending", "InProgress", "Succeeded", "Failed", "Skipped", "Unknown", "Ready"]
    #   resp.data.deployment_targets[0].ecs_target.task_sets_info #=> Array<ECSTaskSet>
    #   resp.data.deployment_targets[0].ecs_target.task_sets_info[0] #=> Types::ECSTaskSet
    #   resp.data.deployment_targets[0].ecs_target.task_sets_info[0].identifer #=> String
    #   resp.data.deployment_targets[0].ecs_target.task_sets_info[0].desired_count #=> Integer
    #   resp.data.deployment_targets[0].ecs_target.task_sets_info[0].pending_count #=> Integer
    #   resp.data.deployment_targets[0].ecs_target.task_sets_info[0].running_count #=> Integer
    #   resp.data.deployment_targets[0].ecs_target.task_sets_info[0].status #=> String
    #   resp.data.deployment_targets[0].ecs_target.task_sets_info[0].traffic_weight #=> Float
    #   resp.data.deployment_targets[0].ecs_target.task_sets_info[0].target_group #=> Types::TargetGroupInfo
    #   resp.data.deployment_targets[0].ecs_target.task_sets_info[0].target_group.name #=> String
    #   resp.data.deployment_targets[0].ecs_target.task_sets_info[0].task_set_label #=> String, one of ["Blue", "Green"]
    #   resp.data.deployment_targets[0].cloud_formation_target #=> Types::CloudFormationTarget
    #   resp.data.deployment_targets[0].cloud_formation_target.deployment_id #=> String
    #   resp.data.deployment_targets[0].cloud_formation_target.target_id #=> String
    #   resp.data.deployment_targets[0].cloud_formation_target.last_updated_at #=> Time
    #   resp.data.deployment_targets[0].cloud_formation_target.lifecycle_events #=> Array<LifecycleEvent>
    #   resp.data.deployment_targets[0].cloud_formation_target.status #=> String, one of ["Pending", "InProgress", "Succeeded", "Failed", "Skipped", "Unknown", "Ready"]
    #   resp.data.deployment_targets[0].cloud_formation_target.resource_type #=> String
    #   resp.data.deployment_targets[0].cloud_formation_target.target_version_weight #=> Float
    #
    def batch_get_deployment_targets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchGetDeploymentTargetsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchGetDeploymentTargetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchGetDeploymentTargets
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DeploymentDoesNotExistException, Errors::DeploymentIdRequiredException, Errors::DeploymentNotStartedException, Errors::DeploymentTargetDoesNotExistException, Errors::DeploymentTargetIdRequiredException, Errors::DeploymentTargetListSizeExceededException, Errors::InstanceDoesNotExistException, Errors::InvalidDeploymentIdException, Errors::InvalidDeploymentTargetIdException]),
        data_parser: Parsers::BatchGetDeploymentTargets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchGetDeploymentTargets,
        stubs: @stubs,
        params_class: Params::BatchGetDeploymentTargetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_get_deployment_targets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about one or more deployments. The maximum number of deployments that
    #             can be returned is 25.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchGetDeploymentsInput}.
    #
    # @option params [Array<String>] :deployment_ids
    #   <p> A list of deployment IDs, separated by spaces. The maximum number of deployment IDs
    #               you can specify is 25.</p>
    #
    # @return [Types::BatchGetDeploymentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_deployments(
    #     deployment_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchGetDeploymentsOutput
    #   resp.data.deployments_info #=> Array<DeploymentInfo>
    #   resp.data.deployments_info[0] #=> Types::DeploymentInfo
    #   resp.data.deployments_info[0].application_name #=> String
    #   resp.data.deployments_info[0].deployment_group_name #=> String
    #   resp.data.deployments_info[0].deployment_config_name #=> String
    #   resp.data.deployments_info[0].deployment_id #=> String
    #   resp.data.deployments_info[0].previous_revision #=> Types::RevisionLocation
    #   resp.data.deployments_info[0].previous_revision.revision_type #=> String, one of ["S3", "GitHub", "String", "AppSpecContent"]
    #   resp.data.deployments_info[0].previous_revision.s3_location #=> Types::S3Location
    #   resp.data.deployments_info[0].previous_revision.s3_location.bucket #=> String
    #   resp.data.deployments_info[0].previous_revision.s3_location.key #=> String
    #   resp.data.deployments_info[0].previous_revision.s3_location.bundle_type #=> String, one of ["tar", "tgz", "zip", "YAML", "JSON"]
    #   resp.data.deployments_info[0].previous_revision.s3_location.version #=> String
    #   resp.data.deployments_info[0].previous_revision.s3_location.e_tag #=> String
    #   resp.data.deployments_info[0].previous_revision.git_hub_location #=> Types::GitHubLocation
    #   resp.data.deployments_info[0].previous_revision.git_hub_location.repository #=> String
    #   resp.data.deployments_info[0].previous_revision.git_hub_location.commit_id #=> String
    #   resp.data.deployments_info[0].previous_revision.string #=> Types::RawString
    #   resp.data.deployments_info[0].previous_revision.string.content #=> String
    #   resp.data.deployments_info[0].previous_revision.string.sha256 #=> String
    #   resp.data.deployments_info[0].previous_revision.app_spec_content #=> Types::AppSpecContent
    #   resp.data.deployments_info[0].previous_revision.app_spec_content.content #=> String
    #   resp.data.deployments_info[0].previous_revision.app_spec_content.sha256 #=> String
    #   resp.data.deployments_info[0].revision #=> Types::RevisionLocation
    #   resp.data.deployments_info[0].status #=> String, one of ["Created", "Queued", "InProgress", "Baking", "Succeeded", "Failed", "Stopped", "Ready"]
    #   resp.data.deployments_info[0].error_information #=> Types::ErrorInformation
    #   resp.data.deployments_info[0].error_information.code #=> String, one of ["AGENT_ISSUE", "ALARM_ACTIVE", "APPLICATION_MISSING", "AUTOSCALING_VALIDATION_ERROR", "AUTO_SCALING_CONFIGURATION", "AUTO_SCALING_IAM_ROLE_PERMISSIONS", "CODEDEPLOY_RESOURCE_CANNOT_BE_FOUND", "CUSTOMER_APPLICATION_UNHEALTHY", "DEPLOYMENT_GROUP_MISSING", "ECS_UPDATE_ERROR", "ELASTIC_LOAD_BALANCING_INVALID", "ELB_INVALID_INSTANCE", "HEALTH_CONSTRAINTS", "HEALTH_CONSTRAINTS_INVALID", "HOOK_EXECUTION_FAILURE", "IAM_ROLE_MISSING", "IAM_ROLE_PERMISSIONS", "INTERNAL_ERROR", "INVALID_ECS_SERVICE", "INVALID_LAMBDA_CONFIGURATION", "INVALID_LAMBDA_FUNCTION", "INVALID_REVISION", "MANUAL_STOP", "MISSING_BLUE_GREEN_DEPLOYMENT_CONFIGURATION", "MISSING_ELB_INFORMATION", "MISSING_GITHUB_TOKEN", "NO_EC2_SUBSCRIPTION", "NO_INSTANCES", "OVER_MAX_INSTANCES", "RESOURCE_LIMIT_EXCEEDED", "REVISION_MISSING", "THROTTLED", "TIMEOUT", "CLOUDFORMATION_STACK_FAILURE"]
    #   resp.data.deployments_info[0].error_information.message #=> String
    #   resp.data.deployments_info[0].create_time #=> Time
    #   resp.data.deployments_info[0].start_time #=> Time
    #   resp.data.deployments_info[0].complete_time #=> Time
    #   resp.data.deployments_info[0].deployment_overview #=> Types::DeploymentOverview
    #   resp.data.deployments_info[0].deployment_overview.pending #=> Integer
    #   resp.data.deployments_info[0].deployment_overview.in_progress #=> Integer
    #   resp.data.deployments_info[0].deployment_overview.succeeded #=> Integer
    #   resp.data.deployments_info[0].deployment_overview.failed #=> Integer
    #   resp.data.deployments_info[0].deployment_overview.skipped #=> Integer
    #   resp.data.deployments_info[0].deployment_overview.ready #=> Integer
    #   resp.data.deployments_info[0].description #=> String
    #   resp.data.deployments_info[0].creator #=> String, one of ["user", "autoscaling", "codeDeployRollback", "CodeDeploy", "CodeDeployAutoUpdate", "CloudFormation", "CloudFormationRollback"]
    #   resp.data.deployments_info[0].ignore_application_stop_failures #=> Boolean
    #   resp.data.deployments_info[0].auto_rollback_configuration #=> Types::AutoRollbackConfiguration
    #   resp.data.deployments_info[0].auto_rollback_configuration.enabled #=> Boolean
    #   resp.data.deployments_info[0].auto_rollback_configuration.events #=> Array<String>
    #   resp.data.deployments_info[0].auto_rollback_configuration.events[0] #=> String, one of ["DEPLOYMENT_FAILURE", "DEPLOYMENT_STOP_ON_ALARM", "DEPLOYMENT_STOP_ON_REQUEST"]
    #   resp.data.deployments_info[0].update_outdated_instances_only #=> Boolean
    #   resp.data.deployments_info[0].rollback_info #=> Types::RollbackInfo
    #   resp.data.deployments_info[0].rollback_info.rollback_deployment_id #=> String
    #   resp.data.deployments_info[0].rollback_info.rollback_triggering_deployment_id #=> String
    #   resp.data.deployments_info[0].rollback_info.rollback_message #=> String
    #   resp.data.deployments_info[0].deployment_style #=> Types::DeploymentStyle
    #   resp.data.deployments_info[0].deployment_style.deployment_type #=> String, one of ["IN_PLACE", "BLUE_GREEN"]
    #   resp.data.deployments_info[0].deployment_style.deployment_option #=> String, one of ["WITH_TRAFFIC_CONTROL", "WITHOUT_TRAFFIC_CONTROL"]
    #   resp.data.deployments_info[0].target_instances #=> Types::TargetInstances
    #   resp.data.deployments_info[0].target_instances.tag_filters #=> Array<EC2TagFilter>
    #   resp.data.deployments_info[0].target_instances.tag_filters[0] #=> Types::EC2TagFilter
    #   resp.data.deployments_info[0].target_instances.tag_filters[0].key #=> String
    #   resp.data.deployments_info[0].target_instances.tag_filters[0].value #=> String
    #   resp.data.deployments_info[0].target_instances.tag_filters[0].type #=> String, one of ["KEY_ONLY", "VALUE_ONLY", "KEY_AND_VALUE"]
    #   resp.data.deployments_info[0].target_instances.auto_scaling_groups #=> Array<String>
    #   resp.data.deployments_info[0].target_instances.auto_scaling_groups[0] #=> String
    #   resp.data.deployments_info[0].target_instances.ec2_tag_set #=> Types::EC2TagSet
    #   resp.data.deployments_info[0].target_instances.ec2_tag_set.ec2_tag_set_list #=> Array<Array<EC2TagFilter>>
    #   resp.data.deployments_info[0].instance_termination_wait_time_started #=> Boolean
    #   resp.data.deployments_info[0].blue_green_deployment_configuration #=> Types::BlueGreenDeploymentConfiguration
    #   resp.data.deployments_info[0].blue_green_deployment_configuration.terminate_blue_instances_on_deployment_success #=> Types::BlueInstanceTerminationOption
    #   resp.data.deployments_info[0].blue_green_deployment_configuration.terminate_blue_instances_on_deployment_success.action #=> String, one of ["TERMINATE", "KEEP_ALIVE"]
    #   resp.data.deployments_info[0].blue_green_deployment_configuration.terminate_blue_instances_on_deployment_success.termination_wait_time_in_minutes #=> Integer
    #   resp.data.deployments_info[0].blue_green_deployment_configuration.deployment_ready_option #=> Types::DeploymentReadyOption
    #   resp.data.deployments_info[0].blue_green_deployment_configuration.deployment_ready_option.action_on_timeout #=> String, one of ["CONTINUE_DEPLOYMENT", "STOP_DEPLOYMENT"]
    #   resp.data.deployments_info[0].blue_green_deployment_configuration.deployment_ready_option.wait_time_in_minutes #=> Integer
    #   resp.data.deployments_info[0].blue_green_deployment_configuration.green_fleet_provisioning_option #=> Types::GreenFleetProvisioningOption
    #   resp.data.deployments_info[0].blue_green_deployment_configuration.green_fleet_provisioning_option.action #=> String, one of ["DISCOVER_EXISTING", "COPY_AUTO_SCALING_GROUP"]
    #   resp.data.deployments_info[0].load_balancer_info #=> Types::LoadBalancerInfo
    #   resp.data.deployments_info[0].load_balancer_info.elb_info_list #=> Array<ELBInfo>
    #   resp.data.deployments_info[0].load_balancer_info.elb_info_list[0] #=> Types::ELBInfo
    #   resp.data.deployments_info[0].load_balancer_info.elb_info_list[0].name #=> String
    #   resp.data.deployments_info[0].load_balancer_info.target_group_info_list #=> Array<TargetGroupInfo>
    #   resp.data.deployments_info[0].load_balancer_info.target_group_info_list[0] #=> Types::TargetGroupInfo
    #   resp.data.deployments_info[0].load_balancer_info.target_group_info_list[0].name #=> String
    #   resp.data.deployments_info[0].load_balancer_info.target_group_pair_info_list #=> Array<TargetGroupPairInfo>
    #   resp.data.deployments_info[0].load_balancer_info.target_group_pair_info_list[0] #=> Types::TargetGroupPairInfo
    #   resp.data.deployments_info[0].load_balancer_info.target_group_pair_info_list[0].target_groups #=> Array<TargetGroupInfo>
    #   resp.data.deployments_info[0].load_balancer_info.target_group_pair_info_list[0].prod_traffic_route #=> Types::TrafficRoute
    #   resp.data.deployments_info[0].load_balancer_info.target_group_pair_info_list[0].prod_traffic_route.listener_arns #=> Array<String>
    #   resp.data.deployments_info[0].load_balancer_info.target_group_pair_info_list[0].prod_traffic_route.listener_arns[0] #=> String
    #   resp.data.deployments_info[0].load_balancer_info.target_group_pair_info_list[0].test_traffic_route #=> Types::TrafficRoute
    #   resp.data.deployments_info[0].additional_deployment_status_info #=> String
    #   resp.data.deployments_info[0].file_exists_behavior #=> String, one of ["DISALLOW", "OVERWRITE", "RETAIN"]
    #   resp.data.deployments_info[0].deployment_status_messages #=> Array<String>
    #   resp.data.deployments_info[0].deployment_status_messages[0] #=> String
    #   resp.data.deployments_info[0].compute_platform #=> String, one of ["Server", "Lambda", "ECS"]
    #   resp.data.deployments_info[0].external_id #=> String
    #   resp.data.deployments_info[0].related_deployments #=> Types::RelatedDeployments
    #   resp.data.deployments_info[0].related_deployments.auto_update_outdated_instances_root_deployment_id #=> String
    #   resp.data.deployments_info[0].related_deployments.auto_update_outdated_instances_deployment_ids #=> Array<String>
    #   resp.data.deployments_info[0].related_deployments.auto_update_outdated_instances_deployment_ids[0] #=> String
    #
    def batch_get_deployments(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchGetDeploymentsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchGetDeploymentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchGetDeployments
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BatchLimitExceededException, Errors::DeploymentIdRequiredException, Errors::InvalidDeploymentIdException]),
        data_parser: Parsers::BatchGetDeployments
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchGetDeployments,
        stubs: @stubs,
        params_class: Params::BatchGetDeploymentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_get_deployments
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about one or more on-premises instances. The maximum number of
    #             on-premises instances that can be returned is 25.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchGetOnPremisesInstancesInput}.
    #
    # @option params [Array<String>] :instance_names
    #   <p>The names of the on-premises instances about which to get information. The maximum
    #               number of instance names you can specify is 25.</p>
    #
    # @return [Types::BatchGetOnPremisesInstancesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_on_premises_instances(
    #     instance_names: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchGetOnPremisesInstancesOutput
    #   resp.data.instance_infos #=> Array<InstanceInfo>
    #   resp.data.instance_infos[0] #=> Types::InstanceInfo
    #   resp.data.instance_infos[0].instance_name #=> String
    #   resp.data.instance_infos[0].iam_session_arn #=> String
    #   resp.data.instance_infos[0].iam_user_arn #=> String
    #   resp.data.instance_infos[0].instance_arn #=> String
    #   resp.data.instance_infos[0].register_time #=> Time
    #   resp.data.instance_infos[0].deregister_time #=> Time
    #   resp.data.instance_infos[0].tags #=> Array<Tag>
    #   resp.data.instance_infos[0].tags[0] #=> Types::Tag
    #   resp.data.instance_infos[0].tags[0].key #=> String
    #   resp.data.instance_infos[0].tags[0].value #=> String
    #
    def batch_get_on_premises_instances(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchGetOnPremisesInstancesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchGetOnPremisesInstancesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchGetOnPremisesInstances
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BatchLimitExceededException, Errors::InstanceNameRequiredException, Errors::InvalidInstanceNameException]),
        data_parser: Parsers::BatchGetOnPremisesInstances
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchGetOnPremisesInstances,
        stubs: @stubs,
        params_class: Params::BatchGetOnPremisesInstancesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_get_on_premises_instances
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>For a blue/green deployment, starts the process of rerouting traffic from instances in
    #             the original environment to instances in the replacement environment without waiting for
    #             a specified wait time to elapse. (Traffic rerouting, which is achieved by registering
    #             instances in the replacement environment with the load balancer, can start as soon as
    #             all instances have a status of Ready.) </p>
    #
    # @param [Hash] params
    #   See {Types::ContinueDeploymentInput}.
    #
    # @option params [String] :deployment_id
    #   <p> The unique ID of a blue/green deployment for which you want to start rerouting
    #               traffic to the replacement environment. </p>
    #
    # @option params [String] :deployment_wait_type
    #   <p> The status of the deployment's waiting period. <code>READY_WAIT</code> indicates that
    #               the deployment is ready to start shifting traffic. <code>TERMINATION_WAIT</code>
    #               indicates that the traffic is shifted, but the original target is not terminated.
    #           </p>
    #
    # @return [Types::ContinueDeploymentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.continue_deployment(
    #     deployment_id: 'deploymentId',
    #     deployment_wait_type: 'READY_WAIT' # accepts ["READY_WAIT", "TERMINATION_WAIT"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ContinueDeploymentOutput
    #
    def continue_deployment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ContinueDeploymentInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ContinueDeploymentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ContinueDeployment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DeploymentAlreadyCompletedException, Errors::DeploymentDoesNotExistException, Errors::DeploymentIdRequiredException, Errors::DeploymentIsNotInReadyStateException, Errors::InvalidDeploymentIdException, Errors::InvalidDeploymentStatusException, Errors::InvalidDeploymentWaitTypeException, Errors::UnsupportedActionForDeploymentTypeException]),
        data_parser: Parsers::ContinueDeployment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ContinueDeployment,
        stubs: @stubs,
        params_class: Params::ContinueDeploymentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :continue_deployment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an application.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateApplicationInput}.
    #
    # @option params [String] :application_name
    #   <p>The name of the application. This name must be unique with the applicable IAM user or
    #               AWS account.</p>
    #
    # @option params [String] :compute_platform
    #   <p> The destination platform type for the deployment (<code>Lambda</code>,
    #                   <code>Server</code>, or <code>ECS</code>).</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p> The metadata that you apply to CodeDeploy applications to help you organize and
    #               categorize them. Each tag consists of a key and an optional value, both of which you
    #               define. </p>
    #
    # @return [Types::CreateApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_application(
    #     application_name: 'applicationName', # required
    #     compute_platform: 'Server', # accepts ["Server", "Lambda", "ECS"]
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
    #   resp.data #=> Types::CreateApplicationOutput
    #   resp.data.application_id #=> String
    #
    def create_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateApplicationInput.build(params)
      response_body = StringIO.new
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ApplicationAlreadyExistsException, Errors::ApplicationLimitExceededException, Errors::ApplicationNameRequiredException, Errors::InvalidApplicationNameException, Errors::InvalidComputePlatformException, Errors::InvalidTagsToAddException]),
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

    # <p>Deploys an application revision through the specified deployment group.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDeploymentInput}.
    #
    # @option params [String] :application_name
    #   <p>The name of an AWS CodeDeploy application associated with the IAM user or AWS
    #               account.</p>
    #
    # @option params [String] :deployment_group_name
    #   <p>The name of the deployment group.</p>
    #
    # @option params [RevisionLocation] :revision
    #   <p> The type and location of the revision to deploy. </p>
    #
    # @option params [String] :deployment_config_name
    #   <p>The name of a deployment configuration associated with the IAM user or AWS
    #               account.</p>
    #           <p>If not specified, the value configured in the deployment group is used as the default.
    #               If the deployment group does not have a deployment configuration associated with it,
    #                   <code>CodeDeployDefault</code>.<code>OneAtATime</code> is used by default.</p>
    #
    # @option params [String] :description
    #   <p>A comment about the deployment.</p>
    #
    # @option params [Boolean] :ignore_application_stop_failures
    #   <p> If true, then if an <code>ApplicationStop</code>, <code>BeforeBlockTraffic</code>, or
    #                   <code>AfterBlockTraffic</code> deployment lifecycle event to an instance fails, then
    #               the deployment continues to the next deployment lifecycle event. For example, if
    #                   <code>ApplicationStop</code> fails, the deployment continues with
    #                   <code>DownloadBundle</code>. If <code>BeforeBlockTraffic</code> fails, the
    #               deployment continues with <code>BlockTraffic</code>. If <code>AfterBlockTraffic</code>
    #               fails, the deployment continues with <code>ApplicationStop</code>. </p>
    #
    #           <p> If false or not specified, then if a lifecycle event fails during a deployment to an
    #               instance, that deployment fails. If deployment to that instance is part of an overall
    #               deployment and the number of healthy hosts is not less than the minimum number of
    #               healthy hosts, then a deployment to the next instance is attempted. </p>
    #
    #           <p> During a deployment, the AWS CodeDeploy agent runs the scripts specified for
    #                   <code>ApplicationStop</code>, <code>BeforeBlockTraffic</code>, and
    #                   <code>AfterBlockTraffic</code> in the AppSpec file from the previous successful
    #               deployment. (All other scripts are run from the AppSpec file in the current deployment.)
    #               If one of these scripts contains an error and does not run successfully, the deployment
    #               can fail. </p>
    #
    #           <p> If the cause of the failure is a script from the last successful deployment that will
    #               never run successfully, create a new deployment and use
    #                   <code>ignoreApplicationStopFailures</code> to specify that the
    #                   <code>ApplicationStop</code>, <code>BeforeBlockTraffic</code>, and
    #                   <code>AfterBlockTraffic</code> failures should be ignored. </p>
    #
    # @option params [TargetInstances] :target_instances
    #   <p> Information about the instances that belong to the replacement environment in a
    #               blue/green deployment. </p>
    #
    # @option params [AutoRollbackConfiguration] :auto_rollback_configuration
    #   <p>Configuration information for an automatic rollback that is added when a deployment is
    #               created.</p>
    #
    # @option params [Boolean] :update_outdated_instances_only
    #   <p> Indicates whether to deploy to all instances or only to instances that are not
    #               running the latest application revision. </p>
    #
    # @option params [String] :file_exists_behavior
    #   <p>Information about how AWS CodeDeploy handles files that already exist in a deployment
    #               target location but weren't part of the previous successful deployment.</p>
    #           <p>The <code>fileExistsBehavior</code> parameter takes any of the following
    #               values:</p>
    #           <ul>
    #               <li>
    #                   <p>DISALLOW: The deployment fails. This is also the default behavior if no option
    #                       is specified.</p>
    #               </li>
    #               <li>
    #                   <p>OVERWRITE: The version of the file from the application revision currently
    #                       being deployed replaces the version already on the instance.</p>
    #               </li>
    #               <li>
    #                   <p>RETAIN: The version of the file already on the instance is kept and used as
    #                       part of the new deployment.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::CreateDeploymentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_deployment(
    #     application_name: 'applicationName', # required
    #     deployment_group_name: 'deploymentGroupName',
    #     revision: {
    #       revision_type: 'S3', # accepts ["S3", "GitHub", "String", "AppSpecContent"]
    #       s3_location: {
    #         bucket: 'bucket',
    #         key: 'key',
    #         bundle_type: 'tar', # accepts ["tar", "tgz", "zip", "YAML", "JSON"]
    #         version: 'version',
    #         e_tag: 'eTag'
    #       },
    #       git_hub_location: {
    #         repository: 'repository',
    #         commit_id: 'commitId'
    #       },
    #       string: {
    #         content: 'content',
    #         sha256: 'sha256'
    #       },
    #       app_spec_content: {
    #         content: 'content',
    #         sha256: 'sha256'
    #       }
    #     },
    #     deployment_config_name: 'deploymentConfigName',
    #     description: 'description',
    #     ignore_application_stop_failures: false,
    #     target_instances: {
    #       tag_filters: [
    #         {
    #           key: 'Key',
    #           value: 'Value',
    #           type: 'KEY_ONLY' # accepts ["KEY_ONLY", "VALUE_ONLY", "KEY_AND_VALUE"]
    #         }
    #       ],
    #       auto_scaling_groups: [
    #         'member'
    #       ],
    #       ec2_tag_set: {
    #       }
    #     },
    #     auto_rollback_configuration: {
    #       enabled: false,
    #       events: [
    #         'DEPLOYMENT_FAILURE' # accepts ["DEPLOYMENT_FAILURE", "DEPLOYMENT_STOP_ON_ALARM", "DEPLOYMENT_STOP_ON_REQUEST"]
    #       ]
    #     },
    #     update_outdated_instances_only: false,
    #     file_exists_behavior: 'DISALLOW' # accepts ["DISALLOW", "OVERWRITE", "RETAIN"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDeploymentOutput
    #   resp.data.deployment_id #=> String
    #
    def create_deployment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDeploymentInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDeploymentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDeployment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ApplicationDoesNotExistException, Errors::ApplicationNameRequiredException, Errors::DeploymentConfigDoesNotExistException, Errors::DeploymentGroupDoesNotExistException, Errors::DeploymentGroupNameRequiredException, Errors::DeploymentLimitExceededException, Errors::DescriptionTooLongException, Errors::InvalidApplicationNameException, Errors::InvalidAutoRollbackConfigException, Errors::InvalidAutoScalingGroupException, Errors::InvalidDeploymentConfigNameException, Errors::InvalidDeploymentGroupNameException, Errors::InvalidFileExistsBehaviorException, Errors::InvalidGitHubAccountTokenException, Errors::InvalidIgnoreApplicationStopFailuresValueException, Errors::InvalidLoadBalancerInfoException, Errors::InvalidRevisionException, Errors::InvalidRoleException, Errors::InvalidTargetInstancesException, Errors::InvalidTrafficRoutingConfigurationException, Errors::InvalidUpdateOutdatedInstancesOnlyValueException, Errors::RevisionDoesNotExistException, Errors::RevisionRequiredException, Errors::ThrottlingException]),
        data_parser: Parsers::CreateDeployment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDeployment,
        stubs: @stubs,
        params_class: Params::CreateDeploymentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_deployment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Creates a deployment configuration. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateDeploymentConfigInput}.
    #
    # @option params [String] :deployment_config_name
    #   <p>The name of the deployment configuration to create.</p>
    #
    # @option params [MinimumHealthyHosts] :minimum_healthy_hosts
    #   <p>The minimum number of healthy instances that should be available at any time during
    #               the deployment. There are two parameters expected in the input: type and value.</p>
    #           <p>The type parameter takes either of the following values:</p>
    #           <ul>
    #               <li>
    #                   <p>HOST_COUNT: The value parameter represents the minimum number of healthy
    #                       instances as an absolute value.</p>
    #               </li>
    #               <li>
    #                   <p>FLEET_PERCENT: The value parameter represents the minimum number of healthy
    #                       instances as a percentage of the total number of instances in the deployment. If
    #                       you specify FLEET_PERCENT, at the start of the deployment, AWS CodeDeploy
    #                       converts the percentage to the equivalent number of instances and rounds up
    #                       fractional instances.</p>
    #               </li>
    #            </ul>
    #           <p>The value parameter takes an integer.</p>
    #           <p>For example, to set a minimum of 95% healthy instance, specify a type of FLEET_PERCENT
    #               and a value of 95.</p>
    #
    # @option params [TrafficRoutingConfig] :traffic_routing_config
    #   <p>The configuration that specifies how the deployment traffic is routed.</p>
    #
    # @option params [String] :compute_platform
    #   <p>The destination platform type for the deployment (<code>Lambda</code>,
    #                   <code>Server</code>, or <code>ECS</code>).</p>
    #
    # @return [Types::CreateDeploymentConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_deployment_config(
    #     deployment_config_name: 'deploymentConfigName', # required
    #     minimum_healthy_hosts: {
    #       type: 'HOST_COUNT', # accepts ["HOST_COUNT", "FLEET_PERCENT"]
    #       value: 1
    #     },
    #     traffic_routing_config: {
    #       type: 'TimeBasedCanary', # accepts ["TimeBasedCanary", "TimeBasedLinear", "AllAtOnce"]
    #       time_based_canary: {
    #         canary_percentage: 1,
    #         canary_interval: 1
    #       },
    #       time_based_linear: {
    #         linear_percentage: 1,
    #         linear_interval: 1
    #       }
    #     },
    #     compute_platform: 'Server' # accepts ["Server", "Lambda", "ECS"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDeploymentConfigOutput
    #   resp.data.deployment_config_id #=> String
    #
    def create_deployment_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDeploymentConfigInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDeploymentConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDeploymentConfig
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DeploymentConfigAlreadyExistsException, Errors::DeploymentConfigLimitExceededException, Errors::DeploymentConfigNameRequiredException, Errors::InvalidComputePlatformException, Errors::InvalidDeploymentConfigNameException, Errors::InvalidMinimumHealthyHostValueException, Errors::InvalidTrafficRoutingConfigurationException]),
        data_parser: Parsers::CreateDeploymentConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDeploymentConfig,
        stubs: @stubs,
        params_class: Params::CreateDeploymentConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_deployment_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a deployment group to which application revisions are deployed.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDeploymentGroupInput}.
    #
    # @option params [String] :application_name
    #   <p>The name of an AWS CodeDeploy application associated with the IAM user or AWS
    #               account.</p>
    #
    # @option params [String] :deployment_group_name
    #   <p>The name of a new deployment group for the specified application.</p>
    #
    # @option params [String] :deployment_config_name
    #   <p>If specified, the deployment configuration name can be either one of the predefined
    #               configurations provided with AWS CodeDeploy or a custom deployment configuration that
    #               you create by calling the create deployment configuration operation.</p>
    #           <p>
    #               <code>CodeDeployDefault.OneAtATime</code> is the default deployment configuration. It
    #               is used if a configuration isn't specified for the deployment or deployment
    #               group.</p>
    #           <p>For more information about the predefined deployment configurations in AWS CodeDeploy,
    #               see <a href="https://docs.aws.amazon.com/codedeploy/latest/userguide/deployment-configurations.html">Working with
    #                   Deployment Configurations in CodeDeploy</a> in the <i>AWS CodeDeploy User
    #                   Guide</i>.</p>
    #
    # @option params [Array<EC2TagFilter>] :ec2_tag_filters
    #   <p>The Amazon EC2 tags on which to filter. The deployment group includes EC2 instances
    #               with any of the specified tags. Cannot be used in the same call as ec2TagSet.</p>
    #
    # @option params [Array<TagFilter>] :on_premises_instance_tag_filters
    #   <p>The on-premises instance tags on which to filter. The deployment group includes
    #               on-premises instances with any of the specified tags. Cannot be used in the same call as
    #                   <code>OnPremisesTagSet</code>.</p>
    #
    # @option params [Array<String>] :auto_scaling_groups
    #   <p>A list of associated Amazon EC2 Auto Scaling groups.</p>
    #
    # @option params [String] :service_role_arn
    #   <p>A service role Amazon Resource Name (ARN) that allows AWS CodeDeploy to act on the
    #               user's behalf when interacting with AWS services.</p>
    #
    # @option params [Array<TriggerConfig>] :trigger_configurations
    #   <p>Information about triggers to create when the deployment group is created. For
    #               examples, see <a href="https://docs.aws.amazon.com/codedeploy/latest/userguide/how-to-notify-sns.html">Create a Trigger for an
    #                   AWS CodeDeploy Event</a> in the <i>AWS CodeDeploy User
    #               Guide</i>.</p>
    #
    # @option params [AlarmConfiguration] :alarm_configuration
    #   <p>Information to add about Amazon CloudWatch alarms when the deployment group is
    #               created.</p>
    #
    # @option params [AutoRollbackConfiguration] :auto_rollback_configuration
    #   <p>Configuration information for an automatic rollback that is added when a deployment
    #               group is created.</p>
    #
    # @option params [String] :outdated_instances_strategy
    #   <p>Indicates what happens when new EC2 instances are launched mid-deployment and do not
    #               receive the deployed application revision.</p>
    #           <p>If this option is set to <code>UPDATE</code> or is unspecified, CodeDeploy initiates
    #               one or more 'auto-update outdated instances' deployments to apply the deployed
    #               application revision to the new EC2 instances.</p>
    #           <p>If this option is set to <code>IGNORE</code>, CodeDeploy does not initiate a
    #               deployment to update the new EC2 instances. This may result in instances having
    #               different revisions.</p>
    #
    # @option params [DeploymentStyle] :deployment_style
    #   <p>Information about the type of deployment, in-place or blue/green, that you want to run
    #               and whether to route deployment traffic behind a load balancer.</p>
    #
    # @option params [BlueGreenDeploymentConfiguration] :blue_green_deployment_configuration
    #   <p>Information about blue/green deployment options for a deployment group.</p>
    #
    # @option params [LoadBalancerInfo] :load_balancer_info
    #   <p>Information about the load balancer used in a deployment.</p>
    #
    # @option params [EC2TagSet] :ec2_tag_set
    #   <p>Information about groups of tags applied to EC2 instances. The deployment group
    #               includes only EC2 instances identified by all the tag groups. Cannot be used in the same
    #               call as <code>ec2TagFilters</code>.</p>
    #
    # @option params [Array<ECSService>] :ecs_services
    #   <p> The target Amazon ECS services in the deployment group. This applies only to
    #               deployment groups that use the Amazon ECS compute platform. A target Amazon ECS service
    #               is specified as an Amazon ECS cluster and service name pair using the format
    #                   <code><clustername>:<servicename></code>. </p>
    #
    # @option params [OnPremisesTagSet] :on_premises_tag_set
    #   <p>Information about groups of tags applied to on-premises instances. The deployment
    #               group includes only on-premises instances identified by all of the tag groups. Cannot be
    #               used in the same call as <code>onPremisesInstanceTagFilters</code>.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p> The metadata that you apply to CodeDeploy deployment groups to help you organize and
    #               categorize them. Each tag consists of a key and an optional value, both of which you
    #               define. </p>
    #
    # @return [Types::CreateDeploymentGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_deployment_group(
    #     application_name: 'applicationName', # required
    #     deployment_group_name: 'deploymentGroupName', # required
    #     deployment_config_name: 'deploymentConfigName',
    #     ec2_tag_filters: [
    #       {
    #         key: 'Key',
    #         value: 'Value',
    #         type: 'KEY_ONLY' # accepts ["KEY_ONLY", "VALUE_ONLY", "KEY_AND_VALUE"]
    #       }
    #     ],
    #     on_premises_instance_tag_filters: [
    #       {
    #         key: 'Key',
    #         value: 'Value',
    #         type: 'KEY_ONLY' # accepts ["KEY_ONLY", "VALUE_ONLY", "KEY_AND_VALUE"]
    #       }
    #     ],
    #     auto_scaling_groups: [
    #       'member'
    #     ],
    #     service_role_arn: 'serviceRoleArn', # required
    #     trigger_configurations: [
    #       {
    #         trigger_name: 'triggerName',
    #         trigger_target_arn: 'triggerTargetArn',
    #         trigger_events: [
    #           'DeploymentStart' # accepts ["DeploymentStart", "DeploymentSuccess", "DeploymentFailure", "DeploymentStop", "DeploymentRollback", "DeploymentReady", "InstanceStart", "InstanceSuccess", "InstanceFailure", "InstanceReady"]
    #         ]
    #       }
    #     ],
    #     alarm_configuration: {
    #       enabled: false,
    #       ignore_poll_alarm_failure: false,
    #       alarms: [
    #         {
    #           name: 'name'
    #         }
    #       ]
    #     },
    #     auto_rollback_configuration: {
    #       enabled: false,
    #       events: [
    #         'DEPLOYMENT_FAILURE' # accepts ["DEPLOYMENT_FAILURE", "DEPLOYMENT_STOP_ON_ALARM", "DEPLOYMENT_STOP_ON_REQUEST"]
    #       ]
    #     },
    #     outdated_instances_strategy: 'UPDATE', # accepts ["UPDATE", "IGNORE"]
    #     deployment_style: {
    #       deployment_type: 'IN_PLACE', # accepts ["IN_PLACE", "BLUE_GREEN"]
    #       deployment_option: 'WITH_TRAFFIC_CONTROL' # accepts ["WITH_TRAFFIC_CONTROL", "WITHOUT_TRAFFIC_CONTROL"]
    #     },
    #     blue_green_deployment_configuration: {
    #       terminate_blue_instances_on_deployment_success: {
    #         action: 'TERMINATE', # accepts ["TERMINATE", "KEEP_ALIVE"]
    #         termination_wait_time_in_minutes: 1
    #       },
    #       deployment_ready_option: {
    #         action_on_timeout: 'CONTINUE_DEPLOYMENT', # accepts ["CONTINUE_DEPLOYMENT", "STOP_DEPLOYMENT"]
    #         wait_time_in_minutes: 1
    #       },
    #       green_fleet_provisioning_option: {
    #         action: 'DISCOVER_EXISTING' # accepts ["DISCOVER_EXISTING", "COPY_AUTO_SCALING_GROUP"]
    #       }
    #     },
    #     load_balancer_info: {
    #       elb_info_list: [
    #         {
    #           name: 'name'
    #         }
    #       ],
    #       target_group_info_list: [
    #         {
    #           name: 'name'
    #         }
    #       ],
    #       target_group_pair_info_list: [
    #         {
    #           prod_traffic_route: {
    #             listener_arns: [
    #               'member'
    #             ]
    #           },
    #         }
    #       ]
    #     },
    #     ec2_tag_set: {
    #     },
    #     ecs_services: [
    #       {
    #         service_name: 'serviceName',
    #         cluster_name: 'clusterName'
    #       }
    #     ],
    #     on_premises_tag_set: {
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
    #   resp.data #=> Types::CreateDeploymentGroupOutput
    #   resp.data.deployment_group_id #=> String
    #
    def create_deployment_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDeploymentGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDeploymentGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDeploymentGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AlarmsLimitExceededException, Errors::ApplicationDoesNotExistException, Errors::ApplicationNameRequiredException, Errors::DeploymentConfigDoesNotExistException, Errors::DeploymentGroupAlreadyExistsException, Errors::DeploymentGroupLimitExceededException, Errors::DeploymentGroupNameRequiredException, Errors::ECSServiceMappingLimitExceededException, Errors::InvalidAlarmConfigException, Errors::InvalidApplicationNameException, Errors::InvalidAutoRollbackConfigException, Errors::InvalidAutoScalingGroupException, Errors::InvalidBlueGreenDeploymentConfigurationException, Errors::InvalidDeploymentConfigNameException, Errors::InvalidDeploymentGroupNameException, Errors::InvalidDeploymentStyleException, Errors::InvalidEC2TagCombinationException, Errors::InvalidEC2TagException, Errors::InvalidECSServiceException, Errors::InvalidInputException, Errors::InvalidLoadBalancerInfoException, Errors::InvalidOnPremisesTagCombinationException, Errors::InvalidRoleException, Errors::InvalidTagException, Errors::InvalidTagsToAddException, Errors::InvalidTargetGroupPairException, Errors::InvalidTrafficRoutingConfigurationException, Errors::InvalidTriggerConfigException, Errors::LifecycleHookLimitExceededException, Errors::RoleRequiredException, Errors::TagSetListLimitExceededException, Errors::ThrottlingException, Errors::TriggerTargetsLimitExceededException]),
        data_parser: Parsers::CreateDeploymentGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDeploymentGroup,
        stubs: @stubs,
        params_class: Params::CreateDeploymentGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_deployment_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an application.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteApplicationInput}.
    #
    # @option params [String] :application_name
    #   <p>The name of an AWS CodeDeploy application associated with the IAM user or AWS
    #               account.</p>
    #
    # @return [Types::DeleteApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_application(
    #     application_name: 'applicationName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteApplicationOutput
    #
    def delete_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteApplicationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteApplicationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteApplication
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ApplicationNameRequiredException, Errors::InvalidApplicationNameException, Errors::InvalidRoleException]),
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

    # <p>Deletes a deployment configuration.</p>
    #         <note>
    #             <p>A deployment configuration cannot be deleted if it is currently in use. Predefined
    #                 configurations cannot be deleted.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteDeploymentConfigInput}.
    #
    # @option params [String] :deployment_config_name
    #   <p>The name of a deployment configuration associated with the IAM user or AWS
    #               account.</p>
    #
    # @return [Types::DeleteDeploymentConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_deployment_config(
    #     deployment_config_name: 'deploymentConfigName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDeploymentConfigOutput
    #
    def delete_deployment_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDeploymentConfigInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDeploymentConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDeploymentConfig
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DeploymentConfigInUseException, Errors::DeploymentConfigNameRequiredException, Errors::InvalidDeploymentConfigNameException, Errors::InvalidOperationException]),
        data_parser: Parsers::DeleteDeploymentConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDeploymentConfig,
        stubs: @stubs,
        params_class: Params::DeleteDeploymentConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_deployment_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a deployment group.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDeploymentGroupInput}.
    #
    # @option params [String] :application_name
    #   <p>The name of an AWS CodeDeploy application associated with the IAM user or AWS
    #               account.</p>
    #
    # @option params [String] :deployment_group_name
    #   <p>The name of a deployment group for the specified application.</p>
    #
    # @return [Types::DeleteDeploymentGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_deployment_group(
    #     application_name: 'applicationName', # required
    #     deployment_group_name: 'deploymentGroupName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDeploymentGroupOutput
    #   resp.data.hooks_not_cleaned_up #=> Array<AutoScalingGroup>
    #   resp.data.hooks_not_cleaned_up[0] #=> Types::AutoScalingGroup
    #   resp.data.hooks_not_cleaned_up[0].name #=> String
    #   resp.data.hooks_not_cleaned_up[0].hook #=> String
    #
    def delete_deployment_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDeploymentGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDeploymentGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDeploymentGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ApplicationNameRequiredException, Errors::DeploymentGroupNameRequiredException, Errors::InvalidApplicationNameException, Errors::InvalidDeploymentGroupNameException, Errors::InvalidRoleException]),
        data_parser: Parsers::DeleteDeploymentGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDeploymentGroup,
        stubs: @stubs,
        params_class: Params::DeleteDeploymentGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_deployment_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a GitHub account connection.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteGitHubAccountTokenInput}.
    #
    # @option params [String] :token_name
    #   <p>The name of the GitHub account connection to delete.</p>
    #
    # @return [Types::DeleteGitHubAccountTokenOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_git_hub_account_token(
    #     token_name: 'tokenName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteGitHubAccountTokenOutput
    #   resp.data.token_name #=> String
    #
    def delete_git_hub_account_token(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteGitHubAccountTokenInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteGitHubAccountTokenInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteGitHubAccountToken
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::GitHubAccountTokenDoesNotExistException, Errors::GitHubAccountTokenNameRequiredException, Errors::InvalidGitHubAccountTokenNameException, Errors::OperationNotSupportedException, Errors::ResourceValidationException]),
        data_parser: Parsers::DeleteGitHubAccountToken
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteGitHubAccountToken,
        stubs: @stubs,
        params_class: Params::DeleteGitHubAccountTokenOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_git_hub_account_token
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes resources linked to an external ID.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteResourcesByExternalIdInput}.
    #
    # @option params [String] :external_id
    #   <p>The unique ID of an external resource (for example, a CloudFormation stack ID) that is
    #               linked to one or more CodeDeploy resources.</p>
    #
    # @return [Types::DeleteResourcesByExternalIdOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resources_by_external_id(
    #     external_id: 'externalId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteResourcesByExternalIdOutput
    #
    def delete_resources_by_external_id(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteResourcesByExternalIdInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteResourcesByExternalIdInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteResourcesByExternalId
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::DeleteResourcesByExternalId
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteResourcesByExternalId,
        stubs: @stubs,
        params_class: Params::DeleteResourcesByExternalIdOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_resources_by_external_id
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deregisters an on-premises instance.</p>
    #
    # @param [Hash] params
    #   See {Types::DeregisterOnPremisesInstanceInput}.
    #
    # @option params [String] :instance_name
    #   <p>The name of the on-premises instance to deregister.</p>
    #
    # @return [Types::DeregisterOnPremisesInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_on_premises_instance(
    #     instance_name: 'instanceName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeregisterOnPremisesInstanceOutput
    #
    def deregister_on_premises_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeregisterOnPremisesInstanceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeregisterOnPremisesInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeregisterOnPremisesInstance
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InstanceNameRequiredException, Errors::InvalidInstanceNameException]),
        data_parser: Parsers::DeregisterOnPremisesInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeregisterOnPremisesInstance,
        stubs: @stubs,
        params_class: Params::DeregisterOnPremisesInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :deregister_on_premises_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about an application.</p>
    #
    # @param [Hash] params
    #   See {Types::GetApplicationInput}.
    #
    # @option params [String] :application_name
    #   <p>The name of an AWS CodeDeploy application associated with the IAM user or AWS
    #               account.</p>
    #
    # @return [Types::GetApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_application(
    #     application_name: 'applicationName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetApplicationOutput
    #   resp.data.application #=> Types::ApplicationInfo
    #   resp.data.application.application_id #=> String
    #   resp.data.application.application_name #=> String
    #   resp.data.application.create_time #=> Time
    #   resp.data.application.linked_to_git_hub #=> Boolean
    #   resp.data.application.git_hub_account_name #=> String
    #   resp.data.application.compute_platform #=> String, one of ["Server", "Lambda", "ECS"]
    #
    def get_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetApplicationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetApplicationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetApplication
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ApplicationDoesNotExistException, Errors::ApplicationNameRequiredException, Errors::InvalidApplicationNameException]),
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

    # <p>Gets information about an application revision.</p>
    #
    # @param [Hash] params
    #   See {Types::GetApplicationRevisionInput}.
    #
    # @option params [String] :application_name
    #   <p>The name of the application that corresponds to the revision.</p>
    #
    # @option params [RevisionLocation] :revision
    #   <p>Information about the application revision to get, including type and location.</p>
    #
    # @return [Types::GetApplicationRevisionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_application_revision(
    #     application_name: 'applicationName', # required
    #     revision: {
    #       revision_type: 'S3', # accepts ["S3", "GitHub", "String", "AppSpecContent"]
    #       s3_location: {
    #         bucket: 'bucket',
    #         key: 'key',
    #         bundle_type: 'tar', # accepts ["tar", "tgz", "zip", "YAML", "JSON"]
    #         version: 'version',
    #         e_tag: 'eTag'
    #       },
    #       git_hub_location: {
    #         repository: 'repository',
    #         commit_id: 'commitId'
    #       },
    #       string: {
    #         content: 'content',
    #         sha256: 'sha256'
    #       },
    #       app_spec_content: {
    #         content: 'content',
    #         sha256: 'sha256'
    #       }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetApplicationRevisionOutput
    #   resp.data.application_name #=> String
    #   resp.data.revision #=> Types::RevisionLocation
    #   resp.data.revision.revision_type #=> String, one of ["S3", "GitHub", "String", "AppSpecContent"]
    #   resp.data.revision.s3_location #=> Types::S3Location
    #   resp.data.revision.s3_location.bucket #=> String
    #   resp.data.revision.s3_location.key #=> String
    #   resp.data.revision.s3_location.bundle_type #=> String, one of ["tar", "tgz", "zip", "YAML", "JSON"]
    #   resp.data.revision.s3_location.version #=> String
    #   resp.data.revision.s3_location.e_tag #=> String
    #   resp.data.revision.git_hub_location #=> Types::GitHubLocation
    #   resp.data.revision.git_hub_location.repository #=> String
    #   resp.data.revision.git_hub_location.commit_id #=> String
    #   resp.data.revision.string #=> Types::RawString
    #   resp.data.revision.string.content #=> String
    #   resp.data.revision.string.sha256 #=> String
    #   resp.data.revision.app_spec_content #=> Types::AppSpecContent
    #   resp.data.revision.app_spec_content.content #=> String
    #   resp.data.revision.app_spec_content.sha256 #=> String
    #   resp.data.revision_info #=> Types::GenericRevisionInfo
    #   resp.data.revision_info.description #=> String
    #   resp.data.revision_info.deployment_groups #=> Array<String>
    #   resp.data.revision_info.deployment_groups[0] #=> String
    #   resp.data.revision_info.first_used_time #=> Time
    #   resp.data.revision_info.last_used_time #=> Time
    #   resp.data.revision_info.register_time #=> Time
    #
    def get_application_revision(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetApplicationRevisionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetApplicationRevisionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetApplicationRevision
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ApplicationDoesNotExistException, Errors::ApplicationNameRequiredException, Errors::InvalidApplicationNameException, Errors::InvalidRevisionException, Errors::RevisionDoesNotExistException, Errors::RevisionRequiredException]),
        data_parser: Parsers::GetApplicationRevision
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetApplicationRevision,
        stubs: @stubs,
        params_class: Params::GetApplicationRevisionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_application_revision
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about a deployment.</p>
    #         <note>
    #             <p> The <code>content</code> property of the <code>appSpecContent</code> object in
    #                 the returned revision is always null. Use <code>GetApplicationRevision</code> and
    #                 the <code>sha256</code> property of the returned <code>appSpecContent</code> object
    #                 to get the content of the deployment’s AppSpec file. </p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::GetDeploymentInput}.
    #
    # @option params [String] :deployment_id
    #   <p> The unique ID of a deployment associated with the IAM user or AWS account. </p>
    #
    # @return [Types::GetDeploymentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_deployment(
    #     deployment_id: 'deploymentId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDeploymentOutput
    #   resp.data.deployment_info #=> Types::DeploymentInfo
    #   resp.data.deployment_info.application_name #=> String
    #   resp.data.deployment_info.deployment_group_name #=> String
    #   resp.data.deployment_info.deployment_config_name #=> String
    #   resp.data.deployment_info.deployment_id #=> String
    #   resp.data.deployment_info.previous_revision #=> Types::RevisionLocation
    #   resp.data.deployment_info.previous_revision.revision_type #=> String, one of ["S3", "GitHub", "String", "AppSpecContent"]
    #   resp.data.deployment_info.previous_revision.s3_location #=> Types::S3Location
    #   resp.data.deployment_info.previous_revision.s3_location.bucket #=> String
    #   resp.data.deployment_info.previous_revision.s3_location.key #=> String
    #   resp.data.deployment_info.previous_revision.s3_location.bundle_type #=> String, one of ["tar", "tgz", "zip", "YAML", "JSON"]
    #   resp.data.deployment_info.previous_revision.s3_location.version #=> String
    #   resp.data.deployment_info.previous_revision.s3_location.e_tag #=> String
    #   resp.data.deployment_info.previous_revision.git_hub_location #=> Types::GitHubLocation
    #   resp.data.deployment_info.previous_revision.git_hub_location.repository #=> String
    #   resp.data.deployment_info.previous_revision.git_hub_location.commit_id #=> String
    #   resp.data.deployment_info.previous_revision.string #=> Types::RawString
    #   resp.data.deployment_info.previous_revision.string.content #=> String
    #   resp.data.deployment_info.previous_revision.string.sha256 #=> String
    #   resp.data.deployment_info.previous_revision.app_spec_content #=> Types::AppSpecContent
    #   resp.data.deployment_info.previous_revision.app_spec_content.content #=> String
    #   resp.data.deployment_info.previous_revision.app_spec_content.sha256 #=> String
    #   resp.data.deployment_info.revision #=> Types::RevisionLocation
    #   resp.data.deployment_info.status #=> String, one of ["Created", "Queued", "InProgress", "Baking", "Succeeded", "Failed", "Stopped", "Ready"]
    #   resp.data.deployment_info.error_information #=> Types::ErrorInformation
    #   resp.data.deployment_info.error_information.code #=> String, one of ["AGENT_ISSUE", "ALARM_ACTIVE", "APPLICATION_MISSING", "AUTOSCALING_VALIDATION_ERROR", "AUTO_SCALING_CONFIGURATION", "AUTO_SCALING_IAM_ROLE_PERMISSIONS", "CODEDEPLOY_RESOURCE_CANNOT_BE_FOUND", "CUSTOMER_APPLICATION_UNHEALTHY", "DEPLOYMENT_GROUP_MISSING", "ECS_UPDATE_ERROR", "ELASTIC_LOAD_BALANCING_INVALID", "ELB_INVALID_INSTANCE", "HEALTH_CONSTRAINTS", "HEALTH_CONSTRAINTS_INVALID", "HOOK_EXECUTION_FAILURE", "IAM_ROLE_MISSING", "IAM_ROLE_PERMISSIONS", "INTERNAL_ERROR", "INVALID_ECS_SERVICE", "INVALID_LAMBDA_CONFIGURATION", "INVALID_LAMBDA_FUNCTION", "INVALID_REVISION", "MANUAL_STOP", "MISSING_BLUE_GREEN_DEPLOYMENT_CONFIGURATION", "MISSING_ELB_INFORMATION", "MISSING_GITHUB_TOKEN", "NO_EC2_SUBSCRIPTION", "NO_INSTANCES", "OVER_MAX_INSTANCES", "RESOURCE_LIMIT_EXCEEDED", "REVISION_MISSING", "THROTTLED", "TIMEOUT", "CLOUDFORMATION_STACK_FAILURE"]
    #   resp.data.deployment_info.error_information.message #=> String
    #   resp.data.deployment_info.create_time #=> Time
    #   resp.data.deployment_info.start_time #=> Time
    #   resp.data.deployment_info.complete_time #=> Time
    #   resp.data.deployment_info.deployment_overview #=> Types::DeploymentOverview
    #   resp.data.deployment_info.deployment_overview.pending #=> Integer
    #   resp.data.deployment_info.deployment_overview.in_progress #=> Integer
    #   resp.data.deployment_info.deployment_overview.succeeded #=> Integer
    #   resp.data.deployment_info.deployment_overview.failed #=> Integer
    #   resp.data.deployment_info.deployment_overview.skipped #=> Integer
    #   resp.data.deployment_info.deployment_overview.ready #=> Integer
    #   resp.data.deployment_info.description #=> String
    #   resp.data.deployment_info.creator #=> String, one of ["user", "autoscaling", "codeDeployRollback", "CodeDeploy", "CodeDeployAutoUpdate", "CloudFormation", "CloudFormationRollback"]
    #   resp.data.deployment_info.ignore_application_stop_failures #=> Boolean
    #   resp.data.deployment_info.auto_rollback_configuration #=> Types::AutoRollbackConfiguration
    #   resp.data.deployment_info.auto_rollback_configuration.enabled #=> Boolean
    #   resp.data.deployment_info.auto_rollback_configuration.events #=> Array<String>
    #   resp.data.deployment_info.auto_rollback_configuration.events[0] #=> String, one of ["DEPLOYMENT_FAILURE", "DEPLOYMENT_STOP_ON_ALARM", "DEPLOYMENT_STOP_ON_REQUEST"]
    #   resp.data.deployment_info.update_outdated_instances_only #=> Boolean
    #   resp.data.deployment_info.rollback_info #=> Types::RollbackInfo
    #   resp.data.deployment_info.rollback_info.rollback_deployment_id #=> String
    #   resp.data.deployment_info.rollback_info.rollback_triggering_deployment_id #=> String
    #   resp.data.deployment_info.rollback_info.rollback_message #=> String
    #   resp.data.deployment_info.deployment_style #=> Types::DeploymentStyle
    #   resp.data.deployment_info.deployment_style.deployment_type #=> String, one of ["IN_PLACE", "BLUE_GREEN"]
    #   resp.data.deployment_info.deployment_style.deployment_option #=> String, one of ["WITH_TRAFFIC_CONTROL", "WITHOUT_TRAFFIC_CONTROL"]
    #   resp.data.deployment_info.target_instances #=> Types::TargetInstances
    #   resp.data.deployment_info.target_instances.tag_filters #=> Array<EC2TagFilter>
    #   resp.data.deployment_info.target_instances.tag_filters[0] #=> Types::EC2TagFilter
    #   resp.data.deployment_info.target_instances.tag_filters[0].key #=> String
    #   resp.data.deployment_info.target_instances.tag_filters[0].value #=> String
    #   resp.data.deployment_info.target_instances.tag_filters[0].type #=> String, one of ["KEY_ONLY", "VALUE_ONLY", "KEY_AND_VALUE"]
    #   resp.data.deployment_info.target_instances.auto_scaling_groups #=> Array<String>
    #   resp.data.deployment_info.target_instances.auto_scaling_groups[0] #=> String
    #   resp.data.deployment_info.target_instances.ec2_tag_set #=> Types::EC2TagSet
    #   resp.data.deployment_info.target_instances.ec2_tag_set.ec2_tag_set_list #=> Array<Array<EC2TagFilter>>
    #   resp.data.deployment_info.instance_termination_wait_time_started #=> Boolean
    #   resp.data.deployment_info.blue_green_deployment_configuration #=> Types::BlueGreenDeploymentConfiguration
    #   resp.data.deployment_info.blue_green_deployment_configuration.terminate_blue_instances_on_deployment_success #=> Types::BlueInstanceTerminationOption
    #   resp.data.deployment_info.blue_green_deployment_configuration.terminate_blue_instances_on_deployment_success.action #=> String, one of ["TERMINATE", "KEEP_ALIVE"]
    #   resp.data.deployment_info.blue_green_deployment_configuration.terminate_blue_instances_on_deployment_success.termination_wait_time_in_minutes #=> Integer
    #   resp.data.deployment_info.blue_green_deployment_configuration.deployment_ready_option #=> Types::DeploymentReadyOption
    #   resp.data.deployment_info.blue_green_deployment_configuration.deployment_ready_option.action_on_timeout #=> String, one of ["CONTINUE_DEPLOYMENT", "STOP_DEPLOYMENT"]
    #   resp.data.deployment_info.blue_green_deployment_configuration.deployment_ready_option.wait_time_in_minutes #=> Integer
    #   resp.data.deployment_info.blue_green_deployment_configuration.green_fleet_provisioning_option #=> Types::GreenFleetProvisioningOption
    #   resp.data.deployment_info.blue_green_deployment_configuration.green_fleet_provisioning_option.action #=> String, one of ["DISCOVER_EXISTING", "COPY_AUTO_SCALING_GROUP"]
    #   resp.data.deployment_info.load_balancer_info #=> Types::LoadBalancerInfo
    #   resp.data.deployment_info.load_balancer_info.elb_info_list #=> Array<ELBInfo>
    #   resp.data.deployment_info.load_balancer_info.elb_info_list[0] #=> Types::ELBInfo
    #   resp.data.deployment_info.load_balancer_info.elb_info_list[0].name #=> String
    #   resp.data.deployment_info.load_balancer_info.target_group_info_list #=> Array<TargetGroupInfo>
    #   resp.data.deployment_info.load_balancer_info.target_group_info_list[0] #=> Types::TargetGroupInfo
    #   resp.data.deployment_info.load_balancer_info.target_group_info_list[0].name #=> String
    #   resp.data.deployment_info.load_balancer_info.target_group_pair_info_list #=> Array<TargetGroupPairInfo>
    #   resp.data.deployment_info.load_balancer_info.target_group_pair_info_list[0] #=> Types::TargetGroupPairInfo
    #   resp.data.deployment_info.load_balancer_info.target_group_pair_info_list[0].target_groups #=> Array<TargetGroupInfo>
    #   resp.data.deployment_info.load_balancer_info.target_group_pair_info_list[0].prod_traffic_route #=> Types::TrafficRoute
    #   resp.data.deployment_info.load_balancer_info.target_group_pair_info_list[0].prod_traffic_route.listener_arns #=> Array<String>
    #   resp.data.deployment_info.load_balancer_info.target_group_pair_info_list[0].prod_traffic_route.listener_arns[0] #=> String
    #   resp.data.deployment_info.load_balancer_info.target_group_pair_info_list[0].test_traffic_route #=> Types::TrafficRoute
    #   resp.data.deployment_info.additional_deployment_status_info #=> String
    #   resp.data.deployment_info.file_exists_behavior #=> String, one of ["DISALLOW", "OVERWRITE", "RETAIN"]
    #   resp.data.deployment_info.deployment_status_messages #=> Array<String>
    #   resp.data.deployment_info.deployment_status_messages[0] #=> String
    #   resp.data.deployment_info.compute_platform #=> String, one of ["Server", "Lambda", "ECS"]
    #   resp.data.deployment_info.external_id #=> String
    #   resp.data.deployment_info.related_deployments #=> Types::RelatedDeployments
    #   resp.data.deployment_info.related_deployments.auto_update_outdated_instances_root_deployment_id #=> String
    #   resp.data.deployment_info.related_deployments.auto_update_outdated_instances_deployment_ids #=> Array<String>
    #   resp.data.deployment_info.related_deployments.auto_update_outdated_instances_deployment_ids[0] #=> String
    #
    def get_deployment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDeploymentInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDeploymentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDeployment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DeploymentDoesNotExistException, Errors::DeploymentIdRequiredException, Errors::InvalidDeploymentIdException]),
        data_parser: Parsers::GetDeployment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDeployment,
        stubs: @stubs,
        params_class: Params::GetDeploymentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_deployment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about a deployment configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDeploymentConfigInput}.
    #
    # @option params [String] :deployment_config_name
    #   <p>The name of a deployment configuration associated with the IAM user or AWS
    #               account.</p>
    #
    # @return [Types::GetDeploymentConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_deployment_config(
    #     deployment_config_name: 'deploymentConfigName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDeploymentConfigOutput
    #   resp.data.deployment_config_info #=> Types::DeploymentConfigInfo
    #   resp.data.deployment_config_info.deployment_config_id #=> String
    #   resp.data.deployment_config_info.deployment_config_name #=> String
    #   resp.data.deployment_config_info.minimum_healthy_hosts #=> Types::MinimumHealthyHosts
    #   resp.data.deployment_config_info.minimum_healthy_hosts.type #=> String, one of ["HOST_COUNT", "FLEET_PERCENT"]
    #   resp.data.deployment_config_info.minimum_healthy_hosts.value #=> Integer
    #   resp.data.deployment_config_info.create_time #=> Time
    #   resp.data.deployment_config_info.compute_platform #=> String, one of ["Server", "Lambda", "ECS"]
    #   resp.data.deployment_config_info.traffic_routing_config #=> Types::TrafficRoutingConfig
    #   resp.data.deployment_config_info.traffic_routing_config.type #=> String, one of ["TimeBasedCanary", "TimeBasedLinear", "AllAtOnce"]
    #   resp.data.deployment_config_info.traffic_routing_config.time_based_canary #=> Types::TimeBasedCanary
    #   resp.data.deployment_config_info.traffic_routing_config.time_based_canary.canary_percentage #=> Integer
    #   resp.data.deployment_config_info.traffic_routing_config.time_based_canary.canary_interval #=> Integer
    #   resp.data.deployment_config_info.traffic_routing_config.time_based_linear #=> Types::TimeBasedLinear
    #   resp.data.deployment_config_info.traffic_routing_config.time_based_linear.linear_percentage #=> Integer
    #   resp.data.deployment_config_info.traffic_routing_config.time_based_linear.linear_interval #=> Integer
    #
    def get_deployment_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDeploymentConfigInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDeploymentConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDeploymentConfig
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DeploymentConfigDoesNotExistException, Errors::DeploymentConfigNameRequiredException, Errors::InvalidComputePlatformException, Errors::InvalidDeploymentConfigNameException]),
        data_parser: Parsers::GetDeploymentConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDeploymentConfig,
        stubs: @stubs,
        params_class: Params::GetDeploymentConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_deployment_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about a deployment group.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDeploymentGroupInput}.
    #
    # @option params [String] :application_name
    #   <p>The name of an AWS CodeDeploy application associated with the IAM user or AWS
    #               account.</p>
    #
    # @option params [String] :deployment_group_name
    #   <p>The name of a deployment group for the specified application.</p>
    #
    # @return [Types::GetDeploymentGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_deployment_group(
    #     application_name: 'applicationName', # required
    #     deployment_group_name: 'deploymentGroupName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDeploymentGroupOutput
    #   resp.data.deployment_group_info #=> Types::DeploymentGroupInfo
    #   resp.data.deployment_group_info.application_name #=> String
    #   resp.data.deployment_group_info.deployment_group_id #=> String
    #   resp.data.deployment_group_info.deployment_group_name #=> String
    #   resp.data.deployment_group_info.deployment_config_name #=> String
    #   resp.data.deployment_group_info.ec2_tag_filters #=> Array<EC2TagFilter>
    #   resp.data.deployment_group_info.ec2_tag_filters[0] #=> Types::EC2TagFilter
    #   resp.data.deployment_group_info.ec2_tag_filters[0].key #=> String
    #   resp.data.deployment_group_info.ec2_tag_filters[0].value #=> String
    #   resp.data.deployment_group_info.ec2_tag_filters[0].type #=> String, one of ["KEY_ONLY", "VALUE_ONLY", "KEY_AND_VALUE"]
    #   resp.data.deployment_group_info.on_premises_instance_tag_filters #=> Array<TagFilter>
    #   resp.data.deployment_group_info.on_premises_instance_tag_filters[0] #=> Types::TagFilter
    #   resp.data.deployment_group_info.on_premises_instance_tag_filters[0].key #=> String
    #   resp.data.deployment_group_info.on_premises_instance_tag_filters[0].value #=> String
    #   resp.data.deployment_group_info.on_premises_instance_tag_filters[0].type #=> String, one of ["KEY_ONLY", "VALUE_ONLY", "KEY_AND_VALUE"]
    #   resp.data.deployment_group_info.auto_scaling_groups #=> Array<AutoScalingGroup>
    #   resp.data.deployment_group_info.auto_scaling_groups[0] #=> Types::AutoScalingGroup
    #   resp.data.deployment_group_info.auto_scaling_groups[0].name #=> String
    #   resp.data.deployment_group_info.auto_scaling_groups[0].hook #=> String
    #   resp.data.deployment_group_info.service_role_arn #=> String
    #   resp.data.deployment_group_info.target_revision #=> Types::RevisionLocation
    #   resp.data.deployment_group_info.target_revision.revision_type #=> String, one of ["S3", "GitHub", "String", "AppSpecContent"]
    #   resp.data.deployment_group_info.target_revision.s3_location #=> Types::S3Location
    #   resp.data.deployment_group_info.target_revision.s3_location.bucket #=> String
    #   resp.data.deployment_group_info.target_revision.s3_location.key #=> String
    #   resp.data.deployment_group_info.target_revision.s3_location.bundle_type #=> String, one of ["tar", "tgz", "zip", "YAML", "JSON"]
    #   resp.data.deployment_group_info.target_revision.s3_location.version #=> String
    #   resp.data.deployment_group_info.target_revision.s3_location.e_tag #=> String
    #   resp.data.deployment_group_info.target_revision.git_hub_location #=> Types::GitHubLocation
    #   resp.data.deployment_group_info.target_revision.git_hub_location.repository #=> String
    #   resp.data.deployment_group_info.target_revision.git_hub_location.commit_id #=> String
    #   resp.data.deployment_group_info.target_revision.string #=> Types::RawString
    #   resp.data.deployment_group_info.target_revision.string.content #=> String
    #   resp.data.deployment_group_info.target_revision.string.sha256 #=> String
    #   resp.data.deployment_group_info.target_revision.app_spec_content #=> Types::AppSpecContent
    #   resp.data.deployment_group_info.target_revision.app_spec_content.content #=> String
    #   resp.data.deployment_group_info.target_revision.app_spec_content.sha256 #=> String
    #   resp.data.deployment_group_info.trigger_configurations #=> Array<TriggerConfig>
    #   resp.data.deployment_group_info.trigger_configurations[0] #=> Types::TriggerConfig
    #   resp.data.deployment_group_info.trigger_configurations[0].trigger_name #=> String
    #   resp.data.deployment_group_info.trigger_configurations[0].trigger_target_arn #=> String
    #   resp.data.deployment_group_info.trigger_configurations[0].trigger_events #=> Array<String>
    #   resp.data.deployment_group_info.trigger_configurations[0].trigger_events[0] #=> String, one of ["DeploymentStart", "DeploymentSuccess", "DeploymentFailure", "DeploymentStop", "DeploymentRollback", "DeploymentReady", "InstanceStart", "InstanceSuccess", "InstanceFailure", "InstanceReady"]
    #   resp.data.deployment_group_info.alarm_configuration #=> Types::AlarmConfiguration
    #   resp.data.deployment_group_info.alarm_configuration.enabled #=> Boolean
    #   resp.data.deployment_group_info.alarm_configuration.ignore_poll_alarm_failure #=> Boolean
    #   resp.data.deployment_group_info.alarm_configuration.alarms #=> Array<Alarm>
    #   resp.data.deployment_group_info.alarm_configuration.alarms[0] #=> Types::Alarm
    #   resp.data.deployment_group_info.alarm_configuration.alarms[0].name #=> String
    #   resp.data.deployment_group_info.auto_rollback_configuration #=> Types::AutoRollbackConfiguration
    #   resp.data.deployment_group_info.auto_rollback_configuration.enabled #=> Boolean
    #   resp.data.deployment_group_info.auto_rollback_configuration.events #=> Array<String>
    #   resp.data.deployment_group_info.auto_rollback_configuration.events[0] #=> String, one of ["DEPLOYMENT_FAILURE", "DEPLOYMENT_STOP_ON_ALARM", "DEPLOYMENT_STOP_ON_REQUEST"]
    #   resp.data.deployment_group_info.deployment_style #=> Types::DeploymentStyle
    #   resp.data.deployment_group_info.deployment_style.deployment_type #=> String, one of ["IN_PLACE", "BLUE_GREEN"]
    #   resp.data.deployment_group_info.deployment_style.deployment_option #=> String, one of ["WITH_TRAFFIC_CONTROL", "WITHOUT_TRAFFIC_CONTROL"]
    #   resp.data.deployment_group_info.outdated_instances_strategy #=> String, one of ["UPDATE", "IGNORE"]
    #   resp.data.deployment_group_info.blue_green_deployment_configuration #=> Types::BlueGreenDeploymentConfiguration
    #   resp.data.deployment_group_info.blue_green_deployment_configuration.terminate_blue_instances_on_deployment_success #=> Types::BlueInstanceTerminationOption
    #   resp.data.deployment_group_info.blue_green_deployment_configuration.terminate_blue_instances_on_deployment_success.action #=> String, one of ["TERMINATE", "KEEP_ALIVE"]
    #   resp.data.deployment_group_info.blue_green_deployment_configuration.terminate_blue_instances_on_deployment_success.termination_wait_time_in_minutes #=> Integer
    #   resp.data.deployment_group_info.blue_green_deployment_configuration.deployment_ready_option #=> Types::DeploymentReadyOption
    #   resp.data.deployment_group_info.blue_green_deployment_configuration.deployment_ready_option.action_on_timeout #=> String, one of ["CONTINUE_DEPLOYMENT", "STOP_DEPLOYMENT"]
    #   resp.data.deployment_group_info.blue_green_deployment_configuration.deployment_ready_option.wait_time_in_minutes #=> Integer
    #   resp.data.deployment_group_info.blue_green_deployment_configuration.green_fleet_provisioning_option #=> Types::GreenFleetProvisioningOption
    #   resp.data.deployment_group_info.blue_green_deployment_configuration.green_fleet_provisioning_option.action #=> String, one of ["DISCOVER_EXISTING", "COPY_AUTO_SCALING_GROUP"]
    #   resp.data.deployment_group_info.load_balancer_info #=> Types::LoadBalancerInfo
    #   resp.data.deployment_group_info.load_balancer_info.elb_info_list #=> Array<ELBInfo>
    #   resp.data.deployment_group_info.load_balancer_info.elb_info_list[0] #=> Types::ELBInfo
    #   resp.data.deployment_group_info.load_balancer_info.elb_info_list[0].name #=> String
    #   resp.data.deployment_group_info.load_balancer_info.target_group_info_list #=> Array<TargetGroupInfo>
    #   resp.data.deployment_group_info.load_balancer_info.target_group_info_list[0] #=> Types::TargetGroupInfo
    #   resp.data.deployment_group_info.load_balancer_info.target_group_info_list[0].name #=> String
    #   resp.data.deployment_group_info.load_balancer_info.target_group_pair_info_list #=> Array<TargetGroupPairInfo>
    #   resp.data.deployment_group_info.load_balancer_info.target_group_pair_info_list[0] #=> Types::TargetGroupPairInfo
    #   resp.data.deployment_group_info.load_balancer_info.target_group_pair_info_list[0].target_groups #=> Array<TargetGroupInfo>
    #   resp.data.deployment_group_info.load_balancer_info.target_group_pair_info_list[0].prod_traffic_route #=> Types::TrafficRoute
    #   resp.data.deployment_group_info.load_balancer_info.target_group_pair_info_list[0].prod_traffic_route.listener_arns #=> Array<String>
    #   resp.data.deployment_group_info.load_balancer_info.target_group_pair_info_list[0].prod_traffic_route.listener_arns[0] #=> String
    #   resp.data.deployment_group_info.load_balancer_info.target_group_pair_info_list[0].test_traffic_route #=> Types::TrafficRoute
    #   resp.data.deployment_group_info.last_successful_deployment #=> Types::LastDeploymentInfo
    #   resp.data.deployment_group_info.last_successful_deployment.deployment_id #=> String
    #   resp.data.deployment_group_info.last_successful_deployment.status #=> String, one of ["Created", "Queued", "InProgress", "Baking", "Succeeded", "Failed", "Stopped", "Ready"]
    #   resp.data.deployment_group_info.last_successful_deployment.end_time #=> Time
    #   resp.data.deployment_group_info.last_successful_deployment.create_time #=> Time
    #   resp.data.deployment_group_info.last_attempted_deployment #=> Types::LastDeploymentInfo
    #   resp.data.deployment_group_info.ec2_tag_set #=> Types::EC2TagSet
    #   resp.data.deployment_group_info.ec2_tag_set.ec2_tag_set_list #=> Array<Array<EC2TagFilter>>
    #   resp.data.deployment_group_info.on_premises_tag_set #=> Types::OnPremisesTagSet
    #   resp.data.deployment_group_info.on_premises_tag_set.on_premises_tag_set_list #=> Array<Array<TagFilter>>
    #   resp.data.deployment_group_info.compute_platform #=> String, one of ["Server", "Lambda", "ECS"]
    #   resp.data.deployment_group_info.ecs_services #=> Array<ECSService>
    #   resp.data.deployment_group_info.ecs_services[0] #=> Types::ECSService
    #   resp.data.deployment_group_info.ecs_services[0].service_name #=> String
    #   resp.data.deployment_group_info.ecs_services[0].cluster_name #=> String
    #
    def get_deployment_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDeploymentGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDeploymentGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDeploymentGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ApplicationDoesNotExistException, Errors::ApplicationNameRequiredException, Errors::DeploymentConfigDoesNotExistException, Errors::DeploymentGroupDoesNotExistException, Errors::DeploymentGroupNameRequiredException, Errors::InvalidApplicationNameException, Errors::InvalidDeploymentGroupNameException]),
        data_parser: Parsers::GetDeploymentGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDeploymentGroup,
        stubs: @stubs,
        params_class: Params::GetDeploymentGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_deployment_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about an instance as part of a deployment.</p>
    #
    # @deprecated
    #   This operation is deprecated, use GetDeploymentTarget instead.
    #
    # @param [Hash] params
    #   See {Types::GetDeploymentInstanceInput}.
    #
    # @option params [String] :deployment_id
    #   <p> The unique ID of a deployment. </p>
    #
    # @option params [String] :instance_id
    #   <p> The unique ID of an instance in the deployment group. </p>
    #
    # @return [Types::GetDeploymentInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_deployment_instance(
    #     deployment_id: 'deploymentId', # required
    #     instance_id: 'instanceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDeploymentInstanceOutput
    #   resp.data.instance_summary #=> Types::InstanceSummary
    #   resp.data.instance_summary.deployment_id #=> String
    #   resp.data.instance_summary.instance_id #=> String
    #   resp.data.instance_summary.status #=> String, one of ["Pending", "InProgress", "Succeeded", "Failed", "Skipped", "Unknown", "Ready"]
    #   resp.data.instance_summary.last_updated_at #=> Time
    #   resp.data.instance_summary.lifecycle_events #=> Array<LifecycleEvent>
    #   resp.data.instance_summary.lifecycle_events[0] #=> Types::LifecycleEvent
    #   resp.data.instance_summary.lifecycle_events[0].lifecycle_event_name #=> String
    #   resp.data.instance_summary.lifecycle_events[0].diagnostics #=> Types::Diagnostics
    #   resp.data.instance_summary.lifecycle_events[0].diagnostics.error_code #=> String, one of ["Success", "ScriptMissing", "ScriptNotExecutable", "ScriptTimedOut", "ScriptFailed", "UnknownError"]
    #   resp.data.instance_summary.lifecycle_events[0].diagnostics.script_name #=> String
    #   resp.data.instance_summary.lifecycle_events[0].diagnostics.message #=> String
    #   resp.data.instance_summary.lifecycle_events[0].diagnostics.log_tail #=> String
    #   resp.data.instance_summary.lifecycle_events[0].start_time #=> Time
    #   resp.data.instance_summary.lifecycle_events[0].end_time #=> Time
    #   resp.data.instance_summary.lifecycle_events[0].status #=> String, one of ["Pending", "InProgress", "Succeeded", "Failed", "Skipped", "Unknown"]
    #   resp.data.instance_summary.instance_type #=> String, one of ["Blue", "Green"]
    #
    def get_deployment_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDeploymentInstanceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDeploymentInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDeploymentInstance
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DeploymentDoesNotExistException, Errors::DeploymentIdRequiredException, Errors::InstanceDoesNotExistException, Errors::InstanceIdRequiredException, Errors::InvalidComputePlatformException, Errors::InvalidDeploymentIdException, Errors::InvalidInstanceNameException]),
        data_parser: Parsers::GetDeploymentInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDeploymentInstance,
        stubs: @stubs,
        params_class: Params::GetDeploymentInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_deployment_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns information about a deployment target. </p>
    #
    # @param [Hash] params
    #   See {Types::GetDeploymentTargetInput}.
    #
    # @option params [String] :deployment_id
    #   <p> The unique ID of a deployment. </p>
    #
    # @option params [String] :target_id
    #   <p> The unique ID of a deployment target. </p>
    #
    # @return [Types::GetDeploymentTargetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_deployment_target(
    #     deployment_id: 'deploymentId',
    #     target_id: 'targetId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDeploymentTargetOutput
    #   resp.data.deployment_target #=> Types::DeploymentTarget
    #   resp.data.deployment_target.deployment_target_type #=> String, one of ["InstanceTarget", "LambdaTarget", "ECSTarget", "CloudFormationTarget"]
    #   resp.data.deployment_target.instance_target #=> Types::InstanceTarget
    #   resp.data.deployment_target.instance_target.deployment_id #=> String
    #   resp.data.deployment_target.instance_target.target_id #=> String
    #   resp.data.deployment_target.instance_target.target_arn #=> String
    #   resp.data.deployment_target.instance_target.status #=> String, one of ["Pending", "InProgress", "Succeeded", "Failed", "Skipped", "Unknown", "Ready"]
    #   resp.data.deployment_target.instance_target.last_updated_at #=> Time
    #   resp.data.deployment_target.instance_target.lifecycle_events #=> Array<LifecycleEvent>
    #   resp.data.deployment_target.instance_target.lifecycle_events[0] #=> Types::LifecycleEvent
    #   resp.data.deployment_target.instance_target.lifecycle_events[0].lifecycle_event_name #=> String
    #   resp.data.deployment_target.instance_target.lifecycle_events[0].diagnostics #=> Types::Diagnostics
    #   resp.data.deployment_target.instance_target.lifecycle_events[0].diagnostics.error_code #=> String, one of ["Success", "ScriptMissing", "ScriptNotExecutable", "ScriptTimedOut", "ScriptFailed", "UnknownError"]
    #   resp.data.deployment_target.instance_target.lifecycle_events[0].diagnostics.script_name #=> String
    #   resp.data.deployment_target.instance_target.lifecycle_events[0].diagnostics.message #=> String
    #   resp.data.deployment_target.instance_target.lifecycle_events[0].diagnostics.log_tail #=> String
    #   resp.data.deployment_target.instance_target.lifecycle_events[0].start_time #=> Time
    #   resp.data.deployment_target.instance_target.lifecycle_events[0].end_time #=> Time
    #   resp.data.deployment_target.instance_target.lifecycle_events[0].status #=> String, one of ["Pending", "InProgress", "Succeeded", "Failed", "Skipped", "Unknown"]
    #   resp.data.deployment_target.instance_target.instance_label #=> String, one of ["Blue", "Green"]
    #   resp.data.deployment_target.lambda_target #=> Types::LambdaTarget
    #   resp.data.deployment_target.lambda_target.deployment_id #=> String
    #   resp.data.deployment_target.lambda_target.target_id #=> String
    #   resp.data.deployment_target.lambda_target.target_arn #=> String
    #   resp.data.deployment_target.lambda_target.status #=> String, one of ["Pending", "InProgress", "Succeeded", "Failed", "Skipped", "Unknown", "Ready"]
    #   resp.data.deployment_target.lambda_target.last_updated_at #=> Time
    #   resp.data.deployment_target.lambda_target.lifecycle_events #=> Array<LifecycleEvent>
    #   resp.data.deployment_target.lambda_target.lambda_function_info #=> Types::LambdaFunctionInfo
    #   resp.data.deployment_target.lambda_target.lambda_function_info.function_name #=> String
    #   resp.data.deployment_target.lambda_target.lambda_function_info.function_alias #=> String
    #   resp.data.deployment_target.lambda_target.lambda_function_info.current_version #=> String
    #   resp.data.deployment_target.lambda_target.lambda_function_info.target_version #=> String
    #   resp.data.deployment_target.lambda_target.lambda_function_info.target_version_weight #=> Float
    #   resp.data.deployment_target.ecs_target #=> Types::ECSTarget
    #   resp.data.deployment_target.ecs_target.deployment_id #=> String
    #   resp.data.deployment_target.ecs_target.target_id #=> String
    #   resp.data.deployment_target.ecs_target.target_arn #=> String
    #   resp.data.deployment_target.ecs_target.last_updated_at #=> Time
    #   resp.data.deployment_target.ecs_target.lifecycle_events #=> Array<LifecycleEvent>
    #   resp.data.deployment_target.ecs_target.status #=> String, one of ["Pending", "InProgress", "Succeeded", "Failed", "Skipped", "Unknown", "Ready"]
    #   resp.data.deployment_target.ecs_target.task_sets_info #=> Array<ECSTaskSet>
    #   resp.data.deployment_target.ecs_target.task_sets_info[0] #=> Types::ECSTaskSet
    #   resp.data.deployment_target.ecs_target.task_sets_info[0].identifer #=> String
    #   resp.data.deployment_target.ecs_target.task_sets_info[0].desired_count #=> Integer
    #   resp.data.deployment_target.ecs_target.task_sets_info[0].pending_count #=> Integer
    #   resp.data.deployment_target.ecs_target.task_sets_info[0].running_count #=> Integer
    #   resp.data.deployment_target.ecs_target.task_sets_info[0].status #=> String
    #   resp.data.deployment_target.ecs_target.task_sets_info[0].traffic_weight #=> Float
    #   resp.data.deployment_target.ecs_target.task_sets_info[0].target_group #=> Types::TargetGroupInfo
    #   resp.data.deployment_target.ecs_target.task_sets_info[0].target_group.name #=> String
    #   resp.data.deployment_target.ecs_target.task_sets_info[0].task_set_label #=> String, one of ["Blue", "Green"]
    #   resp.data.deployment_target.cloud_formation_target #=> Types::CloudFormationTarget
    #   resp.data.deployment_target.cloud_formation_target.deployment_id #=> String
    #   resp.data.deployment_target.cloud_formation_target.target_id #=> String
    #   resp.data.deployment_target.cloud_formation_target.last_updated_at #=> Time
    #   resp.data.deployment_target.cloud_formation_target.lifecycle_events #=> Array<LifecycleEvent>
    #   resp.data.deployment_target.cloud_formation_target.status #=> String, one of ["Pending", "InProgress", "Succeeded", "Failed", "Skipped", "Unknown", "Ready"]
    #   resp.data.deployment_target.cloud_formation_target.resource_type #=> String
    #   resp.data.deployment_target.cloud_formation_target.target_version_weight #=> Float
    #
    def get_deployment_target(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDeploymentTargetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDeploymentTargetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDeploymentTarget
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DeploymentDoesNotExistException, Errors::DeploymentIdRequiredException, Errors::DeploymentNotStartedException, Errors::DeploymentTargetDoesNotExistException, Errors::DeploymentTargetIdRequiredException, Errors::InvalidDeploymentIdException, Errors::InvalidDeploymentTargetIdException, Errors::InvalidInstanceNameException]),
        data_parser: Parsers::GetDeploymentTarget
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDeploymentTarget,
        stubs: @stubs,
        params_class: Params::GetDeploymentTargetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_deployment_target
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Gets information about an on-premises instance. </p>
    #
    # @param [Hash] params
    #   See {Types::GetOnPremisesInstanceInput}.
    #
    # @option params [String] :instance_name
    #   <p> The name of the on-premises instance about which to get information. </p>
    #
    # @return [Types::GetOnPremisesInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_on_premises_instance(
    #     instance_name: 'instanceName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetOnPremisesInstanceOutput
    #   resp.data.instance_info #=> Types::InstanceInfo
    #   resp.data.instance_info.instance_name #=> String
    #   resp.data.instance_info.iam_session_arn #=> String
    #   resp.data.instance_info.iam_user_arn #=> String
    #   resp.data.instance_info.instance_arn #=> String
    #   resp.data.instance_info.register_time #=> Time
    #   resp.data.instance_info.deregister_time #=> Time
    #   resp.data.instance_info.tags #=> Array<Tag>
    #   resp.data.instance_info.tags[0] #=> Types::Tag
    #   resp.data.instance_info.tags[0].key #=> String
    #   resp.data.instance_info.tags[0].value #=> String
    #
    def get_on_premises_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetOnPremisesInstanceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetOnPremisesInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetOnPremisesInstance
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InstanceNameRequiredException, Errors::InstanceNotRegisteredException, Errors::InvalidInstanceNameException]),
        data_parser: Parsers::GetOnPremisesInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetOnPremisesInstance,
        stubs: @stubs,
        params_class: Params::GetOnPremisesInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_on_premises_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists information about revisions for an application.</p>
    #
    # @param [Hash] params
    #   See {Types::ListApplicationRevisionsInput}.
    #
    # @option params [String] :application_name
    #   <p> The name of an AWS CodeDeploy application associated with the IAM user or AWS
    #               account. </p>
    #
    # @option params [String] :sort_by
    #   <p>The column name to use to sort the list results:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>registerTime</code>: Sort by the time the revisions were registered with
    #                       AWS CodeDeploy.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>firstUsedTime</code>: Sort by the time the revisions were first used in
    #                       a deployment.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>lastUsedTime</code>: Sort by the time the revisions were last used in a
    #                       deployment.</p>
    #               </li>
    #            </ul>
    #           <p> If not specified or set to null, the results are returned in an arbitrary order.
    #           </p>
    #
    # @option params [String] :sort_order
    #   <p> The order in which to sort the list results: </p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>ascending</code>: ascending order.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>descending</code>: descending order.</p>
    #               </li>
    #            </ul>
    #           <p>If not specified, the results are sorted in ascending order.</p>
    #           <p>If set to null, the results are sorted in an arbitrary order.</p>
    #
    # @option params [String] :s3_bucket
    #   <p> An Amazon S3 bucket name to limit the search for revisions. </p>
    #           <p> If set to null, all of the user's buckets are searched. </p>
    #
    # @option params [String] :s3_key_prefix
    #   <p> A key prefix for the set of Amazon S3 objects to limit the search for revisions.
    #           </p>
    #
    # @option params [String] :deployed
    #   <p> Whether to list revisions based on whether the revision is the target revision of a
    #               deployment group: </p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>include</code>: List revisions that are target revisions of a deployment
    #                       group.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>exclude</code>: Do not list revisions that are target revisions of a
    #                       deployment group.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ignore</code>: List all revisions.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :next_token
    #   <p>An identifier returned from the previous <code>ListApplicationRevisions</code> call.
    #               It can be used to return the next set of applications in the list.</p>
    #
    # @return [Types::ListApplicationRevisionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_application_revisions(
    #     application_name: 'applicationName', # required
    #     sort_by: 'registerTime', # accepts ["registerTime", "firstUsedTime", "lastUsedTime"]
    #     sort_order: 'ascending', # accepts ["ascending", "descending"]
    #     s3_bucket: 's3Bucket',
    #     s3_key_prefix: 's3KeyPrefix',
    #     deployed: 'include', # accepts ["include", "exclude", "ignore"]
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListApplicationRevisionsOutput
    #   resp.data.revisions #=> Array<RevisionLocation>
    #   resp.data.revisions[0] #=> Types::RevisionLocation
    #   resp.data.revisions[0].revision_type #=> String, one of ["S3", "GitHub", "String", "AppSpecContent"]
    #   resp.data.revisions[0].s3_location #=> Types::S3Location
    #   resp.data.revisions[0].s3_location.bucket #=> String
    #   resp.data.revisions[0].s3_location.key #=> String
    #   resp.data.revisions[0].s3_location.bundle_type #=> String, one of ["tar", "tgz", "zip", "YAML", "JSON"]
    #   resp.data.revisions[0].s3_location.version #=> String
    #   resp.data.revisions[0].s3_location.e_tag #=> String
    #   resp.data.revisions[0].git_hub_location #=> Types::GitHubLocation
    #   resp.data.revisions[0].git_hub_location.repository #=> String
    #   resp.data.revisions[0].git_hub_location.commit_id #=> String
    #   resp.data.revisions[0].string #=> Types::RawString
    #   resp.data.revisions[0].string.content #=> String
    #   resp.data.revisions[0].string.sha256 #=> String
    #   resp.data.revisions[0].app_spec_content #=> Types::AppSpecContent
    #   resp.data.revisions[0].app_spec_content.content #=> String
    #   resp.data.revisions[0].app_spec_content.sha256 #=> String
    #   resp.data.next_token #=> String
    #
    def list_application_revisions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListApplicationRevisionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListApplicationRevisionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListApplicationRevisions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ApplicationDoesNotExistException, Errors::ApplicationNameRequiredException, Errors::BucketNameFilterRequiredException, Errors::InvalidApplicationNameException, Errors::InvalidBucketNameFilterException, Errors::InvalidDeployedStateFilterException, Errors::InvalidKeyPrefixFilterException, Errors::InvalidNextTokenException, Errors::InvalidSortByException, Errors::InvalidSortOrderException]),
        data_parser: Parsers::ListApplicationRevisions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListApplicationRevisions,
        stubs: @stubs,
        params_class: Params::ListApplicationRevisionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_application_revisions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the applications registered with the IAM user or AWS account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListApplicationsInput}.
    #
    # @option params [String] :next_token
    #   <p>An identifier returned from the previous list applications call. It can be used to
    #               return the next set of applications in the list.</p>
    #
    # @return [Types::ListApplicationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_applications(
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListApplicationsOutput
    #   resp.data.applications #=> Array<String>
    #   resp.data.applications[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_applications(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListApplicationsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListApplicationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListApplications
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException]),
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

    # <p>Lists the deployment configurations with the IAM user or AWS account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDeploymentConfigsInput}.
    #
    # @option params [String] :next_token
    #   <p>An identifier returned from the previous <code>ListDeploymentConfigs</code> call. It
    #               can be used to return the next set of deployment configurations in the list. </p>
    #
    # @return [Types::ListDeploymentConfigsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_deployment_configs(
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDeploymentConfigsOutput
    #   resp.data.deployment_configs_list #=> Array<String>
    #   resp.data.deployment_configs_list[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_deployment_configs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDeploymentConfigsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDeploymentConfigsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDeploymentConfigs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException]),
        data_parser: Parsers::ListDeploymentConfigs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDeploymentConfigs,
        stubs: @stubs,
        params_class: Params::ListDeploymentConfigsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_deployment_configs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the deployment groups for an application registered with the IAM user or AWS
    #             account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDeploymentGroupsInput}.
    #
    # @option params [String] :application_name
    #   <p>The name of an AWS CodeDeploy application associated with the IAM user or AWS
    #               account.</p>
    #
    # @option params [String] :next_token
    #   <p>An identifier returned from the previous list deployment groups call. It can be used
    #               to return the next set of deployment groups in the list.</p>
    #
    # @return [Types::ListDeploymentGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_deployment_groups(
    #     application_name: 'applicationName', # required
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDeploymentGroupsOutput
    #   resp.data.application_name #=> String
    #   resp.data.deployment_groups #=> Array<String>
    #   resp.data.deployment_groups[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_deployment_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDeploymentGroupsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDeploymentGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDeploymentGroups
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ApplicationDoesNotExistException, Errors::ApplicationNameRequiredException, Errors::InvalidApplicationNameException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::ListDeploymentGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDeploymentGroups,
        stubs: @stubs,
        params_class: Params::ListDeploymentGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_deployment_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p> The newer <code>BatchGetDeploymentTargets</code> should be used instead because
    #                 it works with all compute types. <code>ListDeploymentInstances</code> throws an
    #                 exception if it is used with a compute platform other than EC2/On-premises or AWS
    #                 Lambda. </p>
    #         </note>
    #         <p> Lists the instance for a deployment associated with the IAM user or AWS account. </p>
    #
    # @deprecated
    #   This operation is deprecated, use ListDeploymentTargets instead.
    #
    # @param [Hash] params
    #   See {Types::ListDeploymentInstancesInput}.
    #
    # @option params [String] :deployment_id
    #   <p> The unique ID of a deployment. </p>
    #
    # @option params [String] :next_token
    #   <p>An identifier returned from the previous list deployment instances call. It can be
    #               used to return the next set of deployment instances in the list.</p>
    #
    # @option params [Array<String>] :instance_status_filter
    #   <p>A subset of instances to list by status:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>Pending</code>: Include those instances with pending deployments.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>InProgress</code>: Include those instances where deployments are still
    #                       in progress.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Succeeded</code>: Include those instances with successful
    #                       deployments.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Failed</code>: Include those instances with failed deployments.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Skipped</code>: Include those instances with skipped deployments.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Unknown</code>: Include those instances with deployments in an unknown
    #                       state.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Array<String>] :instance_type_filter
    #   <p>The set of instances in a blue/green deployment, either those in the original
    #               environment ("BLUE") or those in the replacement environment ("GREEN"), for which you
    #               want to view instance information.</p>
    #
    # @return [Types::ListDeploymentInstancesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_deployment_instances(
    #     deployment_id: 'deploymentId', # required
    #     next_token: 'nextToken',
    #     instance_status_filter: [
    #       'Pending' # accepts ["Pending", "InProgress", "Succeeded", "Failed", "Skipped", "Unknown", "Ready"]
    #     ],
    #     instance_type_filter: [
    #       'Blue' # accepts ["Blue", "Green"]
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDeploymentInstancesOutput
    #   resp.data.instances_list #=> Array<String>
    #   resp.data.instances_list[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_deployment_instances(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDeploymentInstancesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDeploymentInstancesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDeploymentInstances
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DeploymentDoesNotExistException, Errors::DeploymentIdRequiredException, Errors::DeploymentNotStartedException, Errors::InvalidComputePlatformException, Errors::InvalidDeploymentIdException, Errors::InvalidDeploymentInstanceTypeException, Errors::InvalidInstanceStatusException, Errors::InvalidInstanceTypeException, Errors::InvalidNextTokenException, Errors::InvalidTargetFilterNameException]),
        data_parser: Parsers::ListDeploymentInstances
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDeploymentInstances,
        stubs: @stubs,
        params_class: Params::ListDeploymentInstancesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_deployment_instances
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns an array of target IDs that are associated a deployment. </p>
    #
    # @param [Hash] params
    #   See {Types::ListDeploymentTargetsInput}.
    #
    # @option params [String] :deployment_id
    #   <p> The unique ID of a deployment. </p>
    #
    # @option params [String] :next_token
    #   <p> A token identifier returned from the previous <code>ListDeploymentTargets</code>
    #               call. It can be used to return the next set of deployment targets in the list. </p>
    #
    # @option params [Hash<String, Array<String>>] :target_filters
    #   <p> A key used to filter the returned targets. The two valid values are:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>TargetStatus</code> - A <code>TargetStatus</code> filter string can be
    #                           <code>Failed</code>, <code>InProgress</code>, <code>Pending</code>,
    #                           <code>Ready</code>, <code>Skipped</code>, <code>Succeeded</code>, or
    #                           <code>Unknown</code>. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>ServerInstanceLabel</code> - A <code>ServerInstanceLabel</code> filter
    #                       string can be <code>Blue</code> or <code>Green</code>. </p>
    #               </li>
    #            </ul>
    #
    # @return [Types::ListDeploymentTargetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_deployment_targets(
    #     deployment_id: 'deploymentId',
    #     next_token: 'nextToken',
    #     target_filters: {
    #       'key' => [
    #         'member'
    #       ]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDeploymentTargetsOutput
    #   resp.data.target_ids #=> Array<String>
    #   resp.data.target_ids[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_deployment_targets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDeploymentTargetsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDeploymentTargetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDeploymentTargets
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DeploymentDoesNotExistException, Errors::DeploymentIdRequiredException, Errors::DeploymentNotStartedException, Errors::InvalidDeploymentIdException, Errors::InvalidDeploymentInstanceTypeException, Errors::InvalidInstanceStatusException, Errors::InvalidInstanceTypeException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::ListDeploymentTargets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDeploymentTargets,
        stubs: @stubs,
        params_class: Params::ListDeploymentTargetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_deployment_targets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the deployments in a deployment group for an application registered with the IAM
    #             user or AWS account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDeploymentsInput}.
    #
    # @option params [String] :application_name
    #   <p>The name of an AWS CodeDeploy application associated with the IAM user or AWS
    #               account.</p>
    #           <note>
    #               <p>If <code>applicationName</code> is specified, then
    #                       <code>deploymentGroupName</code> must be specified. If it is not specified, then
    #                       <code>deploymentGroupName</code> must not be specified. </p>
    #           </note>
    #
    # @option params [String] :deployment_group_name
    #   <p>The name of a deployment group for the specified application.</p>
    #           <note>
    #               <p>If <code>deploymentGroupName</code> is specified, then
    #                       <code>applicationName</code> must be specified. If it is not specified, then
    #                       <code>applicationName</code> must not be specified. </p>
    #           </note>
    #
    # @option params [String] :external_id
    #   <p>The unique ID of an external resource for returning deployments linked to the external
    #               resource.</p>
    #
    # @option params [Array<String>] :include_only_statuses
    #   <p>A subset of deployments to list by status:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>Created</code>: Include created deployments in the resulting
    #                       list.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Queued</code>: Include queued deployments in the resulting list.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>In Progress</code>: Include in-progress deployments in the resulting
    #                       list.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Succeeded</code>: Include successful deployments in the resulting
    #                       list.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Failed</code>: Include failed deployments in the resulting list.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Stopped</code>: Include stopped deployments in the resulting
    #                       list.</p>
    #               </li>
    #            </ul>
    #
    # @option params [TimeRange] :create_time_range
    #   <p>A time range (start and end) for returning a subset of the list of deployments.</p>
    #
    # @option params [String] :next_token
    #   <p>An identifier returned from the previous list deployments call. It can be used to
    #               return the next set of deployments in the list.</p>
    #
    # @return [Types::ListDeploymentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_deployments(
    #     application_name: 'applicationName',
    #     deployment_group_name: 'deploymentGroupName',
    #     external_id: 'externalId',
    #     include_only_statuses: [
    #       'Created' # accepts ["Created", "Queued", "InProgress", "Baking", "Succeeded", "Failed", "Stopped", "Ready"]
    #     ],
    #     create_time_range: {
    #       start: Time.now,
    #       end: Time.now
    #     },
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDeploymentsOutput
    #   resp.data.deployments #=> Array<String>
    #   resp.data.deployments[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_deployments(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDeploymentsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDeploymentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDeployments
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ApplicationDoesNotExistException, Errors::ApplicationNameRequiredException, Errors::DeploymentGroupDoesNotExistException, Errors::DeploymentGroupNameRequiredException, Errors::InvalidApplicationNameException, Errors::InvalidDeploymentGroupNameException, Errors::InvalidDeploymentStatusException, Errors::InvalidExternalIdException, Errors::InvalidInputException, Errors::InvalidNextTokenException, Errors::InvalidTimeRangeException]),
        data_parser: Parsers::ListDeployments
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDeployments,
        stubs: @stubs,
        params_class: Params::ListDeploymentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_deployments
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the names of stored connections to GitHub accounts.</p>
    #
    # @param [Hash] params
    #   See {Types::ListGitHubAccountTokenNamesInput}.
    #
    # @option params [String] :next_token
    #   <p>An identifier returned from the previous <code>ListGitHubAccountTokenNames</code>
    #               call. It can be used to return the next set of names in the list. </p>
    #
    # @return [Types::ListGitHubAccountTokenNamesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_git_hub_account_token_names(
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListGitHubAccountTokenNamesOutput
    #   resp.data.token_name_list #=> Array<String>
    #   resp.data.token_name_list[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_git_hub_account_token_names(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListGitHubAccountTokenNamesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListGitHubAccountTokenNamesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListGitHubAccountTokenNames
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::OperationNotSupportedException, Errors::ResourceValidationException]),
        data_parser: Parsers::ListGitHubAccountTokenNames
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListGitHubAccountTokenNames,
        stubs: @stubs,
        params_class: Params::ListGitHubAccountTokenNamesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_git_hub_account_token_names
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a list of names for one or more on-premises instances.</p>
    #         <p>Unless otherwise specified, both registered and deregistered on-premises instance
    #             names are listed. To list only registered or deregistered on-premises instance names,
    #             use the registration status parameter.</p>
    #
    # @param [Hash] params
    #   See {Types::ListOnPremisesInstancesInput}.
    #
    # @option params [String] :registration_status
    #   <p>The registration status of the on-premises instances:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>Deregistered</code>: Include deregistered on-premises instances in the
    #                       resulting list.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Registered</code>: Include registered on-premises instances in the
    #                       resulting list.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Array<TagFilter>] :tag_filters
    #   <p>The on-premises instance tags that are used to restrict the on-premises instance names
    #               returned.</p>
    #
    # @option params [String] :next_token
    #   <p>An identifier returned from the previous list on-premises instances call. It can be
    #               used to return the next set of on-premises instances in the list.</p>
    #
    # @return [Types::ListOnPremisesInstancesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_on_premises_instances(
    #     registration_status: 'Registered', # accepts ["Registered", "Deregistered"]
    #     tag_filters: [
    #       {
    #         key: 'Key',
    #         value: 'Value',
    #         type: 'KEY_ONLY' # accepts ["KEY_ONLY", "VALUE_ONLY", "KEY_AND_VALUE"]
    #       }
    #     ],
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListOnPremisesInstancesOutput
    #   resp.data.instance_names #=> Array<String>
    #   resp.data.instance_names[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_on_premises_instances(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListOnPremisesInstancesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListOnPremisesInstancesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListOnPremisesInstances
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::InvalidRegistrationStatusException, Errors::InvalidTagFilterException]),
        data_parser: Parsers::ListOnPremisesInstances
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListOnPremisesInstances,
        stubs: @stubs,
        params_class: Params::ListOnPremisesInstancesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_on_premises_instances
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns a list of tags for the resource identified by a specified Amazon Resource
    #             Name (ARN). Tags are used to organize and categorize your CodeDeploy resources. </p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p> The ARN of a CodeDeploy resource. <code>ListTagsForResource</code> returns all the
    #               tags associated with the resource that is identified by the <code>ResourceArn</code>.
    #           </p>
    #
    # @option params [String] :next_token
    #   <p>An identifier returned from the previous <code>ListTagsForResource</code> call. It can
    #               be used to return the next set of applications in the list.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'ResourceArn', # required
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForResourceOutput
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.next_token #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ArnNotSupportedException, Errors::InvalidArnException, Errors::ResourceArnRequiredException]),
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

    # <p> Sets the result of a Lambda validation function. The function validates lifecycle
    #             hooks during a deployment that uses the AWS Lambda or Amazon ECS compute platform. For
    #             AWS Lambda deployments, the available lifecycle hooks are
    #                 <code>BeforeAllowTraffic</code> and <code>AfterAllowTraffic</code>. For Amazon ECS
    #             deployments, the available lifecycle hooks are <code>BeforeInstall</code>,
    #                 <code>AfterInstall</code>, <code>AfterAllowTestTraffic</code>,
    #                 <code>BeforeAllowTraffic</code>, and <code>AfterAllowTraffic</code>. Lambda
    #             validation functions return <code>Succeeded</code> or <code>Failed</code>. For more
    #             information, see <a href="https://docs.aws.amazon.com/codedeploy/latest/userguide/reference-appspec-file-structure-hooks.html#appspec-hooks-lambda">AppSpec 'hooks' Section for an AWS Lambda Deployment </a> and <a href="https://docs.aws.amazon.com/codedeploy/latest/userguide/reference-appspec-file-structure-hooks.html#appspec-hooks-ecs">AppSpec 'hooks' Section for an Amazon ECS Deployment</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::PutLifecycleEventHookExecutionStatusInput}.
    #
    # @option params [String] :deployment_id
    #   <p> The unique ID of a deployment. Pass this ID to a Lambda function that validates a
    #               deployment lifecycle event. </p>
    #
    # @option params [String] :lifecycle_event_hook_execution_id
    #   <p> The execution ID of a deployment's lifecycle hook. A deployment lifecycle hook is
    #               specified in the <code>hooks</code> section of the AppSpec file. </p>
    #
    # @option params [String] :status
    #   <p>The result of a Lambda function that validates a deployment lifecycle event.
    #                   <code>Succeeded</code> and <code>Failed</code> are the only valid values for
    #                   <code>status</code>.</p>
    #
    # @return [Types::PutLifecycleEventHookExecutionStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_lifecycle_event_hook_execution_status(
    #     deployment_id: 'deploymentId',
    #     lifecycle_event_hook_execution_id: 'lifecycleEventHookExecutionId',
    #     status: 'Pending' # accepts ["Pending", "InProgress", "Succeeded", "Failed", "Skipped", "Unknown"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutLifecycleEventHookExecutionStatusOutput
    #   resp.data.lifecycle_event_hook_execution_id #=> String
    #
    def put_lifecycle_event_hook_execution_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutLifecycleEventHookExecutionStatusInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutLifecycleEventHookExecutionStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutLifecycleEventHookExecutionStatus
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DeploymentDoesNotExistException, Errors::DeploymentIdRequiredException, Errors::InvalidDeploymentIdException, Errors::InvalidLifecycleEventHookExecutionIdException, Errors::InvalidLifecycleEventHookExecutionStatusException, Errors::LifecycleEventAlreadyCompletedException, Errors::UnsupportedActionForDeploymentTypeException]),
        data_parser: Parsers::PutLifecycleEventHookExecutionStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutLifecycleEventHookExecutionStatus,
        stubs: @stubs,
        params_class: Params::PutLifecycleEventHookExecutionStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_lifecycle_event_hook_execution_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Registers with AWS CodeDeploy a revision for the specified application.</p>
    #
    # @param [Hash] params
    #   See {Types::RegisterApplicationRevisionInput}.
    #
    # @option params [String] :application_name
    #   <p>The name of an AWS CodeDeploy application associated with the IAM user or AWS
    #               account.</p>
    #
    # @option params [String] :description
    #   <p>A comment about the revision.</p>
    #
    # @option params [RevisionLocation] :revision
    #   <p>Information about the application revision to register, including type and
    #               location.</p>
    #
    # @return [Types::RegisterApplicationRevisionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_application_revision(
    #     application_name: 'applicationName', # required
    #     description: 'description',
    #     revision: {
    #       revision_type: 'S3', # accepts ["S3", "GitHub", "String", "AppSpecContent"]
    #       s3_location: {
    #         bucket: 'bucket',
    #         key: 'key',
    #         bundle_type: 'tar', # accepts ["tar", "tgz", "zip", "YAML", "JSON"]
    #         version: 'version',
    #         e_tag: 'eTag'
    #       },
    #       git_hub_location: {
    #         repository: 'repository',
    #         commit_id: 'commitId'
    #       },
    #       string: {
    #         content: 'content',
    #         sha256: 'sha256'
    #       },
    #       app_spec_content: {
    #         content: 'content',
    #         sha256: 'sha256'
    #       }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RegisterApplicationRevisionOutput
    #
    def register_application_revision(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RegisterApplicationRevisionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RegisterApplicationRevisionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RegisterApplicationRevision
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ApplicationDoesNotExistException, Errors::ApplicationNameRequiredException, Errors::DescriptionTooLongException, Errors::InvalidApplicationNameException, Errors::InvalidRevisionException, Errors::RevisionRequiredException]),
        data_parser: Parsers::RegisterApplicationRevision
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RegisterApplicationRevision,
        stubs: @stubs,
        params_class: Params::RegisterApplicationRevisionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :register_application_revision
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Registers an on-premises instance.</p>
    #         <note>
    #             <p>Only one IAM ARN (an IAM session ARN or IAM user ARN) is supported in the request.
    #                 You cannot use both.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::RegisterOnPremisesInstanceInput}.
    #
    # @option params [String] :instance_name
    #   <p>The name of the on-premises instance to register.</p>
    #
    # @option params [String] :iam_session_arn
    #   <p>The ARN of the IAM session to associate with the on-premises instance.</p>
    #
    # @option params [String] :iam_user_arn
    #   <p>The ARN of the IAM user to associate with the on-premises instance.</p>
    #
    # @return [Types::RegisterOnPremisesInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_on_premises_instance(
    #     instance_name: 'instanceName', # required
    #     iam_session_arn: 'iamSessionArn',
    #     iam_user_arn: 'iamUserArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RegisterOnPremisesInstanceOutput
    #
    def register_on_premises_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RegisterOnPremisesInstanceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RegisterOnPremisesInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RegisterOnPremisesInstance
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::IamArnRequiredException, Errors::IamSessionArnAlreadyRegisteredException, Errors::IamUserArnAlreadyRegisteredException, Errors::IamUserArnRequiredException, Errors::InstanceNameAlreadyRegisteredException, Errors::InstanceNameRequiredException, Errors::InvalidIamSessionArnException, Errors::InvalidIamUserArnException, Errors::InvalidInstanceNameException, Errors::MultipleIamArnsProvidedException]),
        data_parser: Parsers::RegisterOnPremisesInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RegisterOnPremisesInstance,
        stubs: @stubs,
        params_class: Params::RegisterOnPremisesInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :register_on_premises_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes one or more tags from one or more on-premises instances.</p>
    #
    # @param [Hash] params
    #   See {Types::RemoveTagsFromOnPremisesInstancesInput}.
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tag key-value pairs to remove from the on-premises instances.</p>
    #
    # @option params [Array<String>] :instance_names
    #   <p>The names of the on-premises instances from which to remove tags.</p>
    #
    # @return [Types::RemoveTagsFromOnPremisesInstancesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_tags_from_on_premises_instances(
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ], # required
    #     instance_names: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RemoveTagsFromOnPremisesInstancesOutput
    #
    def remove_tags_from_on_premises_instances(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RemoveTagsFromOnPremisesInstancesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RemoveTagsFromOnPremisesInstancesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RemoveTagsFromOnPremisesInstances
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InstanceLimitExceededException, Errors::InstanceNameRequiredException, Errors::InstanceNotRegisteredException, Errors::InvalidInstanceNameException, Errors::InvalidTagException, Errors::TagLimitExceededException, Errors::TagRequiredException]),
        data_parser: Parsers::RemoveTagsFromOnPremisesInstances
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RemoveTagsFromOnPremisesInstances,
        stubs: @stubs,
        params_class: Params::RemoveTagsFromOnPremisesInstancesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :remove_tags_from_on_premises_instances
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>In a blue/green deployment, overrides any specified wait time and starts terminating
    #             instances immediately after the traffic routing is complete.</p>
    #
    # @deprecated
    #   This operation is deprecated, use ContinueDeployment with DeploymentWaitType instead.
    #
    # @param [Hash] params
    #   See {Types::SkipWaitTimeForInstanceTerminationInput}.
    #
    # @option params [String] :deployment_id
    #   <p> The unique ID of a blue/green deployment for which you want to skip the instance
    #               termination wait time. </p>
    #
    # @return [Types::SkipWaitTimeForInstanceTerminationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.skip_wait_time_for_instance_termination(
    #     deployment_id: 'deploymentId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SkipWaitTimeForInstanceTerminationOutput
    #
    def skip_wait_time_for_instance_termination(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SkipWaitTimeForInstanceTerminationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SkipWaitTimeForInstanceTerminationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SkipWaitTimeForInstanceTermination
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DeploymentAlreadyCompletedException, Errors::DeploymentDoesNotExistException, Errors::DeploymentIdRequiredException, Errors::DeploymentNotStartedException, Errors::InvalidDeploymentIdException, Errors::UnsupportedActionForDeploymentTypeException]),
        data_parser: Parsers::SkipWaitTimeForInstanceTermination
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SkipWaitTimeForInstanceTermination,
        stubs: @stubs,
        params_class: Params::SkipWaitTimeForInstanceTerminationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :skip_wait_time_for_instance_termination
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Attempts to stop an ongoing deployment.</p>
    #
    # @param [Hash] params
    #   See {Types::StopDeploymentInput}.
    #
    # @option params [String] :deployment_id
    #   <p> The unique ID of a deployment. </p>
    #
    # @option params [Boolean] :auto_rollback_enabled
    #   <p> Indicates, when a deployment is stopped, whether instances that have been updated
    #               should be rolled back to the previous version of the application revision. </p>
    #
    # @return [Types::StopDeploymentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_deployment(
    #     deployment_id: 'deploymentId', # required
    #     auto_rollback_enabled: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopDeploymentOutput
    #   resp.data.status #=> String, one of ["Pending", "Succeeded"]
    #   resp.data.status_message #=> String
    #
    def stop_deployment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopDeploymentInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopDeploymentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopDeployment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DeploymentAlreadyCompletedException, Errors::DeploymentDoesNotExistException, Errors::DeploymentGroupDoesNotExistException, Errors::DeploymentIdRequiredException, Errors::InvalidDeploymentIdException, Errors::UnsupportedActionForDeploymentTypeException]),
        data_parser: Parsers::StopDeployment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopDeployment,
        stubs: @stubs,
        params_class: Params::StopDeploymentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_deployment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Associates the list of tags in the input <code>Tags</code> parameter with the
    #             resource identified by the <code>ResourceArn</code> input parameter. </p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p> The ARN of a resource, such as a CodeDeploy application or deployment group. </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p> A list of tags that <code>TagResource</code> associates with a resource. The resource
    #               is identified by the <code>ResourceArn</code> input parameter. </p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'ResourceArn', # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ApplicationDoesNotExistException, Errors::ArnNotSupportedException, Errors::DeploymentConfigDoesNotExistException, Errors::DeploymentGroupDoesNotExistException, Errors::InvalidArnException, Errors::InvalidTagsToAddException, Errors::ResourceArnRequiredException, Errors::TagRequiredException]),
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

    # <p> Disassociates a resource from a list of tags. The resource is identified by the
    #                 <code>ResourceArn</code> input parameter. The tags are identified by the list of
    #             keys in the <code>TagKeys</code> input parameter. </p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p> The Amazon Resource Name (ARN) that specifies from which resource to disassociate the
    #               tags with the keys in the <code>TagKeys</code> input parameter. </p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p> A list of keys of <code>Tag</code> objects. The <code>Tag</code> objects identified
    #               by the keys are disassociated from the resource specified by the
    #                   <code>ResourceArn</code> input parameter. </p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_arn: 'ResourceArn', # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ApplicationDoesNotExistException, Errors::ArnNotSupportedException, Errors::DeploymentConfigDoesNotExistException, Errors::DeploymentGroupDoesNotExistException, Errors::InvalidArnException, Errors::InvalidTagsToAddException, Errors::ResourceArnRequiredException, Errors::TagRequiredException]),
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

    # <p>Changes the name of an application.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateApplicationInput}.
    #
    # @option params [String] :application_name
    #   <p>The current name of the application you want to change.</p>
    #
    # @option params [String] :new_application_name
    #   <p>The new name to give the application.</p>
    #
    # @return [Types::UpdateApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_application(
    #     application_name: 'applicationName',
    #     new_application_name: 'newApplicationName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateApplicationOutput
    #
    def update_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateApplicationInput.build(params)
      response_body = StringIO.new
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ApplicationAlreadyExistsException, Errors::ApplicationDoesNotExistException, Errors::ApplicationNameRequiredException, Errors::InvalidApplicationNameException]),
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

    # <p>Changes information about a deployment group.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDeploymentGroupInput}.
    #
    # @option params [String] :application_name
    #   <p>The application name that corresponds to the deployment group to update.</p>
    #
    # @option params [String] :current_deployment_group_name
    #   <p>The current name of the deployment group.</p>
    #
    # @option params [String] :new_deployment_group_name
    #   <p>The new name of the deployment group, if you want to change it.</p>
    #
    # @option params [String] :deployment_config_name
    #   <p>The replacement deployment configuration name to use, if you want to change it.</p>
    #
    # @option params [Array<EC2TagFilter>] :ec2_tag_filters
    #   <p>The replacement set of Amazon EC2 tags on which to filter, if you want to change them.
    #               To keep the existing tags, enter their names. To remove tags, do not enter any tag
    #               names.</p>
    #
    # @option params [Array<TagFilter>] :on_premises_instance_tag_filters
    #   <p>The replacement set of on-premises instance tags on which to filter, if you want to
    #               change them. To keep the existing tags, enter their names. To remove tags, do not enter
    #               any tag names.</p>
    #
    # @option params [Array<String>] :auto_scaling_groups
    #   <p>The replacement list of Auto Scaling groups to be included in the deployment group, if
    #               you want to change them. To keep the Auto Scaling groups, enter their names. To remove
    #               Auto Scaling groups, do not enter any Auto Scaling group names.</p>
    #
    # @option params [String] :service_role_arn
    #   <p>A replacement ARN for the service role, if you want to change it.</p>
    #
    # @option params [Array<TriggerConfig>] :trigger_configurations
    #   <p>Information about triggers to change when the deployment group is updated. For
    #               examples, see <a href="https://docs.aws.amazon.com/codedeploy/latest/userguide/how-to-notify-edit.html">Edit a Trigger in a
    #                   CodeDeploy Deployment Group</a> in the <i>AWS CodeDeploy User
    #                   Guide</i>.</p>
    #
    # @option params [AlarmConfiguration] :alarm_configuration
    #   <p>Information to add or change about Amazon CloudWatch alarms when the deployment group
    #               is updated.</p>
    #
    # @option params [AutoRollbackConfiguration] :auto_rollback_configuration
    #   <p>Information for an automatic rollback configuration that is added or changed when a
    #               deployment group is updated.</p>
    #
    # @option params [String] :outdated_instances_strategy
    #   <p>Indicates what happens when new EC2 instances are launched mid-deployment and do not
    #               receive the deployed application revision.</p>
    #           <p>If this option is set to <code>UPDATE</code> or is unspecified, CodeDeploy initiates
    #               one or more 'auto-update outdated instances' deployments to apply the deployed
    #               application revision to the new EC2 instances.</p>
    #           <p>If this option is set to <code>IGNORE</code>, CodeDeploy does not initiate a
    #               deployment to update the new EC2 instances. This may result in instances having
    #               different revisions.</p>
    #
    # @option params [DeploymentStyle] :deployment_style
    #   <p>Information about the type of deployment, either in-place or blue/green, you want to
    #               run and whether to route deployment traffic behind a load balancer.</p>
    #
    # @option params [BlueGreenDeploymentConfiguration] :blue_green_deployment_configuration
    #   <p>Information about blue/green deployment options for a deployment group.</p>
    #
    # @option params [LoadBalancerInfo] :load_balancer_info
    #   <p>Information about the load balancer used in a deployment.</p>
    #
    # @option params [EC2TagSet] :ec2_tag_set
    #   <p>Information about groups of tags applied to on-premises instances. The deployment
    #               group includes only EC2 instances identified by all the tag groups.</p>
    #
    # @option params [Array<ECSService>] :ecs_services
    #   <p> The target Amazon ECS services in the deployment group. This applies only to
    #               deployment groups that use the Amazon ECS compute platform. A target Amazon ECS service
    #               is specified as an Amazon ECS cluster and service name pair using the format
    #                   <code><clustername>:<servicename></code>. </p>
    #
    # @option params [OnPremisesTagSet] :on_premises_tag_set
    #   <p>Information about an on-premises instance tag set. The deployment group includes only
    #               on-premises instances identified by all the tag groups.</p>
    #
    # @return [Types::UpdateDeploymentGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_deployment_group(
    #     application_name: 'applicationName', # required
    #     current_deployment_group_name: 'currentDeploymentGroupName', # required
    #     new_deployment_group_name: 'newDeploymentGroupName',
    #     deployment_config_name: 'deploymentConfigName',
    #     ec2_tag_filters: [
    #       {
    #         key: 'Key',
    #         value: 'Value',
    #         type: 'KEY_ONLY' # accepts ["KEY_ONLY", "VALUE_ONLY", "KEY_AND_VALUE"]
    #       }
    #     ],
    #     on_premises_instance_tag_filters: [
    #       {
    #         key: 'Key',
    #         value: 'Value',
    #         type: 'KEY_ONLY' # accepts ["KEY_ONLY", "VALUE_ONLY", "KEY_AND_VALUE"]
    #       }
    #     ],
    #     auto_scaling_groups: [
    #       'member'
    #     ],
    #     service_role_arn: 'serviceRoleArn',
    #     trigger_configurations: [
    #       {
    #         trigger_name: 'triggerName',
    #         trigger_target_arn: 'triggerTargetArn',
    #         trigger_events: [
    #           'DeploymentStart' # accepts ["DeploymentStart", "DeploymentSuccess", "DeploymentFailure", "DeploymentStop", "DeploymentRollback", "DeploymentReady", "InstanceStart", "InstanceSuccess", "InstanceFailure", "InstanceReady"]
    #         ]
    #       }
    #     ],
    #     alarm_configuration: {
    #       enabled: false,
    #       ignore_poll_alarm_failure: false,
    #       alarms: [
    #         {
    #           name: 'name'
    #         }
    #       ]
    #     },
    #     auto_rollback_configuration: {
    #       enabled: false,
    #       events: [
    #         'DEPLOYMENT_FAILURE' # accepts ["DEPLOYMENT_FAILURE", "DEPLOYMENT_STOP_ON_ALARM", "DEPLOYMENT_STOP_ON_REQUEST"]
    #       ]
    #     },
    #     outdated_instances_strategy: 'UPDATE', # accepts ["UPDATE", "IGNORE"]
    #     deployment_style: {
    #       deployment_type: 'IN_PLACE', # accepts ["IN_PLACE", "BLUE_GREEN"]
    #       deployment_option: 'WITH_TRAFFIC_CONTROL' # accepts ["WITH_TRAFFIC_CONTROL", "WITHOUT_TRAFFIC_CONTROL"]
    #     },
    #     blue_green_deployment_configuration: {
    #       terminate_blue_instances_on_deployment_success: {
    #         action: 'TERMINATE', # accepts ["TERMINATE", "KEEP_ALIVE"]
    #         termination_wait_time_in_minutes: 1
    #       },
    #       deployment_ready_option: {
    #         action_on_timeout: 'CONTINUE_DEPLOYMENT', # accepts ["CONTINUE_DEPLOYMENT", "STOP_DEPLOYMENT"]
    #         wait_time_in_minutes: 1
    #       },
    #       green_fleet_provisioning_option: {
    #         action: 'DISCOVER_EXISTING' # accepts ["DISCOVER_EXISTING", "COPY_AUTO_SCALING_GROUP"]
    #       }
    #     },
    #     load_balancer_info: {
    #       elb_info_list: [
    #         {
    #           name: 'name'
    #         }
    #       ],
    #       target_group_info_list: [
    #         {
    #           name: 'name'
    #         }
    #       ],
    #       target_group_pair_info_list: [
    #         {
    #           prod_traffic_route: {
    #             listener_arns: [
    #               'member'
    #             ]
    #           },
    #         }
    #       ]
    #     },
    #     ec2_tag_set: {
    #     },
    #     ecs_services: [
    #       {
    #         service_name: 'serviceName',
    #         cluster_name: 'clusterName'
    #       }
    #     ],
    #     on_premises_tag_set: {
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDeploymentGroupOutput
    #   resp.data.hooks_not_cleaned_up #=> Array<AutoScalingGroup>
    #   resp.data.hooks_not_cleaned_up[0] #=> Types::AutoScalingGroup
    #   resp.data.hooks_not_cleaned_up[0].name #=> String
    #   resp.data.hooks_not_cleaned_up[0].hook #=> String
    #
    def update_deployment_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDeploymentGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDeploymentGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDeploymentGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AlarmsLimitExceededException, Errors::ApplicationDoesNotExistException, Errors::ApplicationNameRequiredException, Errors::DeploymentConfigDoesNotExistException, Errors::DeploymentGroupAlreadyExistsException, Errors::DeploymentGroupDoesNotExistException, Errors::DeploymentGroupNameRequiredException, Errors::ECSServiceMappingLimitExceededException, Errors::InvalidAlarmConfigException, Errors::InvalidApplicationNameException, Errors::InvalidAutoRollbackConfigException, Errors::InvalidAutoScalingGroupException, Errors::InvalidBlueGreenDeploymentConfigurationException, Errors::InvalidDeploymentConfigNameException, Errors::InvalidDeploymentGroupNameException, Errors::InvalidDeploymentStyleException, Errors::InvalidEC2TagCombinationException, Errors::InvalidEC2TagException, Errors::InvalidECSServiceException, Errors::InvalidInputException, Errors::InvalidLoadBalancerInfoException, Errors::InvalidOnPremisesTagCombinationException, Errors::InvalidRoleException, Errors::InvalidTagException, Errors::InvalidTargetGroupPairException, Errors::InvalidTrafficRoutingConfigurationException, Errors::InvalidTriggerConfigException, Errors::LifecycleHookLimitExceededException, Errors::TagSetListLimitExceededException, Errors::ThrottlingException, Errors::TriggerTargetsLimitExceededException]),
        data_parser: Parsers::UpdateDeploymentGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDeploymentGroup,
        stubs: @stubs,
        params_class: Params::UpdateDeploymentGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_deployment_group
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
