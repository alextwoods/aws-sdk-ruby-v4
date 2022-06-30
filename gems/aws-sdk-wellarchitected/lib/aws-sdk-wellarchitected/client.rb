# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::WellArchitected
  # An API client for WellArchitectedApiServiceLambda
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Well-Architected Tool</fullname>
  #
  #          <p>This is the <i>Well-Architected Tool API Reference</i>. The WA Tool API provides programmatic access to the
  #             <a href="http://aws.amazon.com/well-architected-tool">Well-Architected Tool</a> in the
  #            <a href="https://console.aws.amazon.com/wellarchitected">Amazon Web Services Management Console</a>. For information
  #             about the Well-Architected Tool, see the
  #            <a href="https://docs.aws.amazon.com/wellarchitected/latest/userguide/intro.html">Well-Architected Tool User Guide</a>.</p>
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
    def initialize(config = AWS::SDK::WellArchitected::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Associate a lens to a workload.</p>
    #         <p>Up to 10 lenses can be associated with a workload in a single API operation. A
    #         maximum of 20 lenses can be associated with a workload.</p>
    #         <note>
    #             <p>
    #                <b>Disclaimer</b>
    #             </p>
    #             <p>By accessing and/or applying custom lenses created by another Amazon Web Services user or account,
    #             you acknowledge that custom lenses created by other users and shared with you are
    #             Third Party Content as defined in the Amazon Web Services Customer Agreement.    </p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::AssociateLensesInput}.
    #
    # @option params [String] :workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    # @option params [Array<String>] :lens_aliases
    #   <p>List of lens aliases to associate or disassociate with a workload. Up to 10 lenses can be specified.</p>
    #           <p>Identify a lens using its <a>LensSummary$LensAlias</a>.</p>
    #
    # @return [Types::AssociateLensesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_lenses(
    #     workload_id: 'WorkloadId', # required
    #     lens_aliases: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateLensesOutput
    #
    def associate_lenses(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateLensesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateLensesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateLenses
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::AssociateLenses
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateLenses,
        stubs: @stubs,
        params_class: Params::AssociateLensesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_lenses
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Create a lens share.</p>
    #         <p>The owner of a lens can share it with other Amazon Web Services accounts and IAM users in the same Amazon Web Services Region.
    #             Shared access to a lens is not removed until the lens invitation is deleted.</p>
    #         <note>
    #             <p>
    #                <b>Disclaimer</b>
    #             </p>
    #             <p>By sharing your custom lenses with other Amazon Web Services accounts,
    #                 you acknowledge that Amazon Web Services will make your custom lenses available to those
    #                 other accounts. Those other accounts may continue to access and use your
    #                 shared custom lenses even if you delete the custom lenses
    #                 from your own Amazon Web Services account or terminate
    #                 your Amazon Web Services account.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::CreateLensShareInput}.
    #
    # @option params [String] :lens_alias
    #   <p>The alias of the lens, for example, <code>serverless</code>.</p>
    #           <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #
    # @option params [String] :shared_with
    #   <p>The Amazon Web Services account ID or IAM role with which the workload is shared.</p>
    #
    # @option params [String] :client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #           <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after it has completed
    #               successfully, the result of the original request is returned. </p>
    #           <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #           </important>
    #
    # @return [Types::CreateLensShareOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_lens_share(
    #     lens_alias: 'LensAlias', # required
    #     shared_with: 'SharedWith', # required
    #     client_request_token: 'ClientRequestToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateLensShareOutput
    #   resp.data.share_id #=> String
    #
    def create_lens_share(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateLensShareInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateLensShareInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateLensShare
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::CreateLensShare
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateLensShare,
        stubs: @stubs,
        params_class: Params::CreateLensShareOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_lens_share
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Create a new lens version.</p>
    #         <p>A lens can have up to 100 versions.</p>
    #         <p>After a lens has been imported, create a new lens version to publish it.  The owner of a lens can share the lens with other
    #             Amazon Web Services accounts and IAM users in the same Amazon Web Services Region. Only the owner of a lens can delete it.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::CreateLensVersionInput}.
    #
    # @option params [String] :lens_alias
    #   <p>The alias of the lens, for example, <code>serverless</code>.</p>
    #           <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #
    # @option params [String] :lens_version
    #   <p>The version of the lens being created.</p>
    #
    # @option params [Boolean] :is_major_version
    #   <p>Set to true if this new major lens version.</p>
    #
    # @option params [String] :client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #           <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after it has completed
    #               successfully, the result of the original request is returned. </p>
    #           <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #           </important>
    #
    # @return [Types::CreateLensVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_lens_version(
    #     lens_alias: 'LensAlias', # required
    #     lens_version: 'LensVersion', # required
    #     is_major_version: false,
    #     client_request_token: 'ClientRequestToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateLensVersionOutput
    #   resp.data.lens_arn #=> String
    #   resp.data.lens_version #=> String
    #
    def create_lens_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateLensVersionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateLensVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateLensVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::CreateLensVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateLensVersion,
        stubs: @stubs,
        params_class: Params::CreateLensVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_lens_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Create a milestone for an existing workload.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateMilestoneInput}.
    #
    # @option params [String] :workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    # @option params [String] :milestone_name
    #   <p>The name of the milestone in a workload.</p>
    #           <p>Milestone names must be unique within a workload.</p>
    #
    # @option params [String] :client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #           <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after it has completed
    #               successfully, the result of the original request is returned. </p>
    #           <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #           </important>
    #
    # @return [Types::CreateMilestoneOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_milestone(
    #     workload_id: 'WorkloadId', # required
    #     milestone_name: 'MilestoneName', # required
    #     client_request_token: 'ClientRequestToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateMilestoneOutput
    #   resp.data.workload_id #=> String
    #   resp.data.milestone_number #=> Integer
    #
    def create_milestone(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateMilestoneInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateMilestoneInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateMilestone
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::CreateMilestone
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateMilestone,
        stubs: @stubs,
        params_class: Params::CreateMilestoneOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_milestone
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Create a new workload.</p>
    #         <p>The owner of a workload can share the workload with other Amazon Web Services accounts and IAM users
    #             in the same Amazon Web Services Region. Only the owner of a workload can delete it.</p>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/wellarchitected/latest/userguide/define-workload.html">Defining a Workload</a> in the
    #                 <i>Well-Architected Tool User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateWorkloadInput}.
    #
    # @option params [String] :workload_name
    #   <p>The name of the workload.</p>
    #           <p>The name must be unique within an account within an Amazon Web Services Region. Spaces and capitalization
    #               are ignored when checking for uniqueness.</p>
    #
    # @option params [String] :description
    #   <p>The description for the workload.</p>
    #
    # @option params [String] :environment
    #   <p>The environment for the workload.</p>
    #
    # @option params [Array<String>] :account_ids
    #   <p>The list of Amazon Web Services account IDs associated with the workload.</p>
    #
    # @option params [Array<String>] :aws_regions
    #   <p>The list of Amazon Web Services Regions associated with the workload, for example,
    #                   <code>us-east-2</code>, or <code>ca-central-1</code>.</p>
    #
    # @option params [Array<String>] :non_aws_regions
    #   <p> The list of non-Amazon Web Services Regions associated with the workload.</p>
    #
    # @option params [Array<String>] :pillar_priorities
    #   <p>The priorities of the pillars, which are used to order items in the improvement plan.
    #               Each pillar is represented by its <a>PillarReviewSummary$PillarId</a>.</p>
    #
    # @option params [String] :architectural_design
    #   <p>The URL of the architectural design for the workload.</p>
    #
    # @option params [String] :review_owner
    #   <p>The review owner of the workload. The name, email address, or identifier for the
    #               primary group or individual that owns the workload review process.</p>
    #
    # @option params [String] :industry_type
    #   <p>The industry type for the workload.</p>
    #           <p>If specified, must be one of the following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>Agriculture</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Automobile</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Defense</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Design and Engineering</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Digital Advertising</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Education</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Environmental Protection</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Financial Services</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Gaming</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>General Public Services</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Healthcare</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Hospitality</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>InfoTech</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Justice and Public Safety</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Life Sciences</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Manufacturing</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Media & Entertainment</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Mining & Resources</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Oil & Gas</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Power & Utilities</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Professional Services</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Real Estate & Construction</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Retail & Wholesale</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Social Protection</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Telecommunications</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Travel, Transportation & Logistics</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Other</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :industry
    #   <p>The industry for the workload.</p>
    #
    # @option params [Array<String>] :lenses
    #   <p>The list of lenses associated with the workload. Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #
    # @option params [String] :notes
    #   <p>The notes associated with the workload.</p>
    #
    # @option params [String] :client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #           <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after it has completed
    #               successfully, the result of the original request is returned. </p>
    #           <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #           </important>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to be associated with the workload.</p>
    #
    # @return [Types::CreateWorkloadOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_workload(
    #     workload_name: 'WorkloadName', # required
    #     description: 'Description', # required
    #     environment: 'PRODUCTION', # required - accepts ["PRODUCTION", "PREPRODUCTION"]
    #     account_ids: [
    #       'member'
    #     ],
    #     aws_regions: [
    #       'member'
    #     ],
    #     non_aws_regions: [
    #       'member'
    #     ],
    #     pillar_priorities: [
    #       'member'
    #     ],
    #     architectural_design: 'ArchitecturalDesign',
    #     review_owner: 'ReviewOwner', # required
    #     industry_type: 'IndustryType',
    #     industry: 'Industry',
    #     lenses: [
    #       'member'
    #     ], # required
    #     notes: 'Notes',
    #     client_request_token: 'ClientRequestToken', # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateWorkloadOutput
    #   resp.data.workload_id #=> String
    #   resp.data.workload_arn #=> String
    #
    def create_workload(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateWorkloadInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateWorkloadInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateWorkload
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::CreateWorkload
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateWorkload,
        stubs: @stubs,
        params_class: Params::CreateWorkloadOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_workload
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Create a workload share.</p>
    #         <p>The owner of a workload can share it with other Amazon Web Services accounts and IAM users in the same
    #             Amazon Web Services Region. Shared access to a workload is not removed until the workload invitation is
    #             deleted.</p>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/wellarchitected/latest/userguide/workloads-sharing.html">Sharing a Workload</a> in the
    #                 <i>Well-Architected Tool User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateWorkloadShareInput}.
    #
    # @option params [String] :workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    # @option params [String] :shared_with
    #   <p>The Amazon Web Services account ID or IAM role with which the workload is shared.</p>
    #
    # @option params [String] :permission_type
    #   <p>Permission granted on a workload share.</p>
    #
    # @option params [String] :client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #           <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after it has completed
    #               successfully, the result of the original request is returned. </p>
    #           <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #           </important>
    #
    # @return [Types::CreateWorkloadShareOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_workload_share(
    #     workload_id: 'WorkloadId', # required
    #     shared_with: 'SharedWith', # required
    #     permission_type: 'READONLY', # required - accepts ["READONLY", "CONTRIBUTOR"]
    #     client_request_token: 'ClientRequestToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateWorkloadShareOutput
    #   resp.data.workload_id #=> String
    #   resp.data.share_id #=> String
    #
    def create_workload_share(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateWorkloadShareInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateWorkloadShareInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateWorkloadShare
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::CreateWorkloadShare
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateWorkloadShare,
        stubs: @stubs,
        params_class: Params::CreateWorkloadShareOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_workload_share
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Delete an existing lens.</p>
    #         <p>Only the owner of a lens can delete it.  After the lens is deleted,  Amazon Web Services accounts and IAM users
    #               that you shared the lens with can continue to use it, but they will no longer be able to apply it to new workloads.
    #         </p>
    #         <note>
    #             <p>
    #                <b>Disclaimer</b>
    #             </p>
    #             <p>By sharing your custom lenses with other Amazon Web Services accounts,
    #                 you acknowledge that Amazon Web Services will make your custom lenses available to those
    #                 other accounts. Those other accounts may continue to access and use your
    #                 shared custom lenses even if you delete the custom lenses
    #                 from your own Amazon Web Services account or terminate
    #                 your Amazon Web Services account.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteLensInput}.
    #
    # @option params [String] :lens_alias
    #   <p>The alias of the lens, for example, <code>serverless</code>.</p>
    #           <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #
    # @option params [String] :client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #           <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after it has completed
    #               successfully, the result of the original request is returned. </p>
    #           <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #           </important>
    #
    # @option params [String] :lens_status
    #   <p>The status of the lens to be deleted.</p>
    #
    # @return [Types::DeleteLensOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_lens(
    #     lens_alias: 'LensAlias', # required
    #     client_request_token: 'ClientRequestToken', # required
    #     lens_status: 'ALL' # required - accepts ["ALL", "DRAFT", "PUBLISHED"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteLensOutput
    #
    def delete_lens(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteLensInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteLensInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteLens
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::DeleteLens
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteLens,
        stubs: @stubs,
        params_class: Params::DeleteLensOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_lens
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Delete a lens share.</p>
    #         <p>After the lens share is deleted,  Amazon Web Services accounts and IAM users
    #             that you shared the lens with can continue to use it, but they will no longer be able to apply it to new workloads.</p>
    #         <note>
    #             <p>
    #                <b>Disclaimer</b>
    #             </p>
    #             <p>By sharing your custom lenses with other Amazon Web Services accounts,
    #                 you acknowledge that Amazon Web Services will make your custom lenses available to those
    #                 other accounts. Those other accounts may continue to access and use your
    #                 shared custom lenses even if you delete the custom lenses
    #                 from your own Amazon Web Services account or terminate
    #                 your Amazon Web Services account.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteLensShareInput}.
    #
    # @option params [String] :share_id
    #   <p>The ID associated with the workload share.</p>
    #
    # @option params [String] :lens_alias
    #   <p>The alias of the lens, for example, <code>serverless</code>.</p>
    #           <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #
    # @option params [String] :client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #           <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after it has completed
    #               successfully, the result of the original request is returned. </p>
    #           <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #           </important>
    #
    # @return [Types::DeleteLensShareOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_lens_share(
    #     share_id: 'ShareId', # required
    #     lens_alias: 'LensAlias', # required
    #     client_request_token: 'ClientRequestToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteLensShareOutput
    #
    def delete_lens_share(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteLensShareInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteLensShareInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteLensShare
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::DeleteLensShare
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteLensShare,
        stubs: @stubs,
        params_class: Params::DeleteLensShareOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_lens_share
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Delete an existing workload.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteWorkloadInput}.
    #
    # @option params [String] :workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    # @option params [String] :client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #           <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after it has completed
    #               successfully, the result of the original request is returned. </p>
    #           <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #           </important>
    #
    # @return [Types::DeleteWorkloadOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_workload(
    #     workload_id: 'WorkloadId', # required
    #     client_request_token: 'ClientRequestToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteWorkloadOutput
    #
    def delete_workload(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteWorkloadInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteWorkloadInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteWorkload
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::DeleteWorkload
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteWorkload,
        stubs: @stubs,
        params_class: Params::DeleteWorkloadOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_workload
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Delete a workload share.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteWorkloadShareInput}.
    #
    # @option params [String] :share_id
    #   <p>The ID associated with the workload share.</p>
    #
    # @option params [String] :workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    # @option params [String] :client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #           <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after it has completed
    #               successfully, the result of the original request is returned. </p>
    #           <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #           </important>
    #
    # @return [Types::DeleteWorkloadShareOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_workload_share(
    #     share_id: 'ShareId', # required
    #     workload_id: 'WorkloadId', # required
    #     client_request_token: 'ClientRequestToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteWorkloadShareOutput
    #
    def delete_workload_share(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteWorkloadShareInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteWorkloadShareInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteWorkloadShare
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::DeleteWorkloadShare
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteWorkloadShare,
        stubs: @stubs,
        params_class: Params::DeleteWorkloadShareOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_workload_share
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociate a lens from a workload.</p>
    #         <p>Up to 10 lenses can be disassociated from a workload in a single API operation.</p>
    #         <note>
    #             <p>The Amazon Web Services Well-Architected Framework lens (<code>wellarchitected</code>) cannot be
    #                 removed from a workload.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::DisassociateLensesInput}.
    #
    # @option params [String] :workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    # @option params [Array<String>] :lens_aliases
    #   <p>List of lens aliases to associate or disassociate with a workload. Up to 10 lenses can be specified.</p>
    #           <p>Identify a lens using its <a>LensSummary$LensAlias</a>.</p>
    #
    # @return [Types::DisassociateLensesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_lenses(
    #     workload_id: 'WorkloadId', # required
    #     lens_aliases: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateLensesOutput
    #
    def disassociate_lenses(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateLensesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateLensesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateLenses
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::DisassociateLenses
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateLenses,
        stubs: @stubs,
        params_class: Params::DisassociateLensesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_lenses
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Export an existing lens.</p>
    #         <p>Lenses are defined in JSON. For more information, see <a href="https://docs.aws.amazon.com/wellarchitected/latest/userguide/lenses-format-specification.html">JSON format specification</a>
    #             in the <i>Well-Architected Tool User Guide</i>. Only the owner of a lens can export it.
    #         </p>
    #         <note>
    #             <p>
    #                <b>Disclaimer</b>
    #             </p>
    #             <p>Do not include or gather personal identifiable information (PII) of end users or
    #                 other identifiable individuals in or via your custom lenses. If your custom
    #                 lens or those shared with you and used in your account do include or collect
    #                 PII you are responsible for: ensuring that the included PII is processed in accordance
    #                 with applicable law, providing adequate privacy notices, and obtaining necessary
    #                 consents for processing such data.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::ExportLensInput}.
    #
    # @option params [String] :lens_alias
    #   <p>The alias of the lens, for example, <code>serverless</code>.</p>
    #           <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #
    # @option params [String] :lens_version
    #   <p>The lens version to be exported.</p>
    #
    # @return [Types::ExportLensOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.export_lens(
    #     lens_alias: 'LensAlias', # required
    #     lens_version: 'LensVersion'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ExportLensOutput
    #   resp.data.lens_json #=> String
    #
    def export_lens(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ExportLensInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ExportLensInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ExportLens
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::ExportLens
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ExportLens,
        stubs: @stubs,
        params_class: Params::ExportLensOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :export_lens
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get the answer to a specific question in a workload review.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAnswerInput}.
    #
    # @option params [String] :workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    # @option params [String] :lens_alias
    #   <p>The alias of the lens, for example, <code>serverless</code>.</p>
    #           <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #
    # @option params [String] :question_id
    #   <p>The ID of the question.</p>
    #
    # @option params [Integer] :milestone_number
    #   <p>The milestone number.</p>
    #           <p>A workload can have a maximum of 100 milestones.</p>
    #
    # @return [Types::GetAnswerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_answer(
    #     workload_id: 'WorkloadId', # required
    #     lens_alias: 'LensAlias', # required
    #     question_id: 'QuestionId', # required
    #     milestone_number: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAnswerOutput
    #   resp.data.workload_id #=> String
    #   resp.data.milestone_number #=> Integer
    #   resp.data.lens_alias #=> String
    #   resp.data.lens_arn #=> String
    #   resp.data.answer #=> Types::Answer
    #   resp.data.answer.question_id #=> String
    #   resp.data.answer.pillar_id #=> String
    #   resp.data.answer.question_title #=> String
    #   resp.data.answer.question_description #=> String
    #   resp.data.answer.improvement_plan_url #=> String
    #   resp.data.answer.helpful_resource_url #=> String
    #   resp.data.answer.helpful_resource_display_text #=> String
    #   resp.data.answer.choices #=> Array<Choice>
    #   resp.data.answer.choices[0] #=> Types::Choice
    #   resp.data.answer.choices[0].choice_id #=> String
    #   resp.data.answer.choices[0].title #=> String
    #   resp.data.answer.choices[0].description #=> String
    #   resp.data.answer.choices[0].helpful_resource #=> Types::ChoiceContent
    #   resp.data.answer.choices[0].helpful_resource.display_text #=> String
    #   resp.data.answer.choices[0].helpful_resource.url #=> String
    #   resp.data.answer.choices[0].improvement_plan #=> Types::ChoiceContent
    #   resp.data.answer.selected_choices #=> Array<String>
    #   resp.data.answer.selected_choices[0] #=> String
    #   resp.data.answer.choice_answers #=> Array<ChoiceAnswer>
    #   resp.data.answer.choice_answers[0] #=> Types::ChoiceAnswer
    #   resp.data.answer.choice_answers[0].choice_id #=> String
    #   resp.data.answer.choice_answers[0].status #=> String, one of ["SELECTED", "NOT_APPLICABLE", "UNSELECTED"]
    #   resp.data.answer.choice_answers[0].reason #=> String, one of ["OUT_OF_SCOPE", "BUSINESS_PRIORITIES", "ARCHITECTURE_CONSTRAINTS", "OTHER", "NONE"]
    #   resp.data.answer.choice_answers[0].notes #=> String
    #   resp.data.answer.is_applicable #=> Boolean
    #   resp.data.answer.risk #=> String, one of ["UNANSWERED", "HIGH", "MEDIUM", "NONE", "NOT_APPLICABLE"]
    #   resp.data.answer.notes #=> String
    #   resp.data.answer.reason #=> String, one of ["OUT_OF_SCOPE", "BUSINESS_PRIORITIES", "ARCHITECTURE_CONSTRAINTS", "OTHER", "NONE"]
    #
    def get_answer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAnswerInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAnswerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAnswer
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::GetAnswer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAnswer,
        stubs: @stubs,
        params_class: Params::GetAnswerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_answer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get an existing lens.</p>
    #
    # @param [Hash] params
    #   See {Types::GetLensInput}.
    #
    # @option params [String] :lens_alias
    #   <p>The alias of the lens, for example, <code>serverless</code>.</p>
    #           <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #
    # @option params [String] :lens_version
    #   <p>The lens version to be retrieved.</p>
    #
    # @return [Types::GetLensOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_lens(
    #     lens_alias: 'LensAlias', # required
    #     lens_version: 'LensVersion'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetLensOutput
    #   resp.data.lens #=> Types::Lens
    #   resp.data.lens.lens_arn #=> String
    #   resp.data.lens.lens_version #=> String
    #   resp.data.lens.name #=> String
    #   resp.data.lens.description #=> String
    #   resp.data.lens.owner #=> String
    #   resp.data.lens.share_invitation_id #=> String
    #
    def get_lens(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetLensInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetLensInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetLens
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::GetLens
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetLens,
        stubs: @stubs,
        params_class: Params::GetLensOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_lens
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get lens review.</p>
    #
    # @param [Hash] params
    #   See {Types::GetLensReviewInput}.
    #
    # @option params [String] :workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    # @option params [String] :lens_alias
    #   <p>The alias of the lens, for example, <code>serverless</code>.</p>
    #           <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #
    # @option params [Integer] :milestone_number
    #   <p>The milestone number.</p>
    #           <p>A workload can have a maximum of 100 milestones.</p>
    #
    # @return [Types::GetLensReviewOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_lens_review(
    #     workload_id: 'WorkloadId', # required
    #     lens_alias: 'LensAlias', # required
    #     milestone_number: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetLensReviewOutput
    #   resp.data.workload_id #=> String
    #   resp.data.milestone_number #=> Integer
    #   resp.data.lens_review #=> Types::LensReview
    #   resp.data.lens_review.lens_alias #=> String
    #   resp.data.lens_review.lens_arn #=> String
    #   resp.data.lens_review.lens_version #=> String
    #   resp.data.lens_review.lens_name #=> String
    #   resp.data.lens_review.lens_status #=> String, one of ["CURRENT", "NOT_CURRENT", "DEPRECATED", "DELETED", "UNSHARED"]
    #   resp.data.lens_review.pillar_review_summaries #=> Array<PillarReviewSummary>
    #   resp.data.lens_review.pillar_review_summaries[0] #=> Types::PillarReviewSummary
    #   resp.data.lens_review.pillar_review_summaries[0].pillar_id #=> String
    #   resp.data.lens_review.pillar_review_summaries[0].pillar_name #=> String
    #   resp.data.lens_review.pillar_review_summaries[0].notes #=> String
    #   resp.data.lens_review.pillar_review_summaries[0].risk_counts #=> Hash<String, Integer>
    #   resp.data.lens_review.pillar_review_summaries[0].risk_counts['key'] #=> Integer
    #   resp.data.lens_review.updated_at #=> Time
    #   resp.data.lens_review.notes #=> String
    #   resp.data.lens_review.risk_counts #=> Hash<String, Integer>
    #   resp.data.lens_review.next_token #=> String
    #
    def get_lens_review(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetLensReviewInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetLensReviewInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetLensReview
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::GetLensReview
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetLensReview,
        stubs: @stubs,
        params_class: Params::GetLensReviewOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_lens_review
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get lens review report.</p>
    #
    # @param [Hash] params
    #   See {Types::GetLensReviewReportInput}.
    #
    # @option params [String] :workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    # @option params [String] :lens_alias
    #   <p>The alias of the lens, for example, <code>serverless</code>.</p>
    #           <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #
    # @option params [Integer] :milestone_number
    #   <p>The milestone number.</p>
    #           <p>A workload can have a maximum of 100 milestones.</p>
    #
    # @return [Types::GetLensReviewReportOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_lens_review_report(
    #     workload_id: 'WorkloadId', # required
    #     lens_alias: 'LensAlias', # required
    #     milestone_number: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetLensReviewReportOutput
    #   resp.data.workload_id #=> String
    #   resp.data.milestone_number #=> Integer
    #   resp.data.lens_review_report #=> Types::LensReviewReport
    #   resp.data.lens_review_report.lens_alias #=> String
    #   resp.data.lens_review_report.lens_arn #=> String
    #   resp.data.lens_review_report.base64_string #=> String
    #
    def get_lens_review_report(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetLensReviewReportInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetLensReviewReportInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetLensReviewReport
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::GetLensReviewReport
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetLensReviewReport,
        stubs: @stubs,
        params_class: Params::GetLensReviewReportOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_lens_review_report
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get lens version differences.</p>
    #
    # @param [Hash] params
    #   See {Types::GetLensVersionDifferenceInput}.
    #
    # @option params [String] :lens_alias
    #   <p>The alias of the lens, for example, <code>serverless</code>.</p>
    #           <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #
    # @option params [String] :base_lens_version
    #   <p>The base version of the lens.</p>
    #
    # @option params [String] :target_lens_version
    #   <p>The lens version to target a difference for.</p>
    #
    # @return [Types::GetLensVersionDifferenceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_lens_version_difference(
    #     lens_alias: 'LensAlias', # required
    #     base_lens_version: 'BaseLensVersion',
    #     target_lens_version: 'TargetLensVersion'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetLensVersionDifferenceOutput
    #   resp.data.lens_alias #=> String
    #   resp.data.lens_arn #=> String
    #   resp.data.base_lens_version #=> String
    #   resp.data.target_lens_version #=> String
    #   resp.data.latest_lens_version #=> String
    #   resp.data.version_differences #=> Types::VersionDifferences
    #   resp.data.version_differences.pillar_differences #=> Array<PillarDifference>
    #   resp.data.version_differences.pillar_differences[0] #=> Types::PillarDifference
    #   resp.data.version_differences.pillar_differences[0].pillar_id #=> String
    #   resp.data.version_differences.pillar_differences[0].pillar_name #=> String
    #   resp.data.version_differences.pillar_differences[0].difference_status #=> String, one of ["UPDATED", "NEW", "DELETED"]
    #   resp.data.version_differences.pillar_differences[0].question_differences #=> Array<QuestionDifference>
    #   resp.data.version_differences.pillar_differences[0].question_differences[0] #=> Types::QuestionDifference
    #   resp.data.version_differences.pillar_differences[0].question_differences[0].question_id #=> String
    #   resp.data.version_differences.pillar_differences[0].question_differences[0].question_title #=> String
    #   resp.data.version_differences.pillar_differences[0].question_differences[0].difference_status #=> String, one of ["UPDATED", "NEW", "DELETED"]
    #
    def get_lens_version_difference(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetLensVersionDifferenceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetLensVersionDifferenceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetLensVersionDifference
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::GetLensVersionDifference
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetLensVersionDifference,
        stubs: @stubs,
        params_class: Params::GetLensVersionDifferenceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_lens_version_difference
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get a milestone for an existing workload.</p>
    #
    # @param [Hash] params
    #   See {Types::GetMilestoneInput}.
    #
    # @option params [String] :workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    # @option params [Integer] :milestone_number
    #   <p>The milestone number.</p>
    #           <p>A workload can have a maximum of 100 milestones.</p>
    #
    # @return [Types::GetMilestoneOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_milestone(
    #     workload_id: 'WorkloadId', # required
    #     milestone_number: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetMilestoneOutput
    #   resp.data.workload_id #=> String
    #   resp.data.milestone #=> Types::Milestone
    #   resp.data.milestone.milestone_number #=> Integer
    #   resp.data.milestone.milestone_name #=> String
    #   resp.data.milestone.recorded_at #=> Time
    #   resp.data.milestone.workload #=> Types::Workload
    #   resp.data.milestone.workload.workload_id #=> String
    #   resp.data.milestone.workload.workload_arn #=> String
    #   resp.data.milestone.workload.workload_name #=> String
    #   resp.data.milestone.workload.description #=> String
    #   resp.data.milestone.workload.environment #=> String, one of ["PRODUCTION", "PREPRODUCTION"]
    #   resp.data.milestone.workload.updated_at #=> Time
    #   resp.data.milestone.workload.account_ids #=> Array<String>
    #   resp.data.milestone.workload.account_ids[0] #=> String
    #   resp.data.milestone.workload.aws_regions #=> Array<String>
    #   resp.data.milestone.workload.aws_regions[0] #=> String
    #   resp.data.milestone.workload.non_aws_regions #=> Array<String>
    #   resp.data.milestone.workload.non_aws_regions[0] #=> String
    #   resp.data.milestone.workload.architectural_design #=> String
    #   resp.data.milestone.workload.review_owner #=> String
    #   resp.data.milestone.workload.review_restriction_date #=> Time
    #   resp.data.milestone.workload.is_review_owner_update_acknowledged #=> Boolean
    #   resp.data.milestone.workload.industry_type #=> String
    #   resp.data.milestone.workload.industry #=> String
    #   resp.data.milestone.workload.notes #=> String
    #   resp.data.milestone.workload.improvement_status #=> String, one of ["NOT_APPLICABLE", "NOT_STARTED", "IN_PROGRESS", "COMPLETE", "RISK_ACKNOWLEDGED"]
    #   resp.data.milestone.workload.risk_counts #=> Hash<String, Integer>
    #   resp.data.milestone.workload.risk_counts['key'] #=> Integer
    #   resp.data.milestone.workload.pillar_priorities #=> Array<String>
    #   resp.data.milestone.workload.pillar_priorities[0] #=> String
    #   resp.data.milestone.workload.lenses #=> Array<String>
    #   resp.data.milestone.workload.lenses[0] #=> String
    #   resp.data.milestone.workload.owner #=> String
    #   resp.data.milestone.workload.share_invitation_id #=> String
    #   resp.data.milestone.workload.tags #=> Hash<String, String>
    #   resp.data.milestone.workload.tags['key'] #=> String
    #
    def get_milestone(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetMilestoneInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetMilestoneInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetMilestone
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::GetMilestone
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetMilestone,
        stubs: @stubs,
        params_class: Params::GetMilestoneOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_milestone
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get an existing workload.</p>
    #
    # @param [Hash] params
    #   See {Types::GetWorkloadInput}.
    #
    # @option params [String] :workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    # @return [Types::GetWorkloadOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_workload(
    #     workload_id: 'WorkloadId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetWorkloadOutput
    #   resp.data.workload #=> Types::Workload
    #   resp.data.workload.workload_id #=> String
    #   resp.data.workload.workload_arn #=> String
    #   resp.data.workload.workload_name #=> String
    #   resp.data.workload.description #=> String
    #   resp.data.workload.environment #=> String, one of ["PRODUCTION", "PREPRODUCTION"]
    #   resp.data.workload.updated_at #=> Time
    #   resp.data.workload.account_ids #=> Array<String>
    #   resp.data.workload.account_ids[0] #=> String
    #   resp.data.workload.aws_regions #=> Array<String>
    #   resp.data.workload.aws_regions[0] #=> String
    #   resp.data.workload.non_aws_regions #=> Array<String>
    #   resp.data.workload.non_aws_regions[0] #=> String
    #   resp.data.workload.architectural_design #=> String
    #   resp.data.workload.review_owner #=> String
    #   resp.data.workload.review_restriction_date #=> Time
    #   resp.data.workload.is_review_owner_update_acknowledged #=> Boolean
    #   resp.data.workload.industry_type #=> String
    #   resp.data.workload.industry #=> String
    #   resp.data.workload.notes #=> String
    #   resp.data.workload.improvement_status #=> String, one of ["NOT_APPLICABLE", "NOT_STARTED", "IN_PROGRESS", "COMPLETE", "RISK_ACKNOWLEDGED"]
    #   resp.data.workload.risk_counts #=> Hash<String, Integer>
    #   resp.data.workload.risk_counts['key'] #=> Integer
    #   resp.data.workload.pillar_priorities #=> Array<String>
    #   resp.data.workload.pillar_priorities[0] #=> String
    #   resp.data.workload.lenses #=> Array<String>
    #   resp.data.workload.lenses[0] #=> String
    #   resp.data.workload.owner #=> String
    #   resp.data.workload.share_invitation_id #=> String
    #   resp.data.workload.tags #=> Hash<String, String>
    #   resp.data.workload.tags['key'] #=> String
    #
    def get_workload(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetWorkloadInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetWorkloadInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetWorkload
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::GetWorkload
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetWorkload,
        stubs: @stubs,
        params_class: Params::GetWorkloadOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_workload
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Import a new lens.</p>
    #         <p>The lens cannot be applied to workloads or shared with other Amazon Web Services accounts
    #             until it's published with <a>CreateLensVersion</a>
    #          </p>
    #         <p>Lenses are defined in JSON. For more information, see <a href="https://docs.aws.amazon.com/wellarchitected/latest/userguide/lenses-format-specification.html">JSON format specification</a>
    #             in the <i>Well-Architected Tool User Guide</i>.</p>
    #         <p>A custom lens cannot exceed 500 KB in size.</p>
    #
    #         <note>
    #             <p>
    #                <b>Disclaimer</b>
    #             </p>
    #             <p>Do not include or gather personal identifiable information (PII) of end users or
    #                 other identifiable individuals in or via your custom lenses. If your custom
    #                 lens or those shared with you and used in your account do include or collect
    #                 PII you are responsible for: ensuring that the included PII is processed in accordance
    #                 with applicable law, providing adequate privacy notices, and obtaining necessary
    #                 consents for processing such data.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::ImportLensInput}.
    #
    # @option params [String] :lens_alias
    #   <p>The alias of the lens, for example, <code>serverless</code>.</p>
    #           <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #
    # @option params [String] :json_string
    #   <p>The JSON representation of a lens.</p>
    #
    # @option params [String] :client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #           <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after it has completed
    #               successfully, the result of the original request is returned. </p>
    #           <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #           </important>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Tags to associate to a lens.</p>
    #
    # @return [Types::ImportLensOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_lens(
    #     lens_alias: 'LensAlias',
    #     json_string: 'JSONString', # required
    #     client_request_token: 'ClientRequestToken', # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ImportLensOutput
    #   resp.data.lens_arn #=> String
    #   resp.data.status #=> String, one of ["IN_PROGRESS", "COMPLETE", "ERROR"]
    #
    def import_lens(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ImportLensInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ImportLensInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ImportLens
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::ImportLens
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ImportLens,
        stubs: @stubs,
        params_class: Params::ImportLensOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :import_lens
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List of answers.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAnswersInput}.
    #
    # @option params [String] :workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    # @option params [String] :lens_alias
    #   <p>The alias of the lens, for example, <code>serverless</code>.</p>
    #           <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #
    # @option params [String] :pillar_id
    #   <p>The ID used to identify a pillar, for example, <code>security</code>.</p>
    #           <p>A pillar is identified by its <a>PillarReviewSummary$PillarId</a>.</p>
    #
    # @option params [Integer] :milestone_number
    #   <p>The milestone number.</p>
    #           <p>A workload can have a maximum of 100 milestones.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for this request.</p>
    #
    # @return [Types::ListAnswersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_answers(
    #     workload_id: 'WorkloadId', # required
    #     lens_alias: 'LensAlias', # required
    #     pillar_id: 'PillarId',
    #     milestone_number: 1,
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAnswersOutput
    #   resp.data.workload_id #=> String
    #   resp.data.milestone_number #=> Integer
    #   resp.data.lens_alias #=> String
    #   resp.data.lens_arn #=> String
    #   resp.data.answer_summaries #=> Array<AnswerSummary>
    #   resp.data.answer_summaries[0] #=> Types::AnswerSummary
    #   resp.data.answer_summaries[0].question_id #=> String
    #   resp.data.answer_summaries[0].pillar_id #=> String
    #   resp.data.answer_summaries[0].question_title #=> String
    #   resp.data.answer_summaries[0].choices #=> Array<Choice>
    #   resp.data.answer_summaries[0].choices[0] #=> Types::Choice
    #   resp.data.answer_summaries[0].choices[0].choice_id #=> String
    #   resp.data.answer_summaries[0].choices[0].title #=> String
    #   resp.data.answer_summaries[0].choices[0].description #=> String
    #   resp.data.answer_summaries[0].choices[0].helpful_resource #=> Types::ChoiceContent
    #   resp.data.answer_summaries[0].choices[0].helpful_resource.display_text #=> String
    #   resp.data.answer_summaries[0].choices[0].helpful_resource.url #=> String
    #   resp.data.answer_summaries[0].choices[0].improvement_plan #=> Types::ChoiceContent
    #   resp.data.answer_summaries[0].selected_choices #=> Array<String>
    #   resp.data.answer_summaries[0].selected_choices[0] #=> String
    #   resp.data.answer_summaries[0].choice_answer_summaries #=> Array<ChoiceAnswerSummary>
    #   resp.data.answer_summaries[0].choice_answer_summaries[0] #=> Types::ChoiceAnswerSummary
    #   resp.data.answer_summaries[0].choice_answer_summaries[0].choice_id #=> String
    #   resp.data.answer_summaries[0].choice_answer_summaries[0].status #=> String, one of ["SELECTED", "NOT_APPLICABLE", "UNSELECTED"]
    #   resp.data.answer_summaries[0].choice_answer_summaries[0].reason #=> String, one of ["OUT_OF_SCOPE", "BUSINESS_PRIORITIES", "ARCHITECTURE_CONSTRAINTS", "OTHER", "NONE"]
    #   resp.data.answer_summaries[0].is_applicable #=> Boolean
    #   resp.data.answer_summaries[0].risk #=> String, one of ["UNANSWERED", "HIGH", "MEDIUM", "NONE", "NOT_APPLICABLE"]
    #   resp.data.answer_summaries[0].reason #=> String, one of ["OUT_OF_SCOPE", "BUSINESS_PRIORITIES", "ARCHITECTURE_CONSTRAINTS", "OTHER", "NONE"]
    #   resp.data.next_token #=> String
    #
    def list_answers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAnswersInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAnswersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAnswers
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::ListAnswers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAnswers,
        stubs: @stubs,
        params_class: Params::ListAnswersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_answers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List lens review improvements.</p>
    #
    # @param [Hash] params
    #   See {Types::ListLensReviewImprovementsInput}.
    #
    # @option params [String] :workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    # @option params [String] :lens_alias
    #   <p>The alias of the lens, for example, <code>serverless</code>.</p>
    #           <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #
    # @option params [String] :pillar_id
    #   <p>The ID used to identify a pillar, for example, <code>security</code>.</p>
    #           <p>A pillar is identified by its <a>PillarReviewSummary$PillarId</a>.</p>
    #
    # @option params [Integer] :milestone_number
    #   <p>The milestone number.</p>
    #           <p>A workload can have a maximum of 100 milestones.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for this request.</p>
    #
    # @return [Types::ListLensReviewImprovementsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_lens_review_improvements(
    #     workload_id: 'WorkloadId', # required
    #     lens_alias: 'LensAlias', # required
    #     pillar_id: 'PillarId',
    #     milestone_number: 1,
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListLensReviewImprovementsOutput
    #   resp.data.workload_id #=> String
    #   resp.data.milestone_number #=> Integer
    #   resp.data.lens_alias #=> String
    #   resp.data.lens_arn #=> String
    #   resp.data.improvement_summaries #=> Array<ImprovementSummary>
    #   resp.data.improvement_summaries[0] #=> Types::ImprovementSummary
    #   resp.data.improvement_summaries[0].question_id #=> String
    #   resp.data.improvement_summaries[0].pillar_id #=> String
    #   resp.data.improvement_summaries[0].question_title #=> String
    #   resp.data.improvement_summaries[0].risk #=> String, one of ["UNANSWERED", "HIGH", "MEDIUM", "NONE", "NOT_APPLICABLE"]
    #   resp.data.improvement_summaries[0].improvement_plan_url #=> String
    #   resp.data.improvement_summaries[0].improvement_plans #=> Array<ChoiceImprovementPlan>
    #   resp.data.improvement_summaries[0].improvement_plans[0] #=> Types::ChoiceImprovementPlan
    #   resp.data.improvement_summaries[0].improvement_plans[0].choice_id #=> String
    #   resp.data.improvement_summaries[0].improvement_plans[0].display_text #=> String
    #   resp.data.improvement_summaries[0].improvement_plans[0].improvement_plan_url #=> String
    #   resp.data.next_token #=> String
    #
    def list_lens_review_improvements(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListLensReviewImprovementsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListLensReviewImprovementsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListLensReviewImprovements
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::ListLensReviewImprovements
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListLensReviewImprovements,
        stubs: @stubs,
        params_class: Params::ListLensReviewImprovementsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_lens_review_improvements
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List lens reviews.</p>
    #
    # @param [Hash] params
    #   See {Types::ListLensReviewsInput}.
    #
    # @option params [String] :workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    # @option params [Integer] :milestone_number
    #   <p>The milestone number.</p>
    #           <p>A workload can have a maximum of 100 milestones.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for this request.</p>
    #
    # @return [Types::ListLensReviewsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_lens_reviews(
    #     workload_id: 'WorkloadId', # required
    #     milestone_number: 1,
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListLensReviewsOutput
    #   resp.data.workload_id #=> String
    #   resp.data.milestone_number #=> Integer
    #   resp.data.lens_review_summaries #=> Array<LensReviewSummary>
    #   resp.data.lens_review_summaries[0] #=> Types::LensReviewSummary
    #   resp.data.lens_review_summaries[0].lens_alias #=> String
    #   resp.data.lens_review_summaries[0].lens_arn #=> String
    #   resp.data.lens_review_summaries[0].lens_version #=> String
    #   resp.data.lens_review_summaries[0].lens_name #=> String
    #   resp.data.lens_review_summaries[0].lens_status #=> String, one of ["CURRENT", "NOT_CURRENT", "DEPRECATED", "DELETED", "UNSHARED"]
    #   resp.data.lens_review_summaries[0].updated_at #=> Time
    #   resp.data.lens_review_summaries[0].risk_counts #=> Hash<String, Integer>
    #   resp.data.lens_review_summaries[0].risk_counts['key'] #=> Integer
    #   resp.data.next_token #=> String
    #
    def list_lens_reviews(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListLensReviewsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListLensReviewsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListLensReviews
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::ListLensReviews
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListLensReviews,
        stubs: @stubs,
        params_class: Params::ListLensReviewsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_lens_reviews
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List the lens shares associated with the lens.</p>
    #
    # @param [Hash] params
    #   See {Types::ListLensSharesInput}.
    #
    # @option params [String] :lens_alias
    #   <p>The alias of the lens, for example, <code>serverless</code>.</p>
    #           <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #
    # @option params [String] :shared_with_prefix
    #   <p>The Amazon Web Services account ID or IAM role with which the lens is shared.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for this request.</p>
    #
    # @return [Types::ListLensSharesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_lens_shares(
    #     lens_alias: 'LensAlias', # required
    #     shared_with_prefix: 'SharedWithPrefix',
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListLensSharesOutput
    #   resp.data.lens_share_summaries #=> Array<LensShareSummary>
    #   resp.data.lens_share_summaries[0] #=> Types::LensShareSummary
    #   resp.data.lens_share_summaries[0].share_id #=> String
    #   resp.data.lens_share_summaries[0].shared_with #=> String
    #   resp.data.lens_share_summaries[0].status #=> String, one of ["ACCEPTED", "REJECTED", "PENDING", "REVOKED", "EXPIRED"]
    #   resp.data.next_token #=> String
    #
    def list_lens_shares(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListLensSharesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListLensSharesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListLensShares
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::ListLensShares
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListLensShares,
        stubs: @stubs,
        params_class: Params::ListLensSharesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_lens_shares
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List the available lenses.</p>
    #
    # @param [Hash] params
    #   See {Types::ListLensesInput}.
    #
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for this request.</p>
    #
    # @option params [String] :lens_type
    #   <p>The type of lenses to be returned.</p>
    #
    # @option params [String] :lens_status
    #   <p>The status of lenses to be returned.</p>
    #
    # @option params [String] :lens_name
    #   <p>The full name of the lens.</p>
    #
    # @return [Types::ListLensesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_lenses(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     lens_type: 'AWS_OFFICIAL', # accepts ["AWS_OFFICIAL", "CUSTOM_SHARED", "CUSTOM_SELF"]
    #     lens_status: 'ALL', # accepts ["ALL", "DRAFT", "PUBLISHED"]
    #     lens_name: 'LensName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListLensesOutput
    #   resp.data.lens_summaries #=> Array<LensSummary>
    #   resp.data.lens_summaries[0] #=> Types::LensSummary
    #   resp.data.lens_summaries[0].lens_arn #=> String
    #   resp.data.lens_summaries[0].lens_alias #=> String
    #   resp.data.lens_summaries[0].lens_name #=> String
    #   resp.data.lens_summaries[0].lens_type #=> String, one of ["AWS_OFFICIAL", "CUSTOM_SHARED", "CUSTOM_SELF"]
    #   resp.data.lens_summaries[0].description #=> String
    #   resp.data.lens_summaries[0].created_at #=> Time
    #   resp.data.lens_summaries[0].updated_at #=> Time
    #   resp.data.lens_summaries[0].lens_version #=> String
    #   resp.data.lens_summaries[0].owner #=> String
    #   resp.data.lens_summaries[0].lens_status #=> String, one of ["CURRENT", "NOT_CURRENT", "DEPRECATED", "DELETED", "UNSHARED"]
    #   resp.data.next_token #=> String
    #
    def list_lenses(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListLensesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListLensesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListLenses
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::ListLenses
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListLenses,
        stubs: @stubs,
        params_class: Params::ListLensesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_lenses
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List all milestones for an existing workload.</p>
    #
    # @param [Hash] params
    #   See {Types::ListMilestonesInput}.
    #
    # @option params [String] :workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for this request.</p>
    #
    # @return [Types::ListMilestonesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_milestones(
    #     workload_id: 'WorkloadId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListMilestonesOutput
    #   resp.data.workload_id #=> String
    #   resp.data.milestone_summaries #=> Array<MilestoneSummary>
    #   resp.data.milestone_summaries[0] #=> Types::MilestoneSummary
    #   resp.data.milestone_summaries[0].milestone_number #=> Integer
    #   resp.data.milestone_summaries[0].milestone_name #=> String
    #   resp.data.milestone_summaries[0].recorded_at #=> Time
    #   resp.data.milestone_summaries[0].workload_summary #=> Types::WorkloadSummary
    #   resp.data.milestone_summaries[0].workload_summary.workload_id #=> String
    #   resp.data.milestone_summaries[0].workload_summary.workload_arn #=> String
    #   resp.data.milestone_summaries[0].workload_summary.workload_name #=> String
    #   resp.data.milestone_summaries[0].workload_summary.owner #=> String
    #   resp.data.milestone_summaries[0].workload_summary.updated_at #=> Time
    #   resp.data.milestone_summaries[0].workload_summary.lenses #=> Array<String>
    #   resp.data.milestone_summaries[0].workload_summary.lenses[0] #=> String
    #   resp.data.milestone_summaries[0].workload_summary.risk_counts #=> Hash<String, Integer>
    #   resp.data.milestone_summaries[0].workload_summary.risk_counts['key'] #=> Integer
    #   resp.data.milestone_summaries[0].workload_summary.improvement_status #=> String, one of ["NOT_APPLICABLE", "NOT_STARTED", "IN_PROGRESS", "COMPLETE", "RISK_ACKNOWLEDGED"]
    #   resp.data.next_token #=> String
    #
    def list_milestones(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListMilestonesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListMilestonesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListMilestones
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::ListMilestones
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListMilestones,
        stubs: @stubs,
        params_class: Params::ListMilestonesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_milestones
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List lens notifications.</p>
    #
    # @param [Hash] params
    #   See {Types::ListNotificationsInput}.
    #
    # @option params [String] :workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for this request.</p>
    #
    # @return [Types::ListNotificationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_notifications(
    #     workload_id: 'WorkloadId',
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListNotificationsOutput
    #   resp.data.notification_summaries #=> Array<NotificationSummary>
    #   resp.data.notification_summaries[0] #=> Types::NotificationSummary
    #   resp.data.notification_summaries[0].type #=> String, one of ["LENS_VERSION_UPGRADED", "LENS_VERSION_DEPRECATED"]
    #   resp.data.notification_summaries[0].lens_upgrade_summary #=> Types::LensUpgradeSummary
    #   resp.data.notification_summaries[0].lens_upgrade_summary.workload_id #=> String
    #   resp.data.notification_summaries[0].lens_upgrade_summary.workload_name #=> String
    #   resp.data.notification_summaries[0].lens_upgrade_summary.lens_alias #=> String
    #   resp.data.notification_summaries[0].lens_upgrade_summary.lens_arn #=> String
    #   resp.data.notification_summaries[0].lens_upgrade_summary.current_lens_version #=> String
    #   resp.data.notification_summaries[0].lens_upgrade_summary.latest_lens_version #=> String
    #   resp.data.next_token #=> String
    #
    def list_notifications(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListNotificationsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListNotificationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListNotifications
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::ListNotifications
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListNotifications,
        stubs: @stubs,
        params_class: Params::ListNotificationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_notifications
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List  the workload invitations.</p>
    #
    # @param [Hash] params
    #   See {Types::ListShareInvitationsInput}.
    #
    # @option params [String] :workload_name_prefix
    #   <p>An optional string added to the beginning of each workload name returned in the
    #               results.</p>
    #
    # @option params [String] :lens_name_prefix
    #   <p>An optional string added to the beginning of each lens name returned in the results.</p>
    #
    # @option params [String] :share_resource_type
    #   <p>The type of share invitations to be returned.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for this request.</p>
    #
    # @return [Types::ListShareInvitationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_share_invitations(
    #     workload_name_prefix: 'WorkloadNamePrefix',
    #     lens_name_prefix: 'LensNamePrefix',
    #     share_resource_type: 'WORKLOAD', # accepts ["WORKLOAD", "LENS"]
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListShareInvitationsOutput
    #   resp.data.share_invitation_summaries #=> Array<ShareInvitationSummary>
    #   resp.data.share_invitation_summaries[0] #=> Types::ShareInvitationSummary
    #   resp.data.share_invitation_summaries[0].share_invitation_id #=> String
    #   resp.data.share_invitation_summaries[0].shared_by #=> String
    #   resp.data.share_invitation_summaries[0].shared_with #=> String
    #   resp.data.share_invitation_summaries[0].permission_type #=> String, one of ["READONLY", "CONTRIBUTOR"]
    #   resp.data.share_invitation_summaries[0].share_resource_type #=> String, one of ["WORKLOAD", "LENS"]
    #   resp.data.share_invitation_summaries[0].workload_name #=> String
    #   resp.data.share_invitation_summaries[0].workload_id #=> String
    #   resp.data.share_invitation_summaries[0].lens_name #=> String
    #   resp.data.share_invitation_summaries[0].lens_arn #=> String
    #   resp.data.next_token #=> String
    #
    def list_share_invitations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListShareInvitationsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListShareInvitationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListShareInvitations
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::ListShareInvitations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListShareInvitations,
        stubs: @stubs,
        params_class: Params::ListShareInvitationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_share_invitations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List the tags for a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :workload_arn
    #   <p>The ARN for the workload.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     workload_arn: 'WorkloadArn' # required
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
      response_body = StringIO.new
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException]),
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

    # <p>List the workload shares associated with the workload.</p>
    #
    # @param [Hash] params
    #   See {Types::ListWorkloadSharesInput}.
    #
    # @option params [String] :workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    # @option params [String] :shared_with_prefix
    #   <p>The Amazon Web Services account ID or IAM role with which the workload is shared.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for this request.</p>
    #
    # @return [Types::ListWorkloadSharesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_workload_shares(
    #     workload_id: 'WorkloadId', # required
    #     shared_with_prefix: 'SharedWithPrefix',
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListWorkloadSharesOutput
    #   resp.data.workload_id #=> String
    #   resp.data.workload_share_summaries #=> Array<WorkloadShareSummary>
    #   resp.data.workload_share_summaries[0] #=> Types::WorkloadShareSummary
    #   resp.data.workload_share_summaries[0].share_id #=> String
    #   resp.data.workload_share_summaries[0].shared_with #=> String
    #   resp.data.workload_share_summaries[0].permission_type #=> String, one of ["READONLY", "CONTRIBUTOR"]
    #   resp.data.workload_share_summaries[0].status #=> String, one of ["ACCEPTED", "REJECTED", "PENDING", "REVOKED", "EXPIRED"]
    #   resp.data.next_token #=> String
    #
    def list_workload_shares(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListWorkloadSharesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListWorkloadSharesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListWorkloadShares
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::ListWorkloadShares
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListWorkloadShares,
        stubs: @stubs,
        params_class: Params::ListWorkloadSharesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_workload_shares
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List workloads. Paginated.</p>
    #
    # @param [Hash] params
    #   See {Types::ListWorkloadsInput}.
    #
    # @option params [String] :workload_name_prefix
    #   <p>An optional string added to the beginning of each workload name returned in the
    #               results.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for this request.</p>
    #
    # @return [Types::ListWorkloadsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_workloads(
    #     workload_name_prefix: 'WorkloadNamePrefix',
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListWorkloadsOutput
    #   resp.data.workload_summaries #=> Array<WorkloadSummary>
    #   resp.data.workload_summaries[0] #=> Types::WorkloadSummary
    #   resp.data.workload_summaries[0].workload_id #=> String
    #   resp.data.workload_summaries[0].workload_arn #=> String
    #   resp.data.workload_summaries[0].workload_name #=> String
    #   resp.data.workload_summaries[0].owner #=> String
    #   resp.data.workload_summaries[0].updated_at #=> Time
    #   resp.data.workload_summaries[0].lenses #=> Array<String>
    #   resp.data.workload_summaries[0].lenses[0] #=> String
    #   resp.data.workload_summaries[0].risk_counts #=> Hash<String, Integer>
    #   resp.data.workload_summaries[0].risk_counts['key'] #=> Integer
    #   resp.data.workload_summaries[0].improvement_status #=> String, one of ["NOT_APPLICABLE", "NOT_STARTED", "IN_PROGRESS", "COMPLETE", "RISK_ACKNOWLEDGED"]
    #   resp.data.next_token #=> String
    #
    def list_workloads(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListWorkloadsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListWorkloadsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListWorkloads
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::ListWorkloads
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListWorkloads,
        stubs: @stubs,
        params_class: Params::ListWorkloadsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_workloads
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds one or more tags to the specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :workload_arn
    #   <p>The ARN for the workload.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags for the resource.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     workload_arn: 'WorkloadArn', # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException]),
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
    #         <p>To specify multiple tags, use separate <b>tagKeys</b> parameters, for example:</p>
    #         <p>
    #             <code>DELETE /tags/WorkloadArn?tagKeys=key1&tagKeys=key2</code>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :workload_arn
    #   <p>The ARN for the workload.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>A list of tag keys. Existing tags of the resource
    #               whose keys are members of this list are removed from the resource.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     workload_arn: 'WorkloadArn', # required
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
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException]),
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

    # <p>Update the answer to a specific question in a workload review.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateAnswerInput}.
    #
    # @option params [String] :workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    # @option params [String] :lens_alias
    #   <p>The alias of the lens, for example, <code>serverless</code>.</p>
    #           <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #
    # @option params [String] :question_id
    #   <p>The ID of the question.</p>
    #
    # @option params [Array<String>] :selected_choices
    #   <p>List of selected choice IDs in a question answer.</p>
    #           <p>The values entered replace the previously selected choices.</p>
    #
    # @option params [Hash<String, ChoiceUpdate>] :choice_updates
    #   <p>A list of choices to update on a question in your workload.  The String key
    #               corresponds to the choice ID to be updated.</p>
    #
    # @option params [String] :notes
    #   <p>The notes associated with the workload.</p>
    #
    # @option params [Boolean] :is_applicable
    #   <p>Defines whether this question is applicable to a lens review.</p>
    #
    # @option params [String] :reason
    #   <p>The reason why a question is not applicable to your workload.</p>
    #
    # @return [Types::UpdateAnswerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_answer(
    #     workload_id: 'WorkloadId', # required
    #     lens_alias: 'LensAlias', # required
    #     question_id: 'QuestionId', # required
    #     selected_choices: [
    #       'member'
    #     ],
    #     choice_updates: {
    #       'key' => {
    #         status: 'SELECTED', # required - accepts ["SELECTED", "NOT_APPLICABLE", "UNSELECTED"]
    #         reason: 'OUT_OF_SCOPE', # accepts ["OUT_OF_SCOPE", "BUSINESS_PRIORITIES", "ARCHITECTURE_CONSTRAINTS", "OTHER", "NONE"]
    #         notes: 'Notes'
    #       }
    #     },
    #     notes: 'Notes',
    #     is_applicable: false,
    #     reason: 'OUT_OF_SCOPE' # accepts ["OUT_OF_SCOPE", "BUSINESS_PRIORITIES", "ARCHITECTURE_CONSTRAINTS", "OTHER", "NONE"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAnswerOutput
    #   resp.data.workload_id #=> String
    #   resp.data.lens_alias #=> String
    #   resp.data.lens_arn #=> String
    #   resp.data.answer #=> Types::Answer
    #   resp.data.answer.question_id #=> String
    #   resp.data.answer.pillar_id #=> String
    #   resp.data.answer.question_title #=> String
    #   resp.data.answer.question_description #=> String
    #   resp.data.answer.improvement_plan_url #=> String
    #   resp.data.answer.helpful_resource_url #=> String
    #   resp.data.answer.helpful_resource_display_text #=> String
    #   resp.data.answer.choices #=> Array<Choice>
    #   resp.data.answer.choices[0] #=> Types::Choice
    #   resp.data.answer.choices[0].choice_id #=> String
    #   resp.data.answer.choices[0].title #=> String
    #   resp.data.answer.choices[0].description #=> String
    #   resp.data.answer.choices[0].helpful_resource #=> Types::ChoiceContent
    #   resp.data.answer.choices[0].helpful_resource.display_text #=> String
    #   resp.data.answer.choices[0].helpful_resource.url #=> String
    #   resp.data.answer.choices[0].improvement_plan #=> Types::ChoiceContent
    #   resp.data.answer.selected_choices #=> Array<String>
    #   resp.data.answer.selected_choices[0] #=> String
    #   resp.data.answer.choice_answers #=> Array<ChoiceAnswer>
    #   resp.data.answer.choice_answers[0] #=> Types::ChoiceAnswer
    #   resp.data.answer.choice_answers[0].choice_id #=> String
    #   resp.data.answer.choice_answers[0].status #=> String, one of ["SELECTED", "NOT_APPLICABLE", "UNSELECTED"]
    #   resp.data.answer.choice_answers[0].reason #=> String, one of ["OUT_OF_SCOPE", "BUSINESS_PRIORITIES", "ARCHITECTURE_CONSTRAINTS", "OTHER", "NONE"]
    #   resp.data.answer.choice_answers[0].notes #=> String
    #   resp.data.answer.is_applicable #=> Boolean
    #   resp.data.answer.risk #=> String, one of ["UNANSWERED", "HIGH", "MEDIUM", "NONE", "NOT_APPLICABLE"]
    #   resp.data.answer.notes #=> String
    #   resp.data.answer.reason #=> String, one of ["OUT_OF_SCOPE", "BUSINESS_PRIORITIES", "ARCHITECTURE_CONSTRAINTS", "OTHER", "NONE"]
    #
    def update_answer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAnswerInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAnswerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAnswer
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::UpdateAnswer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateAnswer,
        stubs: @stubs,
        params_class: Params::UpdateAnswerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_answer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Update lens review.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateLensReviewInput}.
    #
    # @option params [String] :workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    # @option params [String] :lens_alias
    #   <p>The alias of the lens, for example, <code>serverless</code>.</p>
    #           <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #
    # @option params [String] :lens_notes
    #   <p>The notes associated with the workload.</p>
    #
    # @option params [Hash<String, String>] :pillar_notes
    #   <p>List of pillar notes of a lens review in a workload.</p>
    #
    # @return [Types::UpdateLensReviewOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_lens_review(
    #     workload_id: 'WorkloadId', # required
    #     lens_alias: 'LensAlias', # required
    #     lens_notes: 'LensNotes',
    #     pillar_notes: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateLensReviewOutput
    #   resp.data.workload_id #=> String
    #   resp.data.lens_review #=> Types::LensReview
    #   resp.data.lens_review.lens_alias #=> String
    #   resp.data.lens_review.lens_arn #=> String
    #   resp.data.lens_review.lens_version #=> String
    #   resp.data.lens_review.lens_name #=> String
    #   resp.data.lens_review.lens_status #=> String, one of ["CURRENT", "NOT_CURRENT", "DEPRECATED", "DELETED", "UNSHARED"]
    #   resp.data.lens_review.pillar_review_summaries #=> Array<PillarReviewSummary>
    #   resp.data.lens_review.pillar_review_summaries[0] #=> Types::PillarReviewSummary
    #   resp.data.lens_review.pillar_review_summaries[0].pillar_id #=> String
    #   resp.data.lens_review.pillar_review_summaries[0].pillar_name #=> String
    #   resp.data.lens_review.pillar_review_summaries[0].notes #=> String
    #   resp.data.lens_review.pillar_review_summaries[0].risk_counts #=> Hash<String, Integer>
    #   resp.data.lens_review.pillar_review_summaries[0].risk_counts['key'] #=> Integer
    #   resp.data.lens_review.updated_at #=> Time
    #   resp.data.lens_review.notes #=> String
    #   resp.data.lens_review.risk_counts #=> Hash<String, Integer>
    #   resp.data.lens_review.next_token #=> String
    #
    def update_lens_review(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateLensReviewInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateLensReviewInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateLensReview
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::UpdateLensReview
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateLensReview,
        stubs: @stubs,
        params_class: Params::UpdateLensReviewOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_lens_review
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Update a workload invitation.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateShareInvitationInput}.
    #
    # @option params [String] :share_invitation_id
    #   <p>The ID assigned to the share invitation.</p>
    #
    # @option params [String] :share_invitation_action
    #   <p>Share invitation action taken by contributor.</p>
    #
    # @return [Types::UpdateShareInvitationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_share_invitation(
    #     share_invitation_id: 'ShareInvitationId', # required
    #     share_invitation_action: 'ACCEPT' # required - accepts ["ACCEPT", "REJECT"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateShareInvitationOutput
    #   resp.data.share_invitation #=> Types::ShareInvitation
    #   resp.data.share_invitation.share_invitation_id #=> String
    #   resp.data.share_invitation.share_resource_type #=> String, one of ["WORKLOAD", "LENS"]
    #   resp.data.share_invitation.workload_id #=> String
    #   resp.data.share_invitation.lens_alias #=> String
    #   resp.data.share_invitation.lens_arn #=> String
    #
    def update_share_invitation(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateShareInvitationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateShareInvitationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateShareInvitation
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::UpdateShareInvitation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateShareInvitation,
        stubs: @stubs,
        params_class: Params::UpdateShareInvitationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_share_invitation
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Update an existing workload.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateWorkloadInput}.
    #
    # @option params [String] :workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    # @option params [String] :workload_name
    #   <p>The name of the workload.</p>
    #           <p>The name must be unique within an account within an Amazon Web Services Region. Spaces and capitalization
    #               are ignored when checking for uniqueness.</p>
    #
    # @option params [String] :description
    #   <p>The description for the workload.</p>
    #
    # @option params [String] :environment
    #   <p>The environment for the workload.</p>
    #
    # @option params [Array<String>] :account_ids
    #   <p>The list of Amazon Web Services account IDs associated with the workload.</p>
    #
    # @option params [Array<String>] :aws_regions
    #   <p>The list of Amazon Web Services Regions associated with the workload, for example,
    #                   <code>us-east-2</code>, or <code>ca-central-1</code>.</p>
    #
    # @option params [Array<String>] :non_aws_regions
    #   <p> The list of non-Amazon Web Services Regions associated with the workload.</p>
    #
    # @option params [Array<String>] :pillar_priorities
    #   <p>The priorities of the pillars, which are used to order items in the improvement plan.
    #               Each pillar is represented by its <a>PillarReviewSummary$PillarId</a>.</p>
    #
    # @option params [String] :architectural_design
    #   <p>The URL of the architectural design for the workload.</p>
    #
    # @option params [String] :review_owner
    #   <p>The review owner of the workload. The name, email address, or identifier for the
    #               primary group or individual that owns the workload review process.</p>
    #
    # @option params [Boolean] :is_review_owner_update_acknowledged
    #   <p>Flag indicating whether the workload owner has acknowledged that the <i>Review
    #                   owner</i> field is required.</p>
    #           <p>If a <b>Review owner</b> is not added to the workload within
    #               60 days of acknowledgement, access to the workload is restricted until an owner is
    #               added.</p>
    #
    # @option params [String] :industry_type
    #   <p>The industry type for the workload.</p>
    #           <p>If specified, must be one of the following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>Agriculture</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Automobile</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Defense</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Design and Engineering</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Digital Advertising</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Education</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Environmental Protection</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Financial Services</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Gaming</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>General Public Services</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Healthcare</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Hospitality</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>InfoTech</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Justice and Public Safety</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Life Sciences</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Manufacturing</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Media & Entertainment</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Mining & Resources</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Oil & Gas</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Power & Utilities</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Professional Services</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Real Estate & Construction</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Retail & Wholesale</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Social Protection</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Telecommunications</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Travel, Transportation & Logistics</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Other</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :industry
    #   <p>The industry for the workload.</p>
    #
    # @option params [String] :notes
    #   <p>The notes associated with the workload.</p>
    #
    # @option params [String] :improvement_status
    #   <p>The improvement status for a workload.</p>
    #
    # @return [Types::UpdateWorkloadOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_workload(
    #     workload_id: 'WorkloadId', # required
    #     workload_name: 'WorkloadName',
    #     description: 'Description',
    #     environment: 'PRODUCTION', # accepts ["PRODUCTION", "PREPRODUCTION"]
    #     account_ids: [
    #       'member'
    #     ],
    #     aws_regions: [
    #       'member'
    #     ],
    #     non_aws_regions: [
    #       'member'
    #     ],
    #     pillar_priorities: [
    #       'member'
    #     ],
    #     architectural_design: 'ArchitecturalDesign',
    #     review_owner: 'ReviewOwner',
    #     is_review_owner_update_acknowledged: false,
    #     industry_type: 'IndustryType',
    #     industry: 'Industry',
    #     notes: 'Notes',
    #     improvement_status: 'NOT_APPLICABLE' # accepts ["NOT_APPLICABLE", "NOT_STARTED", "IN_PROGRESS", "COMPLETE", "RISK_ACKNOWLEDGED"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateWorkloadOutput
    #   resp.data.workload #=> Types::Workload
    #   resp.data.workload.workload_id #=> String
    #   resp.data.workload.workload_arn #=> String
    #   resp.data.workload.workload_name #=> String
    #   resp.data.workload.description #=> String
    #   resp.data.workload.environment #=> String, one of ["PRODUCTION", "PREPRODUCTION"]
    #   resp.data.workload.updated_at #=> Time
    #   resp.data.workload.account_ids #=> Array<String>
    #   resp.data.workload.account_ids[0] #=> String
    #   resp.data.workload.aws_regions #=> Array<String>
    #   resp.data.workload.aws_regions[0] #=> String
    #   resp.data.workload.non_aws_regions #=> Array<String>
    #   resp.data.workload.non_aws_regions[0] #=> String
    #   resp.data.workload.architectural_design #=> String
    #   resp.data.workload.review_owner #=> String
    #   resp.data.workload.review_restriction_date #=> Time
    #   resp.data.workload.is_review_owner_update_acknowledged #=> Boolean
    #   resp.data.workload.industry_type #=> String
    #   resp.data.workload.industry #=> String
    #   resp.data.workload.notes #=> String
    #   resp.data.workload.improvement_status #=> String, one of ["NOT_APPLICABLE", "NOT_STARTED", "IN_PROGRESS", "COMPLETE", "RISK_ACKNOWLEDGED"]
    #   resp.data.workload.risk_counts #=> Hash<String, Integer>
    #   resp.data.workload.risk_counts['key'] #=> Integer
    #   resp.data.workload.pillar_priorities #=> Array<String>
    #   resp.data.workload.pillar_priorities[0] #=> String
    #   resp.data.workload.lenses #=> Array<String>
    #   resp.data.workload.lenses[0] #=> String
    #   resp.data.workload.owner #=> String
    #   resp.data.workload.share_invitation_id #=> String
    #   resp.data.workload.tags #=> Hash<String, String>
    #   resp.data.workload.tags['key'] #=> String
    #
    def update_workload(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateWorkloadInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateWorkloadInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateWorkload
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::UpdateWorkload
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateWorkload,
        stubs: @stubs,
        params_class: Params::UpdateWorkloadOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_workload
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Update a workload share.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateWorkloadShareInput}.
    #
    # @option params [String] :share_id
    #   <p>The ID associated with the workload share.</p>
    #
    # @option params [String] :workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    # @option params [String] :permission_type
    #   <p>Permission granted on a workload share.</p>
    #
    # @return [Types::UpdateWorkloadShareOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_workload_share(
    #     share_id: 'ShareId', # required
    #     workload_id: 'WorkloadId', # required
    #     permission_type: 'READONLY' # required - accepts ["READONLY", "CONTRIBUTOR"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateWorkloadShareOutput
    #   resp.data.workload_id #=> String
    #   resp.data.workload_share #=> Types::WorkloadShare
    #   resp.data.workload_share.share_id #=> String
    #   resp.data.workload_share.shared_by #=> String
    #   resp.data.workload_share.shared_with #=> String
    #   resp.data.workload_share.permission_type #=> String, one of ["READONLY", "CONTRIBUTOR"]
    #   resp.data.workload_share.status #=> String, one of ["ACCEPTED", "REJECTED", "PENDING", "REVOKED", "EXPIRED"]
    #   resp.data.workload_share.workload_name #=> String
    #   resp.data.workload_share.workload_id #=> String
    #
    def update_workload_share(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateWorkloadShareInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateWorkloadShareInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateWorkloadShare
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::UpdateWorkloadShare
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateWorkloadShare,
        stubs: @stubs,
        params_class: Params::UpdateWorkloadShareOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_workload_share
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Upgrade lens review.</p>
    #
    # @param [Hash] params
    #   See {Types::UpgradeLensReviewInput}.
    #
    # @option params [String] :workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    # @option params [String] :lens_alias
    #   <p>The alias of the lens, for example, <code>serverless</code>.</p>
    #           <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #
    # @option params [String] :milestone_name
    #   <p>The name of the milestone in a workload.</p>
    #           <p>Milestone names must be unique within a workload.</p>
    #
    # @option params [String] :client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #           <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after it has completed
    #               successfully, the result of the original request is returned. </p>
    #           <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #           </important>
    #
    # @return [Types::UpgradeLensReviewOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.upgrade_lens_review(
    #     workload_id: 'WorkloadId', # required
    #     lens_alias: 'LensAlias', # required
    #     milestone_name: 'MilestoneName', # required
    #     client_request_token: 'ClientRequestToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpgradeLensReviewOutput
    #
    def upgrade_lens_review(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpgradeLensReviewInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpgradeLensReviewInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpgradeLensReview
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::UpgradeLensReview
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpgradeLensReview,
        stubs: @stubs,
        params_class: Params::UpgradeLensReviewOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :upgrade_lens_review
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
