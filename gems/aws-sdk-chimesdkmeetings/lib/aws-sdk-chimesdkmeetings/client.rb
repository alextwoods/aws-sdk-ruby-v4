# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::ChimeSDKMeetings
  # An API client for ChimeMeetingsSDKService
  # See {#initialize} for a full list of supported configuration options
  # <p>The Amazon Chime SDK meetings APIs in this section allow software developers to create Amazon Chime SDK meetings, set the AWS Regions for meetings, create and manage users, and send and
  #             receive meeting notifications. For more information about the meeting APIs, see <a href="https://docs.aws.amazon.com/chime/latest/APIReference/API_Operations_Amazon_Chime_SDK_Meetings.html">Amazon Chime SDK meetings</a>.</p>
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
    def initialize(config = AWS::SDK::ChimeSDKMeetings::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates up to 100 attendees for an active Amazon Chime SDK meeting. For more information about the Amazon Chime SDK, see
    #             <a href="https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html">Using the Amazon Chime SDK</a> in the <i>Amazon Chime Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchCreateAttendeeInput}.
    #
    # @option params [String] :meeting_id
    #   <p>The Amazon Chime SDK ID of the meeting to which you're adding attendees.</p>
    #
    # @option params [Array<CreateAttendeeRequestItem>] :attendees
    #   <p>The attendee information, including attendees' IDs and join tokens.</p>
    #
    # @return [Types::BatchCreateAttendeeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_create_attendee(
    #     meeting_id: 'MeetingId', # required
    #     attendees: [
    #       {
    #         external_user_id: 'ExternalUserId', # required
    #         capabilities: {
    #           audio: 'SendReceive', # required - accepts ["SendReceive", "Send", "Receive", "None"]
    #           video: 'SendReceive', # required - accepts ["SendReceive", "Send", "Receive", "None"]
    #           content: 'SendReceive' # required - accepts ["SendReceive", "Send", "Receive", "None"]
    #         }
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchCreateAttendeeOutput
    #   resp.data.attendees #=> Array<Attendee>
    #   resp.data.attendees[0] #=> Types::Attendee
    #   resp.data.attendees[0].external_user_id #=> String
    #   resp.data.attendees[0].attendee_id #=> String
    #   resp.data.attendees[0].join_token #=> String
    #   resp.data.attendees[0].capabilities #=> Types::AttendeeCapabilities
    #   resp.data.attendees[0].capabilities.audio #=> String, one of ["SendReceive", "Send", "Receive", "None"]
    #   resp.data.attendees[0].capabilities.video #=> String, one of ["SendReceive", "Send", "Receive", "None"]
    #   resp.data.attendees[0].capabilities.content #=> String, one of ["SendReceive", "Send", "Receive", "None"]
    #   resp.data.errors #=> Array<CreateAttendeeError>
    #   resp.data.errors[0] #=> Types::CreateAttendeeError
    #   resp.data.errors[0].external_user_id #=> String
    #   resp.data.errors[0].error_code #=> String
    #   resp.data.errors[0].error_message #=> String
    #
    def batch_create_attendee(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchCreateAttendeeInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchCreateAttendeeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchCreateAttendee
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableException, Errors::BadRequestException, Errors::ServiceFailureException, Errors::ForbiddenException, Errors::NotFoundException, Errors::LimitExceededException, Errors::ThrottlingException, Errors::UnprocessableEntityException, Errors::UnauthorizedException]),
        data_parser: Parsers::BatchCreateAttendee
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchCreateAttendee,
        stubs: @stubs,
        params_class: Params::BatchCreateAttendeeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_create_attendee
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates <code>AttendeeCapabilities</code> except the capabilities listed in an <code>ExcludedAttendeeIds</code> table.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchUpdateAttendeeCapabilitiesExceptInput}.
    #
    # @option params [String] :meeting_id
    #   <p>The ID of the meeting associated with the update request.</p>
    #
    # @option params [Array<AttendeeIdItem>] :excluded_attendee_ids
    #   <p>The <code>AttendeeIDs</code> that you want to exclude from one or more capabilities.</p>
    #
    # @option params [AttendeeCapabilities] :capabilities
    #   <p>The capabilities (<code>audio</code>, <code>video</code>, or <code>content</code>) that you want to update.</p>
    #
    # @return [Types::BatchUpdateAttendeeCapabilitiesExceptOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_update_attendee_capabilities_except(
    #     meeting_id: 'MeetingId', # required
    #     excluded_attendee_ids: [
    #       {
    #         attendee_id: 'AttendeeId' # required
    #       }
    #     ], # required
    #     capabilities: {
    #       audio: 'SendReceive', # required - accepts ["SendReceive", "Send", "Receive", "None"]
    #       video: 'SendReceive', # required - accepts ["SendReceive", "Send", "Receive", "None"]
    #       content: 'SendReceive' # required - accepts ["SendReceive", "Send", "Receive", "None"]
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchUpdateAttendeeCapabilitiesExceptOutput
    #
    def batch_update_attendee_capabilities_except(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchUpdateAttendeeCapabilitiesExceptInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchUpdateAttendeeCapabilitiesExceptInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchUpdateAttendeeCapabilitiesExcept
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableException, Errors::BadRequestException, Errors::ForbiddenException, Errors::NotFoundException, Errors::UnauthorizedException, Errors::ConflictException]),
        data_parser: Parsers::BatchUpdateAttendeeCapabilitiesExcept
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchUpdateAttendeeCapabilitiesExcept,
        stubs: @stubs,
        params_class: Params::BatchUpdateAttendeeCapabilitiesExceptOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_update_attendee_capabilities_except
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #            Creates a new attendee for an active Amazon Chime SDK meeting. For more information about the Amazon Chime SDK, see
    #            <a href="https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html">Using the Amazon Chime SDK</a>
    #            in the
    #            <i>Amazon Chime Developer Guide</i>.
    #        </p>
    #
    # @param [Hash] params
    #   See {Types::CreateAttendeeInput}.
    #
    # @option params [String] :meeting_id
    #   <p>The unique ID of the meeting.</p>
    #
    # @option params [String] :external_user_id
    #   <p>The Amazon Chime SDK external user ID. An idempotency token. Links the attendee to an identity managed by a builder application.</p>
    #
    # @option params [AttendeeCapabilities] :capabilities
    #   <p>The capabilities (<code>audio</code>, <code>video</code>, or <code>content</code>) that you want to grant an attendee. If you don't specify capabilities, all users have send and receive capabilities on
    #               all media channels by default.</p>
    #
    # @return [Types::CreateAttendeeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_attendee(
    #     meeting_id: 'MeetingId', # required
    #     external_user_id: 'ExternalUserId', # required
    #     capabilities: {
    #       audio: 'SendReceive', # required - accepts ["SendReceive", "Send", "Receive", "None"]
    #       video: 'SendReceive', # required - accepts ["SendReceive", "Send", "Receive", "None"]
    #       content: 'SendReceive' # required - accepts ["SendReceive", "Send", "Receive", "None"]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAttendeeOutput
    #   resp.data.attendee #=> Types::Attendee
    #   resp.data.attendee.external_user_id #=> String
    #   resp.data.attendee.attendee_id #=> String
    #   resp.data.attendee.join_token #=> String
    #   resp.data.attendee.capabilities #=> Types::AttendeeCapabilities
    #   resp.data.attendee.capabilities.audio #=> String, one of ["SendReceive", "Send", "Receive", "None"]
    #   resp.data.attendee.capabilities.video #=> String, one of ["SendReceive", "Send", "Receive", "None"]
    #   resp.data.attendee.capabilities.content #=> String, one of ["SendReceive", "Send", "Receive", "None"]
    #
    def create_attendee(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAttendeeInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAttendeeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAttendee
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableException, Errors::BadRequestException, Errors::ServiceFailureException, Errors::ForbiddenException, Errors::NotFoundException, Errors::LimitExceededException, Errors::ThrottlingException, Errors::UnprocessableEntityException, Errors::UnauthorizedException]),
        data_parser: Parsers::CreateAttendee
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAttendee,
        stubs: @stubs,
        params_class: Params::CreateAttendeeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_attendee
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new Amazon Chime SDK meeting in the specified media Region with no initial attendees. For more information about specifying media Regions, see
    #            <a href="https://docs.aws.amazon.com/chime/latest/dg/chime-sdk-meetings-regions.html">Amazon Chime SDK Media Regions</a>
    #            in the <i>Amazon Chime Developer Guide</i>. For more information about the Amazon Chime SDK, see
    #            <a href="https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html">Using the Amazon Chime SDK</a>
    #            in the
    #            <i>Amazon Chime Developer Guide</i>.
    #        </p>
    #
    # @param [Hash] params
    #   See {Types::CreateMeetingInput}.
    #
    # @option params [String] :client_request_token
    #   <p>The unique identifier for the client request. Use a different token for different meetings.</p>
    #
    # @option params [String] :media_region
    #   <p>The Region in which to create the meeting.</p>
    #
    #            <p>
    #              Available values:
    #              <code>af-south-1</code>,
    #              <code>ap-northeast-1</code>,
    #              <code>ap-northeast-2</code>,
    #              <code>ap-south-1</code>,
    #              <code>ap-southeast-1</code>,
    #              <code>ap-southeast-2</code>,
    #              <code>ca-central-1</code>,
    #              <code>eu-central-1</code>,
    #              <code>eu-north-1</code>,
    #              <code>eu-south-1</code>,
    #              <code>eu-west-1</code>,
    #              <code>eu-west-2</code>,
    #              <code>eu-west-3</code>,
    #              <code>sa-east-1</code>,
    #              <code>us-east-1</code>,
    #              <code>us-east-2</code>,
    #              <code>us-west-1</code>,
    #              <code>us-west-2</code>.
    #          </p>
    #            <p>Available values in AWS GovCloud (US) Regions: <code>us-gov-east-1</code>, <code>us-gov-west-1</code>.</p>
    #
    # @option params [String] :meeting_host_id
    #   <p>Reserved.</p>
    #
    # @option params [String] :external_meeting_id
    #   <p>The external meeting ID.</p>
    #
    # @option params [NotificationsConfiguration] :notifications_configuration
    #   <p>The configuration for resource targets to receive notifications when meeting and attendee events occur.</p>
    #
    # @option params [MeetingFeaturesConfiguration] :meeting_features
    #   <p>Lists the audio and video features enabled for a meeting, such as echo reduction.</p>
    #
    # @option params [String] :primary_meeting_id
    #   <p>When specified, replicates the media from the primary meeting to the new meeting.</p>
    #
    # @return [Types::CreateMeetingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_meeting(
    #     client_request_token: 'ClientRequestToken', # required
    #     media_region: 'MediaRegion', # required
    #     meeting_host_id: 'MeetingHostId',
    #     external_meeting_id: 'ExternalMeetingId', # required
    #     notifications_configuration: {
    #       lambda_function_arn: 'LambdaFunctionArn',
    #       sns_topic_arn: 'SnsTopicArn',
    #       sqs_queue_arn: 'SqsQueueArn'
    #     },
    #     meeting_features: {
    #       audio: {
    #         echo_reduction: 'AVAILABLE' # accepts ["AVAILABLE", "UNAVAILABLE"]
    #       }
    #     },
    #     primary_meeting_id: 'PrimaryMeetingId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateMeetingOutput
    #   resp.data.meeting #=> Types::Meeting
    #   resp.data.meeting.meeting_id #=> String
    #   resp.data.meeting.meeting_host_id #=> String
    #   resp.data.meeting.external_meeting_id #=> String
    #   resp.data.meeting.media_region #=> String
    #   resp.data.meeting.media_placement #=> Types::MediaPlacement
    #   resp.data.meeting.media_placement.audio_host_url #=> String
    #   resp.data.meeting.media_placement.audio_fallback_url #=> String
    #   resp.data.meeting.media_placement.signaling_url #=> String
    #   resp.data.meeting.media_placement.turn_control_url #=> String
    #   resp.data.meeting.media_placement.screen_data_url #=> String
    #   resp.data.meeting.media_placement.screen_viewing_url #=> String
    #   resp.data.meeting.media_placement.screen_sharing_url #=> String
    #   resp.data.meeting.media_placement.event_ingestion_url #=> String
    #   resp.data.meeting.meeting_features #=> Types::MeetingFeaturesConfiguration
    #   resp.data.meeting.meeting_features.audio #=> Types::AudioFeatures
    #   resp.data.meeting.meeting_features.audio.echo_reduction #=> String, one of ["AVAILABLE", "UNAVAILABLE"]
    #   resp.data.meeting.primary_meeting_id #=> String
    #
    def create_meeting(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateMeetingInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateMeetingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateMeeting
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableException, Errors::BadRequestException, Errors::ServiceFailureException, Errors::ForbiddenException, Errors::LimitExceededException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::CreateMeeting
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateMeeting,
        stubs: @stubs,
        params_class: Params::CreateMeetingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_meeting
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #            Creates a new Amazon Chime SDK meeting in the specified media Region, with attendees. For more information about specifying media Regions, see
    #            <a href="https://docs.aws.amazon.com/chime/latest/dg/chime-sdk-meetings-regions.html">Amazon Chime SDK Media Regions</a>
    #            in the <i>Amazon Chime Developer Guide</i>. For more information about the Amazon Chime SDK, see
    #            <a href="https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html">Using the Amazon Chime SDK</a>
    #            in the <i>Amazon Chime Developer Guide</i>.
    #        </p>
    #
    # @param [Hash] params
    #   See {Types::CreateMeetingWithAttendeesInput}.
    #
    # @option params [String] :client_request_token
    #   <p>The unique identifier for the client request. Use a different token for different meetings.</p>
    #
    # @option params [String] :media_region
    #   <p>The Region in which to create the meeting.</p>
    #
    #            <p>
    #              Available values:
    #              <code>af-south-1</code>,
    #              <code>ap-northeast-1</code>,
    #              <code>ap-northeast-2</code>,
    #              <code>ap-south-1</code>,
    #              <code>ap-southeast-1</code>,
    #              <code>ap-southeast-2</code>,
    #              <code>ca-central-1</code>,
    #              <code>eu-central-1</code>,
    #              <code>eu-north-1</code>,
    #              <code>eu-south-1</code>,
    #              <code>eu-west-1</code>,
    #              <code>eu-west-2</code>,
    #              <code>eu-west-3</code>,
    #              <code>sa-east-1</code>,
    #              <code>us-east-1</code>,
    #              <code>us-east-2</code>,
    #              <code>us-west-1</code>,
    #              <code>us-west-2</code>.
    #          </p>
    #            <p>Available values in AWS GovCloud (US) Regions: <code>us-gov-east-1</code>, <code>us-gov-west-1</code>.</p>
    #
    # @option params [String] :meeting_host_id
    #   <p>Reserved.</p>
    #
    # @option params [String] :external_meeting_id
    #   <p>The external meeting ID.</p>
    #
    # @option params [MeetingFeaturesConfiguration] :meeting_features
    #   <p>Lists the audio and video features enabled for a meeting, such as echo reduction.</p>
    #
    # @option params [NotificationsConfiguration] :notifications_configuration
    #   <p>The configuration for resource targets to receive notifications when meeting and attendee events occur.</p>
    #
    # @option params [Array<CreateAttendeeRequestItem>] :attendees
    #   <p>The attendee information, including attendees' IDs and join tokens.</p>
    #
    # @option params [String] :primary_meeting_id
    #   <p>When specified, replicates the media from the primary meeting to the new meeting.</p>
    #
    # @return [Types::CreateMeetingWithAttendeesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_meeting_with_attendees(
    #     client_request_token: 'ClientRequestToken', # required
    #     media_region: 'MediaRegion', # required
    #     meeting_host_id: 'MeetingHostId',
    #     external_meeting_id: 'ExternalMeetingId', # required
    #     meeting_features: {
    #       audio: {
    #         echo_reduction: 'AVAILABLE' # accepts ["AVAILABLE", "UNAVAILABLE"]
    #       }
    #     },
    #     notifications_configuration: {
    #       lambda_function_arn: 'LambdaFunctionArn',
    #       sns_topic_arn: 'SnsTopicArn',
    #       sqs_queue_arn: 'SqsQueueArn'
    #     },
    #     attendees: [
    #       {
    #         external_user_id: 'ExternalUserId', # required
    #         capabilities: {
    #           audio: 'SendReceive', # required - accepts ["SendReceive", "Send", "Receive", "None"]
    #           video: 'SendReceive', # required - accepts ["SendReceive", "Send", "Receive", "None"]
    #           content: 'SendReceive' # required - accepts ["SendReceive", "Send", "Receive", "None"]
    #         }
    #       }
    #     ], # required
    #     primary_meeting_id: 'PrimaryMeetingId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateMeetingWithAttendeesOutput
    #   resp.data.meeting #=> Types::Meeting
    #   resp.data.meeting.meeting_id #=> String
    #   resp.data.meeting.meeting_host_id #=> String
    #   resp.data.meeting.external_meeting_id #=> String
    #   resp.data.meeting.media_region #=> String
    #   resp.data.meeting.media_placement #=> Types::MediaPlacement
    #   resp.data.meeting.media_placement.audio_host_url #=> String
    #   resp.data.meeting.media_placement.audio_fallback_url #=> String
    #   resp.data.meeting.media_placement.signaling_url #=> String
    #   resp.data.meeting.media_placement.turn_control_url #=> String
    #   resp.data.meeting.media_placement.screen_data_url #=> String
    #   resp.data.meeting.media_placement.screen_viewing_url #=> String
    #   resp.data.meeting.media_placement.screen_sharing_url #=> String
    #   resp.data.meeting.media_placement.event_ingestion_url #=> String
    #   resp.data.meeting.meeting_features #=> Types::MeetingFeaturesConfiguration
    #   resp.data.meeting.meeting_features.audio #=> Types::AudioFeatures
    #   resp.data.meeting.meeting_features.audio.echo_reduction #=> String, one of ["AVAILABLE", "UNAVAILABLE"]
    #   resp.data.meeting.primary_meeting_id #=> String
    #   resp.data.attendees #=> Array<Attendee>
    #   resp.data.attendees[0] #=> Types::Attendee
    #   resp.data.attendees[0].external_user_id #=> String
    #   resp.data.attendees[0].attendee_id #=> String
    #   resp.data.attendees[0].join_token #=> String
    #   resp.data.attendees[0].capabilities #=> Types::AttendeeCapabilities
    #   resp.data.attendees[0].capabilities.audio #=> String, one of ["SendReceive", "Send", "Receive", "None"]
    #   resp.data.attendees[0].capabilities.video #=> String, one of ["SendReceive", "Send", "Receive", "None"]
    #   resp.data.attendees[0].capabilities.content #=> String, one of ["SendReceive", "Send", "Receive", "None"]
    #   resp.data.errors #=> Array<CreateAttendeeError>
    #   resp.data.errors[0] #=> Types::CreateAttendeeError
    #   resp.data.errors[0].external_user_id #=> String
    #   resp.data.errors[0].error_code #=> String
    #   resp.data.errors[0].error_message #=> String
    #
    def create_meeting_with_attendees(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateMeetingWithAttendeesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateMeetingWithAttendeesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateMeetingWithAttendees
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableException, Errors::BadRequestException, Errors::ServiceFailureException, Errors::ForbiddenException, Errors::LimitExceededException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::CreateMeetingWithAttendees
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateMeetingWithAttendees,
        stubs: @stubs,
        params_class: Params::CreateMeetingWithAttendeesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_meeting_with_attendees
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an attendee from the specified Amazon Chime SDK meeting and deletes their
    #            <code>JoinToken</code>. Attendees are automatically deleted when a Amazon Chime SDK meeting is deleted. For more information about the Amazon Chime SDK, see
    #            <a href="https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html">Using the Amazon Chime SDK</a>
    #            in the <i>Amazon Chime Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAttendeeInput}.
    #
    # @option params [String] :meeting_id
    #   <p>The Amazon Chime SDK meeting ID.</p>
    #
    # @option params [String] :attendee_id
    #   <p>The Amazon Chime SDK attendee ID.</p>
    #
    # @return [Types::DeleteAttendeeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_attendee(
    #     meeting_id: 'MeetingId', # required
    #     attendee_id: 'AttendeeId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAttendeeOutput
    #
    def delete_attendee(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAttendeeInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAttendeeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAttendee
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ServiceUnavailableException, Errors::BadRequestException, Errors::ServiceFailureException, Errors::ForbiddenException, Errors::NotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::DeleteAttendee
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAttendee,
        stubs: @stubs,
        params_class: Params::DeleteAttendeeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_attendee
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified Amazon Chime SDK meeting. The operation deletes all attendees, disconnects all clients, and prevents new clients from
    #            joining the meeting. For more information about the Amazon Chime SDK, see
    #            <a href="https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html">Using the Amazon Chime SDK</a> in the
    #            <i>Amazon Chime Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteMeetingInput}.
    #
    # @option params [String] :meeting_id
    #   <p>The Amazon Chime SDK meeting ID.</p>
    #
    # @return [Types::DeleteMeetingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_meeting(
    #     meeting_id: 'MeetingId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteMeetingOutput
    #
    def delete_meeting(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteMeetingInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteMeetingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteMeeting
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ServiceUnavailableException, Errors::BadRequestException, Errors::ServiceFailureException, Errors::ForbiddenException, Errors::NotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::DeleteMeeting
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteMeeting,
        stubs: @stubs,
        params_class: Params::DeleteMeetingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_meeting
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             Gets the Amazon Chime SDK attendee details for a specified meeting ID and attendee ID. For more information about the Amazon Chime SDK, see
    #             <a href="https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html">Using the Amazon Chime SDK</a>
    #             in the <i>Amazon Chime Developer Guide</i>.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::GetAttendeeInput}.
    #
    # @option params [String] :meeting_id
    #   <p>The Amazon Chime SDK meeting ID.</p>
    #
    # @option params [String] :attendee_id
    #   <p>The Amazon Chime SDK attendee ID.</p>
    #
    # @return [Types::GetAttendeeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_attendee(
    #     meeting_id: 'MeetingId', # required
    #     attendee_id: 'AttendeeId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAttendeeOutput
    #   resp.data.attendee #=> Types::Attendee
    #   resp.data.attendee.external_user_id #=> String
    #   resp.data.attendee.attendee_id #=> String
    #   resp.data.attendee.join_token #=> String
    #   resp.data.attendee.capabilities #=> Types::AttendeeCapabilities
    #   resp.data.attendee.capabilities.audio #=> String, one of ["SendReceive", "Send", "Receive", "None"]
    #   resp.data.attendee.capabilities.video #=> String, one of ["SendReceive", "Send", "Receive", "None"]
    #   resp.data.attendee.capabilities.content #=> String, one of ["SendReceive", "Send", "Receive", "None"]
    #
    def get_attendee(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAttendeeInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAttendeeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAttendee
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableException, Errors::BadRequestException, Errors::ServiceFailureException, Errors::ForbiddenException, Errors::NotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::GetAttendee
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAttendee,
        stubs: @stubs,
        params_class: Params::GetAttendeeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_attendee
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the Amazon Chime SDK meeting details for the specified meeting ID. For more information about the Amazon Chime SDK, see
    #             <a href="https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html">Using the Amazon Chime SDK</a>
    #             in the <i>Amazon Chime Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetMeetingInput}.
    #
    # @option params [String] :meeting_id
    #   <p>The Amazon Chime SDK meeting ID.</p>
    #
    # @return [Types::GetMeetingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_meeting(
    #     meeting_id: 'MeetingId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetMeetingOutput
    #   resp.data.meeting #=> Types::Meeting
    #   resp.data.meeting.meeting_id #=> String
    #   resp.data.meeting.meeting_host_id #=> String
    #   resp.data.meeting.external_meeting_id #=> String
    #   resp.data.meeting.media_region #=> String
    #   resp.data.meeting.media_placement #=> Types::MediaPlacement
    #   resp.data.meeting.media_placement.audio_host_url #=> String
    #   resp.data.meeting.media_placement.audio_fallback_url #=> String
    #   resp.data.meeting.media_placement.signaling_url #=> String
    #   resp.data.meeting.media_placement.turn_control_url #=> String
    #   resp.data.meeting.media_placement.screen_data_url #=> String
    #   resp.data.meeting.media_placement.screen_viewing_url #=> String
    #   resp.data.meeting.media_placement.screen_sharing_url #=> String
    #   resp.data.meeting.media_placement.event_ingestion_url #=> String
    #   resp.data.meeting.meeting_features #=> Types::MeetingFeaturesConfiguration
    #   resp.data.meeting.meeting_features.audio #=> Types::AudioFeatures
    #   resp.data.meeting.meeting_features.audio.echo_reduction #=> String, one of ["AVAILABLE", "UNAVAILABLE"]
    #   resp.data.meeting.primary_meeting_id #=> String
    #
    def get_meeting(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetMeetingInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetMeetingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetMeeting
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableException, Errors::BadRequestException, Errors::ServiceFailureException, Errors::ForbiddenException, Errors::NotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::GetMeeting
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetMeeting,
        stubs: @stubs,
        params_class: Params::GetMeetingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_meeting
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             Lists the attendees for the specified Amazon Chime SDK meeting. For more information about the Amazon Chime SDK, see
    #             <a href="https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html">Using the Amazon Chime SDK</a>
    #             in the <i>Amazon Chime Developer Guide</i>.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::ListAttendeesInput}.
    #
    # @option params [String] :meeting_id
    #   <p>The Amazon Chime SDK meeting ID.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #
    # @return [Types::ListAttendeesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_attendees(
    #     meeting_id: 'MeetingId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAttendeesOutput
    #   resp.data.attendees #=> Array<Attendee>
    #   resp.data.attendees[0] #=> Types::Attendee
    #   resp.data.attendees[0].external_user_id #=> String
    #   resp.data.attendees[0].attendee_id #=> String
    #   resp.data.attendees[0].join_token #=> String
    #   resp.data.attendees[0].capabilities #=> Types::AttendeeCapabilities
    #   resp.data.attendees[0].capabilities.audio #=> String, one of ["SendReceive", "Send", "Receive", "None"]
    #   resp.data.attendees[0].capabilities.video #=> String, one of ["SendReceive", "Send", "Receive", "None"]
    #   resp.data.attendees[0].capabilities.content #=> String, one of ["SendReceive", "Send", "Receive", "None"]
    #   resp.data.next_token #=> String
    #
    def list_attendees(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAttendeesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAttendeesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAttendees
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableException, Errors::BadRequestException, Errors::ServiceFailureException, Errors::ForbiddenException, Errors::NotFoundException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::ListAttendees
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAttendees,
        stubs: @stubs,
        params_class: Params::ListAttendeesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_attendees
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts transcription for the specified <code>meetingId</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::StartMeetingTranscriptionInput}.
    #
    # @option params [String] :meeting_id
    #   <p>The unique ID of the meeting being transcribed.</p>
    #
    # @option params [TranscriptionConfiguration] :transcription_configuration
    #   <p>The configuration for the current transcription operation. Must contain <code>EngineTranscribeSettings</code> or
    #               <code>EngineTranscribeMedicalSettings</code>.</p>
    #
    # @return [Types::StartMeetingTranscriptionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_meeting_transcription(
    #     meeting_id: 'MeetingId', # required
    #     transcription_configuration: {
    #       engine_transcribe_settings: {
    #         language_code: 'en-US', # accepts ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR", "ja-JP", "ko-KR", "zh-CN"]
    #         vocabulary_filter_method: 'remove', # accepts ["remove", "mask", "tag"]
    #         vocabulary_filter_name: 'VocabularyFilterName',
    #         vocabulary_name: 'VocabularyName',
    #         region: 'us-east-2', # accepts ["us-east-2", "us-east-1", "us-west-2", "ap-northeast-2", "ap-southeast-2", "ap-northeast-1", "ca-central-1", "eu-central-1", "eu-west-1", "eu-west-2", "sa-east-1", "auto", "us-gov-west-1"]
    #         enable_partial_results_stabilization: false,
    #         partial_results_stability: 'low', # accepts ["low", "medium", "high"]
    #         content_identification_type: 'PII', # accepts ["PII"]
    #         content_redaction_type: 'PII', # accepts ["PII"]
    #         pii_entity_types: 'PiiEntityTypes',
    #         language_model_name: 'LanguageModelName',
    #         identify_language: false,
    #         language_options: 'LanguageOptions',
    #         preferred_language: 'en-US' # accepts ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR", "ja-JP", "ko-KR", "zh-CN"]
    #       },
    #       engine_transcribe_medical_settings: {
    #         language_code: 'en-US', # required - accepts ["en-US"]
    #         specialty: 'PRIMARYCARE', # required - accepts ["PRIMARYCARE", "CARDIOLOGY", "NEUROLOGY", "ONCOLOGY", "RADIOLOGY", "UROLOGY"]
    #         type: 'CONVERSATION', # required - accepts ["CONVERSATION", "DICTATION"]
    #         vocabulary_name: 'VocabularyName',
    #         region: 'us-east-1', # accepts ["us-east-1", "us-east-2", "us-west-2", "ap-southeast-2", "ca-central-1", "eu-west-1", "auto"]
    #         content_identification_type: 'PHI' # accepts ["PHI"]
    #       }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartMeetingTranscriptionOutput
    #
    def start_meeting_transcription(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartMeetingTranscriptionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartMeetingTranscriptionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartMeetingTranscription
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableException, Errors::BadRequestException, Errors::ServiceFailureException, Errors::ForbiddenException, Errors::NotFoundException, Errors::LimitExceededException, Errors::ThrottlingException, Errors::UnprocessableEntityException, Errors::UnauthorizedException]),
        data_parser: Parsers::StartMeetingTranscription
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartMeetingTranscription,
        stubs: @stubs,
        params_class: Params::StartMeetingTranscriptionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_meeting_transcription
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops transcription for the specified <code>meetingId</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::StopMeetingTranscriptionInput}.
    #
    # @option params [String] :meeting_id
    #   <p>The unique ID of the meeting for which you stop transcription.</p>
    #
    # @return [Types::StopMeetingTranscriptionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_meeting_transcription(
    #     meeting_id: 'MeetingId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopMeetingTranscriptionOutput
    #
    def stop_meeting_transcription(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopMeetingTranscriptionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopMeetingTranscriptionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopMeetingTranscription
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableException, Errors::BadRequestException, Errors::ServiceFailureException, Errors::ForbiddenException, Errors::NotFoundException, Errors::ThrottlingException, Errors::UnprocessableEntityException, Errors::UnauthorizedException]),
        data_parser: Parsers::StopMeetingTranscription
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopMeetingTranscription,
        stubs: @stubs,
        params_class: Params::StopMeetingTranscriptionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_meeting_transcription
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>The capabilties that you want to update.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateAttendeeCapabilitiesInput}.
    #
    # @option params [String] :meeting_id
    #   <p>The ID of the meeting associated with the update request.</p>
    #
    # @option params [String] :attendee_id
    #   <p>The ID of the attendee associated with the update request.</p>
    #
    # @option params [AttendeeCapabilities] :capabilities
    #   <p>The capabilties that you want to update.</p>
    #
    # @return [Types::UpdateAttendeeCapabilitiesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_attendee_capabilities(
    #     meeting_id: 'MeetingId', # required
    #     attendee_id: 'AttendeeId', # required
    #     capabilities: {
    #       audio: 'SendReceive', # required - accepts ["SendReceive", "Send", "Receive", "None"]
    #       video: 'SendReceive', # required - accepts ["SendReceive", "Send", "Receive", "None"]
    #       content: 'SendReceive' # required - accepts ["SendReceive", "Send", "Receive", "None"]
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAttendeeCapabilitiesOutput
    #   resp.data.attendee #=> Types::Attendee
    #   resp.data.attendee.external_user_id #=> String
    #   resp.data.attendee.attendee_id #=> String
    #   resp.data.attendee.join_token #=> String
    #   resp.data.attendee.capabilities #=> Types::AttendeeCapabilities
    #   resp.data.attendee.capabilities.audio #=> String, one of ["SendReceive", "Send", "Receive", "None"]
    #   resp.data.attendee.capabilities.video #=> String, one of ["SendReceive", "Send", "Receive", "None"]
    #   resp.data.attendee.capabilities.content #=> String, one of ["SendReceive", "Send", "Receive", "None"]
    #
    def update_attendee_capabilities(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAttendeeCapabilitiesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAttendeeCapabilitiesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAttendeeCapabilities
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableException, Errors::BadRequestException, Errors::ForbiddenException, Errors::NotFoundException, Errors::UnauthorizedException, Errors::ConflictException]),
        data_parser: Parsers::UpdateAttendeeCapabilities
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateAttendeeCapabilities,
        stubs: @stubs,
        params_class: Params::UpdateAttendeeCapabilitiesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_attendee_capabilities
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
