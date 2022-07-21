# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::MTurk
  # An API client for MTurkRequesterServiceV20170117
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Amazon Mechanical Turk API Reference</fullname>
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
    def initialize(config = AWS::SDK::MTurk::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>
    #             The <code>AcceptQualificationRequest</code> operation approves a Worker's request for a Qualification.
    #         </p>
    #         <p>
    #             Only the owner of the Qualification type can grant a Qualification request for that	type.
    #         </p>
    #         <p>
    #             A successful request for the <code>AcceptQualificationRequest</code> operation
    #             returns with no errors and an empty body.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::AcceptQualificationRequestInput}.
    #
    # @option params [String] :qualification_request_id
    #   <p>The ID of the Qualification request, as returned by the <code>GetQualificationRequests</code> operation.</p>
    #
    # @option params [Integer] :integer_value
    #   <p>
    #               The value of the Qualification. You can omit this value if you are using the
    #               presence or absence of the Qualification as the basis for a HIT requirement.
    #           </p>
    #
    # @return [Types::AcceptQualificationRequestOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_qualification_request(
    #     qualification_request_id: 'QualificationRequestId', # required
    #     integer_value: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AcceptQualificationRequestOutput
    #
    def accept_qualification_request(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AcceptQualificationRequestInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AcceptQualificationRequestInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AcceptQualificationRequest
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RequestError, Errors::ServiceFault]),
        data_parser: Parsers::AcceptQualificationRequest
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AcceptQualificationRequest,
        stubs: @stubs,
        params_class: Params::AcceptQualificationRequestOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :accept_qualification_request
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             The <code>ApproveAssignment</code> operation approves the results of a completed assignment.
    #         </p>
    #         <p>
    #             Approving an assignment initiates two payments from the Requester's Amazon.com account
    #         </p>
    #         <ul>
    #             <li>
    #                 <p>
    #                     The Worker who submitted the results is paid the reward specified in the HIT.
    #                 </p>
    #             </li>
    #             <li>
    #                 <p>
    #                     Amazon Mechanical Turk fees are debited.
    #                 </p>
    #             </li>
    #          </ul>
    #         <p>
    #             If the Requester's account does not have adequate funds for these payments,
    #             the call to ApproveAssignment returns an exception, and the approval is not processed.
    #             You can include an optional feedback message with the approval,
    #             which the Worker can see in the Status section of the web site.
    #         </p>
    #         <p>
    #             You can also call this operation for assignments that were previous rejected
    #             and approve them by explicitly overriding the previous rejection.
    #             This only works on rejected assignments that were submitted within the previous 30 days
    #             and only if the assignment's related HIT has not been deleted.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::ApproveAssignmentInput}.
    #
    # @option params [String] :assignment_id
    #   <p>
    #               The ID of the assignment. The assignment must correspond to a HIT created by the Requester.
    #           </p>
    #
    # @option params [String] :requester_feedback
    #   <p>
    #               A message for the Worker, which the Worker can see in the Status section of the web site.
    #           </p>
    #
    # @option params [Boolean] :override_rejection
    #   <p>
    #               A flag indicating that an assignment should be approved even if it was previously rejected. Defaults to <code>False</code>.
    #           </p>
    #
    # @return [Types::ApproveAssignmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.approve_assignment(
    #     assignment_id: 'AssignmentId', # required
    #     requester_feedback: 'RequesterFeedback',
    #     override_rejection: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ApproveAssignmentOutput
    #
    def approve_assignment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ApproveAssignmentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ApproveAssignmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ApproveAssignment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RequestError, Errors::ServiceFault]),
        data_parser: Parsers::ApproveAssignment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ApproveAssignment,
        stubs: @stubs,
        params_class: Params::ApproveAssignmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :approve_assignment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             The <code>AssociateQualificationWithWorker</code> operation gives a Worker a
    #             Qualification. <code>AssociateQualificationWithWorker</code> does not require that the Worker
    #             submit a Qualification request. It gives the Qualification directly to the Worker.
    #         </p>
    #
    #         <p>
    #             You can only assign a Qualification of a Qualification type that you created (using
    #             the <code>CreateQualificationType</code> operation).
    #         </p>
    #
    #         <note>
    #             <p>
    #                 Note: <code>AssociateQualificationWithWorker</code> does not affect any pending Qualification
    #                 requests for the Qualification by the Worker. If you assign a Qualification to a
    #                 Worker, then later grant a Qualification request made by the Worker, the granting of
    #                 the request may modify the Qualification score. To resolve a pending Qualification
    #                 request without affecting the Qualification the Worker already has, reject the
    #                 request with the <code>RejectQualificationRequest</code> operation.
    #             </p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::AssociateQualificationWithWorkerInput}.
    #
    # @option params [String] :qualification_type_id
    #   <p>The ID of the Qualification type to use for the assigned Qualification.</p>
    #
    # @option params [String] :worker_id
    #   <p>
    #               The ID of the Worker to whom the Qualification is being assigned.
    #               Worker IDs are included with submitted HIT assignments and Qualification requests.
    #           </p>
    #
    # @option params [Integer] :integer_value
    #   <p>The value of the Qualification to assign.</p>
    #
    # @option params [Boolean] :send_notification
    #   <p>
    #               Specifies whether to send a notification email message to the Worker
    #               saying that the qualification was assigned to the Worker.
    #               Note: this is true by default.
    #           </p>
    #
    # @return [Types::AssociateQualificationWithWorkerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_qualification_with_worker(
    #     qualification_type_id: 'QualificationTypeId', # required
    #     worker_id: 'WorkerId', # required
    #     integer_value: 1,
    #     send_notification: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateQualificationWithWorkerOutput
    #
    def associate_qualification_with_worker(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateQualificationWithWorkerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateQualificationWithWorkerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateQualificationWithWorker
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RequestError, Errors::ServiceFault]),
        data_parser: Parsers::AssociateQualificationWithWorker
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateQualificationWithWorker,
        stubs: @stubs,
        params_class: Params::AssociateQualificationWithWorkerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_qualification_with_worker
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             The
    #             <code>CreateAdditionalAssignmentsForHIT</code>
    #             operation increases the maximum number of assignments of an existing HIT.
    #         </p>
    #         <p>
    #             To extend the maximum number of assignments, specify the number of additional assignments.</p>
    #         <note>
    #             <ul>
    #                <li>
    #                     <p>HITs created with fewer than 10 assignments cannot be extended to have 10 or more assignments. Attempting to add assignments in a way that brings the total number of assignments for a HIT from fewer than 10 assignments to 10 or more
    #                         assignments will result in an
    #                         <code>AWS.MechanicalTurk.InvalidMaximumAssignmentsIncrease</code>
    #                         exception.</p>
    #                 </li>
    #                <li>
    #                     <p>HITs that were created before July 22, 2015 cannot be extended. Attempting to extend HITs that were created before July 22, 2015 will result in an
    #                         <code>AWS.MechanicalTurk.HITTooOldForExtension</code>
    #                         exception.
    #                     </p>
    #                 </li>
    #             </ul>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::CreateAdditionalAssignmentsForHITInput}.
    #
    # @option params [String] :hit_id
    #   <p>The ID of the HIT to extend.</p>
    #
    # @option params [Integer] :number_of_additional_assignments
    #   <p>The number of additional assignments to request for this HIT.</p>
    #
    # @option params [String] :unique_request_token
    #   <p>
    #               A unique identifier for this request, which allows you to retry the call on error
    #               without extending the HIT multiple times.
    #               This is useful in cases such as network timeouts where it is unclear whether or not
    #               the call succeeded on the server. If the extend HIT already exists in the system
    #               from a previous call using the same <code>UniqueRequestToken</code>,
    #               subsequent calls will return an error with a message containing the request ID.
    #           </p>
    #
    # @return [Types::CreateAdditionalAssignmentsForHITOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_additional_assignments_for_hit(
    #     hit_id: 'HITId', # required
    #     number_of_additional_assignments: 1, # required
    #     unique_request_token: 'UniqueRequestToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAdditionalAssignmentsForHITOutput
    #
    def create_additional_assignments_for_hit(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAdditionalAssignmentsForHITInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAdditionalAssignmentsForHITInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAdditionalAssignmentsForHIT
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RequestError, Errors::ServiceFault]),
        data_parser: Parsers::CreateAdditionalAssignmentsForHIT
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAdditionalAssignmentsForHIT,
        stubs: @stubs,
        params_class: Params::CreateAdditionalAssignmentsForHITOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_additional_assignments_for_hit
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>The <code>CreateHIT</code> operation creates a new Human Intelligence Task (HIT).
    #             The new HIT is made available for Workers to find and accept on the Amazon Mechanical
    #             Turk website. </p>
    #         <p>
    #             This operation allows you to specify a new HIT by passing in values for the properties of the HIT, such as its title, reward amount and number of assignments. When you pass these values to <code>CreateHIT</code>, a new HIT is created for you, with a new <code>HITTypeID</code>. The HITTypeID can be used to create additional HITs in the future without needing to specify common parameters such as the title, description and reward amount each time.</p>
    #         <p> An alternative way to create HITs is to first generate a HITTypeID using the <code>CreateHITType</code> operation and then call the <code>CreateHITWithHITType</code> operation. This is the recommended best practice for Requesters who are creating large numbers of HITs.
    #         </p>
    #
    #         <p>CreateHIT also supports several ways to provide question data: by providing a value
    #             for the <code>Question</code> parameter that fully specifies the contents of the HIT, or by providing
    #             a <code>HitLayoutId</code> and associated <code>HitLayoutParameters</code>.
    #         </p>
    #
    #         <note>
    #             <p> If a HIT is created with 10 or more maximum assignments, there is an additional fee. For more information, see
    #             <a href="https://requester.mturk.com/pricing">Amazon Mechanical Turk Pricing</a>.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::CreateHITInput}.
    #
    # @option params [Integer] :max_assignments
    #   <p>
    #               The number of times the HIT can be accepted and completed before the HIT becomes unavailable.
    #           </p>
    #
    # @option params [Integer] :auto_approval_delay_in_seconds
    #   <p>
    #               The number of seconds after an assignment for the HIT has been submitted,
    #               after which the assignment is considered Approved automatically
    #               unless the Requester explicitly rejects it.
    #           </p>
    #
    # @option params [Integer] :lifetime_in_seconds
    #   <p>
    #               An amount of time, in seconds, after which the HIT is no longer available for users to accept.
    #               After the lifetime of the HIT elapses, the HIT no longer appears in HIT searches,
    #               even if not all of the assignments for the HIT have been accepted.
    #           </p>
    #
    # @option params [Integer] :assignment_duration_in_seconds
    #   <p>
    #               The amount of time, in seconds, that a Worker has to complete the HIT after accepting it.
    #               If a Worker does not complete the assignment within the specified duration,
    #               the assignment is considered abandoned. If the HIT is still active
    #               (that is, its lifetime has not elapsed), the assignment becomes available
    #               for other users to find and accept.
    #           </p>
    #
    # @option params [String] :reward
    #   <p>
    #               The amount of money the Requester will pay a Worker for successfully completing the HIT.
    #           </p>
    #
    # @option params [String] :title
    #   <p>
    #               The title of the HIT. A title should be short and descriptive about the kind of task the HIT contains.
    #               On the Amazon Mechanical Turk web site, the HIT title appears in search results,
    #               and everywhere the HIT is mentioned.
    #           </p>
    #
    # @option params [String] :keywords
    #   <p>
    #               One or more words or phrases that describe the HIT, separated by commas.
    #               These words are used in searches to find HITs.
    #           </p>
    #
    # @option params [String] :description
    #   <p>
    #               A general description of the HIT. A description includes detailed information about the kind of task
    #               the HIT contains. On the Amazon Mechanical Turk web site, the HIT description appears in the expanded
    #               view of search results, and in the HIT and assignment screens. A good description gives the user enough
    #               information to evaluate the HIT before accepting it.
    #           </p>
    #
    # @option params [String] :question
    #   <p>
    #               The data the person completing the HIT uses to produce the results.
    #           </p>
    #           <p>
    #               Constraints: Must be a QuestionForm data structure, an ExternalQuestion data structure,
    #               or an HTMLQuestion data structure. The XML question data must not be larger than
    #               64 kilobytes (65,535 bytes) in size, including whitespace.
    #           </p>
    #           <p>Either a Question parameter or a HITLayoutId parameter must be provided.</p>
    #
    # @option params [String] :requester_annotation
    #   <p>
    #               An arbitrary data field.
    #               The RequesterAnnotation parameter lets your application attach arbitrary data
    #               to the HIT for tracking purposes.
    #               For example, this parameter could be an identifier internal to the Requester's application
    #               that corresponds with the HIT.
    #           </p>
    #           <p>
    #               The RequesterAnnotation parameter for a HIT is only visible to the Requester who created the HIT.
    #               It is not shown to the Worker, or any other Requester.
    #           </p>
    #           <p>
    #               The RequesterAnnotation parameter may be different for each HIT you submit.
    #               It does not affect how your HITs are grouped.
    #           </p>
    #
    # @option params [Array<QualificationRequirement>] :qualification_requirements
    #   <p>
    #               Conditions that a Worker's Qualifications must meet in order
    #               to accept the HIT. A HIT can have between zero and ten
    #               Qualification requirements. All requirements must be met in
    #               order for a Worker to accept the HIT. Additionally, other
    #               actions can be restricted using the <code>ActionsGuarded</code>
    #               field on each <code>QualificationRequirement</code> structure.
    #           </p>
    #
    # @option params [String] :unique_request_token
    #   <p>
    #               A unique identifier for this request which allows you to retry the call
    #               on error without creating duplicate HITs.
    #               This is useful in cases such as network timeouts where it is unclear whether or not
    #               the call succeeded on the server.
    #               If the HIT already exists in the system from a previous call using the same UniqueRequestToken,
    #               subsequent calls will return a AWS.MechanicalTurk.HitAlreadyExists error
    #               with a message containing the HITId.
    #           </p>
    #           <note>
    #               <p>
    #                   Note: It is your responsibility to ensure uniqueness of the token.
    #                   The unique token expires after 24 hours. Subsequent calls using the same
    #                   UniqueRequestToken made after the 24 hour limit could create duplicate HITs.
    #               </p>
    #           </note>
    #
    # @option params [ReviewPolicy] :assignment_review_policy
    #   <p>
    #               The Assignment-level Review Policy applies to the assignments under the HIT.
    #               You can specify for Mechanical Turk to take various actions based on the policy.
    #           </p>
    #
    # @option params [ReviewPolicy] :hit_review_policy
    #   <p>
    #               The HIT-level Review Policy applies to the HIT.
    #               You can specify for Mechanical Turk to take various actions based on the policy.
    #           </p>
    #
    # @option params [String] :hit_layout_id
    #   <p>
    #               The HITLayoutId allows you to use a pre-existing HIT design with placeholder values
    #               and create an additional HIT by providing those values as HITLayoutParameters.
    #           </p>
    #           <p>
    #               Constraints: Either a Question parameter or a HITLayoutId parameter must be provided.
    #           </p>
    #
    # @option params [Array<HITLayoutParameter>] :hit_layout_parameters
    #   <p>
    #               If the HITLayoutId is provided, any placeholder values must be filled in with values
    #               using the HITLayoutParameter structure. For more information, see HITLayout.
    #           </p>
    #
    # @return [Types::CreateHITOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_hit(
    #     max_assignments: 1,
    #     auto_approval_delay_in_seconds: 1,
    #     lifetime_in_seconds: 1, # required
    #     assignment_duration_in_seconds: 1, # required
    #     reward: 'Reward', # required
    #     title: 'Title', # required
    #     keywords: 'Keywords',
    #     description: 'Description', # required
    #     question: 'Question',
    #     requester_annotation: 'RequesterAnnotation',
    #     qualification_requirements: [
    #       {
    #         qualification_type_id: 'QualificationTypeId', # required
    #         comparator: 'LessThan', # required - accepts ["LessThan", "LessThanOrEqualTo", "GreaterThan", "GreaterThanOrEqualTo", "EqualTo", "NotEqualTo", "Exists", "DoesNotExist", "In", "NotIn"]
    #         integer_values: [
    #           1
    #         ],
    #         locale_values: [
    #           {
    #             country: 'Country', # required
    #             subdivision: 'Subdivision'
    #           }
    #         ],
    #         required_to_preview: false,
    #         actions_guarded: 'Accept' # accepts ["Accept", "PreviewAndAccept", "DiscoverPreviewAndAccept"]
    #       }
    #     ],
    #     unique_request_token: 'UniqueRequestToken',
    #     assignment_review_policy: {
    #       policy_name: 'PolicyName', # required
    #       parameters: [
    #         {
    #           key: 'Key',
    #           values: [
    #             'member'
    #           ],
    #           map_entries: [
    #             {
    #               key: 'Key',
    #             }
    #           ]
    #         }
    #       ]
    #     },
    #     hit_layout_id: 'HITLayoutId',
    #     hit_layout_parameters: [
    #       {
    #         name: 'Name', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateHITOutput
    #   resp.data.hit #=> Types::HIT
    #   resp.data.hit.hit_id #=> String
    #   resp.data.hit.hit_type_id #=> String
    #   resp.data.hit.hit_group_id #=> String
    #   resp.data.hit.hit_layout_id #=> String
    #   resp.data.hit.creation_time #=> Time
    #   resp.data.hit.title #=> String
    #   resp.data.hit.description #=> String
    #   resp.data.hit.question #=> String
    #   resp.data.hit.keywords #=> String
    #   resp.data.hit.hit_status #=> String, one of ["Assignable", "Unassignable", "Reviewable", "Reviewing", "Disposed"]
    #   resp.data.hit.max_assignments #=> Integer
    #   resp.data.hit.reward #=> String
    #   resp.data.hit.auto_approval_delay_in_seconds #=> Integer
    #   resp.data.hit.expiration #=> Time
    #   resp.data.hit.assignment_duration_in_seconds #=> Integer
    #   resp.data.hit.requester_annotation #=> String
    #   resp.data.hit.qualification_requirements #=> Array<QualificationRequirement>
    #   resp.data.hit.qualification_requirements[0] #=> Types::QualificationRequirement
    #   resp.data.hit.qualification_requirements[0].qualification_type_id #=> String
    #   resp.data.hit.qualification_requirements[0].comparator #=> String, one of ["LessThan", "LessThanOrEqualTo", "GreaterThan", "GreaterThanOrEqualTo", "EqualTo", "NotEqualTo", "Exists", "DoesNotExist", "In", "NotIn"]
    #   resp.data.hit.qualification_requirements[0].integer_values #=> Array<Integer>
    #   resp.data.hit.qualification_requirements[0].integer_values[0] #=> Integer
    #   resp.data.hit.qualification_requirements[0].locale_values #=> Array<Locale>
    #   resp.data.hit.qualification_requirements[0].locale_values[0] #=> Types::Locale
    #   resp.data.hit.qualification_requirements[0].locale_values[0].country #=> String
    #   resp.data.hit.qualification_requirements[0].locale_values[0].subdivision #=> String
    #   resp.data.hit.qualification_requirements[0].required_to_preview #=> Boolean
    #   resp.data.hit.qualification_requirements[0].actions_guarded #=> String, one of ["Accept", "PreviewAndAccept", "DiscoverPreviewAndAccept"]
    #   resp.data.hit.hit_review_status #=> String, one of ["NotReviewed", "MarkedForReview", "ReviewedAppropriate", "ReviewedInappropriate"]
    #   resp.data.hit.number_of_assignments_pending #=> Integer
    #   resp.data.hit.number_of_assignments_available #=> Integer
    #   resp.data.hit.number_of_assignments_completed #=> Integer
    #
    def create_hit(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateHITInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateHITInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateHIT
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RequestError, Errors::ServiceFault]),
        data_parser: Parsers::CreateHIT
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateHIT,
        stubs: @stubs,
        params_class: Params::CreateHITOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_hit
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             The <code>CreateHITType</code> operation creates a new HIT type. This operation
    #             allows you to define a standard set of HIT properties to use when creating HITs.
    #             If you register a HIT type with values that match an existing HIT type, the HIT type
    #             ID of the existing type will be returned.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::CreateHITTypeInput}.
    #
    # @option params [Integer] :auto_approval_delay_in_seconds
    #   <p>
    #               The number of seconds after an assignment for the HIT has been submitted,
    #               after which the assignment is considered Approved automatically
    #               unless the Requester explicitly rejects it.
    #           </p>
    #
    # @option params [Integer] :assignment_duration_in_seconds
    #   <p>
    #               The amount of time, in seconds, that a Worker has to complete the HIT after accepting it.
    #               If a Worker does not complete the assignment within the specified duration,
    #               the assignment is considered abandoned. If the HIT is still active
    #               (that is, its lifetime has not elapsed), the assignment becomes available
    #               for other users to find and accept.
    #           </p>
    #
    # @option params [String] :reward
    #   <p>
    #               The amount of money the Requester will pay a Worker for successfully completing the HIT.
    #           </p>
    #
    # @option params [String] :title
    #   <p>
    #               The title of the HIT. A title should be short and descriptive about the kind of task the HIT contains.
    #               On the Amazon Mechanical Turk web site, the HIT title appears in search results,
    #               and everywhere the HIT is mentioned.
    #           </p>
    #
    # @option params [String] :keywords
    #   <p>
    #               One or more words or phrases that describe the HIT, separated by commas.
    #               These words are used in searches to find HITs.
    #           </p>
    #
    # @option params [String] :description
    #   <p>
    #               A general description of the HIT. A description includes detailed information about the kind of task
    #               the HIT contains. On the Amazon Mechanical Turk web site, the HIT description appears in the expanded
    #               view of search results, and in the HIT and assignment screens. A good description gives the user enough
    #               information to evaluate the HIT before accepting it.
    #           </p>
    #
    # @option params [Array<QualificationRequirement>] :qualification_requirements
    #   <p>
    #               Conditions that a Worker's Qualifications must meet in order
    #               to accept the HIT. A HIT can have between zero and ten
    #               Qualification requirements. All requirements must be met in
    #               order for a Worker to accept the HIT. Additionally, other
    #               actions can be restricted using the <code>ActionsGuarded</code>
    #               field on each <code>QualificationRequirement</code> structure.
    #           </p>
    #
    # @return [Types::CreateHITTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_hit_type(
    #     auto_approval_delay_in_seconds: 1,
    #     assignment_duration_in_seconds: 1, # required
    #     reward: 'Reward', # required
    #     title: 'Title', # required
    #     keywords: 'Keywords',
    #     description: 'Description', # required
    #     qualification_requirements: [
    #       {
    #         qualification_type_id: 'QualificationTypeId', # required
    #         comparator: 'LessThan', # required - accepts ["LessThan", "LessThanOrEqualTo", "GreaterThan", "GreaterThanOrEqualTo", "EqualTo", "NotEqualTo", "Exists", "DoesNotExist", "In", "NotIn"]
    #         integer_values: [
    #           1
    #         ],
    #         locale_values: [
    #           {
    #             country: 'Country', # required
    #             subdivision: 'Subdivision'
    #           }
    #         ],
    #         required_to_preview: false,
    #         actions_guarded: 'Accept' # accepts ["Accept", "PreviewAndAccept", "DiscoverPreviewAndAccept"]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateHITTypeOutput
    #   resp.data.hit_type_id #=> String
    #
    def create_hit_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateHITTypeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateHITTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateHITType
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RequestError, Errors::ServiceFault]),
        data_parser: Parsers::CreateHITType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateHITType,
        stubs: @stubs,
        params_class: Params::CreateHITTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_hit_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             The <code>CreateHITWithHITType</code> operation creates a new Human Intelligence Task (HIT)
    #             using an existing HITTypeID generated by the <code>CreateHITType</code> operation.
    #         </p>
    #         <p>
    #             This is an alternative way to create HITs from the <code>CreateHIT</code> operation.
    #             This is the recommended best practice for Requesters who are creating large numbers of HITs.
    #         </p>
    #         <p>CreateHITWithHITType also supports several ways to provide question data:
    #             by providing a value for the <code>Question</code> parameter that fully specifies the contents of the HIT,
    #             or by providing a <code>HitLayoutId</code> and associated <code>HitLayoutParameters</code>.
    #         </p>
    #         <note>
    #             <p>
    #                 If a HIT is created with 10 or more maximum assignments, there is an additional fee.
    #                 For more information, see <a href="https://requester.mturk.com/pricing">Amazon Mechanical Turk Pricing</a>.
    #             </p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::CreateHITWithHITTypeInput}.
    #
    # @option params [String] :hit_type_id
    #   <p>The HIT type ID you want to create this HIT with.</p>
    #
    # @option params [Integer] :max_assignments
    #   <p>
    #               The number of times the HIT can be accepted and completed before the HIT becomes unavailable.
    #           </p>
    #
    # @option params [Integer] :lifetime_in_seconds
    #   <p>
    #               An amount of time, in seconds, after which the HIT is no longer available for users to accept.
    #               After the lifetime of the HIT elapses, the HIT no longer appears in HIT searches,
    #               even if not all of the assignments for the HIT have been accepted.
    #           </p>
    #
    # @option params [String] :question
    #   <p>
    #               The data the person completing the HIT uses to produce the results.
    #           </p>
    #           <p>
    #               Constraints: Must be a QuestionForm data structure, an ExternalQuestion data structure,
    #               or an HTMLQuestion data structure. The XML question data must not be larger than
    #               64 kilobytes (65,535 bytes) in size, including whitespace.
    #           </p>
    #           <p>Either a Question parameter or a HITLayoutId parameter must be provided.</p>
    #
    # @option params [String] :requester_annotation
    #   <p>
    #               An arbitrary data field.
    #               The RequesterAnnotation parameter lets your application attach arbitrary data
    #               to the HIT for tracking purposes.
    #               For example, this parameter could be an identifier internal to the Requester's application
    #               that corresponds with the HIT.
    #           </p>
    #           <p>
    #               The RequesterAnnotation parameter for a HIT is only visible to the Requester who created the HIT.
    #               It is not shown to the Worker, or any other Requester.
    #           </p>
    #           <p>
    #               The RequesterAnnotation parameter may be different for each HIT you submit.
    #               It does not affect how your HITs are grouped.
    #           </p>
    #
    # @option params [String] :unique_request_token
    #   <p>
    #               A unique identifier for this request which allows you to retry the call
    #               on error without creating duplicate HITs.
    #               This is useful in cases such as network timeouts where it is unclear whether or not
    #               the call succeeded on the server.
    #               If the HIT already exists in the system from a previous call using the same UniqueRequestToken,
    #               subsequent calls will return a AWS.MechanicalTurk.HitAlreadyExists error
    #               with a message containing the HITId.
    #           </p>
    #           <note>
    #               <p>
    #                   Note: It is your responsibility to ensure uniqueness of the token.
    #                   The unique token expires after 24 hours. Subsequent calls using the same
    #                   UniqueRequestToken made after the 24 hour limit could create duplicate HITs.
    #               </p>
    #           </note>
    #
    # @option params [ReviewPolicy] :assignment_review_policy
    #   <p>
    #               The Assignment-level Review Policy applies to the assignments under the HIT.
    #               You can specify for Mechanical Turk to take various actions based on the policy.
    #           </p>
    #
    # @option params [ReviewPolicy] :hit_review_policy
    #   <p>
    #               The HIT-level Review Policy applies to the HIT.
    #               You can specify for Mechanical Turk to take various actions based on the policy.
    #           </p>
    #
    # @option params [String] :hit_layout_id
    #   <p>
    #               The HITLayoutId allows you to use a pre-existing HIT design with placeholder values
    #               and create an additional HIT by providing those values as HITLayoutParameters.
    #           </p>
    #           <p>
    #               Constraints: Either a Question parameter or a HITLayoutId parameter must be provided.
    #           </p>
    #
    # @option params [Array<HITLayoutParameter>] :hit_layout_parameters
    #   <p>
    #               If the HITLayoutId is provided, any placeholder values must be filled in with values
    #               using the HITLayoutParameter structure. For more information, see HITLayout.
    #           </p>
    #
    # @return [Types::CreateHITWithHITTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_hit_with_hit_type(
    #     hit_type_id: 'HITTypeId', # required
    #     max_assignments: 1,
    #     lifetime_in_seconds: 1, # required
    #     question: 'Question',
    #     requester_annotation: 'RequesterAnnotation',
    #     unique_request_token: 'UniqueRequestToken',
    #     assignment_review_policy: {
    #       policy_name: 'PolicyName', # required
    #       parameters: [
    #         {
    #           key: 'Key',
    #           values: [
    #             'member'
    #           ],
    #           map_entries: [
    #             {
    #               key: 'Key',
    #             }
    #           ]
    #         }
    #       ]
    #     },
    #     hit_layout_id: 'HITLayoutId',
    #     hit_layout_parameters: [
    #       {
    #         name: 'Name', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateHITWithHITTypeOutput
    #   resp.data.hit #=> Types::HIT
    #   resp.data.hit.hit_id #=> String
    #   resp.data.hit.hit_type_id #=> String
    #   resp.data.hit.hit_group_id #=> String
    #   resp.data.hit.hit_layout_id #=> String
    #   resp.data.hit.creation_time #=> Time
    #   resp.data.hit.title #=> String
    #   resp.data.hit.description #=> String
    #   resp.data.hit.question #=> String
    #   resp.data.hit.keywords #=> String
    #   resp.data.hit.hit_status #=> String, one of ["Assignable", "Unassignable", "Reviewable", "Reviewing", "Disposed"]
    #   resp.data.hit.max_assignments #=> Integer
    #   resp.data.hit.reward #=> String
    #   resp.data.hit.auto_approval_delay_in_seconds #=> Integer
    #   resp.data.hit.expiration #=> Time
    #   resp.data.hit.assignment_duration_in_seconds #=> Integer
    #   resp.data.hit.requester_annotation #=> String
    #   resp.data.hit.qualification_requirements #=> Array<QualificationRequirement>
    #   resp.data.hit.qualification_requirements[0] #=> Types::QualificationRequirement
    #   resp.data.hit.qualification_requirements[0].qualification_type_id #=> String
    #   resp.data.hit.qualification_requirements[0].comparator #=> String, one of ["LessThan", "LessThanOrEqualTo", "GreaterThan", "GreaterThanOrEqualTo", "EqualTo", "NotEqualTo", "Exists", "DoesNotExist", "In", "NotIn"]
    #   resp.data.hit.qualification_requirements[0].integer_values #=> Array<Integer>
    #   resp.data.hit.qualification_requirements[0].integer_values[0] #=> Integer
    #   resp.data.hit.qualification_requirements[0].locale_values #=> Array<Locale>
    #   resp.data.hit.qualification_requirements[0].locale_values[0] #=> Types::Locale
    #   resp.data.hit.qualification_requirements[0].locale_values[0].country #=> String
    #   resp.data.hit.qualification_requirements[0].locale_values[0].subdivision #=> String
    #   resp.data.hit.qualification_requirements[0].required_to_preview #=> Boolean
    #   resp.data.hit.qualification_requirements[0].actions_guarded #=> String, one of ["Accept", "PreviewAndAccept", "DiscoverPreviewAndAccept"]
    #   resp.data.hit.hit_review_status #=> String, one of ["NotReviewed", "MarkedForReview", "ReviewedAppropriate", "ReviewedInappropriate"]
    #   resp.data.hit.number_of_assignments_pending #=> Integer
    #   resp.data.hit.number_of_assignments_available #=> Integer
    #   resp.data.hit.number_of_assignments_completed #=> Integer
    #
    def create_hit_with_hit_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateHITWithHITTypeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateHITWithHITTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateHITWithHITType
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RequestError, Errors::ServiceFault]),
        data_parser: Parsers::CreateHITWithHITType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateHITWithHITType,
        stubs: @stubs,
        params_class: Params::CreateHITWithHITTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_hit_with_hit_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             The
    #             <code>CreateQualificationType</code>
    #             operation creates a new Qualification type, which is represented by a
    #             <code>QualificationType</code>
    #             data structure.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::CreateQualificationTypeInput}.
    #
    # @option params [String] :name
    #   <p> The name you give to the Qualification type. The type name
    #               is used to represent the Qualification to Workers, and to find the
    #               type using a Qualification type search. It must be unique across all
    #               of your Qualification types.</p>
    #
    # @option params [String] :keywords
    #   <p>One or more words or phrases that describe the Qualification
    #               type, separated by commas. The keywords of a type make the type
    #               easier to find during a search.</p>
    #
    # @option params [String] :description
    #   <p>A long description for the Qualification type. On the Amazon
    #               Mechanical Turk website, the long description is displayed when a
    #               Worker examines a Qualification type.</p>
    #
    # @option params [String] :qualification_type_status
    #   <p>The initial status of the Qualification type.</p>
    #           <p>Constraints: Valid values are: Active | Inactive</p>
    #
    # @option params [Integer] :retry_delay_in_seconds
    #   <p>The number of seconds that a Worker must wait after
    #               requesting a Qualification of the Qualification type before the
    #               worker can retry the Qualification request.</p>
    #           <p>Constraints: None. If not specified, retries are disabled and
    #               Workers can request a Qualification of this type only once, even if
    #               the Worker has not been granted the Qualification. It is not possible
    #               to disable retries for a Qualification type after it has been created
    #               with retries enabled. If you want to disable retries, you must delete
    #               existing retry-enabled Qualification type and then create a new
    #               Qualification type with retries disabled.</p>
    #
    # @option params [String] :test
    #   <p>
    #               The questions for the Qualification test a Worker must answer
    #               correctly to obtain a Qualification of this type. If this parameter
    #               is specified,
    #               <code>TestDurationInSeconds</code>
    #               must also be specified.
    #           </p>
    #           <p>Constraints: Must not be longer than 65535 bytes. Must be a
    #               QuestionForm data structure. This parameter cannot be specified if
    #               AutoGranted is true.</p>
    #           <p>Constraints: None. If not specified, the Worker may request
    #               the Qualification without answering any questions.</p>
    #
    # @option params [String] :answer_key
    #   <p>The answers to the Qualification test specified in the Test
    #               parameter, in the form of an AnswerKey data structure.</p>
    #           <p>Constraints: Must not be longer than 65535 bytes.</p>
    #           <p>Constraints: None. If not specified, you must process
    #               Qualification requests manually.</p>
    #
    # @option params [Integer] :test_duration_in_seconds
    #   <p>The number of seconds the Worker has to complete the
    #               Qualification test, starting from the time the Worker requests the
    #               Qualification.</p>
    #
    # @option params [Boolean] :auto_granted
    #   <p>Specifies whether requests for the Qualification type are
    #               granted immediately, without prompting the Worker with a
    #               Qualification test.</p>
    #           <p>Constraints: If the Test parameter is specified, this
    #               parameter cannot be true.</p>
    #
    # @option params [Integer] :auto_granted_value
    #   <p>The Qualification value to use for automatically granted
    #               Qualifications. This parameter is used only if the AutoGranted
    #               parameter is true.</p>
    #
    # @return [Types::CreateQualificationTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_qualification_type(
    #     name: 'Name', # required
    #     keywords: 'Keywords',
    #     description: 'Description', # required
    #     qualification_type_status: 'Active', # required - accepts ["Active", "Inactive"]
    #     retry_delay_in_seconds: 1,
    #     test: 'Test',
    #     answer_key: 'AnswerKey',
    #     test_duration_in_seconds: 1,
    #     auto_granted: false,
    #     auto_granted_value: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateQualificationTypeOutput
    #   resp.data.qualification_type #=> Types::QualificationType
    #   resp.data.qualification_type.qualification_type_id #=> String
    #   resp.data.qualification_type.creation_time #=> Time
    #   resp.data.qualification_type.name #=> String
    #   resp.data.qualification_type.description #=> String
    #   resp.data.qualification_type.keywords #=> String
    #   resp.data.qualification_type.qualification_type_status #=> String, one of ["Active", "Inactive"]
    #   resp.data.qualification_type.test #=> String
    #   resp.data.qualification_type.test_duration_in_seconds #=> Integer
    #   resp.data.qualification_type.answer_key #=> String
    #   resp.data.qualification_type.retry_delay_in_seconds #=> Integer
    #   resp.data.qualification_type.is_requestable #=> Boolean
    #   resp.data.qualification_type.auto_granted #=> Boolean
    #   resp.data.qualification_type.auto_granted_value #=> Integer
    #
    def create_qualification_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateQualificationTypeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateQualificationTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateQualificationType
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RequestError, Errors::ServiceFault]),
        data_parser: Parsers::CreateQualificationType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateQualificationType,
        stubs: @stubs,
        params_class: Params::CreateQualificationTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_qualification_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>The <code>CreateWorkerBlock</code> operation allows you to prevent a Worker from working on your HITs. For example, you can block a Worker who is producing poor quality work. You can block up to 100,000 Workers.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateWorkerBlockInput}.
    #
    # @option params [String] :worker_id
    #   <p>The ID of the Worker to block.</p>
    #
    # @option params [String] :reason
    #   <p>A message explaining the reason for blocking the Worker. This parameter enables you to keep track of your Workers. The Worker does not see this message.</p>
    #
    # @return [Types::CreateWorkerBlockOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_worker_block(
    #     worker_id: 'WorkerId', # required
    #     reason: 'Reason' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateWorkerBlockOutput
    #
    def create_worker_block(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateWorkerBlockInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateWorkerBlockInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateWorkerBlock
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RequestError, Errors::ServiceFault]),
        data_parser: Parsers::CreateWorkerBlock
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateWorkerBlock,
        stubs: @stubs,
        params_class: Params::CreateWorkerBlockOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_worker_block
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             The <code>DeleteHIT</code> operation is used to delete HIT that is no longer needed.
    #             Only the Requester who created the HIT can delete it.
    #         </p>
    #         <p>
    #             You can only dispose of HITs that are in the <code>Reviewable</code> state,
    #             with all of their submitted assignments already either approved or rejected.
    #             If you call the DeleteHIT operation on a HIT that is not in the <code>Reviewable</code> state
    #             (for example, that has not expired, or still has active assignments),
    #             or on a HIT that is Reviewable but without all of its submitted assignments
    #             already approved or rejected, the service will return an error.
    #         </p>
    #         <note>
    #             <ul>
    #                <li>
    #                     <p>
    #                         HITs are automatically disposed of after 120 days.
    #                     </p>
    #                 </li>
    #                <li>
    #                     <p>
    #                         After you dispose of a HIT, you can no longer approve the HIT's rejected assignments.
    #                     </p>
    #                 </li>
    #                <li>
    #                     <p>
    #                         Disposed HITs are not returned in results for the ListHITs operation.
    #                     </p>
    #                 </li>
    #                <li>
    #                     <p>
    #                         Disposing HITs can improve the performance of operations such as ListReviewableHITs and ListHITs.
    #                     </p>
    #                 </li>
    #             </ul>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteHITInput}.
    #
    # @option params [String] :hit_id
    #   <p>The ID of the HIT to be deleted.</p>
    #
    # @return [Types::DeleteHITOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_hit(
    #     hit_id: 'HITId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteHITOutput
    #
    def delete_hit(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteHITInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteHITInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteHIT
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RequestError, Errors::ServiceFault]),
        data_parser: Parsers::DeleteHIT
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteHIT,
        stubs: @stubs,
        params_class: Params::DeleteHITOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_hit
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             The
    #             <code>DeleteQualificationType</code>
    #             deletes a Qualification type and deletes any HIT types that are
    #             associated with the Qualification type.
    #         </p>
    #         <p>This operation does not revoke Qualifications already assigned
    #             to Workers because the Qualifications might be needed for active HITs.
    #             If there are any pending requests for the Qualification type, Amazon
    #             Mechanical Turk rejects those requests. After you delete a
    #             Qualification type, you can no longer use it to create HITs or HIT
    #             types.</p>
    #         <note>
    #             <p>DeleteQualificationType must wait for all the HITs that use
    #                 the deleted Qualification type to be deleted before completing. It
    #                 may take up to 48 hours before DeleteQualificationType completes and
    #                 the unique name of the Qualification type is available for reuse with
    #                 CreateQualificationType.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteQualificationTypeInput}.
    #
    # @option params [String] :qualification_type_id
    #   <p>The ID of the QualificationType to dispose.</p>
    #
    # @return [Types::DeleteQualificationTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_qualification_type(
    #     qualification_type_id: 'QualificationTypeId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteQualificationTypeOutput
    #
    def delete_qualification_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteQualificationTypeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteQualificationTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteQualificationType
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RequestError, Errors::ServiceFault]),
        data_parser: Parsers::DeleteQualificationType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteQualificationType,
        stubs: @stubs,
        params_class: Params::DeleteQualificationTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_qualification_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>The <code>DeleteWorkerBlock</code> operation allows you to reinstate a blocked Worker to work on your HITs. This operation reverses the effects of the CreateWorkerBlock operation. You need the Worker ID to use this operation. If the Worker ID is missing or invalid, this operation fails and returns the message “WorkerId is invalid.” If the specified Worker is not blocked, this operation returns successfully.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteWorkerBlockInput}.
    #
    # @option params [String] :worker_id
    #   <p>The ID of the Worker to unblock.</p>
    #
    # @option params [String] :reason
    #   <p>A message that explains the reason for unblocking the Worker. The Worker does not see this message.</p>
    #
    # @return [Types::DeleteWorkerBlockOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_worker_block(
    #     worker_id: 'WorkerId', # required
    #     reason: 'Reason'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteWorkerBlockOutput
    #
    def delete_worker_block(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteWorkerBlockInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteWorkerBlockInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteWorkerBlock
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RequestError, Errors::ServiceFault]),
        data_parser: Parsers::DeleteWorkerBlock
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteWorkerBlock,
        stubs: @stubs,
        params_class: Params::DeleteWorkerBlockOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_worker_block
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             The 	<code>DisassociateQualificationFromWorker</code>
    #             revokes a previously granted Qualification from a user.
    #         </p>
    #         <p>
    #             You can provide a text message explaining why the Qualification was
    #             revoked. The user who had the Qualification can see this message.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateQualificationFromWorkerInput}.
    #
    # @option params [String] :worker_id
    #   <p>The ID of the Worker who possesses the Qualification to be revoked.</p>
    #
    # @option params [String] :qualification_type_id
    #   <p>The ID of the Qualification type of the Qualification to be revoked.</p>
    #
    # @option params [String] :reason
    #   <p>A text message that explains why the Qualification was revoked. The user who had the Qualification sees this message.</p>
    #
    # @return [Types::DisassociateQualificationFromWorkerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_qualification_from_worker(
    #     worker_id: 'WorkerId', # required
    #     qualification_type_id: 'QualificationTypeId', # required
    #     reason: 'Reason'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateQualificationFromWorkerOutput
    #
    def disassociate_qualification_from_worker(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateQualificationFromWorkerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateQualificationFromWorkerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateQualificationFromWorker
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RequestError, Errors::ServiceFault]),
        data_parser: Parsers::DisassociateQualificationFromWorker
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateQualificationFromWorker,
        stubs: @stubs,
        params_class: Params::DisassociateQualificationFromWorkerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_qualification_from_worker
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>The <code>GetAccountBalance</code> operation retrieves the Prepaid HITs balance in your Amazon Mechanical Turk account if you are a Prepaid Requester.
    #             Alternatively, this operation will retrieve the remaining available AWS Billing usage if you have enabled AWS Billing.
    #             Note: If you have enabled AWS Billing and still have a remaining Prepaid HITs balance, this balance can be viewed on the My Account page in the Requester console.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAccountBalanceInput}.
    #
    # @return [Types::GetAccountBalanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_account_balance()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAccountBalanceOutput
    #   resp.data.available_balance #=> String
    #   resp.data.on_hold_balance #=> String
    #
    def get_account_balance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAccountBalanceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAccountBalanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAccountBalance
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RequestError, Errors::ServiceFault]),
        data_parser: Parsers::GetAccountBalance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAccountBalance,
        stubs: @stubs,
        params_class: Params::GetAccountBalanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_account_balance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             The <code>GetAssignment</code> operation retrieves the details of the specified Assignment.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::GetAssignmentInput}.
    #
    # @option params [String] :assignment_id
    #   <p>The ID of the Assignment to be retrieved.</p>
    #
    # @return [Types::GetAssignmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_assignment(
    #     assignment_id: 'AssignmentId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAssignmentOutput
    #   resp.data.assignment #=> Types::Assignment
    #   resp.data.assignment.assignment_id #=> String
    #   resp.data.assignment.worker_id #=> String
    #   resp.data.assignment.hit_id #=> String
    #   resp.data.assignment.assignment_status #=> String, one of ["Submitted", "Approved", "Rejected"]
    #   resp.data.assignment.auto_approval_time #=> Time
    #   resp.data.assignment.accept_time #=> Time
    #   resp.data.assignment.submit_time #=> Time
    #   resp.data.assignment.approval_time #=> Time
    #   resp.data.assignment.rejection_time #=> Time
    #   resp.data.assignment.deadline #=> Time
    #   resp.data.assignment.answer #=> String
    #   resp.data.assignment.requester_feedback #=> String
    #   resp.data.hit #=> Types::HIT
    #   resp.data.hit.hit_id #=> String
    #   resp.data.hit.hit_type_id #=> String
    #   resp.data.hit.hit_group_id #=> String
    #   resp.data.hit.hit_layout_id #=> String
    #   resp.data.hit.creation_time #=> Time
    #   resp.data.hit.title #=> String
    #   resp.data.hit.description #=> String
    #   resp.data.hit.question #=> String
    #   resp.data.hit.keywords #=> String
    #   resp.data.hit.hit_status #=> String, one of ["Assignable", "Unassignable", "Reviewable", "Reviewing", "Disposed"]
    #   resp.data.hit.max_assignments #=> Integer
    #   resp.data.hit.reward #=> String
    #   resp.data.hit.auto_approval_delay_in_seconds #=> Integer
    #   resp.data.hit.expiration #=> Time
    #   resp.data.hit.assignment_duration_in_seconds #=> Integer
    #   resp.data.hit.requester_annotation #=> String
    #   resp.data.hit.qualification_requirements #=> Array<QualificationRequirement>
    #   resp.data.hit.qualification_requirements[0] #=> Types::QualificationRequirement
    #   resp.data.hit.qualification_requirements[0].qualification_type_id #=> String
    #   resp.data.hit.qualification_requirements[0].comparator #=> String, one of ["LessThan", "LessThanOrEqualTo", "GreaterThan", "GreaterThanOrEqualTo", "EqualTo", "NotEqualTo", "Exists", "DoesNotExist", "In", "NotIn"]
    #   resp.data.hit.qualification_requirements[0].integer_values #=> Array<Integer>
    #   resp.data.hit.qualification_requirements[0].integer_values[0] #=> Integer
    #   resp.data.hit.qualification_requirements[0].locale_values #=> Array<Locale>
    #   resp.data.hit.qualification_requirements[0].locale_values[0] #=> Types::Locale
    #   resp.data.hit.qualification_requirements[0].locale_values[0].country #=> String
    #   resp.data.hit.qualification_requirements[0].locale_values[0].subdivision #=> String
    #   resp.data.hit.qualification_requirements[0].required_to_preview #=> Boolean
    #   resp.data.hit.qualification_requirements[0].actions_guarded #=> String, one of ["Accept", "PreviewAndAccept", "DiscoverPreviewAndAccept"]
    #   resp.data.hit.hit_review_status #=> String, one of ["NotReviewed", "MarkedForReview", "ReviewedAppropriate", "ReviewedInappropriate"]
    #   resp.data.hit.number_of_assignments_pending #=> Integer
    #   resp.data.hit.number_of_assignments_available #=> Integer
    #   resp.data.hit.number_of_assignments_completed #=> Integer
    #
    def get_assignment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAssignmentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAssignmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAssignment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RequestError, Errors::ServiceFault]),
        data_parser: Parsers::GetAssignment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAssignment,
        stubs: @stubs,
        params_class: Params::GetAssignmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_assignment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             The
    #             <code>GetFileUploadURL</code>
    #             operation generates and returns a temporary URL. You use the
    #             temporary URL to retrieve a file uploaded by a Worker as an answer to
    #             a FileUploadAnswer question for a HIT. The temporary URL is generated
    #             the instant the GetFileUploadURL operation is called, and is valid
    #             for 60 seconds. You can get a temporary file upload URL any time
    #             until the HIT is disposed. After the HIT is disposed, any uploaded
    #             files are deleted, and cannot be retrieved.
    #
    #             Pending Deprecation on December 12, 2017. The Answer Specification
    #             structure will no longer  support the <code>FileUploadAnswer</code>
    #             element to be used for the QuestionForm data structure.
    #             Instead, we recommend that Requesters who want to create HITs asking
    #             Workers to upload files to use Amazon S3.
    #
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::GetFileUploadURLInput}.
    #
    # @option params [String] :assignment_id
    #   <p>The ID of the assignment that contains the question with a
    #               FileUploadAnswer.</p>
    #
    # @option params [String] :question_identifier
    #   <p>The identifier of the question with a FileUploadAnswer, as
    #               specified in the QuestionForm of the HIT.</p>
    #
    # @return [Types::GetFileUploadURLOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_file_upload_url(
    #     assignment_id: 'AssignmentId', # required
    #     question_identifier: 'QuestionIdentifier' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetFileUploadURLOutput
    #   resp.data.file_upload_url #=> String
    #
    def get_file_upload_url(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetFileUploadURLInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetFileUploadURLInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetFileUploadURL
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RequestError, Errors::ServiceFault]),
        data_parser: Parsers::GetFileUploadURL
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetFileUploadURL,
        stubs: @stubs,
        params_class: Params::GetFileUploadURLOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_file_upload_url
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             The <code>GetHIT</code> operation retrieves the details of the specified HIT.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::GetHITInput}.
    #
    # @option params [String] :hit_id
    #   <p>The ID of the HIT to be retrieved.</p>
    #
    # @return [Types::GetHITOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_hit(
    #     hit_id: 'HITId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetHITOutput
    #   resp.data.hit #=> Types::HIT
    #   resp.data.hit.hit_id #=> String
    #   resp.data.hit.hit_type_id #=> String
    #   resp.data.hit.hit_group_id #=> String
    #   resp.data.hit.hit_layout_id #=> String
    #   resp.data.hit.creation_time #=> Time
    #   resp.data.hit.title #=> String
    #   resp.data.hit.description #=> String
    #   resp.data.hit.question #=> String
    #   resp.data.hit.keywords #=> String
    #   resp.data.hit.hit_status #=> String, one of ["Assignable", "Unassignable", "Reviewable", "Reviewing", "Disposed"]
    #   resp.data.hit.max_assignments #=> Integer
    #   resp.data.hit.reward #=> String
    #   resp.data.hit.auto_approval_delay_in_seconds #=> Integer
    #   resp.data.hit.expiration #=> Time
    #   resp.data.hit.assignment_duration_in_seconds #=> Integer
    #   resp.data.hit.requester_annotation #=> String
    #   resp.data.hit.qualification_requirements #=> Array<QualificationRequirement>
    #   resp.data.hit.qualification_requirements[0] #=> Types::QualificationRequirement
    #   resp.data.hit.qualification_requirements[0].qualification_type_id #=> String
    #   resp.data.hit.qualification_requirements[0].comparator #=> String, one of ["LessThan", "LessThanOrEqualTo", "GreaterThan", "GreaterThanOrEqualTo", "EqualTo", "NotEqualTo", "Exists", "DoesNotExist", "In", "NotIn"]
    #   resp.data.hit.qualification_requirements[0].integer_values #=> Array<Integer>
    #   resp.data.hit.qualification_requirements[0].integer_values[0] #=> Integer
    #   resp.data.hit.qualification_requirements[0].locale_values #=> Array<Locale>
    #   resp.data.hit.qualification_requirements[0].locale_values[0] #=> Types::Locale
    #   resp.data.hit.qualification_requirements[0].locale_values[0].country #=> String
    #   resp.data.hit.qualification_requirements[0].locale_values[0].subdivision #=> String
    #   resp.data.hit.qualification_requirements[0].required_to_preview #=> Boolean
    #   resp.data.hit.qualification_requirements[0].actions_guarded #=> String, one of ["Accept", "PreviewAndAccept", "DiscoverPreviewAndAccept"]
    #   resp.data.hit.hit_review_status #=> String, one of ["NotReviewed", "MarkedForReview", "ReviewedAppropriate", "ReviewedInappropriate"]
    #   resp.data.hit.number_of_assignments_pending #=> Integer
    #   resp.data.hit.number_of_assignments_available #=> Integer
    #   resp.data.hit.number_of_assignments_completed #=> Integer
    #
    def get_hit(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetHITInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetHITInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetHIT
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RequestError, Errors::ServiceFault]),
        data_parser: Parsers::GetHIT
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetHIT,
        stubs: @stubs,
        params_class: Params::GetHITOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_hit
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             The
    #             <code>GetQualificationScore</code>
    #             operation returns the value of a Worker's Qualification for a given
    #             Qualification type.
    #         </p>
    #         <p>
    #             To get a Worker's Qualification, you must know the Worker's ID. The
    #             Worker's ID is included in the assignment data returned by the
    #             <code>ListAssignmentsForHIT</code>
    #             operation.
    #         </p>
    #         <p>Only the owner of a Qualification type can query the value of
    #             a Worker's Qualification of that type.</p>
    #
    # @param [Hash] params
    #   See {Types::GetQualificationScoreInput}.
    #
    # @option params [String] :qualification_type_id
    #   <p>The ID of the QualificationType.</p>
    #
    # @option params [String] :worker_id
    #   <p>The ID of the Worker whose Qualification is being updated.</p>
    #
    # @return [Types::GetQualificationScoreOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_qualification_score(
    #     qualification_type_id: 'QualificationTypeId', # required
    #     worker_id: 'WorkerId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetQualificationScoreOutput
    #   resp.data.qualification #=> Types::Qualification
    #   resp.data.qualification.qualification_type_id #=> String
    #   resp.data.qualification.worker_id #=> String
    #   resp.data.qualification.grant_time #=> Time
    #   resp.data.qualification.integer_value #=> Integer
    #   resp.data.qualification.locale_value #=> Types::Locale
    #   resp.data.qualification.locale_value.country #=> String
    #   resp.data.qualification.locale_value.subdivision #=> String
    #   resp.data.qualification.status #=> String, one of ["Granted", "Revoked"]
    #
    def get_qualification_score(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetQualificationScoreInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetQualificationScoreInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetQualificationScore
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RequestError, Errors::ServiceFault]),
        data_parser: Parsers::GetQualificationScore
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetQualificationScore,
        stubs: @stubs,
        params_class: Params::GetQualificationScoreOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_qualification_score
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             The <code>GetQualificationType</code>operation retrieves information about a Qualification type using its ID.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::GetQualificationTypeInput}.
    #
    # @option params [String] :qualification_type_id
    #   <p>The ID of the QualificationType.</p>
    #
    # @return [Types::GetQualificationTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_qualification_type(
    #     qualification_type_id: 'QualificationTypeId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetQualificationTypeOutput
    #   resp.data.qualification_type #=> Types::QualificationType
    #   resp.data.qualification_type.qualification_type_id #=> String
    #   resp.data.qualification_type.creation_time #=> Time
    #   resp.data.qualification_type.name #=> String
    #   resp.data.qualification_type.description #=> String
    #   resp.data.qualification_type.keywords #=> String
    #   resp.data.qualification_type.qualification_type_status #=> String, one of ["Active", "Inactive"]
    #   resp.data.qualification_type.test #=> String
    #   resp.data.qualification_type.test_duration_in_seconds #=> Integer
    #   resp.data.qualification_type.answer_key #=> String
    #   resp.data.qualification_type.retry_delay_in_seconds #=> Integer
    #   resp.data.qualification_type.is_requestable #=> Boolean
    #   resp.data.qualification_type.auto_granted #=> Boolean
    #   resp.data.qualification_type.auto_granted_value #=> Integer
    #
    def get_qualification_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetQualificationTypeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetQualificationTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetQualificationType
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RequestError, Errors::ServiceFault]),
        data_parser: Parsers::GetQualificationType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetQualificationType,
        stubs: @stubs,
        params_class: Params::GetQualificationTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_qualification_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             The
    #             <code>ListAssignmentsForHIT</code>
    #             operation retrieves completed assignments for a HIT. You can use this
    #             operation to retrieve the results for a HIT.
    #         </p>
    #         <p> You can get assignments for a HIT at any time, even if the
    #             HIT is not yet Reviewable. If a HIT requested multiple assignments,
    #             and has received some results but has not yet become Reviewable, you
    #             can still retrieve the partial results with this operation.
    #         </p>
    #         <p> Use the AssignmentStatus parameter to control which set of
    #             assignments for a HIT are returned. The ListAssignmentsForHIT
    #             operation
    #             can return submitted assignments awaiting approval, or it can return
    #             assignments that have already been approved or rejected. You can set
    #             AssignmentStatus=Approved,Rejected to get assignments that have
    #             already been approved and rejected together in one result set.
    #         </p>
    #         <p> Only the Requester who created the HIT can retrieve the
    #             assignments for that HIT.
    #         </p>
    #         <p> Results are sorted and divided into numbered pages and the
    #             operation returns a single page of results. You can use the
    #             parameters
    #             of the operation to control sorting and pagination.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::ListAssignmentsForHITInput}.
    #
    # @option params [String] :hit_id
    #   <p>The ID of the HIT.</p>
    #
    # @option params [String] :next_token
    #   <p>Pagination token</p>
    #
    # @option params [Array<String>] :assignment_statuses
    #   <p>The status of the assignments to return: Submitted | Approved
    #               | Rejected</p>
    #
    # @return [Types::ListAssignmentsForHITOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_assignments_for_hit(
    #     hit_id: 'HITId', # required
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     assignment_statuses: [
    #       'Submitted' # accepts ["Submitted", "Approved", "Rejected"]
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAssignmentsForHITOutput
    #   resp.data.next_token #=> String
    #   resp.data.num_results #=> Integer
    #   resp.data.assignments #=> Array<Assignment>
    #   resp.data.assignments[0] #=> Types::Assignment
    #   resp.data.assignments[0].assignment_id #=> String
    #   resp.data.assignments[0].worker_id #=> String
    #   resp.data.assignments[0].hit_id #=> String
    #   resp.data.assignments[0].assignment_status #=> String, one of ["Submitted", "Approved", "Rejected"]
    #   resp.data.assignments[0].auto_approval_time #=> Time
    #   resp.data.assignments[0].accept_time #=> Time
    #   resp.data.assignments[0].submit_time #=> Time
    #   resp.data.assignments[0].approval_time #=> Time
    #   resp.data.assignments[0].rejection_time #=> Time
    #   resp.data.assignments[0].deadline #=> Time
    #   resp.data.assignments[0].answer #=> String
    #   resp.data.assignments[0].requester_feedback #=> String
    #
    def list_assignments_for_hit(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAssignmentsForHITInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAssignmentsForHITInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAssignmentsForHIT
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RequestError, Errors::ServiceFault]),
        data_parser: Parsers::ListAssignmentsForHIT
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAssignmentsForHIT,
        stubs: @stubs,
        params_class: Params::ListAssignmentsForHITOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_assignments_for_hit
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             The
    #             <code>ListBonusPayments</code>
    #             operation retrieves the amounts of bonuses you have paid to Workers
    #             for a given HIT or assignment.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::ListBonusPaymentsInput}.
    #
    # @option params [String] :hit_id
    #   <p>The ID of the HIT associated with the bonus payments to
    #               retrieve. If not specified, all bonus payments for all assignments
    #               for the given HIT are returned. Either the HITId parameter or the
    #               AssignmentId parameter must be specified</p>
    #
    # @option params [String] :assignment_id
    #   <p>The ID of the assignment associated with the bonus payments
    #               to retrieve. If specified, only bonus payments for the given
    #               assignment are returned. Either the HITId parameter or the
    #               AssignmentId parameter must be specified</p>
    #
    # @option params [String] :next_token
    #   <p>Pagination token</p>
    #
    # @return [Types::ListBonusPaymentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_bonus_payments(
    #     hit_id: 'HITId',
    #     assignment_id: 'AssignmentId',
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListBonusPaymentsOutput
    #   resp.data.num_results #=> Integer
    #   resp.data.next_token #=> String
    #   resp.data.bonus_payments #=> Array<BonusPayment>
    #   resp.data.bonus_payments[0] #=> Types::BonusPayment
    #   resp.data.bonus_payments[0].worker_id #=> String
    #   resp.data.bonus_payments[0].bonus_amount #=> String
    #   resp.data.bonus_payments[0].assignment_id #=> String
    #   resp.data.bonus_payments[0].reason #=> String
    #   resp.data.bonus_payments[0].grant_time #=> Time
    #
    def list_bonus_payments(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListBonusPaymentsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListBonusPaymentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListBonusPayments
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RequestError, Errors::ServiceFault]),
        data_parser: Parsers::ListBonusPayments
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListBonusPayments,
        stubs: @stubs,
        params_class: Params::ListBonusPaymentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_bonus_payments
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             The
    #             <code>ListHITs</code>
    #             operation returns all of a Requester's HITs. The operation returns
    #             HITs of any status, except for HITs that have been deleted of with
    #             the DeleteHIT operation or that have been auto-deleted.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::ListHITsInput}.
    #
    # @option params [String] :next_token
    #   <p>Pagination token</p>
    #
    # @return [Types::ListHITsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_hi_ts(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListHITsOutput
    #   resp.data.next_token #=> String
    #   resp.data.num_results #=> Integer
    #   resp.data.hi_ts #=> Array<HIT>
    #   resp.data.hi_ts[0] #=> Types::HIT
    #   resp.data.hi_ts[0].hit_id #=> String
    #   resp.data.hi_ts[0].hit_type_id #=> String
    #   resp.data.hi_ts[0].hit_group_id #=> String
    #   resp.data.hi_ts[0].hit_layout_id #=> String
    #   resp.data.hi_ts[0].creation_time #=> Time
    #   resp.data.hi_ts[0].title #=> String
    #   resp.data.hi_ts[0].description #=> String
    #   resp.data.hi_ts[0].question #=> String
    #   resp.data.hi_ts[0].keywords #=> String
    #   resp.data.hi_ts[0].hit_status #=> String, one of ["Assignable", "Unassignable", "Reviewable", "Reviewing", "Disposed"]
    #   resp.data.hi_ts[0].max_assignments #=> Integer
    #   resp.data.hi_ts[0].reward #=> String
    #   resp.data.hi_ts[0].auto_approval_delay_in_seconds #=> Integer
    #   resp.data.hi_ts[0].expiration #=> Time
    #   resp.data.hi_ts[0].assignment_duration_in_seconds #=> Integer
    #   resp.data.hi_ts[0].requester_annotation #=> String
    #   resp.data.hi_ts[0].qualification_requirements #=> Array<QualificationRequirement>
    #   resp.data.hi_ts[0].qualification_requirements[0] #=> Types::QualificationRequirement
    #   resp.data.hi_ts[0].qualification_requirements[0].qualification_type_id #=> String
    #   resp.data.hi_ts[0].qualification_requirements[0].comparator #=> String, one of ["LessThan", "LessThanOrEqualTo", "GreaterThan", "GreaterThanOrEqualTo", "EqualTo", "NotEqualTo", "Exists", "DoesNotExist", "In", "NotIn"]
    #   resp.data.hi_ts[0].qualification_requirements[0].integer_values #=> Array<Integer>
    #   resp.data.hi_ts[0].qualification_requirements[0].integer_values[0] #=> Integer
    #   resp.data.hi_ts[0].qualification_requirements[0].locale_values #=> Array<Locale>
    #   resp.data.hi_ts[0].qualification_requirements[0].locale_values[0] #=> Types::Locale
    #   resp.data.hi_ts[0].qualification_requirements[0].locale_values[0].country #=> String
    #   resp.data.hi_ts[0].qualification_requirements[0].locale_values[0].subdivision #=> String
    #   resp.data.hi_ts[0].qualification_requirements[0].required_to_preview #=> Boolean
    #   resp.data.hi_ts[0].qualification_requirements[0].actions_guarded #=> String, one of ["Accept", "PreviewAndAccept", "DiscoverPreviewAndAccept"]
    #   resp.data.hi_ts[0].hit_review_status #=> String, one of ["NotReviewed", "MarkedForReview", "ReviewedAppropriate", "ReviewedInappropriate"]
    #   resp.data.hi_ts[0].number_of_assignments_pending #=> Integer
    #   resp.data.hi_ts[0].number_of_assignments_available #=> Integer
    #   resp.data.hi_ts[0].number_of_assignments_completed #=> Integer
    #
    def list_hi_ts(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListHITsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListHITsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListHITs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RequestError, Errors::ServiceFault]),
        data_parser: Parsers::ListHITs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListHITs,
        stubs: @stubs,
        params_class: Params::ListHITsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_hi_ts
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             The <code>ListHITsForQualificationType</code> operation returns the HITs that use
    #             the given Qualification type for a Qualification requirement.
    #             The operation returns HITs of any status, except for HITs that have been deleted
    #             with the <code>DeleteHIT</code> operation or that have been auto-deleted.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::ListHITsForQualificationTypeInput}.
    #
    # @option params [String] :qualification_type_id
    #   <p>
    #               The ID of the Qualification type to use when querying HITs.
    #           </p>
    #
    # @option params [String] :next_token
    #   <p>Pagination Token</p>
    #
    # @option params [Integer] :max_results
    #   <p>
    #               Limit the number of results returned.
    #           </p>
    #
    # @return [Types::ListHITsForQualificationTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_hi_ts_for_qualification_type(
    #     qualification_type_id: 'QualificationTypeId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListHITsForQualificationTypeOutput
    #   resp.data.next_token #=> String
    #   resp.data.num_results #=> Integer
    #   resp.data.hi_ts #=> Array<HIT>
    #   resp.data.hi_ts[0] #=> Types::HIT
    #   resp.data.hi_ts[0].hit_id #=> String
    #   resp.data.hi_ts[0].hit_type_id #=> String
    #   resp.data.hi_ts[0].hit_group_id #=> String
    #   resp.data.hi_ts[0].hit_layout_id #=> String
    #   resp.data.hi_ts[0].creation_time #=> Time
    #   resp.data.hi_ts[0].title #=> String
    #   resp.data.hi_ts[0].description #=> String
    #   resp.data.hi_ts[0].question #=> String
    #   resp.data.hi_ts[0].keywords #=> String
    #   resp.data.hi_ts[0].hit_status #=> String, one of ["Assignable", "Unassignable", "Reviewable", "Reviewing", "Disposed"]
    #   resp.data.hi_ts[0].max_assignments #=> Integer
    #   resp.data.hi_ts[0].reward #=> String
    #   resp.data.hi_ts[0].auto_approval_delay_in_seconds #=> Integer
    #   resp.data.hi_ts[0].expiration #=> Time
    #   resp.data.hi_ts[0].assignment_duration_in_seconds #=> Integer
    #   resp.data.hi_ts[0].requester_annotation #=> String
    #   resp.data.hi_ts[0].qualification_requirements #=> Array<QualificationRequirement>
    #   resp.data.hi_ts[0].qualification_requirements[0] #=> Types::QualificationRequirement
    #   resp.data.hi_ts[0].qualification_requirements[0].qualification_type_id #=> String
    #   resp.data.hi_ts[0].qualification_requirements[0].comparator #=> String, one of ["LessThan", "LessThanOrEqualTo", "GreaterThan", "GreaterThanOrEqualTo", "EqualTo", "NotEqualTo", "Exists", "DoesNotExist", "In", "NotIn"]
    #   resp.data.hi_ts[0].qualification_requirements[0].integer_values #=> Array<Integer>
    #   resp.data.hi_ts[0].qualification_requirements[0].integer_values[0] #=> Integer
    #   resp.data.hi_ts[0].qualification_requirements[0].locale_values #=> Array<Locale>
    #   resp.data.hi_ts[0].qualification_requirements[0].locale_values[0] #=> Types::Locale
    #   resp.data.hi_ts[0].qualification_requirements[0].locale_values[0].country #=> String
    #   resp.data.hi_ts[0].qualification_requirements[0].locale_values[0].subdivision #=> String
    #   resp.data.hi_ts[0].qualification_requirements[0].required_to_preview #=> Boolean
    #   resp.data.hi_ts[0].qualification_requirements[0].actions_guarded #=> String, one of ["Accept", "PreviewAndAccept", "DiscoverPreviewAndAccept"]
    #   resp.data.hi_ts[0].hit_review_status #=> String, one of ["NotReviewed", "MarkedForReview", "ReviewedAppropriate", "ReviewedInappropriate"]
    #   resp.data.hi_ts[0].number_of_assignments_pending #=> Integer
    #   resp.data.hi_ts[0].number_of_assignments_available #=> Integer
    #   resp.data.hi_ts[0].number_of_assignments_completed #=> Integer
    #
    def list_hi_ts_for_qualification_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListHITsForQualificationTypeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListHITsForQualificationTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListHITsForQualificationType
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RequestError, Errors::ServiceFault]),
        data_parser: Parsers::ListHITsForQualificationType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListHITsForQualificationType,
        stubs: @stubs,
        params_class: Params::ListHITsForQualificationTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_hi_ts_for_qualification_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             The
    #             <code>ListQualificationRequests</code>
    #             operation retrieves requests for Qualifications of a particular
    #             Qualification type. The owner of the Qualification type calls this
    #             operation to poll for pending requests, and accepts them using the
    #             AcceptQualification operation.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::ListQualificationRequestsInput}.
    #
    # @option params [String] :qualification_type_id
    #   <p>The ID of the QualificationType.</p>
    #
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there is more data to retrieve), Amazon Mechanical Turk
    #               returns a pagination token in the response. You can use this pagination token
    #               to retrieve the next set of results.
    #           </p>
    #
    # @option params [Integer] :max_results
    #   <p> The maximum number of results to return in a single call.
    #           </p>
    #
    # @return [Types::ListQualificationRequestsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_qualification_requests(
    #     qualification_type_id: 'QualificationTypeId',
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListQualificationRequestsOutput
    #   resp.data.num_results #=> Integer
    #   resp.data.next_token #=> String
    #   resp.data.qualification_requests #=> Array<QualificationRequest>
    #   resp.data.qualification_requests[0] #=> Types::QualificationRequest
    #   resp.data.qualification_requests[0].qualification_request_id #=> String
    #   resp.data.qualification_requests[0].qualification_type_id #=> String
    #   resp.data.qualification_requests[0].worker_id #=> String
    #   resp.data.qualification_requests[0].test #=> String
    #   resp.data.qualification_requests[0].answer #=> String
    #   resp.data.qualification_requests[0].submit_time #=> Time
    #
    def list_qualification_requests(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListQualificationRequestsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListQualificationRequestsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListQualificationRequests
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RequestError, Errors::ServiceFault]),
        data_parser: Parsers::ListQualificationRequests
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListQualificationRequests,
        stubs: @stubs,
        params_class: Params::ListQualificationRequestsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_qualification_requests
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             The
    #             <code>ListQualificationTypes</code>
    #             operation returns a list of Qualification types, filtered by
    #             an optional search term.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::ListQualificationTypesInput}.
    #
    # @option params [String] :query
    #   <p> A text query against all of the searchable attributes of
    #               Qualification types.
    #           </p>
    #
    # @option params [Boolean] :must_be_requestable
    #   <p>Specifies that only Qualification types that a user can
    #               request through the Amazon Mechanical Turk web site, such as by
    #               taking a Qualification test, are returned as results of the search.
    #               Some Qualification types, such as those assigned automatically by the
    #               system, cannot be requested directly by users. If false, all
    #               Qualification types, including those managed by the system, are
    #               considered. Valid values are True | False.
    #           </p>
    #
    # @option params [Boolean] :must_be_owned_by_caller
    #   <p> Specifies that only Qualification types that the Requester
    #               created are returned. If false, the operation returns all
    #               Qualification types.
    #           </p>
    #
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there is more data to retrieve), Amazon Mechanical Turk
    #               returns a pagination token in the response. You can use this pagination token
    #               to retrieve the next set of results.
    #           </p>
    #
    # @option params [Integer] :max_results
    #   <p> The maximum number of results to return in a single call.
    #           </p>
    #
    # @return [Types::ListQualificationTypesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_qualification_types(
    #     query: 'Query',
    #     must_be_requestable: false, # required
    #     must_be_owned_by_caller: false,
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListQualificationTypesOutput
    #   resp.data.num_results #=> Integer
    #   resp.data.next_token #=> String
    #   resp.data.qualification_types #=> Array<QualificationType>
    #   resp.data.qualification_types[0] #=> Types::QualificationType
    #   resp.data.qualification_types[0].qualification_type_id #=> String
    #   resp.data.qualification_types[0].creation_time #=> Time
    #   resp.data.qualification_types[0].name #=> String
    #   resp.data.qualification_types[0].description #=> String
    #   resp.data.qualification_types[0].keywords #=> String
    #   resp.data.qualification_types[0].qualification_type_status #=> String, one of ["Active", "Inactive"]
    #   resp.data.qualification_types[0].test #=> String
    #   resp.data.qualification_types[0].test_duration_in_seconds #=> Integer
    #   resp.data.qualification_types[0].answer_key #=> String
    #   resp.data.qualification_types[0].retry_delay_in_seconds #=> Integer
    #   resp.data.qualification_types[0].is_requestable #=> Boolean
    #   resp.data.qualification_types[0].auto_granted #=> Boolean
    #   resp.data.qualification_types[0].auto_granted_value #=> Integer
    #
    def list_qualification_types(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListQualificationTypesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListQualificationTypesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListQualificationTypes
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RequestError, Errors::ServiceFault]),
        data_parser: Parsers::ListQualificationTypes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListQualificationTypes,
        stubs: @stubs,
        params_class: Params::ListQualificationTypesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_qualification_types
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             The <code>ListReviewPolicyResultsForHIT</code> operation retrieves the computed results
    #             and the actions taken in the course of executing your Review Policies for a given HIT.
    #             For information about how to specify Review Policies when you call CreateHIT,
    #             see Review Policies. The ListReviewPolicyResultsForHIT operation can return results for both
    #             Assignment-level and HIT-level review results.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::ListReviewPolicyResultsForHITInput}.
    #
    # @option params [String] :hit_id
    #   <p>The unique identifier of the HIT to retrieve review results for.</p>
    #
    # @option params [Array<String>] :policy_levels
    #   <p>
    #               The Policy Level(s) to retrieve review results for - HIT or Assignment.
    #               If omitted, the default behavior is to retrieve all data for both policy levels.
    #               For a list of all the described policies, see Review Policies.
    #           </p>
    #
    # @option params [Boolean] :retrieve_actions
    #   <p>
    #               Specify if the operation should retrieve a list of the actions taken executing
    #               the Review Policies and their outcomes.
    #           </p>
    #
    # @option params [Boolean] :retrieve_results
    #   <p>
    #               Specify if the operation should retrieve a list of the results computed by the Review Policies.
    #           </p>
    #
    # @option params [String] :next_token
    #   <p>Pagination token</p>
    #
    # @option params [Integer] :max_results
    #   <p>Limit the number of results returned.</p>
    #
    # @return [Types::ListReviewPolicyResultsForHITOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_review_policy_results_for_hit(
    #     hit_id: 'HITId', # required
    #     policy_levels: [
    #       'Assignment' # accepts ["Assignment", "HIT"]
    #     ],
    #     retrieve_actions: false,
    #     retrieve_results: false,
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListReviewPolicyResultsForHITOutput
    #   resp.data.hit_id #=> String
    #   resp.data.assignment_review_policy #=> Types::ReviewPolicy
    #   resp.data.assignment_review_policy.policy_name #=> String
    #   resp.data.assignment_review_policy.parameters #=> Array<PolicyParameter>
    #   resp.data.assignment_review_policy.parameters[0] #=> Types::PolicyParameter
    #   resp.data.assignment_review_policy.parameters[0].key #=> String
    #   resp.data.assignment_review_policy.parameters[0].values #=> Array<String>
    #   resp.data.assignment_review_policy.parameters[0].values[0] #=> String
    #   resp.data.assignment_review_policy.parameters[0].map_entries #=> Array<ParameterMapEntry>
    #   resp.data.assignment_review_policy.parameters[0].map_entries[0] #=> Types::ParameterMapEntry
    #   resp.data.assignment_review_policy.parameters[0].map_entries[0].key #=> String
    #   resp.data.assignment_review_policy.parameters[0].map_entries[0].values #=> Array<String>
    #   resp.data.hit_review_policy #=> Types::ReviewPolicy
    #   resp.data.assignment_review_report #=> Types::ReviewReport
    #   resp.data.assignment_review_report.review_results #=> Array<ReviewResultDetail>
    #   resp.data.assignment_review_report.review_results[0] #=> Types::ReviewResultDetail
    #   resp.data.assignment_review_report.review_results[0].action_id #=> String
    #   resp.data.assignment_review_report.review_results[0].subject_id #=> String
    #   resp.data.assignment_review_report.review_results[0].subject_type #=> String
    #   resp.data.assignment_review_report.review_results[0].question_id #=> String
    #   resp.data.assignment_review_report.review_results[0].key #=> String
    #   resp.data.assignment_review_report.review_results[0].value #=> String
    #   resp.data.assignment_review_report.review_actions #=> Array<ReviewActionDetail>
    #   resp.data.assignment_review_report.review_actions[0] #=> Types::ReviewActionDetail
    #   resp.data.assignment_review_report.review_actions[0].action_id #=> String
    #   resp.data.assignment_review_report.review_actions[0].action_name #=> String
    #   resp.data.assignment_review_report.review_actions[0].target_id #=> String
    #   resp.data.assignment_review_report.review_actions[0].target_type #=> String
    #   resp.data.assignment_review_report.review_actions[0].status #=> String, one of ["Intended", "Succeeded", "Failed", "Cancelled"]
    #   resp.data.assignment_review_report.review_actions[0].complete_time #=> Time
    #   resp.data.assignment_review_report.review_actions[0].result #=> String
    #   resp.data.assignment_review_report.review_actions[0].error_code #=> String
    #   resp.data.hit_review_report #=> Types::ReviewReport
    #   resp.data.next_token #=> String
    #
    def list_review_policy_results_for_hit(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListReviewPolicyResultsForHITInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListReviewPolicyResultsForHITInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListReviewPolicyResultsForHIT
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RequestError, Errors::ServiceFault]),
        data_parser: Parsers::ListReviewPolicyResultsForHIT
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListReviewPolicyResultsForHIT,
        stubs: @stubs,
        params_class: Params::ListReviewPolicyResultsForHITOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_review_policy_results_for_hit
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             The <code>ListReviewableHITs</code> operation retrieves the HITs with Status equal to
    #             Reviewable or Status equal to Reviewing that belong to the Requester calling the operation.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::ListReviewableHITsInput}.
    #
    # @option params [String] :hit_type_id
    #   <p>
    #               The ID of the HIT type of the HITs to consider for the query.
    #               If not specified, all HITs for the Reviewer are considered
    #           </p>
    #
    # @option params [String] :status
    #   <p>
    #               Can be either <code>Reviewable</code> or <code>Reviewing</code>.
    #               Reviewable is the default value.
    #           </p>
    #
    # @option params [String] :next_token
    #   <p>Pagination Token</p>
    #
    # @option params [Integer] :max_results
    #   <p>
    #               Limit the number of results returned.
    #           </p>
    #
    # @return [Types::ListReviewableHITsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_reviewable_hi_ts(
    #     hit_type_id: 'HITTypeId',
    #     status: 'Reviewable', # accepts ["Reviewable", "Reviewing"]
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListReviewableHITsOutput
    #   resp.data.next_token #=> String
    #   resp.data.num_results #=> Integer
    #   resp.data.hi_ts #=> Array<HIT>
    #   resp.data.hi_ts[0] #=> Types::HIT
    #   resp.data.hi_ts[0].hit_id #=> String
    #   resp.data.hi_ts[0].hit_type_id #=> String
    #   resp.data.hi_ts[0].hit_group_id #=> String
    #   resp.data.hi_ts[0].hit_layout_id #=> String
    #   resp.data.hi_ts[0].creation_time #=> Time
    #   resp.data.hi_ts[0].title #=> String
    #   resp.data.hi_ts[0].description #=> String
    #   resp.data.hi_ts[0].question #=> String
    #   resp.data.hi_ts[0].keywords #=> String
    #   resp.data.hi_ts[0].hit_status #=> String, one of ["Assignable", "Unassignable", "Reviewable", "Reviewing", "Disposed"]
    #   resp.data.hi_ts[0].max_assignments #=> Integer
    #   resp.data.hi_ts[0].reward #=> String
    #   resp.data.hi_ts[0].auto_approval_delay_in_seconds #=> Integer
    #   resp.data.hi_ts[0].expiration #=> Time
    #   resp.data.hi_ts[0].assignment_duration_in_seconds #=> Integer
    #   resp.data.hi_ts[0].requester_annotation #=> String
    #   resp.data.hi_ts[0].qualification_requirements #=> Array<QualificationRequirement>
    #   resp.data.hi_ts[0].qualification_requirements[0] #=> Types::QualificationRequirement
    #   resp.data.hi_ts[0].qualification_requirements[0].qualification_type_id #=> String
    #   resp.data.hi_ts[0].qualification_requirements[0].comparator #=> String, one of ["LessThan", "LessThanOrEqualTo", "GreaterThan", "GreaterThanOrEqualTo", "EqualTo", "NotEqualTo", "Exists", "DoesNotExist", "In", "NotIn"]
    #   resp.data.hi_ts[0].qualification_requirements[0].integer_values #=> Array<Integer>
    #   resp.data.hi_ts[0].qualification_requirements[0].integer_values[0] #=> Integer
    #   resp.data.hi_ts[0].qualification_requirements[0].locale_values #=> Array<Locale>
    #   resp.data.hi_ts[0].qualification_requirements[0].locale_values[0] #=> Types::Locale
    #   resp.data.hi_ts[0].qualification_requirements[0].locale_values[0].country #=> String
    #   resp.data.hi_ts[0].qualification_requirements[0].locale_values[0].subdivision #=> String
    #   resp.data.hi_ts[0].qualification_requirements[0].required_to_preview #=> Boolean
    #   resp.data.hi_ts[0].qualification_requirements[0].actions_guarded #=> String, one of ["Accept", "PreviewAndAccept", "DiscoverPreviewAndAccept"]
    #   resp.data.hi_ts[0].hit_review_status #=> String, one of ["NotReviewed", "MarkedForReview", "ReviewedAppropriate", "ReviewedInappropriate"]
    #   resp.data.hi_ts[0].number_of_assignments_pending #=> Integer
    #   resp.data.hi_ts[0].number_of_assignments_available #=> Integer
    #   resp.data.hi_ts[0].number_of_assignments_completed #=> Integer
    #
    def list_reviewable_hi_ts(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListReviewableHITsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListReviewableHITsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListReviewableHITs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RequestError, Errors::ServiceFault]),
        data_parser: Parsers::ListReviewableHITs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListReviewableHITs,
        stubs: @stubs,
        params_class: Params::ListReviewableHITsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_reviewable_hi_ts
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>The <code>ListWorkersBlocks</code> operation retrieves a list of Workers who are blocked from working on your HITs.</p>
    #
    # @param [Hash] params
    #   See {Types::ListWorkerBlocksInput}.
    #
    # @option params [String] :next_token
    #   <p>Pagination token</p>
    #
    # @return [Types::ListWorkerBlocksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_worker_blocks(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListWorkerBlocksOutput
    #   resp.data.next_token #=> String
    #   resp.data.num_results #=> Integer
    #   resp.data.worker_blocks #=> Array<WorkerBlock>
    #   resp.data.worker_blocks[0] #=> Types::WorkerBlock
    #   resp.data.worker_blocks[0].worker_id #=> String
    #   resp.data.worker_blocks[0].reason #=> String
    #
    def list_worker_blocks(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListWorkerBlocksInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListWorkerBlocksInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListWorkerBlocks
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RequestError, Errors::ServiceFault]),
        data_parser: Parsers::ListWorkerBlocks
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListWorkerBlocks,
        stubs: @stubs,
        params_class: Params::ListWorkerBlocksOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_worker_blocks
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             The <code>ListWorkersWithQualificationType</code> operation returns all of the Workers
    #             that have been associated with a given Qualification type.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::ListWorkersWithQualificationTypeInput}.
    #
    # @option params [String] :qualification_type_id
    #   <p>The ID of the Qualification type of the Qualifications to
    #               return.</p>
    #
    # @option params [String] :status
    #   <p>
    #               The status of the Qualifications to return.
    #               Can be <code>Granted | Revoked</code>.
    #           </p>
    #
    # @option params [String] :next_token
    #   <p>Pagination Token</p>
    #
    # @option params [Integer] :max_results
    #   <p>
    #               Limit the number of results returned.
    #           </p>
    #
    # @return [Types::ListWorkersWithQualificationTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_workers_with_qualification_type(
    #     qualification_type_id: 'QualificationTypeId', # required
    #     status: 'Granted', # accepts ["Granted", "Revoked"]
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListWorkersWithQualificationTypeOutput
    #   resp.data.next_token #=> String
    #   resp.data.num_results #=> Integer
    #   resp.data.qualifications #=> Array<Qualification>
    #   resp.data.qualifications[0] #=> Types::Qualification
    #   resp.data.qualifications[0].qualification_type_id #=> String
    #   resp.data.qualifications[0].worker_id #=> String
    #   resp.data.qualifications[0].grant_time #=> Time
    #   resp.data.qualifications[0].integer_value #=> Integer
    #   resp.data.qualifications[0].locale_value #=> Types::Locale
    #   resp.data.qualifications[0].locale_value.country #=> String
    #   resp.data.qualifications[0].locale_value.subdivision #=> String
    #   resp.data.qualifications[0].status #=> String, one of ["Granted", "Revoked"]
    #
    def list_workers_with_qualification_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListWorkersWithQualificationTypeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListWorkersWithQualificationTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListWorkersWithQualificationType
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RequestError, Errors::ServiceFault]),
        data_parser: Parsers::ListWorkersWithQualificationType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListWorkersWithQualificationType,
        stubs: @stubs,
        params_class: Params::ListWorkersWithQualificationTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_workers_with_qualification_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             The
    #             <code>NotifyWorkers</code>
    #             operation sends an email to one or more Workers that you specify with
    #             the Worker ID. You can specify up to 100 Worker IDs to send the same
    #             message with a single call to the NotifyWorkers operation. The
    #             NotifyWorkers operation will send a notification email to a Worker
    #             only if you have previously approved or rejected work from the
    #             Worker.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::NotifyWorkersInput}.
    #
    # @option params [String] :subject
    #   <p>The subject line of the email message to send. Can include up
    #               to 200 characters.</p>
    #
    # @option params [String] :message_text
    #   <p>The text of the email message to send. Can include up to
    #               4,096 characters</p>
    #
    # @option params [Array<String>] :worker_ids
    #   <p>A list of Worker IDs you wish to notify. You
    #               can notify upto
    #               100 Workers at a time.</p>
    #
    # @return [Types::NotifyWorkersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.notify_workers(
    #     subject: 'Subject', # required
    #     message_text: 'MessageText', # required
    #     worker_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::NotifyWorkersOutput
    #   resp.data.notify_workers_failure_statuses #=> Array<NotifyWorkersFailureStatus>
    #   resp.data.notify_workers_failure_statuses[0] #=> Types::NotifyWorkersFailureStatus
    #   resp.data.notify_workers_failure_statuses[0].notify_workers_failure_code #=> String, one of ["SoftFailure", "HardFailure"]
    #   resp.data.notify_workers_failure_statuses[0].notify_workers_failure_message #=> String
    #   resp.data.notify_workers_failure_statuses[0].worker_id #=> String
    #
    def notify_workers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::NotifyWorkersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::NotifyWorkersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::NotifyWorkers
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RequestError, Errors::ServiceFault]),
        data_parser: Parsers::NotifyWorkers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::NotifyWorkers,
        stubs: @stubs,
        params_class: Params::NotifyWorkersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :notify_workers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             The <code>RejectAssignment</code> operation rejects the results of a completed assignment.
    #         </p>
    #         <p>
    #             You can include an optional feedback message with the rejection,
    #             which the Worker can see in the Status section of the web site.
    #             When you include a feedback message with the rejection,
    #             it helps the Worker understand why the assignment was rejected,
    #             and can improve the quality of the results the Worker submits in the future.
    #         </p>
    #         <p>
    #             Only the Requester who created the HIT can reject an assignment for the HIT.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::RejectAssignmentInput}.
    #
    # @option params [String] :assignment_id
    #   <p>
    #               The ID of the assignment. The assignment must correspond to a HIT created by the Requester.
    #           </p>
    #
    # @option params [String] :requester_feedback
    #   <p>
    #               A message for the Worker, which the Worker can see in the Status section of the web site.
    #           </p>
    #
    # @return [Types::RejectAssignmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reject_assignment(
    #     assignment_id: 'AssignmentId', # required
    #     requester_feedback: 'RequesterFeedback' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RejectAssignmentOutput
    #
    def reject_assignment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RejectAssignmentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RejectAssignmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RejectAssignment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RequestError, Errors::ServiceFault]),
        data_parser: Parsers::RejectAssignment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RejectAssignment,
        stubs: @stubs,
        params_class: Params::RejectAssignmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :reject_assignment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             The
    #             <code>RejectQualificationRequest</code>
    #             operation rejects a user's request for a Qualification.
    #         </p>
    #         <p> You can provide a text message explaining why the request was
    #             rejected. The Worker who made the request can see this message.</p>
    #
    # @param [Hash] params
    #   See {Types::RejectQualificationRequestInput}.
    #
    # @option params [String] :qualification_request_id
    #   <p>
    #               The ID of the Qualification request, as returned by the
    #               <code>ListQualificationRequests</code>
    #               operation.
    #           </p>
    #
    # @option params [String] :reason
    #   <p>A text message explaining why the request was rejected, to be
    #               shown to the Worker who made the request.</p>
    #
    # @return [Types::RejectQualificationRequestOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reject_qualification_request(
    #     qualification_request_id: 'QualificationRequestId', # required
    #     reason: 'Reason'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RejectQualificationRequestOutput
    #
    def reject_qualification_request(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RejectQualificationRequestInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RejectQualificationRequestInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RejectQualificationRequest
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RequestError, Errors::ServiceFault]),
        data_parser: Parsers::RejectQualificationRequest
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RejectQualificationRequest,
        stubs: @stubs,
        params_class: Params::RejectQualificationRequestOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :reject_qualification_request
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             The
    #             <code>SendBonus</code>
    #             operation issues a payment of money from your account to a Worker.
    #             This payment happens separately from the reward you pay to the Worker
    #             when you approve the Worker's assignment. The SendBonus operation
    #             requires the Worker's ID and the assignment ID as parameters to
    #             initiate payment of the bonus. You must include a message that
    #             explains the reason for the bonus payment, as the Worker may not be
    #             expecting the payment. Amazon Mechanical Turk collects a fee for
    #             bonus payments, similar to the HIT listing fee. This operation fails
    #             if your account does not have enough funds to pay for both the bonus
    #             and the fees.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::SendBonusInput}.
    #
    # @option params [String] :worker_id
    #   <p>The ID of the Worker being paid the bonus.</p>
    #
    # @option params [String] :bonus_amount
    #   <p>
    #               The Bonus amount is a US Dollar amount specified using a string (for example, "5" represents $5.00 USD and
    #               "101.42" represents $101.42 USD). Do not include currency symbols or currency codes.
    #           </p>
    #
    # @option params [String] :assignment_id
    #   <p>The ID of the assignment for which this bonus is paid.</p>
    #
    # @option params [String] :reason
    #   <p>A message that explains the reason for the bonus payment. The
    #               Worker receiving the bonus can see this message.</p>
    #
    # @option params [String] :unique_request_token
    #   <p>A unique identifier for this request, which allows you to
    #               retry the call on error without granting multiple bonuses. This is
    #               useful in cases such as network timeouts where it is unclear whether
    #               or not the call succeeded on the server. If the bonus already exists
    #               in the system from a previous call using the same UniqueRequestToken,
    #               subsequent calls will return an error with a message containing the
    #               request ID.</p>
    #
    # @return [Types::SendBonusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_bonus(
    #     worker_id: 'WorkerId', # required
    #     bonus_amount: 'BonusAmount', # required
    #     assignment_id: 'AssignmentId', # required
    #     reason: 'Reason', # required
    #     unique_request_token: 'UniqueRequestToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SendBonusOutput
    #
    def send_bonus(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SendBonusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SendBonusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SendBonus
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RequestError, Errors::ServiceFault]),
        data_parser: Parsers::SendBonus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SendBonus,
        stubs: @stubs,
        params_class: Params::SendBonusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :send_bonus
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             The <code>SendTestEventNotification</code> operation causes Amazon Mechanical Turk to send
    #             a notification message as if a HIT event occurred, according to the provided
    #             notification specification. This allows you to test notifications without
    #             setting up notifications for a real HIT type and trying to trigger them using the website.
    #             When you call this operation, the service attempts to send the test notification immediately.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::SendTestEventNotificationInput}.
    #
    # @option params [NotificationSpecification] :notification
    #   <p>
    #               The notification specification to test. This value is identical to the value
    #               you would provide to the UpdateNotificationSettings operation when you establish
    #               the notification specification for a HIT type.
    #           </p>
    #
    # @option params [String] :test_event_type
    #   <p>
    #               The event to simulate to test the notification specification.
    #               This event is included in the test message even if the notification specification
    #               does not include the event type.
    #               The notification specification does not filter out the test event.
    #           </p>
    #
    # @return [Types::SendTestEventNotificationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_test_event_notification(
    #     notification: {
    #       destination: 'Destination', # required
    #       transport: 'Email', # required - accepts ["Email", "SQS", "SNS"]
    #       version: 'Version', # required
    #       event_types: [
    #         'AssignmentAccepted' # accepts ["AssignmentAccepted", "AssignmentAbandoned", "AssignmentReturned", "AssignmentSubmitted", "AssignmentRejected", "AssignmentApproved", "HITCreated", "HITExpired", "HITReviewable", "HITExtended", "HITDisposed", "Ping"]
    #       ] # required
    #     }, # required
    #     test_event_type: 'AssignmentAccepted' # required - accepts ["AssignmentAccepted", "AssignmentAbandoned", "AssignmentReturned", "AssignmentSubmitted", "AssignmentRejected", "AssignmentApproved", "HITCreated", "HITExpired", "HITReviewable", "HITExtended", "HITDisposed", "Ping"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SendTestEventNotificationOutput
    #
    def send_test_event_notification(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SendTestEventNotificationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SendTestEventNotificationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SendTestEventNotification
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RequestError, Errors::ServiceFault]),
        data_parser: Parsers::SendTestEventNotification
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SendTestEventNotification,
        stubs: @stubs,
        params_class: Params::SendTestEventNotificationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :send_test_event_notification
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             The <code>UpdateExpirationForHIT</code> operation allows you update the expiration time of a HIT.
    #             If you update it to a time in the past, the HIT will be immediately expired.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateExpirationForHITInput}.
    #
    # @option params [String] :hit_id
    #   <p>
    #               The HIT to update.
    #           </p>
    #
    # @option params [Time] :expire_at
    #   <p>
    #               The date and time at which you want the HIT to expire
    #           </p>
    #
    # @return [Types::UpdateExpirationForHITOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_expiration_for_hit(
    #     hit_id: 'HITId', # required
    #     expire_at: Time.now # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateExpirationForHITOutput
    #
    def update_expiration_for_hit(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateExpirationForHITInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateExpirationForHITInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateExpirationForHIT
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RequestError, Errors::ServiceFault]),
        data_parser: Parsers::UpdateExpirationForHIT
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateExpirationForHIT,
        stubs: @stubs,
        params_class: Params::UpdateExpirationForHITOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_expiration_for_hit
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             The <code>UpdateHITReviewStatus</code> operation updates the status of a HIT.
    #             If the status is Reviewable, this operation can update the status to Reviewing,
    #             or it can revert a Reviewing HIT back to the Reviewable status.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateHITReviewStatusInput}.
    #
    # @option params [String] :hit_id
    #   <p>
    #               The ID of the HIT to update.
    #           </p>
    #
    # @option params [Boolean] :revert
    #   <p>
    #               Specifies how to update the HIT status. Default is <code>False</code>.
    #           </p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       Setting this to false will only transition a HIT from <code>Reviewable</code> to <code>Reviewing</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       Setting this to true will only transition a HIT from <code>Reviewing</code> to <code>Reviewable</code>
    #                   </p>
    #               </li>
    #            </ul>
    #
    # @return [Types::UpdateHITReviewStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_hit_review_status(
    #     hit_id: 'HITId', # required
    #     revert: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateHITReviewStatusOutput
    #
    def update_hit_review_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateHITReviewStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateHITReviewStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateHITReviewStatus
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RequestError, Errors::ServiceFault]),
        data_parser: Parsers::UpdateHITReviewStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateHITReviewStatus,
        stubs: @stubs,
        params_class: Params::UpdateHITReviewStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_hit_review_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             The
    #             <code>UpdateHITTypeOfHIT</code>
    #             operation allows you to change the HITType properties of a HIT. This
    #             operation disassociates the HIT from its old HITType properties and
    #             associates it with the new HITType properties. The HIT takes on the
    #             properties of the new HITType in place of the old ones.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateHITTypeOfHITInput}.
    #
    # @option params [String] :hit_id
    #   <p>The HIT to update.</p>
    #
    # @option params [String] :hit_type_id
    #   <p>The ID of the new HIT type.</p>
    #
    # @return [Types::UpdateHITTypeOfHITOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_hit_type_of_hit(
    #     hit_id: 'HITId', # required
    #     hit_type_id: 'HITTypeId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateHITTypeOfHITOutput
    #
    def update_hit_type_of_hit(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateHITTypeOfHITInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateHITTypeOfHITInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateHITTypeOfHIT
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RequestError, Errors::ServiceFault]),
        data_parser: Parsers::UpdateHITTypeOfHIT
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateHITTypeOfHIT,
        stubs: @stubs,
        params_class: Params::UpdateHITTypeOfHITOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_hit_type_of_hit
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             The <code>UpdateNotificationSettings</code> operation creates, updates,
    #             disables or re-enables notifications for a HIT type.
    #             If you call the UpdateNotificationSettings operation for a HIT type that already has a
    #             notification specification, the operation replaces the old specification with a new one.
    #             You can call the UpdateNotificationSettings operation to enable or disable notifications
    #             for the HIT type, without having to modify the notification specification itself by providing
    #             updates to the Active status without specifying a new notification specification.
    #             To change the Active status of a HIT type's notifications,
    #             the HIT type must already have a notification specification,
    #             or one must be provided in the same call to <code>UpdateNotificationSettings</code>.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateNotificationSettingsInput}.
    #
    # @option params [String] :hit_type_id
    #   <p>
    #               The ID of the HIT type whose notification specification is being updated.
    #           </p>
    #
    # @option params [NotificationSpecification] :notification
    #   <p>
    #               The notification specification for the HIT type.
    #           </p>
    #
    # @option params [Boolean] :active
    #   <p>
    #               Specifies whether notifications are sent for HITs of this HIT type,
    #               according to the notification specification.
    #               You must specify either the Notification parameter or the Active parameter
    #               for the call to UpdateNotificationSettings to succeed.
    #           </p>
    #
    # @return [Types::UpdateNotificationSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_notification_settings(
    #     hit_type_id: 'HITTypeId', # required
    #     notification: {
    #       destination: 'Destination', # required
    #       transport: 'Email', # required - accepts ["Email", "SQS", "SNS"]
    #       version: 'Version', # required
    #       event_types: [
    #         'AssignmentAccepted' # accepts ["AssignmentAccepted", "AssignmentAbandoned", "AssignmentReturned", "AssignmentSubmitted", "AssignmentRejected", "AssignmentApproved", "HITCreated", "HITExpired", "HITReviewable", "HITExtended", "HITDisposed", "Ping"]
    #       ] # required
    #     },
    #     active: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateNotificationSettingsOutput
    #
    def update_notification_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateNotificationSettingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateNotificationSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateNotificationSettings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RequestError, Errors::ServiceFault]),
        data_parser: Parsers::UpdateNotificationSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateNotificationSettings,
        stubs: @stubs,
        params_class: Params::UpdateNotificationSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_notification_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             The
    #             <code>UpdateQualificationType</code>
    #             operation modifies the attributes of an existing Qualification type,
    #             which is represented by a QualificationType data structure. Only the
    #             owner of a Qualification type can modify its attributes.
    #         </p>
    #         <p> Most attributes of a Qualification type can be changed after
    #             the type has been created. However, the Name and Keywords fields
    #             cannot be modified. The RetryDelayInSeconds parameter can be modified
    #             or added to change the delay or to enable retries, but
    #             RetryDelayInSeconds cannot be used to disable retries. </p>
    #         <p> You can use this operation to update the test for a
    #             Qualification type. The test is updated based on the values specified
    #             for the Test, TestDurationInSeconds and AnswerKey parameters. All
    #             three parameters specify the updated test. If you are updating the
    #             test for a type, you must specify the Test and TestDurationInSeconds
    #             parameters. The AnswerKey parameter is optional; omitting it specifies
    #             that the updated test does not have an answer key. </p>
    #         <p> If you omit the Test parameter, the test for the
    #             Qualification type is unchanged. There is no way to remove a test from
    #             a Qualification type that has one. If the type already has a test, you
    #             cannot update it to be AutoGranted. If the Qualification type does not
    #             have a test and one is provided by an update, the type will henceforth
    #             have a test. </p>
    #         <p> If you want to update the test duration or answer key for an
    #             existing test without changing the questions, you must specify a Test
    #             parameter with the original questions, along with the updated values. </p>
    #         <p> If you provide an updated Test but no AnswerKey, the new test
    #             will not have an answer key. Requests for such Qualifications must be
    #             granted manually. </p>
    #         <p> You can also update the AutoGranted and AutoGrantedValue
    #             attributes of the Qualification type.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateQualificationTypeInput}.
    #
    # @option params [String] :qualification_type_id
    #   <p>The ID of the Qualification type to update.</p>
    #
    # @option params [String] :description
    #   <p>The new description of the Qualification type.</p>
    #
    # @option params [String] :qualification_type_status
    #   <p>The new status of the Qualification type - Active | Inactive</p>
    #
    # @option params [String] :test
    #   <p>The questions for the Qualification test a Worker must answer correctly to obtain a Qualification of this type. If this parameter is specified, <code>TestDurationInSeconds</code> must also be specified.</p>
    #           <p>Constraints: Must not be longer than 65535 bytes. Must be a QuestionForm data structure. This parameter cannot be specified if AutoGranted is true.</p>
    #           <p>Constraints: None. If not specified, the Worker may request the Qualification without answering any questions.</p>
    #
    # @option params [String] :answer_key
    #   <p>The answers to the Qualification test specified in the Test parameter, in the form of an AnswerKey data structure.</p>
    #
    # @option params [Integer] :test_duration_in_seconds
    #   <p>The number of seconds the Worker has to complete the Qualification test, starting from the time the Worker requests the Qualification.</p>
    #
    # @option params [Integer] :retry_delay_in_seconds
    #   <p>The amount of time, in seconds, that Workers must wait
    #               after requesting a Qualification of the specified Qualification type
    #               before they can retry the Qualification request. It is not possible to
    #               disable retries for a Qualification type after it has been created with
    #               retries enabled. If you want to disable retries, you must dispose of
    #               the existing retry-enabled Qualification type using
    #               DisposeQualificationType and then create a new Qualification type with
    #               retries disabled using CreateQualificationType.</p>
    #
    # @option params [Boolean] :auto_granted
    #   <p>Specifies whether requests for the Qualification type are granted immediately, without prompting the Worker with a Qualification test.</p>
    #           <p>Constraints: If the Test parameter is specified, this parameter cannot be true.</p>
    #
    # @option params [Integer] :auto_granted_value
    #   <p>The Qualification value to use for automatically granted Qualifications. This parameter is used only if the AutoGranted parameter is true.</p>
    #
    # @return [Types::UpdateQualificationTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_qualification_type(
    #     qualification_type_id: 'QualificationTypeId', # required
    #     description: 'Description',
    #     qualification_type_status: 'Active', # accepts ["Active", "Inactive"]
    #     test: 'Test',
    #     answer_key: 'AnswerKey',
    #     test_duration_in_seconds: 1,
    #     retry_delay_in_seconds: 1,
    #     auto_granted: false,
    #     auto_granted_value: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateQualificationTypeOutput
    #   resp.data.qualification_type #=> Types::QualificationType
    #   resp.data.qualification_type.qualification_type_id #=> String
    #   resp.data.qualification_type.creation_time #=> Time
    #   resp.data.qualification_type.name #=> String
    #   resp.data.qualification_type.description #=> String
    #   resp.data.qualification_type.keywords #=> String
    #   resp.data.qualification_type.qualification_type_status #=> String, one of ["Active", "Inactive"]
    #   resp.data.qualification_type.test #=> String
    #   resp.data.qualification_type.test_duration_in_seconds #=> Integer
    #   resp.data.qualification_type.answer_key #=> String
    #   resp.data.qualification_type.retry_delay_in_seconds #=> Integer
    #   resp.data.qualification_type.is_requestable #=> Boolean
    #   resp.data.qualification_type.auto_granted #=> Boolean
    #   resp.data.qualification_type.auto_granted_value #=> Integer
    #
    def update_qualification_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateQualificationTypeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateQualificationTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateQualificationType
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RequestError, Errors::ServiceFault]),
        data_parser: Parsers::UpdateQualificationType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateQualificationType,
        stubs: @stubs,
        params_class: Params::UpdateQualificationTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_qualification_type
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
