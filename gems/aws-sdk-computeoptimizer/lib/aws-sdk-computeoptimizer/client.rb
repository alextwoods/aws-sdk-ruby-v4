# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::ComputeOptimizer
  # An API client for ComputeOptimizerService
  # See {#initialize} for a full list of supported configuration options
  # <p>Compute Optimizer is a service that analyzes the configuration and utilization
  #             metrics of your Amazon Web Services compute resources, such as Amazon EC2
  #             instances, Amazon EC2 Auto Scaling groups, Lambda functions, and Amazon EBS volumes. It reports whether your resources are optimal, and generates
  #             optimization recommendations to reduce the cost and improve the performance of your
  #             workloads. Compute Optimizer also provides recent utilization metric data, in addition
  #             to projected utilization metric data for the recommendations, which you can use to
  #             evaluate which recommendation provides the best price-performance trade-off. The
  #             analysis of your usage patterns can help you decide when to move or resize your running
  #             resources, and still meet your performance and capacity requirements. For more
  #             information about Compute Optimizer, including the required permissions to use the
  #             service, see the <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/">Compute Optimizer User Guide</a>.</p>
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
    def initialize(config = AWS::SDK::ComputeOptimizer::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Deletes a recommendation preference, such as enhanced infrastructure metrics.</p>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html">Activating
    #                 enhanced infrastructure metrics</a> in the <i>Compute Optimizer User
    #                 Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteRecommendationPreferencesInput}.
    #
    # @option params [String] :resource_type
    #   <p>The target resource type of the recommendation preference to delete.</p>
    #           <p>The <code>Ec2Instance</code> option encompasses standalone instances and instances
    #               that are part of Auto Scaling groups. The <code>AutoScalingGroup</code> option
    #               encompasses only instances that are part of an Auto Scaling group.</p>
    #           <note>
    #               <p>The valid values for this parameter are <code>Ec2Instance</code> and
    #                       <code>AutoScalingGroup</code>.</p>
    #           </note>
    #
    # @option params [Scope] :scope
    #   <p>An object that describes the scope of the recommendation preference to delete.</p>
    #           <p>You can delete recommendation preferences that are created at the organization level
    #               (for management accounts of an organization only), account level, and resource level.
    #               For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html">Activating
    #                   enhanced infrastructure metrics</a> in the <i>Compute Optimizer User
    #                   Guide</i>.</p>
    #
    # @option params [Array<String>] :recommendation_preference_names
    #   <p>The name of the recommendation preference to delete.</p>
    #           <p>Enhanced infrastructure metrics (<code>EnhancedInfrastructureMetrics</code>) is the
    #               only feature that can be activated through preferences. Therefore, it is also the only
    #               recommendation preference that can be deleted.</p>
    #
    # @return [Types::DeleteRecommendationPreferencesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_recommendation_preferences(
    #     resource_type: 'Ec2Instance', # required - accepts ["Ec2Instance", "AutoScalingGroup", "EbsVolume", "LambdaFunction", "NotApplicable"]
    #     scope: {
    #       name: 'Organization', # accepts ["Organization", "AccountId", "ResourceArn"]
    #       value: 'value'
    #     },
    #     recommendation_preference_names: [
    #       'EnhancedInfrastructureMetrics' # accepts ["EnhancedInfrastructureMetrics", "InferredWorkloadTypes"]
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRecommendationPreferencesOutput
    #
    def delete_recommendation_preferences(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRecommendationPreferencesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRecommendationPreferencesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRecommendationPreferences
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::OptInRequiredException, Errors::ServiceUnavailableException, Errors::InvalidParameterValueException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::MissingAuthenticationToken]),
        data_parser: Parsers::DeleteRecommendationPreferences
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRecommendationPreferences,
        stubs: @stubs,
        params_class: Params::DeleteRecommendationPreferencesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_recommendation_preferences
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes recommendation export jobs created in the last seven days.</p>
    #         <p>Use the <a>ExportAutoScalingGroupRecommendations</a> or <a>ExportEC2InstanceRecommendations</a> actions to request an export of your
    #             recommendations. Then use the <a>DescribeRecommendationExportJobs</a> action
    #             to view your export jobs.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeRecommendationExportJobsInput}.
    #
    # @option params [Array<String>] :job_ids
    #   <p>The identification numbers of the export jobs to return.</p>
    #           <p>An export job ID is returned when you create an export using the <a>ExportAutoScalingGroupRecommendations</a> or <a>ExportEC2InstanceRecommendations</a> actions.</p>
    #           <p>All export jobs created in the last seven days are returned if this parameter is
    #               omitted.</p>
    #
    # @option params [Array<JobFilter>] :filters
    #   <p>An array of objects to specify a filter that returns a more specific list of export
    #               jobs.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to advance to the next page of export jobs.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of export jobs to return with a single request.</p>
    #           <p>To retrieve the remaining results, make another request with the returned
    #                   <code>nextToken</code> value.</p>
    #
    # @return [Types::DescribeRecommendationExportJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_recommendation_export_jobs(
    #     job_ids: [
    #       'member'
    #     ],
    #     filters: [
    #       {
    #         name: 'ResourceType', # accepts ["ResourceType", "JobStatus"]
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeRecommendationExportJobsOutput
    #   resp.data.recommendation_export_jobs #=> Array<RecommendationExportJob>
    #   resp.data.recommendation_export_jobs[0] #=> Types::RecommendationExportJob
    #   resp.data.recommendation_export_jobs[0].job_id #=> String
    #   resp.data.recommendation_export_jobs[0].destination #=> Types::ExportDestination
    #   resp.data.recommendation_export_jobs[0].destination.s3 #=> Types::S3Destination
    #   resp.data.recommendation_export_jobs[0].destination.s3.bucket #=> String
    #   resp.data.recommendation_export_jobs[0].destination.s3.key #=> String
    #   resp.data.recommendation_export_jobs[0].destination.s3.metadata_key #=> String
    #   resp.data.recommendation_export_jobs[0].resource_type #=> String, one of ["Ec2Instance", "AutoScalingGroup", "EbsVolume", "LambdaFunction", "NotApplicable"]
    #   resp.data.recommendation_export_jobs[0].status #=> String, one of ["Queued", "InProgress", "Complete", "Failed"]
    #   resp.data.recommendation_export_jobs[0].creation_timestamp #=> Time
    #   resp.data.recommendation_export_jobs[0].last_updated_timestamp #=> Time
    #   resp.data.recommendation_export_jobs[0].failure_reason #=> String
    #   resp.data.next_token #=> String
    #
    def describe_recommendation_export_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeRecommendationExportJobsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeRecommendationExportJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeRecommendationExportJobs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::OptInRequiredException, Errors::ServiceUnavailableException, Errors::InvalidParameterValueException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::MissingAuthenticationToken]),
        data_parser: Parsers::DescribeRecommendationExportJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeRecommendationExportJobs,
        stubs: @stubs,
        params_class: Params::DescribeRecommendationExportJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_recommendation_export_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Exports optimization recommendations for Auto Scaling groups.</p>
    #         <p>Recommendations are exported in a comma-separated values (.csv) file, and its metadata
    #             in a JavaScript Object Notation (JSON) (.json) file, to an existing Amazon Simple Storage Service (Amazon S3) bucket that you specify. For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html">Exporting
    #                 Recommendations</a> in the <i>Compute Optimizer User
    #             Guide</i>.</p>
    #         <p>You can have only one Auto Scaling group export job in progress per Amazon Web Services Region.</p>
    #
    # @param [Hash] params
    #   See {Types::ExportAutoScalingGroupRecommendationsInput}.
    #
    # @option params [Array<String>] :account_ids
    #   <p>The IDs of the Amazon Web Services accounts for which to export Auto Scaling group
    #               recommendations.</p>
    #           <p>If your account is the management account of an organization, use this parameter to
    #               specify the member account for which you want to export recommendations.</p>
    #           <p>This parameter cannot be specified together with the include member accounts
    #               parameter. The parameters are mutually exclusive.</p>
    #           <p>Recommendations for member accounts are not included in the export if this parameter,
    #               or the include member accounts parameter, is omitted.</p>
    #           <p>You can specify multiple account IDs per request.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>An array of objects to specify a filter that exports a more specific set of Auto Scaling group recommendations.</p>
    #
    # @option params [Array<String>] :fields_to_export
    #   <p>The recommendations data to include in the export file. For more information about the
    #               fields that can be exported, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html#exported-files">Exported files</a> in the <i>Compute Optimizer User
    #               Guide</i>.</p>
    #
    # @option params [S3DestinationConfig] :s3_destination_config
    #   <p>An object to specify the destination Amazon Simple Storage Service (Amazon S3) bucket
    #               name and key prefix for the export job.</p>
    #           <p>You must create the destination Amazon S3 bucket for your recommendations
    #               export before you create the export job. Compute Optimizer does not create the S3 bucket
    #               for you. After you create the S3 bucket, ensure that it has the required permissions
    #               policy to allow Compute Optimizer to write the export file to it. If you plan to specify
    #               an object prefix when you create the export job, you must include the object prefix in
    #               the policy that you add to the S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/create-s3-bucket-policy-for-compute-optimizer.html">Amazon S3 Bucket Policy for Compute Optimizer</a> in the
    #                       <i>Compute Optimizer User Guide</i>.</p>
    #
    # @option params [String] :file_format
    #   <p>The format of the export file.</p>
    #           <p>The only export file format currently supported is <code>Csv</code>.</p>
    #
    # @option params [Boolean] :include_member_accounts
    #   <p>Indicates whether to include recommendations for resources in all member accounts of
    #               the organization if your account is the management account of an organization.</p>
    #           <p>The member accounts must also be opted in to Compute Optimizer, and trusted access for
    #                   Compute Optimizer must be enabled in the organization account. For more information,
    #               see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html#trusted-service-access">Compute Optimizer and Amazon Web Services Organizations trusted access</a> in the
    #                       <i>Compute Optimizer User Guide</i>.</p>
    #           <p>Recommendations for member accounts of the organization are not included in the export
    #               file if this parameter is omitted.</p>
    #           <p>This parameter cannot be specified together with the account IDs parameter. The
    #               parameters are mutually exclusive.</p>
    #           <p>Recommendations for member accounts are not included in the export if this parameter,
    #               or the account IDs parameter, is omitted.</p>
    #
    # @option params [RecommendationPreferences] :recommendation_preferences
    #   <p>An object to specify the preferences for the Auto Scaling group recommendations
    #               to export.</p>
    #
    # @return [Types::ExportAutoScalingGroupRecommendationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.export_auto_scaling_group_recommendations(
    #     account_ids: [
    #       'member'
    #     ],
    #     filters: [
    #       {
    #         name: 'Finding', # accepts ["Finding", "FindingReasonCodes", "RecommendationSourceType"]
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     fields_to_export: [
    #       'AccountId' # accepts ["AccountId", "AutoScalingGroupArn", "AutoScalingGroupName", "Finding", "UtilizationMetricsCpuMaximum", "UtilizationMetricsMemoryMaximum", "UtilizationMetricsEbsReadOpsPerSecondMaximum", "UtilizationMetricsEbsWriteOpsPerSecondMaximum", "UtilizationMetricsEbsReadBytesPerSecondMaximum", "UtilizationMetricsEbsWriteBytesPerSecondMaximum", "UtilizationMetricsDiskReadOpsPerSecondMaximum", "UtilizationMetricsDiskWriteOpsPerSecondMaximum", "UtilizationMetricsDiskReadBytesPerSecondMaximum", "UtilizationMetricsDiskWriteBytesPerSecondMaximum", "UtilizationMetricsNetworkInBytesPerSecondMaximum", "UtilizationMetricsNetworkOutBytesPerSecondMaximum", "UtilizationMetricsNetworkPacketsInPerSecondMaximum", "UtilizationMetricsNetworkPacketsOutPerSecondMaximum", "LookbackPeriodInDays", "CurrentConfigurationInstanceType", "CurrentConfigurationDesiredCapacity", "CurrentConfigurationMinSize", "CurrentConfigurationMaxSize", "CurrentOnDemandPrice", "CurrentStandardOneYearNoUpfrontReservedPrice", "CurrentStandardThreeYearNoUpfrontReservedPrice", "CurrentVCpus", "CurrentMemory", "CurrentStorage", "CurrentNetwork", "RecommendationOptionsConfigurationInstanceType", "RecommendationOptionsConfigurationDesiredCapacity", "RecommendationOptionsConfigurationMinSize", "RecommendationOptionsConfigurationMaxSize", "RecommendationOptionsProjectedUtilizationMetricsCpuMaximum", "RecommendationOptionsProjectedUtilizationMetricsMemoryMaximum", "RecommendationOptionsPerformanceRisk", "RecommendationOptionsOnDemandPrice", "RecommendationOptionsStandardOneYearNoUpfrontReservedPrice", "RecommendationOptionsStandardThreeYearNoUpfrontReservedPrice", "RecommendationOptionsVcpus", "RecommendationOptionsMemory", "RecommendationOptionsStorage", "RecommendationOptionsNetwork", "LastRefreshTimestamp", "CurrentPerformanceRisk", "RecommendationOptionsSavingsOpportunityPercentage", "RecommendationOptionsEstimatedMonthlySavingsCurrency", "RecommendationOptionsEstimatedMonthlySavingsValue", "EffectiveRecommendationPreferencesCpuVendorArchitectures", "EffectiveRecommendationPreferencesEnhancedInfrastructureMetrics", "EffectiveRecommendationPreferencesInferredWorkloadTypes", "InferredWorkloadTypes", "RecommendationOptionsMigrationEffort"]
    #     ],
    #     s3_destination_config: {
    #       bucket: 'bucket',
    #       key_prefix: 'keyPrefix'
    #     }, # required
    #     file_format: 'Csv', # accepts ["Csv"]
    #     include_member_accounts: false,
    #     recommendation_preferences: {
    #       cpu_vendor_architectures: [
    #         'AWS_ARM64' # accepts ["AWS_ARM64", "CURRENT"]
    #       ]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ExportAutoScalingGroupRecommendationsOutput
    #   resp.data.job_id #=> String
    #   resp.data.s3_destination #=> Types::S3Destination
    #   resp.data.s3_destination.bucket #=> String
    #   resp.data.s3_destination.key #=> String
    #   resp.data.s3_destination.metadata_key #=> String
    #
    def export_auto_scaling_group_recommendations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ExportAutoScalingGroupRecommendationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ExportAutoScalingGroupRecommendationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ExportAutoScalingGroupRecommendations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::LimitExceededException, Errors::OptInRequiredException, Errors::ServiceUnavailableException, Errors::InvalidParameterValueException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::MissingAuthenticationToken]),
        data_parser: Parsers::ExportAutoScalingGroupRecommendations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ExportAutoScalingGroupRecommendations,
        stubs: @stubs,
        params_class: Params::ExportAutoScalingGroupRecommendationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :export_auto_scaling_group_recommendations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Exports optimization recommendations for Amazon EBS volumes.</p>
    #         <p>Recommendations are exported in a comma-separated values (.csv) file, and its metadata
    #             in a JavaScript Object Notation (JSON) (.json) file, to an existing Amazon Simple Storage Service (Amazon S3) bucket that you specify. For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html">Exporting
    #                 Recommendations</a> in the <i>Compute Optimizer User
    #             Guide</i>.</p>
    #         <p>You can have only one Amazon EBS volume export job in progress per Amazon Web Services Region.</p>
    #
    # @param [Hash] params
    #   See {Types::ExportEBSVolumeRecommendationsInput}.
    #
    # @option params [Array<String>] :account_ids
    #   <p>The IDs of the Amazon Web Services accounts for which to export Amazon EBS
    #               volume recommendations.</p>
    #           <p>If your account is the management account of an organization, use this parameter to
    #               specify the member account for which you want to export recommendations.</p>
    #           <p>This parameter cannot be specified together with the include member accounts
    #               parameter. The parameters are mutually exclusive.</p>
    #           <p>Recommendations for member accounts are not included in the export if this parameter,
    #               or the include member accounts parameter, is omitted.</p>
    #           <p>You can specify multiple account IDs per request.</p>
    #
    # @option params [Array<EBSFilter>] :filters
    #   <p>An array of objects to specify a filter that exports a more specific set of Amazon EBS volume recommendations.</p>
    #
    # @option params [Array<String>] :fields_to_export
    #   <p>The recommendations data to include in the export file. For more information about the
    #               fields that can be exported, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html#exported-files">Exported files</a> in the <i>Compute Optimizer User
    #               Guide</i>.</p>
    #
    # @option params [S3DestinationConfig] :s3_destination_config
    #   <p>Describes the destination Amazon Simple Storage Service (Amazon S3) bucket name and
    #               key prefix for a recommendations export job.</p>
    #           <p>You must create the destination Amazon S3 bucket for your recommendations
    #               export before you create the export job. Compute Optimizer does not create the S3 bucket
    #               for you. After you create the S3 bucket, ensure that it has the required permission
    #               policy to allow Compute Optimizer to write the export file to it. If you plan to specify
    #               an object prefix when you create the export job, you must include the object prefix in
    #               the policy that you add to the S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/create-s3-bucket-policy-for-compute-optimizer.html">Amazon S3 Bucket Policy for Compute Optimizer</a> in the
    #                       <i>Compute Optimizer User Guide</i>.</p>
    #
    # @option params [String] :file_format
    #   <p>The format of the export file.</p>
    #           <p>The only export file format currently supported is <code>Csv</code>.</p>
    #
    # @option params [Boolean] :include_member_accounts
    #   <p>Indicates whether to include recommendations for resources in all member accounts of
    #               the organization if your account is the management account of an organization.</p>
    #           <p>The member accounts must also be opted in to Compute Optimizer, and trusted access for
    #                   Compute Optimizer must be enabled in the organization account. For more information,
    #               see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html#trusted-service-access">Compute Optimizer and Amazon Web Services Organizations trusted access</a> in the
    #                       <i>Compute Optimizer User Guide</i>.</p>
    #           <p>Recommendations for member accounts of the organization are not included in the export
    #               file if this parameter is omitted.</p>
    #           <p>This parameter cannot be specified together with the account IDs parameter. The
    #               parameters are mutually exclusive.</p>
    #           <p>Recommendations for member accounts are not included in the export if this parameter,
    #               or the account IDs parameter, is omitted.</p>
    #
    # @return [Types::ExportEBSVolumeRecommendationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.export_ebs_volume_recommendations(
    #     account_ids: [
    #       'member'
    #     ],
    #     filters: [
    #       {
    #         name: 'Finding', # accepts ["Finding"]
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     fields_to_export: [
    #       'AccountId' # accepts ["AccountId", "VolumeArn", "Finding", "UtilizationMetricsVolumeReadOpsPerSecondMaximum", "UtilizationMetricsVolumeWriteOpsPerSecondMaximum", "UtilizationMetricsVolumeReadBytesPerSecondMaximum", "UtilizationMetricsVolumeWriteBytesPerSecondMaximum", "LookbackPeriodInDays", "CurrentConfigurationVolumeType", "CurrentConfigurationVolumeBaselineIOPS", "CurrentConfigurationVolumeBaselineThroughput", "CurrentConfigurationVolumeBurstIOPS", "CurrentConfigurationVolumeBurstThroughput", "CurrentConfigurationVolumeSize", "CurrentMonthlyPrice", "RecommendationOptionsConfigurationVolumeType", "RecommendationOptionsConfigurationVolumeBaselineIOPS", "RecommendationOptionsConfigurationVolumeBaselineThroughput", "RecommendationOptionsConfigurationVolumeBurstIOPS", "RecommendationOptionsConfigurationVolumeBurstThroughput", "RecommendationOptionsConfigurationVolumeSize", "RecommendationOptionsMonthlyPrice", "RecommendationOptionsPerformanceRisk", "LastRefreshTimestamp", "CurrentPerformanceRisk", "RecommendationOptionsSavingsOpportunityPercentage", "RecommendationOptionsEstimatedMonthlySavingsCurrency", "RecommendationOptionsEstimatedMonthlySavingsValue"]
    #     ],
    #     s3_destination_config: {
    #       bucket: 'bucket',
    #       key_prefix: 'keyPrefix'
    #     }, # required
    #     file_format: 'Csv', # accepts ["Csv"]
    #     include_member_accounts: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ExportEBSVolumeRecommendationsOutput
    #   resp.data.job_id #=> String
    #   resp.data.s3_destination #=> Types::S3Destination
    #   resp.data.s3_destination.bucket #=> String
    #   resp.data.s3_destination.key #=> String
    #   resp.data.s3_destination.metadata_key #=> String
    #
    def export_ebs_volume_recommendations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ExportEBSVolumeRecommendationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ExportEBSVolumeRecommendationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ExportEBSVolumeRecommendations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::LimitExceededException, Errors::OptInRequiredException, Errors::ServiceUnavailableException, Errors::InvalidParameterValueException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::MissingAuthenticationToken]),
        data_parser: Parsers::ExportEBSVolumeRecommendations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ExportEBSVolumeRecommendations,
        stubs: @stubs,
        params_class: Params::ExportEBSVolumeRecommendationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :export_ebs_volume_recommendations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Exports optimization recommendations for Amazon EC2 instances.</p>
    #         <p>Recommendations are exported in a comma-separated values (.csv) file, and its metadata
    #             in a JavaScript Object Notation (JSON) (.json) file, to an existing Amazon Simple Storage Service (Amazon S3) bucket that you specify. For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html">Exporting
    #                 Recommendations</a> in the <i>Compute Optimizer User
    #             Guide</i>.</p>
    #         <p>You can have only one Amazon EC2 instance export job in progress per Amazon Web Services Region.</p>
    #
    # @param [Hash] params
    #   See {Types::ExportEC2InstanceRecommendationsInput}.
    #
    # @option params [Array<String>] :account_ids
    #   <p>The IDs of the Amazon Web Services accounts for which to export instance
    #               recommendations.</p>
    #           <p>If your account is the management account of an organization, use this parameter to
    #               specify the member account for which you want to export recommendations.</p>
    #           <p>This parameter cannot be specified together with the include member accounts
    #               parameter. The parameters are mutually exclusive.</p>
    #           <p>Recommendations for member accounts are not included in the export if this parameter,
    #               or the include member accounts parameter, is omitted.</p>
    #           <p>You can specify multiple account IDs per request.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>An array of objects to specify a filter that exports a more specific set of instance
    #               recommendations.</p>
    #
    # @option params [Array<String>] :fields_to_export
    #   <p>The recommendations data to include in the export file. For more information about the
    #               fields that can be exported, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html#exported-files">Exported files</a> in the <i>Compute Optimizer User
    #               Guide</i>.</p>
    #
    # @option params [S3DestinationConfig] :s3_destination_config
    #   <p>An object to specify the destination Amazon Simple Storage Service (Amazon S3) bucket
    #               name and key prefix for the export job.</p>
    #           <p>You must create the destination Amazon S3 bucket for your recommendations
    #               export before you create the export job. Compute Optimizer does not create the S3 bucket
    #               for you. After you create the S3 bucket, ensure that it has the required permissions
    #               policy to allow Compute Optimizer to write the export file to it.
    #               If you plan to
    #               specify an object prefix when you create the export job, you must include the object
    #               prefix in the policy that you add to the S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/create-s3-bucket-policy-for-compute-optimizer.html">Amazon S3 Bucket Policy for Compute Optimizer</a> in the
    #                       <i>Compute Optimizer User Guide</i>.</p>
    #
    # @option params [String] :file_format
    #   <p>The format of the export file.</p>
    #           <p>The only export file format currently supported is <code>Csv</code>.</p>
    #
    # @option params [Boolean] :include_member_accounts
    #   <p>Indicates whether to include recommendations for resources in all member accounts of
    #               the organization if your account is the management account of an organization.</p>
    #           <p>The member accounts must also be opted in to Compute Optimizer, and trusted access for
    #                   Compute Optimizer must be enabled in the organization account. For more information,
    #               see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html#trusted-service-access">Compute Optimizer and Amazon Web Services Organizations trusted access</a> in the
    #                       <i>Compute Optimizer User Guide</i>.</p>
    #           <p>Recommendations for member accounts of the organization are not included in the export
    #               file if this parameter is omitted.</p>
    #           <p>Recommendations for member accounts are not included in the export if this parameter,
    #               or the account IDs parameter, is omitted.</p>
    #
    # @option params [RecommendationPreferences] :recommendation_preferences
    #   <p>An object to specify the preferences for the Amazon EC2 instance
    #               recommendations to export.</p>
    #
    # @return [Types::ExportEC2InstanceRecommendationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.export_ec2_instance_recommendations(
    #     account_ids: [
    #       'member'
    #     ],
    #     filters: [
    #       {
    #         name: 'Finding', # accepts ["Finding", "FindingReasonCodes", "RecommendationSourceType"]
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     fields_to_export: [
    #       'AccountId' # accepts ["AccountId", "InstanceArn", "InstanceName", "Finding", "FindingReasonCodes", "LookbackPeriodInDays", "CurrentInstanceType", "UtilizationMetricsCpuMaximum", "UtilizationMetricsMemoryMaximum", "UtilizationMetricsEbsReadOpsPerSecondMaximum", "UtilizationMetricsEbsWriteOpsPerSecondMaximum", "UtilizationMetricsEbsReadBytesPerSecondMaximum", "UtilizationMetricsEbsWriteBytesPerSecondMaximum", "UtilizationMetricsDiskReadOpsPerSecondMaximum", "UtilizationMetricsDiskWriteOpsPerSecondMaximum", "UtilizationMetricsDiskReadBytesPerSecondMaximum", "UtilizationMetricsDiskWriteBytesPerSecondMaximum", "UtilizationMetricsNetworkInBytesPerSecondMaximum", "UtilizationMetricsNetworkOutBytesPerSecondMaximum", "UtilizationMetricsNetworkPacketsInPerSecondMaximum", "UtilizationMetricsNetworkPacketsOutPerSecondMaximum", "CurrentOnDemandPrice", "CurrentStandardOneYearNoUpfrontReservedPrice", "CurrentStandardThreeYearNoUpfrontReservedPrice", "CurrentVCpus", "CurrentMemory", "CurrentStorage", "CurrentNetwork", "RecommendationOptionsInstanceType", "RecommendationOptionsProjectedUtilizationMetricsCpuMaximum", "RecommendationOptionsProjectedUtilizationMetricsMemoryMaximum", "RecommendationOptionsPlatformDifferences", "RecommendationOptionsPerformanceRisk", "RecommendationOptionsVcpus", "RecommendationOptionsMemory", "RecommendationOptionsStorage", "RecommendationOptionsNetwork", "RecommendationOptionsOnDemandPrice", "RecommendationOptionsStandardOneYearNoUpfrontReservedPrice", "RecommendationOptionsStandardThreeYearNoUpfrontReservedPrice", "RecommendationsSourcesRecommendationSourceArn", "RecommendationsSourcesRecommendationSourceType", "LastRefreshTimestamp", "CurrentPerformanceRisk", "RecommendationOptionsSavingsOpportunityPercentage", "RecommendationOptionsEstimatedMonthlySavingsCurrency", "RecommendationOptionsEstimatedMonthlySavingsValue", "EffectiveRecommendationPreferencesCpuVendorArchitectures", "EffectiveRecommendationPreferencesEnhancedInfrastructureMetrics", "EffectiveRecommendationPreferencesInferredWorkloadTypes", "InferredWorkloadTypes", "RecommendationOptionsMigrationEffort"]
    #     ],
    #     s3_destination_config: {
    #       bucket: 'bucket',
    #       key_prefix: 'keyPrefix'
    #     }, # required
    #     file_format: 'Csv', # accepts ["Csv"]
    #     include_member_accounts: false,
    #     recommendation_preferences: {
    #       cpu_vendor_architectures: [
    #         'AWS_ARM64' # accepts ["AWS_ARM64", "CURRENT"]
    #       ]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ExportEC2InstanceRecommendationsOutput
    #   resp.data.job_id #=> String
    #   resp.data.s3_destination #=> Types::S3Destination
    #   resp.data.s3_destination.bucket #=> String
    #   resp.data.s3_destination.key #=> String
    #   resp.data.s3_destination.metadata_key #=> String
    #
    def export_ec2_instance_recommendations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ExportEC2InstanceRecommendationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ExportEC2InstanceRecommendationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ExportEC2InstanceRecommendations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::LimitExceededException, Errors::OptInRequiredException, Errors::ServiceUnavailableException, Errors::InvalidParameterValueException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::MissingAuthenticationToken]),
        data_parser: Parsers::ExportEC2InstanceRecommendations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ExportEC2InstanceRecommendations,
        stubs: @stubs,
        params_class: Params::ExportEC2InstanceRecommendationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :export_ec2_instance_recommendations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Exports optimization recommendations for Lambda functions.</p>
    #         <p>Recommendations are exported in a comma-separated values (.csv) file, and its metadata
    #             in a JavaScript Object Notation (JSON) (.json) file, to an existing Amazon Simple Storage Service (Amazon S3) bucket that you specify. For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html">Exporting
    #                 Recommendations</a> in the <i>Compute Optimizer User
    #             Guide</i>.</p>
    #         <p>You can have only one Lambda function export job in progress per Amazon Web Services Region.</p>
    #
    # @param [Hash] params
    #   See {Types::ExportLambdaFunctionRecommendationsInput}.
    #
    # @option params [Array<String>] :account_ids
    #   <p>The IDs of the Amazon Web Services accounts for which to export Lambda
    #               function recommendations.</p>
    #           <p>If your account is the management account of an organization, use this parameter to
    #               specify the member account for which you want to export recommendations.</p>
    #           <p>This parameter cannot be specified together with the include member accounts
    #               parameter. The parameters are mutually exclusive.</p>
    #           <p>Recommendations for member accounts are not included in the export if this parameter,
    #               or the include member accounts parameter, is omitted.</p>
    #           <p>You can specify multiple account IDs per request.</p>
    #
    # @option params [Array<LambdaFunctionRecommendationFilter>] :filters
    #   <p>An array of objects to specify a filter that exports a more specific set of Lambda function recommendations.</p>
    #
    # @option params [Array<String>] :fields_to_export
    #   <p>The recommendations data to include in the export file. For more information about the
    #               fields that can be exported, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html#exported-files">Exported files</a> in the <i>Compute Optimizer User
    #               Guide</i>.</p>
    #
    # @option params [S3DestinationConfig] :s3_destination_config
    #   <p>Describes the destination Amazon Simple Storage Service (Amazon S3) bucket name and
    #               key prefix for a recommendations export job.</p>
    #           <p>You must create the destination Amazon S3 bucket for your recommendations
    #               export before you create the export job. Compute Optimizer does not create the S3 bucket
    #               for you. After you create the S3 bucket, ensure that it has the required permission
    #               policy to allow Compute Optimizer to write the export file to it. If you plan to specify
    #               an object prefix when you create the export job, you must include the object prefix in
    #               the policy that you add to the S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/create-s3-bucket-policy-for-compute-optimizer.html">Amazon S3 Bucket Policy for Compute Optimizer</a> in the
    #                       <i>Compute Optimizer User Guide</i>.</p>
    #
    # @option params [String] :file_format
    #   <p>The format of the export file.</p>
    #           <p>The only export file format currently supported is <code>Csv</code>.</p>
    #
    # @option params [Boolean] :include_member_accounts
    #   <p>Indicates whether to include recommendations for resources in all member accounts of
    #               the organization if your account is the management account of an organization.</p>
    #           <p>The member accounts must also be opted in to Compute Optimizer, and trusted access for
    #                   Compute Optimizer must be enabled in the organization account. For more information,
    #               see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html#trusted-service-access">Compute Optimizer and Amazon Web Services Organizations trusted access</a> in the
    #                       <i>Compute Optimizer User Guide</i>.</p>
    #           <p>Recommendations for member accounts of the organization are not included in the export
    #               file if this parameter is omitted.</p>
    #           <p>This parameter cannot be specified together with the account IDs parameter. The
    #               parameters are mutually exclusive.</p>
    #           <p>Recommendations for member accounts are not included in the export if this parameter,
    #               or the account IDs parameter, is omitted.</p>
    #
    # @return [Types::ExportLambdaFunctionRecommendationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.export_lambda_function_recommendations(
    #     account_ids: [
    #       'member'
    #     ],
    #     filters: [
    #       {
    #         name: 'Finding', # accepts ["Finding", "FindingReasonCode"]
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     fields_to_export: [
    #       'AccountId' # accepts ["AccountId", "FunctionArn", "FunctionVersion", "Finding", "FindingReasonCodes", "NumberOfInvocations", "UtilizationMetricsDurationMaximum", "UtilizationMetricsDurationAverage", "UtilizationMetricsMemoryMaximum", "UtilizationMetricsMemoryAverage", "LookbackPeriodInDays", "CurrentConfigurationMemorySize", "CurrentConfigurationTimeout", "CurrentCostTotal", "CurrentCostAverage", "RecommendationOptionsConfigurationMemorySize", "RecommendationOptionsCostLow", "RecommendationOptionsCostHigh", "RecommendationOptionsProjectedUtilizationMetricsDurationLowerBound", "RecommendationOptionsProjectedUtilizationMetricsDurationUpperBound", "RecommendationOptionsProjectedUtilizationMetricsDurationExpected", "LastRefreshTimestamp", "CurrentPerformanceRisk", "RecommendationOptionsSavingsOpportunityPercentage", "RecommendationOptionsEstimatedMonthlySavingsCurrency", "RecommendationOptionsEstimatedMonthlySavingsValue"]
    #     ],
    #     s3_destination_config: {
    #       bucket: 'bucket',
    #       key_prefix: 'keyPrefix'
    #     }, # required
    #     file_format: 'Csv', # accepts ["Csv"]
    #     include_member_accounts: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ExportLambdaFunctionRecommendationsOutput
    #   resp.data.job_id #=> String
    #   resp.data.s3_destination #=> Types::S3Destination
    #   resp.data.s3_destination.bucket #=> String
    #   resp.data.s3_destination.key #=> String
    #   resp.data.s3_destination.metadata_key #=> String
    #
    def export_lambda_function_recommendations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ExportLambdaFunctionRecommendationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ExportLambdaFunctionRecommendationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ExportLambdaFunctionRecommendations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::LimitExceededException, Errors::OptInRequiredException, Errors::ServiceUnavailableException, Errors::InvalidParameterValueException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::MissingAuthenticationToken]),
        data_parser: Parsers::ExportLambdaFunctionRecommendations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ExportLambdaFunctionRecommendations,
        stubs: @stubs,
        params_class: Params::ExportLambdaFunctionRecommendationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :export_lambda_function_recommendations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns Auto Scaling group recommendations.</p>
    #         <p>Compute Optimizer generates recommendations for Amazon EC2 Auto Scaling groups that
    #             meet a specific set of requirements. For more information, see the <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html">Supported
    #                 resources and requirements</a> in the <i>Compute Optimizer User
    #                 Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAutoScalingGroupRecommendationsInput}.
    #
    # @option params [Array<String>] :account_ids
    #   <p>The ID of the Amazon Web Services account for which to return Auto Scaling group
    #               recommendations.</p>
    #           <p>If your account is the management account of an organization, use this parameter to
    #               specify the member account for which you want to return Auto Scaling group
    #               recommendations.</p>
    #           <p>Only one account ID can be specified per request.</p>
    #
    # @option params [Array<String>] :auto_scaling_group_arns
    #   <p>The Amazon Resource Name (ARN) of the Auto Scaling groups for which to return
    #               recommendations.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to advance to the next page of Auto Scaling group
    #               recommendations.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of Auto Scaling group recommendations to return with a single
    #               request.</p>
    #           <p>To retrieve the remaining results, make another request with the returned
    #                   <code>nextToken</code> value.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>An array of objects to specify a filter that returns a more specific list of Auto Scaling group recommendations.</p>
    #
    # @option params [RecommendationPreferences] :recommendation_preferences
    #   <p>An object to specify the preferences for the Auto Scaling group recommendations
    #               to return in the response.</p>
    #
    # @return [Types::GetAutoScalingGroupRecommendationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_auto_scaling_group_recommendations(
    #     account_ids: [
    #       'member'
    #     ],
    #     auto_scaling_group_arns: [
    #       'member'
    #     ],
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: 'Finding', # accepts ["Finding", "FindingReasonCodes", "RecommendationSourceType"]
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     recommendation_preferences: {
    #       cpu_vendor_architectures: [
    #         'AWS_ARM64' # accepts ["AWS_ARM64", "CURRENT"]
    #       ]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAutoScalingGroupRecommendationsOutput
    #   resp.data.next_token #=> String
    #   resp.data.auto_scaling_group_recommendations #=> Array<AutoScalingGroupRecommendation>
    #   resp.data.auto_scaling_group_recommendations[0] #=> Types::AutoScalingGroupRecommendation
    #   resp.data.auto_scaling_group_recommendations[0].account_id #=> String
    #   resp.data.auto_scaling_group_recommendations[0].auto_scaling_group_arn #=> String
    #   resp.data.auto_scaling_group_recommendations[0].auto_scaling_group_name #=> String
    #   resp.data.auto_scaling_group_recommendations[0].finding #=> String, one of ["Underprovisioned", "Overprovisioned", "Optimized", "NotOptimized"]
    #   resp.data.auto_scaling_group_recommendations[0].utilization_metrics #=> Array<UtilizationMetric>
    #   resp.data.auto_scaling_group_recommendations[0].utilization_metrics[0] #=> Types::UtilizationMetric
    #   resp.data.auto_scaling_group_recommendations[0].utilization_metrics[0].name #=> String, one of ["Cpu", "Memory", "EBS_READ_OPS_PER_SECOND", "EBS_WRITE_OPS_PER_SECOND", "EBS_READ_BYTES_PER_SECOND", "EBS_WRITE_BYTES_PER_SECOND", "DISK_READ_OPS_PER_SECOND", "DISK_WRITE_OPS_PER_SECOND", "DISK_READ_BYTES_PER_SECOND", "DISK_WRITE_BYTES_PER_SECOND", "NETWORK_IN_BYTES_PER_SECOND", "NETWORK_OUT_BYTES_PER_SECOND", "NETWORK_PACKETS_IN_PER_SECOND", "NETWORK_PACKETS_OUT_PER_SECOND"]
    #   resp.data.auto_scaling_group_recommendations[0].utilization_metrics[0].statistic #=> String, one of ["Maximum", "Average"]
    #   resp.data.auto_scaling_group_recommendations[0].utilization_metrics[0].value #=> Float
    #   resp.data.auto_scaling_group_recommendations[0].look_back_period_in_days #=> Float
    #   resp.data.auto_scaling_group_recommendations[0].current_configuration #=> Types::AutoScalingGroupConfiguration
    #   resp.data.auto_scaling_group_recommendations[0].current_configuration.desired_capacity #=> Integer
    #   resp.data.auto_scaling_group_recommendations[0].current_configuration.min_size #=> Integer
    #   resp.data.auto_scaling_group_recommendations[0].current_configuration.max_size #=> Integer
    #   resp.data.auto_scaling_group_recommendations[0].current_configuration.instance_type #=> String
    #   resp.data.auto_scaling_group_recommendations[0].recommendation_options #=> Array<AutoScalingGroupRecommendationOption>
    #   resp.data.auto_scaling_group_recommendations[0].recommendation_options[0] #=> Types::AutoScalingGroupRecommendationOption
    #   resp.data.auto_scaling_group_recommendations[0].recommendation_options[0].configuration #=> Types::AutoScalingGroupConfiguration
    #   resp.data.auto_scaling_group_recommendations[0].recommendation_options[0].projected_utilization_metrics #=> Array<UtilizationMetric>
    #   resp.data.auto_scaling_group_recommendations[0].recommendation_options[0].performance_risk #=> Float
    #   resp.data.auto_scaling_group_recommendations[0].recommendation_options[0].rank #=> Integer
    #   resp.data.auto_scaling_group_recommendations[0].recommendation_options[0].savings_opportunity #=> Types::SavingsOpportunity
    #   resp.data.auto_scaling_group_recommendations[0].recommendation_options[0].savings_opportunity.savings_opportunity_percentage #=> Float
    #   resp.data.auto_scaling_group_recommendations[0].recommendation_options[0].savings_opportunity.estimated_monthly_savings #=> Types::EstimatedMonthlySavings
    #   resp.data.auto_scaling_group_recommendations[0].recommendation_options[0].savings_opportunity.estimated_monthly_savings.currency #=> String, one of ["USD", "CNY"]
    #   resp.data.auto_scaling_group_recommendations[0].recommendation_options[0].savings_opportunity.estimated_monthly_savings.value #=> Float
    #   resp.data.auto_scaling_group_recommendations[0].recommendation_options[0].migration_effort #=> String, one of ["VeryLow", "Low", "Medium", "High"]
    #   resp.data.auto_scaling_group_recommendations[0].last_refresh_timestamp #=> Time
    #   resp.data.auto_scaling_group_recommendations[0].current_performance_risk #=> String, one of ["VeryLow", "Low", "Medium", "High"]
    #   resp.data.auto_scaling_group_recommendations[0].effective_recommendation_preferences #=> Types::EffectiveRecommendationPreferences
    #   resp.data.auto_scaling_group_recommendations[0].effective_recommendation_preferences.cpu_vendor_architectures #=> Array<String>
    #   resp.data.auto_scaling_group_recommendations[0].effective_recommendation_preferences.cpu_vendor_architectures[0] #=> String, one of ["AWS_ARM64", "CURRENT"]
    #   resp.data.auto_scaling_group_recommendations[0].effective_recommendation_preferences.enhanced_infrastructure_metrics #=> String, one of ["Active", "Inactive"]
    #   resp.data.auto_scaling_group_recommendations[0].effective_recommendation_preferences.inferred_workload_types #=> String, one of ["Active", "Inactive"]
    #   resp.data.auto_scaling_group_recommendations[0].inferred_workload_types #=> Array<String>
    #   resp.data.auto_scaling_group_recommendations[0].inferred_workload_types[0] #=> String, one of ["AmazonEmr", "ApacheCassandra", "ApacheHadoop", "Memcached", "Nginx", "PostgreSql", "Redis"]
    #   resp.data.errors #=> Array<GetRecommendationError>
    #   resp.data.errors[0] #=> Types::GetRecommendationError
    #   resp.data.errors[0].identifier #=> String
    #   resp.data.errors[0].code #=> String
    #   resp.data.errors[0].message #=> String
    #
    def get_auto_scaling_group_recommendations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAutoScalingGroupRecommendationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAutoScalingGroupRecommendationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAutoScalingGroupRecommendations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::OptInRequiredException, Errors::ServiceUnavailableException, Errors::InvalidParameterValueException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::MissingAuthenticationToken]),
        data_parser: Parsers::GetAutoScalingGroupRecommendations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAutoScalingGroupRecommendations,
        stubs: @stubs,
        params_class: Params::GetAutoScalingGroupRecommendationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_auto_scaling_group_recommendations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns Amazon Elastic Block Store (Amazon EBS) volume recommendations.</p>
    #         <p>Compute Optimizer generates recommendations for Amazon EBS volumes that
    #             meet a specific set of requirements. For more information, see the <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html">Supported
    #                 resources and requirements</a> in the <i>Compute Optimizer User
    #                 Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetEBSVolumeRecommendationsInput}.
    #
    # @option params [Array<String>] :volume_arns
    #   <p>The Amazon Resource Name (ARN) of the volumes for which to return
    #               recommendations.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to advance to the next page of volume recommendations.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of volume recommendations to return with a single request.</p>
    #           <p>To retrieve the remaining results, make another request with the returned
    #                   <code>nextToken</code> value.</p>
    #
    # @option params [Array<EBSFilter>] :filters
    #   <p>An array of objects to specify a filter that returns a more specific list of volume
    #               recommendations.</p>
    #
    # @option params [Array<String>] :account_ids
    #   <p>The ID of the Amazon Web Services account for which to return volume
    #               recommendations.</p>
    #           <p>If your account is the management account of an organization, use this parameter to
    #               specify the member account for which you want to return volume recommendations.</p>
    #           <p>Only one account ID can be specified per request.</p>
    #
    # @return [Types::GetEBSVolumeRecommendationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ebs_volume_recommendations(
    #     volume_arns: [
    #       'member'
    #     ],
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: 'Finding', # accepts ["Finding"]
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     account_ids: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetEBSVolumeRecommendationsOutput
    #   resp.data.next_token #=> String
    #   resp.data.volume_recommendations #=> Array<VolumeRecommendation>
    #   resp.data.volume_recommendations[0] #=> Types::VolumeRecommendation
    #   resp.data.volume_recommendations[0].volume_arn #=> String
    #   resp.data.volume_recommendations[0].account_id #=> String
    #   resp.data.volume_recommendations[0].current_configuration #=> Types::VolumeConfiguration
    #   resp.data.volume_recommendations[0].current_configuration.volume_type #=> String
    #   resp.data.volume_recommendations[0].current_configuration.volume_size #=> Integer
    #   resp.data.volume_recommendations[0].current_configuration.volume_baseline_iops #=> Integer
    #   resp.data.volume_recommendations[0].current_configuration.volume_burst_iops #=> Integer
    #   resp.data.volume_recommendations[0].current_configuration.volume_baseline_throughput #=> Integer
    #   resp.data.volume_recommendations[0].current_configuration.volume_burst_throughput #=> Integer
    #   resp.data.volume_recommendations[0].finding #=> String, one of ["Optimized", "NotOptimized"]
    #   resp.data.volume_recommendations[0].utilization_metrics #=> Array<EBSUtilizationMetric>
    #   resp.data.volume_recommendations[0].utilization_metrics[0] #=> Types::EBSUtilizationMetric
    #   resp.data.volume_recommendations[0].utilization_metrics[0].name #=> String, one of ["VolumeReadOpsPerSecond", "VolumeWriteOpsPerSecond", "VolumeReadBytesPerSecond", "VolumeWriteBytesPerSecond"]
    #   resp.data.volume_recommendations[0].utilization_metrics[0].statistic #=> String, one of ["Maximum", "Average"]
    #   resp.data.volume_recommendations[0].utilization_metrics[0].value #=> Float
    #   resp.data.volume_recommendations[0].look_back_period_in_days #=> Float
    #   resp.data.volume_recommendations[0].volume_recommendation_options #=> Array<VolumeRecommendationOption>
    #   resp.data.volume_recommendations[0].volume_recommendation_options[0] #=> Types::VolumeRecommendationOption
    #   resp.data.volume_recommendations[0].volume_recommendation_options[0].configuration #=> Types::VolumeConfiguration
    #   resp.data.volume_recommendations[0].volume_recommendation_options[0].performance_risk #=> Float
    #   resp.data.volume_recommendations[0].volume_recommendation_options[0].rank #=> Integer
    #   resp.data.volume_recommendations[0].volume_recommendation_options[0].savings_opportunity #=> Types::SavingsOpportunity
    #   resp.data.volume_recommendations[0].volume_recommendation_options[0].savings_opportunity.savings_opportunity_percentage #=> Float
    #   resp.data.volume_recommendations[0].volume_recommendation_options[0].savings_opportunity.estimated_monthly_savings #=> Types::EstimatedMonthlySavings
    #   resp.data.volume_recommendations[0].volume_recommendation_options[0].savings_opportunity.estimated_monthly_savings.currency #=> String, one of ["USD", "CNY"]
    #   resp.data.volume_recommendations[0].volume_recommendation_options[0].savings_opportunity.estimated_monthly_savings.value #=> Float
    #   resp.data.volume_recommendations[0].last_refresh_timestamp #=> Time
    #   resp.data.volume_recommendations[0].current_performance_risk #=> String, one of ["VeryLow", "Low", "Medium", "High"]
    #   resp.data.errors #=> Array<GetRecommendationError>
    #   resp.data.errors[0] #=> Types::GetRecommendationError
    #   resp.data.errors[0].identifier #=> String
    #   resp.data.errors[0].code #=> String
    #   resp.data.errors[0].message #=> String
    #
    def get_ebs_volume_recommendations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetEBSVolumeRecommendationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetEBSVolumeRecommendationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetEBSVolumeRecommendations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::OptInRequiredException, Errors::ServiceUnavailableException, Errors::InvalidParameterValueException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::MissingAuthenticationToken]),
        data_parser: Parsers::GetEBSVolumeRecommendations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetEBSVolumeRecommendations,
        stubs: @stubs,
        params_class: Params::GetEBSVolumeRecommendationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_ebs_volume_recommendations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns Amazon EC2 instance recommendations.</p>
    #         <p>Compute Optimizer generates recommendations for Amazon Elastic Compute Cloud (Amazon EC2) instances that meet a specific set of requirements. For more
    #             information, see the <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html">Supported resources and
    #                 requirements</a> in the <i>Compute Optimizer User
    #             Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetEC2InstanceRecommendationsInput}.
    #
    # @option params [Array<String>] :instance_arns
    #   <p>The Amazon Resource Name (ARN) of the instances for which to return
    #               recommendations.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to advance to the next page of instance recommendations.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of instance recommendations to return with a single request.</p>
    #           <p>To retrieve the remaining results, make another request with the returned
    #                   <code>nextToken</code> value.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>An array of objects to specify a filter that returns a more specific list of instance
    #               recommendations.</p>
    #
    # @option params [Array<String>] :account_ids
    #   <p>The ID of the Amazon Web Services account for which to return instance
    #               recommendations.</p>
    #           <p>If your account is the management account of an organization, use this parameter to
    #               specify the member account for which you want to return instance recommendations.</p>
    #           <p>Only one account ID can be specified per request.</p>
    #
    # @option params [RecommendationPreferences] :recommendation_preferences
    #   <p>An object to specify the preferences for the Amazon EC2 instance
    #               recommendations to return in the response.</p>
    #
    # @return [Types::GetEC2InstanceRecommendationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ec2_instance_recommendations(
    #     instance_arns: [
    #       'member'
    #     ],
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: 'Finding', # accepts ["Finding", "FindingReasonCodes", "RecommendationSourceType"]
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     account_ids: [
    #       'member'
    #     ],
    #     recommendation_preferences: {
    #       cpu_vendor_architectures: [
    #         'AWS_ARM64' # accepts ["AWS_ARM64", "CURRENT"]
    #       ]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetEC2InstanceRecommendationsOutput
    #   resp.data.next_token #=> String
    #   resp.data.instance_recommendations #=> Array<InstanceRecommendation>
    #   resp.data.instance_recommendations[0] #=> Types::InstanceRecommendation
    #   resp.data.instance_recommendations[0].instance_arn #=> String
    #   resp.data.instance_recommendations[0].account_id #=> String
    #   resp.data.instance_recommendations[0].instance_name #=> String
    #   resp.data.instance_recommendations[0].current_instance_type #=> String
    #   resp.data.instance_recommendations[0].finding #=> String, one of ["Underprovisioned", "Overprovisioned", "Optimized", "NotOptimized"]
    #   resp.data.instance_recommendations[0].finding_reason_codes #=> Array<String>
    #   resp.data.instance_recommendations[0].finding_reason_codes[0] #=> String, one of ["CPUOverprovisioned", "CPUUnderprovisioned", "MemoryOverprovisioned", "MemoryUnderprovisioned", "EBSThroughputOverprovisioned", "EBSThroughputUnderprovisioned", "EBSIOPSOverprovisioned", "EBSIOPSUnderprovisioned", "NetworkBandwidthOverprovisioned", "NetworkBandwidthUnderprovisioned", "NetworkPPSOverprovisioned", "NetworkPPSUnderprovisioned", "DiskIOPSOverprovisioned", "DiskIOPSUnderprovisioned", "DiskThroughputOverprovisioned", "DiskThroughputUnderprovisioned"]
    #   resp.data.instance_recommendations[0].utilization_metrics #=> Array<UtilizationMetric>
    #   resp.data.instance_recommendations[0].utilization_metrics[0] #=> Types::UtilizationMetric
    #   resp.data.instance_recommendations[0].utilization_metrics[0].name #=> String, one of ["Cpu", "Memory", "EBS_READ_OPS_PER_SECOND", "EBS_WRITE_OPS_PER_SECOND", "EBS_READ_BYTES_PER_SECOND", "EBS_WRITE_BYTES_PER_SECOND", "DISK_READ_OPS_PER_SECOND", "DISK_WRITE_OPS_PER_SECOND", "DISK_READ_BYTES_PER_SECOND", "DISK_WRITE_BYTES_PER_SECOND", "NETWORK_IN_BYTES_PER_SECOND", "NETWORK_OUT_BYTES_PER_SECOND", "NETWORK_PACKETS_IN_PER_SECOND", "NETWORK_PACKETS_OUT_PER_SECOND"]
    #   resp.data.instance_recommendations[0].utilization_metrics[0].statistic #=> String, one of ["Maximum", "Average"]
    #   resp.data.instance_recommendations[0].utilization_metrics[0].value #=> Float
    #   resp.data.instance_recommendations[0].look_back_period_in_days #=> Float
    #   resp.data.instance_recommendations[0].recommendation_options #=> Array<InstanceRecommendationOption>
    #   resp.data.instance_recommendations[0].recommendation_options[0] #=> Types::InstanceRecommendationOption
    #   resp.data.instance_recommendations[0].recommendation_options[0].instance_type #=> String
    #   resp.data.instance_recommendations[0].recommendation_options[0].projected_utilization_metrics #=> Array<UtilizationMetric>
    #   resp.data.instance_recommendations[0].recommendation_options[0].platform_differences #=> Array<String>
    #   resp.data.instance_recommendations[0].recommendation_options[0].platform_differences[0] #=> String, one of ["Hypervisor", "NetworkInterface", "StorageInterface", "InstanceStoreAvailability", "VirtualizationType", "Architecture"]
    #   resp.data.instance_recommendations[0].recommendation_options[0].performance_risk #=> Float
    #   resp.data.instance_recommendations[0].recommendation_options[0].rank #=> Integer
    #   resp.data.instance_recommendations[0].recommendation_options[0].savings_opportunity #=> Types::SavingsOpportunity
    #   resp.data.instance_recommendations[0].recommendation_options[0].savings_opportunity.savings_opportunity_percentage #=> Float
    #   resp.data.instance_recommendations[0].recommendation_options[0].savings_opportunity.estimated_monthly_savings #=> Types::EstimatedMonthlySavings
    #   resp.data.instance_recommendations[0].recommendation_options[0].savings_opportunity.estimated_monthly_savings.currency #=> String, one of ["USD", "CNY"]
    #   resp.data.instance_recommendations[0].recommendation_options[0].savings_opportunity.estimated_monthly_savings.value #=> Float
    #   resp.data.instance_recommendations[0].recommendation_options[0].migration_effort #=> String, one of ["VeryLow", "Low", "Medium", "High"]
    #   resp.data.instance_recommendations[0].recommendation_sources #=> Array<RecommendationSource>
    #   resp.data.instance_recommendations[0].recommendation_sources[0] #=> Types::RecommendationSource
    #   resp.data.instance_recommendations[0].recommendation_sources[0].recommendation_source_arn #=> String
    #   resp.data.instance_recommendations[0].recommendation_sources[0].recommendation_source_type #=> String, one of ["Ec2Instance", "AutoScalingGroup", "EbsVolume", "LambdaFunction"]
    #   resp.data.instance_recommendations[0].last_refresh_timestamp #=> Time
    #   resp.data.instance_recommendations[0].current_performance_risk #=> String, one of ["VeryLow", "Low", "Medium", "High"]
    #   resp.data.instance_recommendations[0].effective_recommendation_preferences #=> Types::EffectiveRecommendationPreferences
    #   resp.data.instance_recommendations[0].effective_recommendation_preferences.cpu_vendor_architectures #=> Array<String>
    #   resp.data.instance_recommendations[0].effective_recommendation_preferences.cpu_vendor_architectures[0] #=> String, one of ["AWS_ARM64", "CURRENT"]
    #   resp.data.instance_recommendations[0].effective_recommendation_preferences.enhanced_infrastructure_metrics #=> String, one of ["Active", "Inactive"]
    #   resp.data.instance_recommendations[0].effective_recommendation_preferences.inferred_workload_types #=> String, one of ["Active", "Inactive"]
    #   resp.data.instance_recommendations[0].inferred_workload_types #=> Array<String>
    #   resp.data.instance_recommendations[0].inferred_workload_types[0] #=> String, one of ["AmazonEmr", "ApacheCassandra", "ApacheHadoop", "Memcached", "Nginx", "PostgreSql", "Redis"]
    #   resp.data.errors #=> Array<GetRecommendationError>
    #   resp.data.errors[0] #=> Types::GetRecommendationError
    #   resp.data.errors[0].identifier #=> String
    #   resp.data.errors[0].code #=> String
    #   resp.data.errors[0].message #=> String
    #
    def get_ec2_instance_recommendations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetEC2InstanceRecommendationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetEC2InstanceRecommendationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetEC2InstanceRecommendations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::OptInRequiredException, Errors::ServiceUnavailableException, Errors::InvalidParameterValueException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::MissingAuthenticationToken]),
        data_parser: Parsers::GetEC2InstanceRecommendations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetEC2InstanceRecommendations,
        stubs: @stubs,
        params_class: Params::GetEC2InstanceRecommendationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_ec2_instance_recommendations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the projected utilization metrics of Amazon EC2 instance
    #             recommendations.</p>
    #         <note>
    #             <p>The <code>Cpu</code> and <code>Memory</code> metrics are the only projected
    #                 utilization metrics returned when you run this action. Additionally, the
    #                     <code>Memory</code> metric is returned only for resources that have the unified
    #                     CloudWatch agent installed on them. For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html#cw-agent">Enabling Memory Utilization with the CloudWatch Agent</a>.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::GetEC2RecommendationProjectedMetricsInput}.
    #
    # @option params [String] :instance_arn
    #   <p>The Amazon Resource Name (ARN) of the instances for which to return recommendation
    #               projected metrics.</p>
    #
    # @option params [String] :stat
    #   <p>The statistic of the projected metrics.</p>
    #
    # @option params [Integer] :period
    #   <p>The granularity, in seconds, of the projected metrics data points.</p>
    #
    # @option params [Time] :start_time
    #   <p>The timestamp of the first projected metrics data point to return.</p>
    #
    # @option params [Time] :end_time
    #   <p>The timestamp of the last projected metrics data point to return.</p>
    #
    # @option params [RecommendationPreferences] :recommendation_preferences
    #   <p>An object to specify the preferences for the Amazon EC2 recommendation
    #               projected metrics to return in the response.</p>
    #
    # @return [Types::GetEC2RecommendationProjectedMetricsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ec2_recommendation_projected_metrics(
    #     instance_arn: 'instanceArn', # required
    #     stat: 'Maximum', # required - accepts ["Maximum", "Average"]
    #     period: 1, # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     recommendation_preferences: {
    #       cpu_vendor_architectures: [
    #         'AWS_ARM64' # accepts ["AWS_ARM64", "CURRENT"]
    #       ]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetEC2RecommendationProjectedMetricsOutput
    #   resp.data.recommended_option_projected_metrics #=> Array<RecommendedOptionProjectedMetric>
    #   resp.data.recommended_option_projected_metrics[0] #=> Types::RecommendedOptionProjectedMetric
    #   resp.data.recommended_option_projected_metrics[0].recommended_instance_type #=> String
    #   resp.data.recommended_option_projected_metrics[0].rank #=> Integer
    #   resp.data.recommended_option_projected_metrics[0].projected_metrics #=> Array<ProjectedMetric>
    #   resp.data.recommended_option_projected_metrics[0].projected_metrics[0] #=> Types::ProjectedMetric
    #   resp.data.recommended_option_projected_metrics[0].projected_metrics[0].name #=> String, one of ["Cpu", "Memory", "EBS_READ_OPS_PER_SECOND", "EBS_WRITE_OPS_PER_SECOND", "EBS_READ_BYTES_PER_SECOND", "EBS_WRITE_BYTES_PER_SECOND", "DISK_READ_OPS_PER_SECOND", "DISK_WRITE_OPS_PER_SECOND", "DISK_READ_BYTES_PER_SECOND", "DISK_WRITE_BYTES_PER_SECOND", "NETWORK_IN_BYTES_PER_SECOND", "NETWORK_OUT_BYTES_PER_SECOND", "NETWORK_PACKETS_IN_PER_SECOND", "NETWORK_PACKETS_OUT_PER_SECOND"]
    #   resp.data.recommended_option_projected_metrics[0].projected_metrics[0].timestamps #=> Array<Time>
    #   resp.data.recommended_option_projected_metrics[0].projected_metrics[0].timestamps[0] #=> Time
    #   resp.data.recommended_option_projected_metrics[0].projected_metrics[0].values #=> Array<Float>
    #   resp.data.recommended_option_projected_metrics[0].projected_metrics[0].values[0] #=> Float
    #
    def get_ec2_recommendation_projected_metrics(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetEC2RecommendationProjectedMetricsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetEC2RecommendationProjectedMetricsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetEC2RecommendationProjectedMetrics
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::OptInRequiredException, Errors::ServiceUnavailableException, Errors::InvalidParameterValueException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::MissingAuthenticationToken]),
        data_parser: Parsers::GetEC2RecommendationProjectedMetrics
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetEC2RecommendationProjectedMetrics,
        stubs: @stubs,
        params_class: Params::GetEC2RecommendationProjectedMetricsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_ec2_recommendation_projected_metrics
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the recommendation preferences that are in effect for a given resource, such
    #             as enhanced infrastructure metrics. Considers all applicable preferences that you might
    #             have set at the resource, account, and organization level.</p>
    #         <p>When you create a recommendation preference, you can set its status to
    #                 <code>Active</code> or <code>Inactive</code>. Use this action to view the
    #             recommendation preferences that are in effect, or <code>Active</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetEffectiveRecommendationPreferencesInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which to confirm effective
    #               recommendation preferences. Only EC2 instance and Auto Scaling group ARNs are
    #               currently supported.</p>
    #
    # @return [Types::GetEffectiveRecommendationPreferencesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_effective_recommendation_preferences(
    #     resource_arn: 'resourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetEffectiveRecommendationPreferencesOutput
    #   resp.data.enhanced_infrastructure_metrics #=> String, one of ["Active", "Inactive"]
    #
    def get_effective_recommendation_preferences(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetEffectiveRecommendationPreferencesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetEffectiveRecommendationPreferencesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetEffectiveRecommendationPreferences
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::OptInRequiredException, Errors::ServiceUnavailableException, Errors::InvalidParameterValueException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::MissingAuthenticationToken]),
        data_parser: Parsers::GetEffectiveRecommendationPreferences
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetEffectiveRecommendationPreferences,
        stubs: @stubs,
        params_class: Params::GetEffectiveRecommendationPreferencesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_effective_recommendation_preferences
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the enrollment (opt in) status of an account to the Compute Optimizer
    #             service.</p>
    #         <p>If the account is the management account of an organization, this action also confirms
    #             the enrollment status of member accounts of the organization. Use the <a>GetEnrollmentStatusesForOrganization</a> action to get detailed information
    #             about the enrollment status of member accounts of an organization.</p>
    #
    # @param [Hash] params
    #   See {Types::GetEnrollmentStatusInput}.
    #
    # @return [Types::GetEnrollmentStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_enrollment_status()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetEnrollmentStatusOutput
    #   resp.data.status #=> String, one of ["Active", "Inactive", "Pending", "Failed"]
    #   resp.data.status_reason #=> String
    #   resp.data.member_accounts_enrolled #=> Boolean
    #   resp.data.last_updated_timestamp #=> Time
    #   resp.data.number_of_member_accounts_opted_in #=> Integer
    #
    def get_enrollment_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetEnrollmentStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetEnrollmentStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetEnrollmentStatus
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ServiceUnavailableException, Errors::InvalidParameterValueException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::MissingAuthenticationToken]),
        data_parser: Parsers::GetEnrollmentStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetEnrollmentStatus,
        stubs: @stubs,
        params_class: Params::GetEnrollmentStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_enrollment_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the Compute Optimizer enrollment (opt-in) status of organization member
    #             accounts, if your account is an organization management account.</p>
    #         <p>To get the enrollment status of standalone accounts, use the <a>GetEnrollmentStatus</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::GetEnrollmentStatusesForOrganizationInput}.
    #
    # @option params [Array<EnrollmentFilter>] :filters
    #   <p>An array of objects to specify a filter that returns a more specific list of account
    #               enrollment statuses.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to advance to the next page of account enrollment statuses.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of account enrollment statuses to return with a single request. You
    #               can specify up to 100 statuses to return with each request.</p>
    #           <p>To retrieve the remaining results, make another request with the returned
    #                   <code>nextToken</code> value.</p>
    #
    # @return [Types::GetEnrollmentStatusesForOrganizationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_enrollment_statuses_for_organization(
    #     filters: [
    #       {
    #         name: 'Status', # accepts ["Status"]
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetEnrollmentStatusesForOrganizationOutput
    #   resp.data.account_enrollment_statuses #=> Array<AccountEnrollmentStatus>
    #   resp.data.account_enrollment_statuses[0] #=> Types::AccountEnrollmentStatus
    #   resp.data.account_enrollment_statuses[0].account_id #=> String
    #   resp.data.account_enrollment_statuses[0].status #=> String, one of ["Active", "Inactive", "Pending", "Failed"]
    #   resp.data.account_enrollment_statuses[0].status_reason #=> String
    #   resp.data.account_enrollment_statuses[0].last_updated_timestamp #=> Time
    #   resp.data.next_token #=> String
    #
    def get_enrollment_statuses_for_organization(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetEnrollmentStatusesForOrganizationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetEnrollmentStatusesForOrganizationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetEnrollmentStatusesForOrganization
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ServiceUnavailableException, Errors::InvalidParameterValueException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::MissingAuthenticationToken]),
        data_parser: Parsers::GetEnrollmentStatusesForOrganization
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetEnrollmentStatusesForOrganization,
        stubs: @stubs,
        params_class: Params::GetEnrollmentStatusesForOrganizationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_enrollment_statuses_for_organization
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns Lambda function recommendations.</p>
    #         <p>Compute Optimizer generates recommendations for functions that meet a specific set
    #             of requirements. For more information, see the <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html">Supported resources and
    #                 requirements</a> in the <i>Compute Optimizer User
    #             Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetLambdaFunctionRecommendationsInput}.
    #
    # @option params [Array<String>] :function_arns
    #   <p>The Amazon Resource Name (ARN) of the functions for which to return
    #               recommendations.</p>
    #           <p>You can specify a qualified or unqualified ARN. If you specify an unqualified ARN
    #               without a function version suffix, Compute Optimizer will return recommendations for the
    #               latest (<code>$LATEST</code>) version of the function. If you specify a qualified ARN
    #               with a version suffix, Compute Optimizer will return recommendations for the specified
    #               function version. For more information about using function versions, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-versions.html#versioning-versions-using">Using
    #                   versions</a> in the <i>Lambda Developer
    #               Guide</i>.</p>
    #
    # @option params [Array<String>] :account_ids
    #   <p>The ID of the Amazon Web Services account for which to return function
    #               recommendations.</p>
    #           <p>If your account is the management account of an organization, use this parameter to
    #               specify the member account for which you want to return function recommendations.</p>
    #           <p>Only one account ID can be specified per request.</p>
    #
    # @option params [Array<LambdaFunctionRecommendationFilter>] :filters
    #   <p>An array of objects to specify a filter that returns a more specific list of function
    #               recommendations.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to advance to the next page of function recommendations.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of function recommendations to return with a single request.</p>
    #           <p>To retrieve the remaining results, make another request with the returned
    #                   <code>nextToken</code> value.</p>
    #
    # @return [Types::GetLambdaFunctionRecommendationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_lambda_function_recommendations(
    #     function_arns: [
    #       'member'
    #     ],
    #     account_ids: [
    #       'member'
    #     ],
    #     filters: [
    #       {
    #         name: 'Finding', # accepts ["Finding", "FindingReasonCode"]
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetLambdaFunctionRecommendationsOutput
    #   resp.data.next_token #=> String
    #   resp.data.lambda_function_recommendations #=> Array<LambdaFunctionRecommendation>
    #   resp.data.lambda_function_recommendations[0] #=> Types::LambdaFunctionRecommendation
    #   resp.data.lambda_function_recommendations[0].function_arn #=> String
    #   resp.data.lambda_function_recommendations[0].function_version #=> String
    #   resp.data.lambda_function_recommendations[0].account_id #=> String
    #   resp.data.lambda_function_recommendations[0].current_memory_size #=> Integer
    #   resp.data.lambda_function_recommendations[0].number_of_invocations #=> Integer
    #   resp.data.lambda_function_recommendations[0].utilization_metrics #=> Array<LambdaFunctionUtilizationMetric>
    #   resp.data.lambda_function_recommendations[0].utilization_metrics[0] #=> Types::LambdaFunctionUtilizationMetric
    #   resp.data.lambda_function_recommendations[0].utilization_metrics[0].name #=> String, one of ["Duration", "Memory"]
    #   resp.data.lambda_function_recommendations[0].utilization_metrics[0].statistic #=> String, one of ["Maximum", "Average"]
    #   resp.data.lambda_function_recommendations[0].utilization_metrics[0].value #=> Float
    #   resp.data.lambda_function_recommendations[0].lookback_period_in_days #=> Float
    #   resp.data.lambda_function_recommendations[0].last_refresh_timestamp #=> Time
    #   resp.data.lambda_function_recommendations[0].finding #=> String, one of ["Optimized", "NotOptimized", "Unavailable"]
    #   resp.data.lambda_function_recommendations[0].finding_reason_codes #=> Array<String>
    #   resp.data.lambda_function_recommendations[0].finding_reason_codes[0] #=> String, one of ["MemoryOverprovisioned", "MemoryUnderprovisioned", "InsufficientData", "Inconclusive"]
    #   resp.data.lambda_function_recommendations[0].memory_size_recommendation_options #=> Array<LambdaFunctionMemoryRecommendationOption>
    #   resp.data.lambda_function_recommendations[0].memory_size_recommendation_options[0] #=> Types::LambdaFunctionMemoryRecommendationOption
    #   resp.data.lambda_function_recommendations[0].memory_size_recommendation_options[0].rank #=> Integer
    #   resp.data.lambda_function_recommendations[0].memory_size_recommendation_options[0].memory_size #=> Integer
    #   resp.data.lambda_function_recommendations[0].memory_size_recommendation_options[0].projected_utilization_metrics #=> Array<LambdaFunctionMemoryProjectedMetric>
    #   resp.data.lambda_function_recommendations[0].memory_size_recommendation_options[0].projected_utilization_metrics[0] #=> Types::LambdaFunctionMemoryProjectedMetric
    #   resp.data.lambda_function_recommendations[0].memory_size_recommendation_options[0].projected_utilization_metrics[0].name #=> String, one of ["Duration"]
    #   resp.data.lambda_function_recommendations[0].memory_size_recommendation_options[0].projected_utilization_metrics[0].statistic #=> String, one of ["LowerBound", "UpperBound", "Expected"]
    #   resp.data.lambda_function_recommendations[0].memory_size_recommendation_options[0].projected_utilization_metrics[0].value #=> Float
    #   resp.data.lambda_function_recommendations[0].memory_size_recommendation_options[0].savings_opportunity #=> Types::SavingsOpportunity
    #   resp.data.lambda_function_recommendations[0].memory_size_recommendation_options[0].savings_opportunity.savings_opportunity_percentage #=> Float
    #   resp.data.lambda_function_recommendations[0].memory_size_recommendation_options[0].savings_opportunity.estimated_monthly_savings #=> Types::EstimatedMonthlySavings
    #   resp.data.lambda_function_recommendations[0].memory_size_recommendation_options[0].savings_opportunity.estimated_monthly_savings.currency #=> String, one of ["USD", "CNY"]
    #   resp.data.lambda_function_recommendations[0].memory_size_recommendation_options[0].savings_opportunity.estimated_monthly_savings.value #=> Float
    #   resp.data.lambda_function_recommendations[0].current_performance_risk #=> String, one of ["VeryLow", "Low", "Medium", "High"]
    #
    def get_lambda_function_recommendations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetLambdaFunctionRecommendationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetLambdaFunctionRecommendationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetLambdaFunctionRecommendations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::LimitExceededException, Errors::OptInRequiredException, Errors::ServiceUnavailableException, Errors::InvalidParameterValueException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::MissingAuthenticationToken]),
        data_parser: Parsers::GetLambdaFunctionRecommendations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetLambdaFunctionRecommendations,
        stubs: @stubs,
        params_class: Params::GetLambdaFunctionRecommendationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_lambda_function_recommendations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns existing recommendation preferences, such as enhanced infrastructure
    #             metrics.</p>
    #         <p>Use the <code>scope</code> parameter to specify which preferences to return. You can
    #             specify to return preferences for an organization, a specific account ID, or a specific
    #             EC2 instance or Auto Scaling group Amazon Resource Name (ARN).</p>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html">Activating
    #                 enhanced infrastructure metrics</a> in the <i>Compute Optimizer User
    #                 Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetRecommendationPreferencesInput}.
    #
    # @option params [String] :resource_type
    #   <p>The target resource type of the recommendation preference for which to return
    #               preferences.</p>
    #           <p>The <code>Ec2Instance</code> option encompasses standalone instances and instances
    #               that are part of Auto Scaling groups. The <code>AutoScalingGroup</code> option
    #               encompasses only instances that are part of an Auto Scaling group.</p>
    #           <note>
    #               <p>The valid values for this parameter are <code>Ec2Instance</code> and
    #                       <code>AutoScalingGroup</code>.</p>
    #           </note>
    #
    # @option params [Scope] :scope
    #   <p>An object that describes the scope of the recommendation preference to return.</p>
    #           <p>You can return recommendation preferences that are created at the organization level
    #               (for management accounts of an organization only), account level, and resource level.
    #               For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html">Activating
    #                   enhanced infrastructure metrics</a> in the <i>Compute Optimizer User
    #                   Guide</i>.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to advance to the next page of recommendation preferences.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of recommendation preferences to return with a single
    #               request.</p>
    #           <p>To retrieve the remaining results, make another request with the returned
    #                   <code>nextToken</code> value.</p>
    #
    # @return [Types::GetRecommendationPreferencesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_recommendation_preferences(
    #     resource_type: 'Ec2Instance', # required - accepts ["Ec2Instance", "AutoScalingGroup", "EbsVolume", "LambdaFunction", "NotApplicable"]
    #     scope: {
    #       name: 'Organization', # accepts ["Organization", "AccountId", "ResourceArn"]
    #       value: 'value'
    #     },
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRecommendationPreferencesOutput
    #   resp.data.next_token #=> String
    #   resp.data.recommendation_preferences_details #=> Array<RecommendationPreferencesDetail>
    #   resp.data.recommendation_preferences_details[0] #=> Types::RecommendationPreferencesDetail
    #   resp.data.recommendation_preferences_details[0].scope #=> Types::Scope
    #   resp.data.recommendation_preferences_details[0].scope.name #=> String, one of ["Organization", "AccountId", "ResourceArn"]
    #   resp.data.recommendation_preferences_details[0].scope.value #=> String
    #   resp.data.recommendation_preferences_details[0].resource_type #=> String, one of ["Ec2Instance", "AutoScalingGroup", "EbsVolume", "LambdaFunction", "NotApplicable"]
    #   resp.data.recommendation_preferences_details[0].enhanced_infrastructure_metrics #=> String, one of ["Active", "Inactive"]
    #   resp.data.recommendation_preferences_details[0].inferred_workload_types #=> String, one of ["Active", "Inactive"]
    #
    def get_recommendation_preferences(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRecommendationPreferencesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRecommendationPreferencesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRecommendationPreferences
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::OptInRequiredException, Errors::ServiceUnavailableException, Errors::InvalidParameterValueException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::MissingAuthenticationToken]),
        data_parser: Parsers::GetRecommendationPreferences
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRecommendationPreferences,
        stubs: @stubs,
        params_class: Params::GetRecommendationPreferencesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_recommendation_preferences
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the optimization findings for an account.</p>
    #         <p>It returns the number of:</p>
    #         <ul>
    #             <li>
    #                 <p>Amazon EC2 instances in an account that are
    #                         <code>Underprovisioned</code>, <code>Overprovisioned</code>, or
    #                         <code>Optimized</code>.</p>
    #             </li>
    #             <li>
    #                 <p>Auto Scaling groups in an account that are <code>NotOptimized</code>, or
    #                         <code>Optimized</code>.</p>
    #             </li>
    #             <li>
    #                 <p>Amazon EBS volumes in an account that are <code>NotOptimized</code>,
    #                     or <code>Optimized</code>.</p>
    #             </li>
    #             <li>
    #                 <p>Lambda functions in an account that are <code>NotOptimized</code>,
    #                     or <code>Optimized</code>.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetRecommendationSummariesInput}.
    #
    # @option params [Array<String>] :account_ids
    #   <p>The ID of the Amazon Web Services account for which to return recommendation
    #               summaries.</p>
    #           <p>If your account is the management account of an organization, use this parameter to
    #               specify the member account for which you want to return recommendation summaries.</p>
    #           <p>Only one account ID can be specified per request.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to advance to the next page of recommendation summaries.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of recommendation summaries to return with a single request.</p>
    #           <p>To retrieve the remaining results, make another request with the returned
    #                   <code>nextToken</code> value.</p>
    #
    # @return [Types::GetRecommendationSummariesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_recommendation_summaries(
    #     account_ids: [
    #       'member'
    #     ],
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRecommendationSummariesOutput
    #   resp.data.next_token #=> String
    #   resp.data.recommendation_summaries #=> Array<RecommendationSummary>
    #   resp.data.recommendation_summaries[0] #=> Types::RecommendationSummary
    #   resp.data.recommendation_summaries[0].summaries #=> Array<Summary>
    #   resp.data.recommendation_summaries[0].summaries[0] #=> Types::Summary
    #   resp.data.recommendation_summaries[0].summaries[0].name #=> String, one of ["Underprovisioned", "Overprovisioned", "Optimized", "NotOptimized"]
    #   resp.data.recommendation_summaries[0].summaries[0].value #=> Float
    #   resp.data.recommendation_summaries[0].summaries[0].reason_code_summaries #=> Array<ReasonCodeSummary>
    #   resp.data.recommendation_summaries[0].summaries[0].reason_code_summaries[0] #=> Types::ReasonCodeSummary
    #   resp.data.recommendation_summaries[0].summaries[0].reason_code_summaries[0].name #=> String, one of ["MemoryOverprovisioned", "MemoryUnderprovisioned"]
    #   resp.data.recommendation_summaries[0].summaries[0].reason_code_summaries[0].value #=> Float
    #   resp.data.recommendation_summaries[0].recommendation_resource_type #=> String, one of ["Ec2Instance", "AutoScalingGroup", "EbsVolume", "LambdaFunction"]
    #   resp.data.recommendation_summaries[0].account_id #=> String
    #   resp.data.recommendation_summaries[0].savings_opportunity #=> Types::SavingsOpportunity
    #   resp.data.recommendation_summaries[0].savings_opportunity.savings_opportunity_percentage #=> Float
    #   resp.data.recommendation_summaries[0].savings_opportunity.estimated_monthly_savings #=> Types::EstimatedMonthlySavings
    #   resp.data.recommendation_summaries[0].savings_opportunity.estimated_monthly_savings.currency #=> String, one of ["USD", "CNY"]
    #   resp.data.recommendation_summaries[0].savings_opportunity.estimated_monthly_savings.value #=> Float
    #   resp.data.recommendation_summaries[0].current_performance_risk_ratings #=> Types::CurrentPerformanceRiskRatings
    #   resp.data.recommendation_summaries[0].current_performance_risk_ratings.high #=> Integer
    #   resp.data.recommendation_summaries[0].current_performance_risk_ratings.medium #=> Integer
    #   resp.data.recommendation_summaries[0].current_performance_risk_ratings.low #=> Integer
    #   resp.data.recommendation_summaries[0].current_performance_risk_ratings.very_low #=> Integer
    #
    def get_recommendation_summaries(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRecommendationSummariesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRecommendationSummariesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRecommendationSummaries
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::OptInRequiredException, Errors::ServiceUnavailableException, Errors::InvalidParameterValueException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::MissingAuthenticationToken]),
        data_parser: Parsers::GetRecommendationSummaries
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRecommendationSummaries,
        stubs: @stubs,
        params_class: Params::GetRecommendationSummariesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_recommendation_summaries
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new recommendation preference or updates an existing recommendation
    #             preference, such as enhanced infrastructure metrics.</p>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html">Activating
    #                 enhanced infrastructure metrics</a> in the <i>Compute Optimizer User
    #                 Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::PutRecommendationPreferencesInput}.
    #
    # @option params [String] :resource_type
    #   <p>The target resource type of the recommendation preference to create.</p>
    #           <p>The <code>Ec2Instance</code> option encompasses standalone instances and instances
    #               that are part of Auto Scaling groups. The <code>AutoScalingGroup</code> option
    #               encompasses only instances that are part of an Auto Scaling group.</p>
    #           <note>
    #               <p>The valid values for this parameter are <code>Ec2Instance</code> and
    #                       <code>AutoScalingGroup</code>.</p>
    #           </note>
    #
    # @option params [Scope] :scope
    #   <p>An object that describes the scope of the recommendation preference to create.</p>
    #           <p>You can create recommendation preferences at the organization level (for management
    #               accounts of an organization only), account level, and resource level. For more
    #               information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html">Activating
    #                   enhanced infrastructure metrics</a> in the <i>Compute Optimizer User
    #                   Guide</i>.</p>
    #           <note>
    #               <p>You cannot create recommendation preferences for Auto Scaling groups at the
    #                   organization and account levels. You can create recommendation preferences for
    #                       Auto Scaling groups only at the resource level by specifying a scope name
    #                   of <code>ResourceArn</code> and a scope value of the Auto Scaling group Amazon
    #                   Resource Name (ARN). This will configure the preference for all instances that are
    #                   part of the specified Auto Scaling group. You also cannot create recommendation
    #                   preferences at the resource level for instances that are part of an Auto Scaling group. You can create recommendation preferences at the resource level only for
    #                   standalone instances.</p>
    #           </note>
    #
    # @option params [String] :enhanced_infrastructure_metrics
    #   <p>The status of the enhanced infrastructure metrics recommendation preference to create
    #               or update.</p>
    #           <p>Specify the <code>Active</code> status to activate the preference, or specify
    #                   <code>Inactive</code> to deactivate the preference.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html">Enhanced
    #                   infrastructure metrics</a> in the <i>Compute Optimizer User
    #                   Guide</i>.</p>
    #
    # @option params [String] :inferred_workload_types
    #   <p>The status of the inferred workload types recommendation preference to create or
    #               update.</p>
    #
    #           <note>
    #               <p>The inferred workload type feature is active by default. To deactivate it, create
    #                   a recommendation preference.</p>
    #           </note>
    #
    #           <p>Specify the <code>Inactive</code> status to deactivate the feature, or specify
    #                   <code>Active</code> to activate it.</p>
    #
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/inferred-workload-types.html">Inferred workload
    #                   types</a> in the <i>Compute Optimizer User Guide</i>.</p>
    #
    # @return [Types::PutRecommendationPreferencesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_recommendation_preferences(
    #     resource_type: 'Ec2Instance', # required - accepts ["Ec2Instance", "AutoScalingGroup", "EbsVolume", "LambdaFunction", "NotApplicable"]
    #     scope: {
    #       name: 'Organization', # accepts ["Organization", "AccountId", "ResourceArn"]
    #       value: 'value'
    #     },
    #     enhanced_infrastructure_metrics: 'Active', # accepts ["Active", "Inactive"]
    #     inferred_workload_types: 'Active' # accepts ["Active", "Inactive"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutRecommendationPreferencesOutput
    #
    def put_recommendation_preferences(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutRecommendationPreferencesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutRecommendationPreferencesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutRecommendationPreferences
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::OptInRequiredException, Errors::ServiceUnavailableException, Errors::InvalidParameterValueException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::MissingAuthenticationToken]),
        data_parser: Parsers::PutRecommendationPreferences
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutRecommendationPreferences,
        stubs: @stubs,
        params_class: Params::PutRecommendationPreferencesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_recommendation_preferences
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the enrollment (opt in and opt out) status of an account to the Compute Optimizer service.</p>
    #         <p>If the account is a management account of an organization, this action can also be
    #             used to enroll member accounts of the organization.</p>
    #         <p>You must have the appropriate permissions to opt in to Compute Optimizer, to view its
    #             recommendations, and to opt out. For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html">Controlling access with Amazon Web Services Identity and Access Management</a> in the <i>Compute Optimizer User Guide</i>.</p>
    #         <p>When you opt in, Compute Optimizer automatically creates a service-linked role in your
    #             account to access its data. For more information, see <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/using-service-linked-roles.html">Using
    #                 Service-Linked Roles for Compute Optimizer</a> in the <i>Compute Optimizer User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateEnrollmentStatusInput}.
    #
    # @option params [String] :status
    #   <p>The new enrollment status of the account.</p>
    #           <p>The following status options are available:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>Active</code> - Opts in your account to the Compute Optimizer service.
    #                           Compute Optimizer begins analyzing the configuration and utilization metrics
    #                       of your Amazon Web Services resources after you opt in. For more information, see
    #                           <a href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html">Metrics analyzed by Compute Optimizer</a> in the <i>Compute Optimizer User Guide</i>.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Inactive</code> - Opts out your account from the Compute Optimizer
    #                       service. Your account's recommendations and related metrics data will be deleted
    #                       from Compute Optimizer after you opt out.</p>
    #               </li>
    #            </ul>
    #           <note>
    #               <p>The <code>Pending</code> and <code>Failed</code> options cannot be used to update
    #                   the enrollment status of an account. They are returned in the response of a request
    #                   to update the enrollment status of an account.</p>
    #           </note>
    #
    # @option params [Boolean] :include_member_accounts
    #   <p>Indicates whether to enroll member accounts of the organization if the account is the
    #               management account of an organization.</p>
    #
    # @return [Types::UpdateEnrollmentStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_enrollment_status(
    #     status: 'Active', # required - accepts ["Active", "Inactive", "Pending", "Failed"]
    #     include_member_accounts: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateEnrollmentStatusOutput
    #   resp.data.status #=> String, one of ["Active", "Inactive", "Pending", "Failed"]
    #   resp.data.status_reason #=> String
    #
    def update_enrollment_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateEnrollmentStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateEnrollmentStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateEnrollmentStatus
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ServiceUnavailableException, Errors::InvalidParameterValueException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::MissingAuthenticationToken]),
        data_parser: Parsers::UpdateEnrollmentStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateEnrollmentStatus,
        stubs: @stubs,
        params_class: Params::UpdateEnrollmentStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_enrollment_status
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
