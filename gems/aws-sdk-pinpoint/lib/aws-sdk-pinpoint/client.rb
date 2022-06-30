# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::Pinpoint
  # An API client for Pinpoint
  # See {#initialize} for a full list of supported configuration options
  # <p>Doc Engage API - Amazon Pinpoint API</p>
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
    def initialize(config = AWS::SDK::Pinpoint::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates an application.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateAppInput}.
    #
    # @option params [CreateApplicationRequest] :create_application_request
    #   <p>Specifies the display name of an application and the tags to associate with the application.</p>
    #
    # @return [Types::CreateAppOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_app(
    #     create_application_request: {
    #       name: 'Name', # required
    #       tags: {
    #         'key' => 'value'
    #       }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAppOutput
    #   resp.data.application_response #=> Types::ApplicationResponse
    #   resp.data.application_response.arn #=> String
    #   resp.data.application_response.id #=> String
    #   resp.data.application_response.name #=> String
    #   resp.data.application_response.tags #=> Hash<String, String>
    #   resp.data.application_response.tags['key'] #=> String
    #   resp.data.application_response.creation_date #=> String
    #
    def create_app(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAppInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAppInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateApp
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::CreateApp
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateApp,
        stubs: @stubs,
        params_class: Params::CreateAppOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_app
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new campaign for an application or updates the settings of an existing campaign for an application.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateCampaignInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @option params [WriteCampaignRequest] :write_campaign_request
    #   <p>Specifies the configuration and other settings for a campaign.</p>
    #
    # @return [Types::CreateCampaignOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_campaign(
    #     application_id: 'ApplicationId', # required
    #     write_campaign_request: {
    #       additional_treatments: [
    #         {
    #           custom_delivery_configuration: {
    #             delivery_uri: 'DeliveryUri', # required
    #             endpoint_types: [
    #               'PUSH' # accepts ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"]
    #             ]
    #           },
    #           message_configuration: {
    #             adm_message: {
    #               action: 'OPEN_APP', # accepts ["OPEN_APP", "DEEP_LINK", "URL"]
    #               body: 'Body',
    #               image_icon_url: 'ImageIconUrl',
    #               image_small_icon_url: 'ImageSmallIconUrl',
    #               image_url: 'ImageUrl',
    #               json_body: 'JsonBody',
    #               media_url: 'MediaUrl',
    #               raw_content: 'RawContent',
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: 'Title',
    #               url: 'Url'
    #             },
    #             custom_message: {
    #               data: 'Data'
    #             },
    #             email_message: {
    #               body: 'Body',
    #               from_address: 'FromAddress',
    #               html_body: 'HtmlBody',
    #               title: 'Title'
    #             },
    #             sms_message: {
    #               body: 'Body',
    #               message_type: 'TRANSACTIONAL', # accepts ["TRANSACTIONAL", "PROMOTIONAL"]
    #               origination_number: 'OriginationNumber',
    #               sender_id: 'SenderId',
    #               entity_id: 'EntityId',
    #               template_id: 'TemplateId'
    #             },
    #             in_app_message: {
    #               body: 'Body',
    #               content: [
    #                 {
    #                   background_color: 'BackgroundColor',
    #                   body_config: {
    #                     alignment: 'LEFT', # required - accepts ["LEFT", "CENTER", "RIGHT"]
    #                     body: 'Body', # required
    #                     text_color: 'TextColor' # required
    #                   },
    #                   header_config: {
    #                     alignment: 'LEFT', # required - accepts ["LEFT", "CENTER", "RIGHT"]
    #                     header: 'Header', # required
    #                     text_color: 'TextColor' # required
    #                   },
    #                   image_url: 'ImageUrl',
    #                   primary_btn: {
    #                     android: {
    #                       button_action: 'LINK', # required - accepts ["LINK", "DEEP_LINK", "CLOSE"]
    #                       link: 'Link'
    #                     },
    #                     default_config: {
    #                       background_color: 'BackgroundColor',
    #                       border_radius: 1,
    #                       button_action: 'LINK', # required - accepts ["LINK", "DEEP_LINK", "CLOSE"]
    #                       link: 'Link',
    #                       text: 'Text', # required
    #                       text_color: 'TextColor'
    #                     },
    #                   },
    #                 }
    #               ],
    #               custom_config: {
    #                 'key' => 'value'
    #               },
    #               layout: 'BOTTOM_BANNER' # accepts ["BOTTOM_BANNER", "TOP_BANNER", "OVERLAYS", "MOBILE_FEED", "MIDDLE_BANNER", "CAROUSEL"]
    #             }
    #           },
    #           schedule: {
    #             end_time: 'EndTime',
    #             event_filter: {
    #               dimensions: {
    #                 attributes: {
    #                   'key' => {
    #                     attribute_type: 'INCLUSIVE', # accepts ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"]
    #                     values: [
    #                       'member'
    #                     ] # required
    #                   }
    #                 },
    #                 event_type: {
    #                   dimension_type: 'INCLUSIVE', # accepts ["INCLUSIVE", "EXCLUSIVE"]
    #                 },
    #                 metrics: {
    #                   'key' => {
    #                     comparison_operator: 'ComparisonOperator', # required
    #                     value: 1.0 # required
    #                   }
    #                 }
    #               }, # required
    #               filter_type: 'SYSTEM' # required - accepts ["SYSTEM", "ENDPOINT"]
    #             },
    #             frequency: 'ONCE', # accepts ["ONCE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY", "EVENT", "IN_APP_EVENT"]
    #             is_local_time: false,
    #             quiet_time: {
    #               end: 'End',
    #               start: 'Start'
    #             },
    #             start_time: 'StartTime', # required
    #             timezone: 'Timezone'
    #           },
    #           size_percent: 1, # required
    #           template_configuration: {
    #             email_template: {
    #               name: 'Name',
    #               version: 'Version'
    #             },
    #           },
    #           treatment_description: 'TreatmentDescription',
    #           treatment_name: 'TreatmentName'
    #         }
    #       ],
    #       description: 'Description',
    #       holdout_percent: 1,
    #       hook: {
    #         lambda_function_name: 'LambdaFunctionName',
    #         mode: 'DELIVERY', # accepts ["DELIVERY", "FILTER"]
    #         web_url: 'WebUrl'
    #       },
    #       is_paused: false,
    #       limits: {
    #         daily: 1,
    #         maximum_duration: 1,
    #         messages_per_second: 1,
    #         total: 1,
    #         session: 1
    #       },
    #       name: 'Name',
    #       segment_id: 'SegmentId',
    #       segment_version: 1,
    #       treatment_description: 'TreatmentDescription',
    #       treatment_name: 'TreatmentName',
    #       priority: 1
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateCampaignOutput
    #   resp.data.campaign_response #=> Types::CampaignResponse
    #   resp.data.campaign_response.additional_treatments #=> Array<TreatmentResource>
    #   resp.data.campaign_response.additional_treatments[0] #=> Types::TreatmentResource
    #   resp.data.campaign_response.additional_treatments[0].custom_delivery_configuration #=> Types::CustomDeliveryConfiguration
    #   resp.data.campaign_response.additional_treatments[0].custom_delivery_configuration.delivery_uri #=> String
    #   resp.data.campaign_response.additional_treatments[0].custom_delivery_configuration.endpoint_types #=> Array<String>
    #   resp.data.campaign_response.additional_treatments[0].custom_delivery_configuration.endpoint_types[0] #=> String, one of ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"]
    #   resp.data.campaign_response.additional_treatments[0].id #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration #=> Types::MessageConfiguration
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message #=> Types::Message
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.action #=> String, one of ["OPEN_APP", "DEEP_LINK", "URL"]
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.body #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.image_icon_url #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.image_small_icon_url #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.image_url #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.json_body #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.media_url #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.raw_content #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.silent_push #=> Boolean
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.time_to_live #=> Integer
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.title #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.url #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.apns_message #=> Types::Message
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.baidu_message #=> Types::Message
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.custom_message #=> Types::CampaignCustomMessage
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.custom_message.data #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.default_message #=> Types::Message
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.email_message #=> Types::CampaignEmailMessage
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.email_message.body #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.email_message.from_address #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.email_message.html_body #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.email_message.title #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.gcm_message #=> Types::Message
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.sms_message #=> Types::CampaignSmsMessage
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.sms_message.body #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.sms_message.message_type #=> String, one of ["TRANSACTIONAL", "PROMOTIONAL"]
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.sms_message.origination_number #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.sms_message.sender_id #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.sms_message.entity_id #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.sms_message.template_id #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message #=> Types::CampaignInAppMessage
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.body #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content #=> Array<InAppMessageContent>
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0] #=> Types::InAppMessageContent
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].background_color #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].body_config #=> Types::InAppMessageBodyConfig
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].body_config.alignment #=> String, one of ["LEFT", "CENTER", "RIGHT"]
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].body_config.body #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].body_config.text_color #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].header_config #=> Types::InAppMessageHeaderConfig
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].header_config.alignment #=> String, one of ["LEFT", "CENTER", "RIGHT"]
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].header_config.header #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].header_config.text_color #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].image_url #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn #=> Types::InAppMessageButton
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.android #=> Types::OverrideButtonConfiguration
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.android.button_action #=> String, one of ["LINK", "DEEP_LINK", "CLOSE"]
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.android.link #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.default_config #=> Types::DefaultButtonConfiguration
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.default_config.background_color #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.default_config.border_radius #=> Integer
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.default_config.button_action #=> String, one of ["LINK", "DEEP_LINK", "CLOSE"]
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.default_config.link #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.default_config.text #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.default_config.text_color #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.ios #=> Types::OverrideButtonConfiguration
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.web #=> Types::OverrideButtonConfiguration
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].secondary_btn #=> Types::InAppMessageButton
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.custom_config #=> Hash<String, String>
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.custom_config['key'] #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.layout #=> String, one of ["BOTTOM_BANNER", "TOP_BANNER", "OVERLAYS", "MOBILE_FEED", "MIDDLE_BANNER", "CAROUSEL"]
    #   resp.data.campaign_response.additional_treatments[0].schedule #=> Types::Schedule
    #   resp.data.campaign_response.additional_treatments[0].schedule.end_time #=> String
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter #=> Types::CampaignEventFilter
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions #=> Types::EventDimensions
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.attributes #=> Hash<String, AttributeDimension>
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.attributes['key'] #=> Types::AttributeDimension
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.attributes['key'].attribute_type #=> String, one of ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"]
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.attributes['key'].values #=> Array<String>
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.attributes['key'].values[0] #=> String
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.event_type #=> Types::SetDimension
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.event_type.dimension_type #=> String, one of ["INCLUSIVE", "EXCLUSIVE"]
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.event_type.values #=> Array<String>
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.metrics #=> Hash<String, MetricDimension>
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.metrics['key'] #=> Types::MetricDimension
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.metrics['key'].comparison_operator #=> String
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.metrics['key'].value #=> Float
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.filter_type #=> String, one of ["SYSTEM", "ENDPOINT"]
    #   resp.data.campaign_response.additional_treatments[0].schedule.frequency #=> String, one of ["ONCE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY", "EVENT", "IN_APP_EVENT"]
    #   resp.data.campaign_response.additional_treatments[0].schedule.is_local_time #=> Boolean
    #   resp.data.campaign_response.additional_treatments[0].schedule.quiet_time #=> Types::QuietTime
    #   resp.data.campaign_response.additional_treatments[0].schedule.quiet_time.end #=> String
    #   resp.data.campaign_response.additional_treatments[0].schedule.quiet_time.start #=> String
    #   resp.data.campaign_response.additional_treatments[0].schedule.start_time #=> String
    #   resp.data.campaign_response.additional_treatments[0].schedule.timezone #=> String
    #   resp.data.campaign_response.additional_treatments[0].size_percent #=> Integer
    #   resp.data.campaign_response.additional_treatments[0].state #=> Types::CampaignState
    #   resp.data.campaign_response.additional_treatments[0].state.campaign_status #=> String, one of ["SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED", "DELETED", "INVALID"]
    #   resp.data.campaign_response.additional_treatments[0].template_configuration #=> Types::TemplateConfiguration
    #   resp.data.campaign_response.additional_treatments[0].template_configuration.email_template #=> Types::Template
    #   resp.data.campaign_response.additional_treatments[0].template_configuration.email_template.name #=> String
    #   resp.data.campaign_response.additional_treatments[0].template_configuration.email_template.version #=> String
    #   resp.data.campaign_response.additional_treatments[0].template_configuration.push_template #=> Types::Template
    #   resp.data.campaign_response.additional_treatments[0].template_configuration.sms_template #=> Types::Template
    #   resp.data.campaign_response.additional_treatments[0].template_configuration.voice_template #=> Types::Template
    #   resp.data.campaign_response.additional_treatments[0].treatment_description #=> String
    #   resp.data.campaign_response.additional_treatments[0].treatment_name #=> String
    #   resp.data.campaign_response.application_id #=> String
    #   resp.data.campaign_response.arn #=> String
    #   resp.data.campaign_response.creation_date #=> String
    #   resp.data.campaign_response.custom_delivery_configuration #=> Types::CustomDeliveryConfiguration
    #   resp.data.campaign_response.default_state #=> Types::CampaignState
    #   resp.data.campaign_response.description #=> String
    #   resp.data.campaign_response.holdout_percent #=> Integer
    #   resp.data.campaign_response.hook #=> Types::CampaignHook
    #   resp.data.campaign_response.hook.lambda_function_name #=> String
    #   resp.data.campaign_response.hook.mode #=> String, one of ["DELIVERY", "FILTER"]
    #   resp.data.campaign_response.hook.web_url #=> String
    #   resp.data.campaign_response.id #=> String
    #   resp.data.campaign_response.is_paused #=> Boolean
    #   resp.data.campaign_response.last_modified_date #=> String
    #   resp.data.campaign_response.limits #=> Types::CampaignLimits
    #   resp.data.campaign_response.limits.daily #=> Integer
    #   resp.data.campaign_response.limits.maximum_duration #=> Integer
    #   resp.data.campaign_response.limits.messages_per_second #=> Integer
    #   resp.data.campaign_response.limits.total #=> Integer
    #   resp.data.campaign_response.limits.session #=> Integer
    #   resp.data.campaign_response.message_configuration #=> Types::MessageConfiguration
    #   resp.data.campaign_response.name #=> String
    #   resp.data.campaign_response.schedule #=> Types::Schedule
    #   resp.data.campaign_response.segment_id #=> String
    #   resp.data.campaign_response.segment_version #=> Integer
    #   resp.data.campaign_response.state #=> Types::CampaignState
    #   resp.data.campaign_response.tags #=> Hash<String, String>
    #   resp.data.campaign_response.template_configuration #=> Types::TemplateConfiguration
    #   resp.data.campaign_response.treatment_description #=> String
    #   resp.data.campaign_response.treatment_name #=> String
    #   resp.data.campaign_response.version #=> Integer
    #   resp.data.campaign_response.priority #=> Integer
    #
    def create_campaign(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateCampaignInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateCampaignInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateCampaign
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::CreateCampaign
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateCampaign,
        stubs: @stubs,
        params_class: Params::CreateCampaignOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_campaign
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a message template for messages that are sent through the email channel.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateEmailTemplateInput}.
    #
    # @option params [EmailTemplateRequest] :email_template_request
    #   <p>Specifies the content and settings for a message template that can be used in messages that are sent through the email channel.</p>
    #
    # @option params [String] :template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    #
    # @return [Types::CreateEmailTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_email_template(
    #     email_template_request: {
    #       default_substitutions: 'DefaultSubstitutions',
    #       html_part: 'HtmlPart',
    #       recommender_id: 'RecommenderId',
    #       subject: 'Subject',
    #       tags: {
    #         'key' => 'value'
    #       },
    #       template_description: 'TemplateDescription',
    #       text_part: 'TextPart'
    #     }, # required
    #     template_name: 'TemplateName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateEmailTemplateOutput
    #   resp.data.create_template_message_body #=> Types::CreateTemplateMessageBody
    #   resp.data.create_template_message_body.arn #=> String
    #   resp.data.create_template_message_body.message #=> String
    #   resp.data.create_template_message_body.request_id #=> String
    #
    def create_email_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateEmailTemplateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateEmailTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateEmailTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException]),
        data_parser: Parsers::CreateEmailTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateEmailTemplate,
        stubs: @stubs,
        params_class: Params::CreateEmailTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_email_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an export job for an application.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateExportJobInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @option params [ExportJobRequest] :export_job_request
    #   <p>Specifies the settings for a job that exports endpoint definitions to an Amazon Simple Storage Service (Amazon S3) bucket.</p>
    #
    # @return [Types::CreateExportJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_export_job(
    #     application_id: 'ApplicationId', # required
    #     export_job_request: {
    #       role_arn: 'RoleArn', # required
    #       s3_url_prefix: 'S3UrlPrefix', # required
    #       segment_id: 'SegmentId',
    #       segment_version: 1
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateExportJobOutput
    #   resp.data.export_job_response #=> Types::ExportJobResponse
    #   resp.data.export_job_response.application_id #=> String
    #   resp.data.export_job_response.completed_pieces #=> Integer
    #   resp.data.export_job_response.completion_date #=> String
    #   resp.data.export_job_response.creation_date #=> String
    #   resp.data.export_job_response.definition #=> Types::ExportJobResource
    #   resp.data.export_job_response.definition.role_arn #=> String
    #   resp.data.export_job_response.definition.s3_url_prefix #=> String
    #   resp.data.export_job_response.definition.segment_id #=> String
    #   resp.data.export_job_response.definition.segment_version #=> Integer
    #   resp.data.export_job_response.failed_pieces #=> Integer
    #   resp.data.export_job_response.failures #=> Array<String>
    #   resp.data.export_job_response.failures[0] #=> String
    #   resp.data.export_job_response.id #=> String
    #   resp.data.export_job_response.job_status #=> String, one of ["CREATED", "PREPARING_FOR_INITIALIZATION", "INITIALIZING", "PROCESSING", "PENDING_JOB", "COMPLETING", "COMPLETED", "FAILING", "FAILED"]
    #   resp.data.export_job_response.total_failures #=> Integer
    #   resp.data.export_job_response.total_pieces #=> Integer
    #   resp.data.export_job_response.total_processed #=> Integer
    #   resp.data.export_job_response.type #=> String
    #
    def create_export_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateExportJobInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateExportJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateExportJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::CreateExportJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateExportJob,
        stubs: @stubs,
        params_class: Params::CreateExportJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_export_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an import job for an application.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateImportJobInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @option params [ImportJobRequest] :import_job_request
    #   <p>Specifies the settings for a job that imports endpoint definitions from an Amazon Simple Storage Service (Amazon S3) bucket.</p>
    #
    # @return [Types::CreateImportJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_import_job(
    #     application_id: 'ApplicationId', # required
    #     import_job_request: {
    #       define_segment: false,
    #       external_id: 'ExternalId',
    #       format: 'CSV', # required - accepts ["CSV", "JSON"]
    #       register_endpoints: false,
    #       role_arn: 'RoleArn', # required
    #       s3_url: 'S3Url', # required
    #       segment_id: 'SegmentId',
    #       segment_name: 'SegmentName'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateImportJobOutput
    #   resp.data.import_job_response #=> Types::ImportJobResponse
    #   resp.data.import_job_response.application_id #=> String
    #   resp.data.import_job_response.completed_pieces #=> Integer
    #   resp.data.import_job_response.completion_date #=> String
    #   resp.data.import_job_response.creation_date #=> String
    #   resp.data.import_job_response.definition #=> Types::ImportJobResource
    #   resp.data.import_job_response.definition.define_segment #=> Boolean
    #   resp.data.import_job_response.definition.external_id #=> String
    #   resp.data.import_job_response.definition.format #=> String, one of ["CSV", "JSON"]
    #   resp.data.import_job_response.definition.register_endpoints #=> Boolean
    #   resp.data.import_job_response.definition.role_arn #=> String
    #   resp.data.import_job_response.definition.s3_url #=> String
    #   resp.data.import_job_response.definition.segment_id #=> String
    #   resp.data.import_job_response.definition.segment_name #=> String
    #   resp.data.import_job_response.failed_pieces #=> Integer
    #   resp.data.import_job_response.failures #=> Array<String>
    #   resp.data.import_job_response.failures[0] #=> String
    #   resp.data.import_job_response.id #=> String
    #   resp.data.import_job_response.job_status #=> String, one of ["CREATED", "PREPARING_FOR_INITIALIZATION", "INITIALIZING", "PROCESSING", "PENDING_JOB", "COMPLETING", "COMPLETED", "FAILING", "FAILED"]
    #   resp.data.import_job_response.total_failures #=> Integer
    #   resp.data.import_job_response.total_pieces #=> Integer
    #   resp.data.import_job_response.total_processed #=> Integer
    #   resp.data.import_job_response.type #=> String
    #
    def create_import_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateImportJobInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateImportJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateImportJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::CreateImportJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateImportJob,
        stubs: @stubs,
        params_class: Params::CreateImportJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_import_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new message template for messages using the in-app message channel.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateInAppTemplateInput}.
    #
    # @option params [InAppTemplateRequest] :in_app_template_request
    #   <p>InApp Template Request.</p>
    #
    # @option params [String] :template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    #
    # @return [Types::CreateInAppTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_in_app_template(
    #     in_app_template_request: {
    #       content: [
    #         {
    #           background_color: 'BackgroundColor',
    #           body_config: {
    #             alignment: 'LEFT', # required - accepts ["LEFT", "CENTER", "RIGHT"]
    #             body: 'Body', # required
    #             text_color: 'TextColor' # required
    #           },
    #           header_config: {
    #             alignment: 'LEFT', # required - accepts ["LEFT", "CENTER", "RIGHT"]
    #             header: 'Header', # required
    #             text_color: 'TextColor' # required
    #           },
    #           image_url: 'ImageUrl',
    #           primary_btn: {
    #             android: {
    #               button_action: 'LINK', # required - accepts ["LINK", "DEEP_LINK", "CLOSE"]
    #               link: 'Link'
    #             },
    #             default_config: {
    #               background_color: 'BackgroundColor',
    #               border_radius: 1,
    #               button_action: 'LINK', # required - accepts ["LINK", "DEEP_LINK", "CLOSE"]
    #               link: 'Link',
    #               text: 'Text', # required
    #               text_color: 'TextColor'
    #             },
    #           },
    #         }
    #       ],
    #       custom_config: {
    #         'key' => 'value'
    #       },
    #       layout: 'BOTTOM_BANNER', # accepts ["BOTTOM_BANNER", "TOP_BANNER", "OVERLAYS", "MOBILE_FEED", "MIDDLE_BANNER", "CAROUSEL"]
    #       template_description: 'TemplateDescription'
    #     }, # required
    #     template_name: 'TemplateName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateInAppTemplateOutput
    #   resp.data.template_create_message_body #=> Types::TemplateCreateMessageBody
    #   resp.data.template_create_message_body.arn #=> String
    #   resp.data.template_create_message_body.message #=> String
    #   resp.data.template_create_message_body.request_id #=> String
    #
    def create_in_app_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateInAppTemplateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateInAppTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateInAppTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException]),
        data_parser: Parsers::CreateInAppTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateInAppTemplate,
        stubs: @stubs,
        params_class: Params::CreateInAppTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_in_app_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a journey for an application.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateJourneyInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @option params [WriteJourneyRequest] :write_journey_request
    #   <p>Specifies the configuration and other settings for a journey.</p>
    #
    # @return [Types::CreateJourneyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_journey(
    #     application_id: 'ApplicationId', # required
    #     write_journey_request: {
    #       activities: {
    #         'key' => {
    #           custom: {
    #             delivery_uri: 'DeliveryUri',
    #             endpoint_types: [
    #               'PUSH' # accepts ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"]
    #             ],
    #             message_config: {
    #               data: 'Data'
    #             },
    #             next_activity: 'NextActivity',
    #             template_name: 'TemplateName',
    #             template_version: 'TemplateVersion'
    #           },
    #           conditional_split: {
    #             condition: {
    #               conditions: [
    #                 {
    #                   event_condition: {
    #                     dimensions: {
    #                       attributes: {
    #                         'key' => {
    #                           attribute_type: 'INCLUSIVE', # accepts ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"]
    #                           values: [
    #                             'member'
    #                           ] # required
    #                         }
    #                       },
    #                       event_type: {
    #                         dimension_type: 'INCLUSIVE', # accepts ["INCLUSIVE", "EXCLUSIVE"]
    #                       },
    #                       metrics: {
    #                         'key' => {
    #                           comparison_operator: 'ComparisonOperator', # required
    #                           value: 1.0 # required
    #                         }
    #                       }
    #                     },
    #                     message_activity: 'MessageActivity'
    #                   },
    #                   segment_condition: {
    #                     segment_id: 'SegmentId' # required
    #                   },
    #                   segment_dimensions: {
    #                     behavior: {
    #                       recency: {
    #                         duration: 'HR_24', # required - accepts ["HR_24", "DAY_7", "DAY_14", "DAY_30"]
    #                         recency_type: 'ACTIVE' # required - accepts ["ACTIVE", "INACTIVE"]
    #                       }
    #                     },
    #                     demographic: {
    #                     },
    #                     location: {
    #                       gps_point: {
    #                         coordinates: {
    #                           latitude: 1.0, # required
    #                           longitude: 1.0 # required
    #                         }, # required
    #                         range_in_kilometers: 1.0
    #                       }
    #                     },
    #                   }
    #                 }
    #               ],
    #               operator: 'ALL' # accepts ["ALL", "ANY"]
    #             },
    #             evaluation_wait_time: {
    #               wait_for: 'WaitFor',
    #               wait_until: 'WaitUntil'
    #             },
    #             false_activity: 'FalseActivity',
    #             true_activity: 'TrueActivity'
    #           },
    #           description: 'Description',
    #           email: {
    #             message_config: {
    #               from_address: 'FromAddress'
    #             },
    #             next_activity: 'NextActivity',
    #             template_name: 'TemplateName',
    #             template_version: 'TemplateVersion'
    #           },
    #           holdout: {
    #             next_activity: 'NextActivity',
    #             percentage: 1 # required
    #           },
    #           multi_condition: {
    #             branches: [
    #               {
    #                 next_activity: 'NextActivity'
    #               }
    #             ],
    #             default_activity: 'DefaultActivity',
    #           },
    #           push: {
    #             message_config: {
    #               time_to_live: 'TimeToLive'
    #             },
    #             next_activity: 'NextActivity',
    #             template_name: 'TemplateName',
    #             template_version: 'TemplateVersion'
    #           },
    #           random_split: {
    #             branches: [
    #               {
    #                 next_activity: 'NextActivity',
    #                 percentage: 1
    #               }
    #             ]
    #           },
    #           sms: {
    #             message_config: {
    #               message_type: 'TRANSACTIONAL', # accepts ["TRANSACTIONAL", "PROMOTIONAL"]
    #               origination_number: 'OriginationNumber',
    #               sender_id: 'SenderId',
    #               entity_id: 'EntityId',
    #               template_id: 'TemplateId'
    #             },
    #             next_activity: 'NextActivity',
    #             template_name: 'TemplateName',
    #             template_version: 'TemplateVersion'
    #           },
    #           wait: {
    #             next_activity: 'NextActivity',
    #           },
    #           contact_center: {
    #             next_activity: 'NextActivity'
    #           }
    #         }
    #       },
    #       creation_date: 'CreationDate',
    #       last_modified_date: 'LastModifiedDate',
    #       limits: {
    #         daily_cap: 1,
    #         endpoint_reentry_cap: 1,
    #         messages_per_second: 1,
    #         endpoint_reentry_interval: 'EndpointReentryInterval'
    #       },
    #       local_time: false,
    #       name: 'Name', # required
    #       quiet_time: {
    #         end: 'End',
    #         start: 'Start'
    #       },
    #       refresh_frequency: 'RefreshFrequency',
    #       schedule: {
    #         end_time: Time.now,
    #         start_time: Time.now,
    #         timezone: 'Timezone'
    #       },
    #       start_activity: 'StartActivity',
    #       start_condition: {
    #         description: 'Description',
    #         event_start_condition: {
    #           event_filter: {
    #             filter_type: 'SYSTEM' # required - accepts ["SYSTEM", "ENDPOINT"]
    #           },
    #           segment_id: 'SegmentId'
    #         },
    #       },
    #       state: 'DRAFT', # accepts ["DRAFT", "ACTIVE", "COMPLETED", "CANCELLED", "CLOSED", "PAUSED"]
    #       wait_for_quiet_time: false,
    #       refresh_on_segment_update: false,
    #       journey_channel_settings: {
    #         connect_campaign_arn: 'ConnectCampaignArn',
    #         connect_campaign_execution_role_arn: 'ConnectCampaignExecutionRoleArn'
    #       }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateJourneyOutput
    #   resp.data.journey_response #=> Types::JourneyResponse
    #   resp.data.journey_response.activities #=> Hash<String, Activity>
    #   resp.data.journey_response.activities['key'] #=> Types::Activity
    #   resp.data.journey_response.activities['key'].custom #=> Types::CustomMessageActivity
    #   resp.data.journey_response.activities['key'].custom.delivery_uri #=> String
    #   resp.data.journey_response.activities['key'].custom.endpoint_types #=> Array<String>
    #   resp.data.journey_response.activities['key'].custom.endpoint_types[0] #=> String, one of ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"]
    #   resp.data.journey_response.activities['key'].custom.message_config #=> Types::JourneyCustomMessage
    #   resp.data.journey_response.activities['key'].custom.message_config.data #=> String
    #   resp.data.journey_response.activities['key'].custom.next_activity #=> String
    #   resp.data.journey_response.activities['key'].custom.template_name #=> String
    #   resp.data.journey_response.activities['key'].custom.template_version #=> String
    #   resp.data.journey_response.activities['key'].conditional_split #=> Types::ConditionalSplitActivity
    #   resp.data.journey_response.activities['key'].conditional_split.condition #=> Types::Condition
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions #=> Array<SimpleCondition>
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0] #=> Types::SimpleCondition
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition #=> Types::EventCondition
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions #=> Types::EventDimensions
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.attributes #=> Hash<String, AttributeDimension>
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.attributes['key'] #=> Types::AttributeDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.attributes['key'].attribute_type #=> String, one of ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"]
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.attributes['key'].values #=> Array<String>
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.attributes['key'].values[0] #=> String
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.event_type #=> Types::SetDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.event_type.dimension_type #=> String, one of ["INCLUSIVE", "EXCLUSIVE"]
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.event_type.values #=> Array<String>
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.metrics #=> Hash<String, MetricDimension>
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.metrics['key'] #=> Types::MetricDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.metrics['key'].comparison_operator #=> String
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.metrics['key'].value #=> Float
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.message_activity #=> String
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_condition #=> Types::SegmentCondition
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_condition.segment_id #=> String
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions #=> Types::SegmentDimensions
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.attributes #=> Hash<String, AttributeDimension>
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.behavior #=> Types::SegmentBehaviors
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.behavior.recency #=> Types::RecencyDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.behavior.recency.duration #=> String, one of ["HR_24", "DAY_7", "DAY_14", "DAY_30"]
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.behavior.recency.recency_type #=> String, one of ["ACTIVE", "INACTIVE"]
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.demographic #=> Types::SegmentDemographics
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.demographic.app_version #=> Types::SetDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.demographic.channel #=> Types::SetDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.demographic.device_type #=> Types::SetDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.demographic.make #=> Types::SetDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.demographic.model #=> Types::SetDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.demographic.platform #=> Types::SetDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.location #=> Types::SegmentLocation
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.location.country #=> Types::SetDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.location.gps_point #=> Types::GPSPointDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.location.gps_point.coordinates #=> Types::GPSCoordinates
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.location.gps_point.coordinates.latitude #=> Float
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.location.gps_point.coordinates.longitude #=> Float
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.location.gps_point.range_in_kilometers #=> Float
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.metrics #=> Hash<String, MetricDimension>
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.user_attributes #=> Hash<String, AttributeDimension>
    #   resp.data.journey_response.activities['key'].conditional_split.condition.operator #=> String, one of ["ALL", "ANY"]
    #   resp.data.journey_response.activities['key'].conditional_split.evaluation_wait_time #=> Types::WaitTime
    #   resp.data.journey_response.activities['key'].conditional_split.evaluation_wait_time.wait_for #=> String
    #   resp.data.journey_response.activities['key'].conditional_split.evaluation_wait_time.wait_until #=> String
    #   resp.data.journey_response.activities['key'].conditional_split.false_activity #=> String
    #   resp.data.journey_response.activities['key'].conditional_split.true_activity #=> String
    #   resp.data.journey_response.activities['key'].description #=> String
    #   resp.data.journey_response.activities['key'].email #=> Types::EmailMessageActivity
    #   resp.data.journey_response.activities['key'].email.message_config #=> Types::JourneyEmailMessage
    #   resp.data.journey_response.activities['key'].email.message_config.from_address #=> String
    #   resp.data.journey_response.activities['key'].email.next_activity #=> String
    #   resp.data.journey_response.activities['key'].email.template_name #=> String
    #   resp.data.journey_response.activities['key'].email.template_version #=> String
    #   resp.data.journey_response.activities['key'].holdout #=> Types::HoldoutActivity
    #   resp.data.journey_response.activities['key'].holdout.next_activity #=> String
    #   resp.data.journey_response.activities['key'].holdout.percentage #=> Integer
    #   resp.data.journey_response.activities['key'].multi_condition #=> Types::MultiConditionalSplitActivity
    #   resp.data.journey_response.activities['key'].multi_condition.branches #=> Array<MultiConditionalBranch>
    #   resp.data.journey_response.activities['key'].multi_condition.branches[0] #=> Types::MultiConditionalBranch
    #   resp.data.journey_response.activities['key'].multi_condition.branches[0].condition #=> Types::SimpleCondition
    #   resp.data.journey_response.activities['key'].multi_condition.branches[0].next_activity #=> String
    #   resp.data.journey_response.activities['key'].multi_condition.default_activity #=> String
    #   resp.data.journey_response.activities['key'].multi_condition.evaluation_wait_time #=> Types::WaitTime
    #   resp.data.journey_response.activities['key'].push #=> Types::PushMessageActivity
    #   resp.data.journey_response.activities['key'].push.message_config #=> Types::JourneyPushMessage
    #   resp.data.journey_response.activities['key'].push.message_config.time_to_live #=> String
    #   resp.data.journey_response.activities['key'].push.next_activity #=> String
    #   resp.data.journey_response.activities['key'].push.template_name #=> String
    #   resp.data.journey_response.activities['key'].push.template_version #=> String
    #   resp.data.journey_response.activities['key'].random_split #=> Types::RandomSplitActivity
    #   resp.data.journey_response.activities['key'].random_split.branches #=> Array<RandomSplitEntry>
    #   resp.data.journey_response.activities['key'].random_split.branches[0] #=> Types::RandomSplitEntry
    #   resp.data.journey_response.activities['key'].random_split.branches[0].next_activity #=> String
    #   resp.data.journey_response.activities['key'].random_split.branches[0].percentage #=> Integer
    #   resp.data.journey_response.activities['key'].sms #=> Types::SMSMessageActivity
    #   resp.data.journey_response.activities['key'].sms.message_config #=> Types::JourneySMSMessage
    #   resp.data.journey_response.activities['key'].sms.message_config.message_type #=> String, one of ["TRANSACTIONAL", "PROMOTIONAL"]
    #   resp.data.journey_response.activities['key'].sms.message_config.origination_number #=> String
    #   resp.data.journey_response.activities['key'].sms.message_config.sender_id #=> String
    #   resp.data.journey_response.activities['key'].sms.message_config.entity_id #=> String
    #   resp.data.journey_response.activities['key'].sms.message_config.template_id #=> String
    #   resp.data.journey_response.activities['key'].sms.next_activity #=> String
    #   resp.data.journey_response.activities['key'].sms.template_name #=> String
    #   resp.data.journey_response.activities['key'].sms.template_version #=> String
    #   resp.data.journey_response.activities['key'].wait #=> Types::WaitActivity
    #   resp.data.journey_response.activities['key'].wait.next_activity #=> String
    #   resp.data.journey_response.activities['key'].wait.wait_time #=> Types::WaitTime
    #   resp.data.journey_response.activities['key'].contact_center #=> Types::ContactCenterActivity
    #   resp.data.journey_response.activities['key'].contact_center.next_activity #=> String
    #   resp.data.journey_response.application_id #=> String
    #   resp.data.journey_response.creation_date #=> String
    #   resp.data.journey_response.id #=> String
    #   resp.data.journey_response.last_modified_date #=> String
    #   resp.data.journey_response.limits #=> Types::JourneyLimits
    #   resp.data.journey_response.limits.daily_cap #=> Integer
    #   resp.data.journey_response.limits.endpoint_reentry_cap #=> Integer
    #   resp.data.journey_response.limits.messages_per_second #=> Integer
    #   resp.data.journey_response.limits.endpoint_reentry_interval #=> String
    #   resp.data.journey_response.local_time #=> Boolean
    #   resp.data.journey_response.name #=> String
    #   resp.data.journey_response.quiet_time #=> Types::QuietTime
    #   resp.data.journey_response.quiet_time.end #=> String
    #   resp.data.journey_response.quiet_time.start #=> String
    #   resp.data.journey_response.refresh_frequency #=> String
    #   resp.data.journey_response.schedule #=> Types::JourneySchedule
    #   resp.data.journey_response.schedule.end_time #=> Time
    #   resp.data.journey_response.schedule.start_time #=> Time
    #   resp.data.journey_response.schedule.timezone #=> String
    #   resp.data.journey_response.start_activity #=> String
    #   resp.data.journey_response.start_condition #=> Types::StartCondition
    #   resp.data.journey_response.start_condition.description #=> String
    #   resp.data.journey_response.start_condition.event_start_condition #=> Types::EventStartCondition
    #   resp.data.journey_response.start_condition.event_start_condition.event_filter #=> Types::EventFilter
    #   resp.data.journey_response.start_condition.event_start_condition.event_filter.dimensions #=> Types::EventDimensions
    #   resp.data.journey_response.start_condition.event_start_condition.event_filter.filter_type #=> String, one of ["SYSTEM", "ENDPOINT"]
    #   resp.data.journey_response.start_condition.event_start_condition.segment_id #=> String
    #   resp.data.journey_response.start_condition.segment_start_condition #=> Types::SegmentCondition
    #   resp.data.journey_response.state #=> String, one of ["DRAFT", "ACTIVE", "COMPLETED", "CANCELLED", "CLOSED", "PAUSED"]
    #   resp.data.journey_response.tags #=> Hash<String, String>
    #   resp.data.journey_response.tags['key'] #=> String
    #   resp.data.journey_response.wait_for_quiet_time #=> Boolean
    #   resp.data.journey_response.refresh_on_segment_update #=> Boolean
    #   resp.data.journey_response.journey_channel_settings #=> Types::JourneyChannelSettings
    #   resp.data.journey_response.journey_channel_settings.connect_campaign_arn #=> String
    #   resp.data.journey_response.journey_channel_settings.connect_campaign_execution_role_arn #=> String
    #
    def create_journey(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateJourneyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateJourneyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateJourney
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::CreateJourney
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateJourney,
        stubs: @stubs,
        params_class: Params::CreateJourneyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_journey
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a message template for messages that are sent through a push notification channel.</p>
    #
    # @param [Hash] params
    #   See {Types::CreatePushTemplateInput}.
    #
    # @option params [PushNotificationTemplateRequest] :push_notification_template_request
    #   <p>Specifies the content and settings for a message template that can be used in messages that are sent through a push notification channel.</p>
    #
    # @option params [String] :template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    #
    # @return [Types::CreatePushTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_push_template(
    #     push_notification_template_request: {
    #       adm: {
    #         action: 'OPEN_APP', # accepts ["OPEN_APP", "DEEP_LINK", "URL"]
    #         body: 'Body',
    #         image_icon_url: 'ImageIconUrl',
    #         image_url: 'ImageUrl',
    #         raw_content: 'RawContent',
    #         small_image_icon_url: 'SmallImageIconUrl',
    #         sound: 'Sound',
    #         title: 'Title',
    #         url: 'Url'
    #       },
    #       apns: {
    #         action: 'OPEN_APP', # accepts ["OPEN_APP", "DEEP_LINK", "URL"]
    #         body: 'Body',
    #         media_url: 'MediaUrl',
    #         raw_content: 'RawContent',
    #         sound: 'Sound',
    #         title: 'Title',
    #         url: 'Url'
    #       },
    #       default: {
    #         action: 'OPEN_APP', # accepts ["OPEN_APP", "DEEP_LINK", "URL"]
    #         body: 'Body',
    #         sound: 'Sound',
    #         title: 'Title',
    #         url: 'Url'
    #       },
    #       default_substitutions: 'DefaultSubstitutions',
    #       recommender_id: 'RecommenderId',
    #       tags: {
    #         'key' => 'value'
    #       },
    #       template_description: 'TemplateDescription'
    #     }, # required
    #     template_name: 'TemplateName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreatePushTemplateOutput
    #   resp.data.create_template_message_body #=> Types::CreateTemplateMessageBody
    #   resp.data.create_template_message_body.arn #=> String
    #   resp.data.create_template_message_body.message #=> String
    #   resp.data.create_template_message_body.request_id #=> String
    #
    def create_push_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreatePushTemplateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreatePushTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreatePushTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException]),
        data_parser: Parsers::CreatePushTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreatePushTemplate,
        stubs: @stubs,
        params_class: Params::CreatePushTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_push_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an Amazon Pinpoint configuration for a recommender model.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateRecommenderConfigurationInput}.
    #
    # @option params [CreateRecommenderConfigurationShape] :create_recommender_configuration
    #   <p>Specifies Amazon Pinpoint configuration settings for retrieving and processing recommendation data from a recommender model.</p>
    #
    # @return [Types::CreateRecommenderConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_recommender_configuration(
    #     create_recommender_configuration: {
    #       attributes: {
    #         'key' => 'value'
    #       },
    #       description: 'Description',
    #       name: 'Name',
    #       recommendation_provider_id_type: 'RecommendationProviderIdType',
    #       recommendation_provider_role_arn: 'RecommendationProviderRoleArn', # required
    #       recommendation_provider_uri: 'RecommendationProviderUri', # required
    #       recommendation_transformer_uri: 'RecommendationTransformerUri',
    #       recommendations_display_name: 'RecommendationsDisplayName',
    #       recommendations_per_message: 1
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateRecommenderConfigurationOutput
    #   resp.data.recommender_configuration_response #=> Types::RecommenderConfigurationResponse
    #   resp.data.recommender_configuration_response.attributes #=> Hash<String, String>
    #   resp.data.recommender_configuration_response.attributes['key'] #=> String
    #   resp.data.recommender_configuration_response.creation_date #=> String
    #   resp.data.recommender_configuration_response.description #=> String
    #   resp.data.recommender_configuration_response.id #=> String
    #   resp.data.recommender_configuration_response.last_modified_date #=> String
    #   resp.data.recommender_configuration_response.name #=> String
    #   resp.data.recommender_configuration_response.recommendation_provider_id_type #=> String
    #   resp.data.recommender_configuration_response.recommendation_provider_role_arn #=> String
    #   resp.data.recommender_configuration_response.recommendation_provider_uri #=> String
    #   resp.data.recommender_configuration_response.recommendation_transformer_uri #=> String
    #   resp.data.recommender_configuration_response.recommendations_display_name #=> String
    #   resp.data.recommender_configuration_response.recommendations_per_message #=> Integer
    #
    def create_recommender_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateRecommenderConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateRecommenderConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateRecommenderConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::CreateRecommenderConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateRecommenderConfiguration,
        stubs: @stubs,
        params_class: Params::CreateRecommenderConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_recommender_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new segment for an application or updates the configuration, dimension, and other settings for an existing segment that's associated with an application.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateSegmentInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @option params [WriteSegmentRequest] :write_segment_request
    #   <p>Specifies the configuration, dimension, and other settings for a segment. A WriteSegmentRequest object can include a Dimensions object or a SegmentGroups object, but not both.</p>
    #
    # @return [Types::CreateSegmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_segment(
    #     application_id: 'ApplicationId', # required
    #     write_segment_request: {
    #       dimensions: {
    #         attributes: {
    #           'key' => {
    #             attribute_type: 'INCLUSIVE', # accepts ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"]
    #             values: [
    #               'member'
    #             ] # required
    #           }
    #         },
    #         behavior: {
    #           recency: {
    #             duration: 'HR_24', # required - accepts ["HR_24", "DAY_7", "DAY_14", "DAY_30"]
    #             recency_type: 'ACTIVE' # required - accepts ["ACTIVE", "INACTIVE"]
    #           }
    #         },
    #         demographic: {
    #           app_version: {
    #             dimension_type: 'INCLUSIVE', # accepts ["INCLUSIVE", "EXCLUSIVE"]
    #           },
    #         },
    #         location: {
    #           gps_point: {
    #             coordinates: {
    #               latitude: 1.0, # required
    #               longitude: 1.0 # required
    #             }, # required
    #             range_in_kilometers: 1.0
    #           }
    #         },
    #         metrics: {
    #           'key' => {
    #             comparison_operator: 'ComparisonOperator', # required
    #             value: 1.0 # required
    #           }
    #         },
    #       },
    #       name: 'Name',
    #       segment_groups: {
    #         groups: [
    #           {
    #             source_segments: [
    #               {
    #                 id: 'Id', # required
    #                 version: 1
    #               }
    #             ],
    #             source_type: 'ALL', # accepts ["ALL", "ANY", "NONE"]
    #             type: 'ALL' # accepts ["ALL", "ANY", "NONE"]
    #           }
    #         ],
    #         include: 'ALL' # accepts ["ALL", "ANY", "NONE"]
    #       },
    #       tags: {
    #         'key' => 'value'
    #       }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateSegmentOutput
    #   resp.data.segment_response #=> Types::SegmentResponse
    #   resp.data.segment_response.application_id #=> String
    #   resp.data.segment_response.arn #=> String
    #   resp.data.segment_response.creation_date #=> String
    #   resp.data.segment_response.dimensions #=> Types::SegmentDimensions
    #   resp.data.segment_response.dimensions.attributes #=> Hash<String, AttributeDimension>
    #   resp.data.segment_response.dimensions.attributes['key'] #=> Types::AttributeDimension
    #   resp.data.segment_response.dimensions.attributes['key'].attribute_type #=> String, one of ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"]
    #   resp.data.segment_response.dimensions.attributes['key'].values #=> Array<String>
    #   resp.data.segment_response.dimensions.attributes['key'].values[0] #=> String
    #   resp.data.segment_response.dimensions.behavior #=> Types::SegmentBehaviors
    #   resp.data.segment_response.dimensions.behavior.recency #=> Types::RecencyDimension
    #   resp.data.segment_response.dimensions.behavior.recency.duration #=> String, one of ["HR_24", "DAY_7", "DAY_14", "DAY_30"]
    #   resp.data.segment_response.dimensions.behavior.recency.recency_type #=> String, one of ["ACTIVE", "INACTIVE"]
    #   resp.data.segment_response.dimensions.demographic #=> Types::SegmentDemographics
    #   resp.data.segment_response.dimensions.demographic.app_version #=> Types::SetDimension
    #   resp.data.segment_response.dimensions.demographic.app_version.dimension_type #=> String, one of ["INCLUSIVE", "EXCLUSIVE"]
    #   resp.data.segment_response.dimensions.demographic.app_version.values #=> Array<String>
    #   resp.data.segment_response.dimensions.demographic.channel #=> Types::SetDimension
    #   resp.data.segment_response.dimensions.demographic.device_type #=> Types::SetDimension
    #   resp.data.segment_response.dimensions.demographic.make #=> Types::SetDimension
    #   resp.data.segment_response.dimensions.demographic.model #=> Types::SetDimension
    #   resp.data.segment_response.dimensions.demographic.platform #=> Types::SetDimension
    #   resp.data.segment_response.dimensions.location #=> Types::SegmentLocation
    #   resp.data.segment_response.dimensions.location.country #=> Types::SetDimension
    #   resp.data.segment_response.dimensions.location.gps_point #=> Types::GPSPointDimension
    #   resp.data.segment_response.dimensions.location.gps_point.coordinates #=> Types::GPSCoordinates
    #   resp.data.segment_response.dimensions.location.gps_point.coordinates.latitude #=> Float
    #   resp.data.segment_response.dimensions.location.gps_point.coordinates.longitude #=> Float
    #   resp.data.segment_response.dimensions.location.gps_point.range_in_kilometers #=> Float
    #   resp.data.segment_response.dimensions.metrics #=> Hash<String, MetricDimension>
    #   resp.data.segment_response.dimensions.metrics['key'] #=> Types::MetricDimension
    #   resp.data.segment_response.dimensions.metrics['key'].comparison_operator #=> String
    #   resp.data.segment_response.dimensions.metrics['key'].value #=> Float
    #   resp.data.segment_response.dimensions.user_attributes #=> Hash<String, AttributeDimension>
    #   resp.data.segment_response.id #=> String
    #   resp.data.segment_response.import_definition #=> Types::SegmentImportResource
    #   resp.data.segment_response.import_definition.channel_counts #=> Hash<String, Integer>
    #   resp.data.segment_response.import_definition.channel_counts['key'] #=> Integer
    #   resp.data.segment_response.import_definition.external_id #=> String
    #   resp.data.segment_response.import_definition.format #=> String, one of ["CSV", "JSON"]
    #   resp.data.segment_response.import_definition.role_arn #=> String
    #   resp.data.segment_response.import_definition.s3_url #=> String
    #   resp.data.segment_response.import_definition.size #=> Integer
    #   resp.data.segment_response.last_modified_date #=> String
    #   resp.data.segment_response.name #=> String
    #   resp.data.segment_response.segment_groups #=> Types::SegmentGroupList
    #   resp.data.segment_response.segment_groups.groups #=> Array<SegmentGroup>
    #   resp.data.segment_response.segment_groups.groups[0] #=> Types::SegmentGroup
    #   resp.data.segment_response.segment_groups.groups[0].dimensions #=> Array<SegmentDimensions>
    #   resp.data.segment_response.segment_groups.groups[0].source_segments #=> Array<SegmentReference>
    #   resp.data.segment_response.segment_groups.groups[0].source_segments[0] #=> Types::SegmentReference
    #   resp.data.segment_response.segment_groups.groups[0].source_segments[0].id #=> String
    #   resp.data.segment_response.segment_groups.groups[0].source_segments[0].version #=> Integer
    #   resp.data.segment_response.segment_groups.groups[0].source_type #=> String, one of ["ALL", "ANY", "NONE"]
    #   resp.data.segment_response.segment_groups.groups[0].type #=> String, one of ["ALL", "ANY", "NONE"]
    #   resp.data.segment_response.segment_groups.include #=> String, one of ["ALL", "ANY", "NONE"]
    #   resp.data.segment_response.segment_type #=> String, one of ["DIMENSIONAL", "IMPORT"]
    #   resp.data.segment_response.tags #=> Hash<String, String>
    #   resp.data.segment_response.tags['key'] #=> String
    #   resp.data.segment_response.version #=> Integer
    #
    def create_segment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateSegmentInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateSegmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateSegment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::CreateSegment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateSegment,
        stubs: @stubs,
        params_class: Params::CreateSegmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_segment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a message template for messages that are sent through the SMS channel.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateSmsTemplateInput}.
    #
    # @option params [SMSTemplateRequest] :sms_template_request
    #   <p>Specifies the content and settings for a message template that can be used in text messages that are sent through the SMS channel.</p>
    #
    # @option params [String] :template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    #
    # @return [Types::CreateSmsTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_sms_template(
    #     sms_template_request: {
    #       body: 'Body',
    #       default_substitutions: 'DefaultSubstitutions',
    #       recommender_id: 'RecommenderId',
    #       tags: {
    #         'key' => 'value'
    #       },
    #       template_description: 'TemplateDescription'
    #     }, # required
    #     template_name: 'TemplateName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateSmsTemplateOutput
    #   resp.data.create_template_message_body #=> Types::CreateTemplateMessageBody
    #   resp.data.create_template_message_body.arn #=> String
    #   resp.data.create_template_message_body.message #=> String
    #   resp.data.create_template_message_body.request_id #=> String
    #
    def create_sms_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateSmsTemplateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateSmsTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateSmsTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException]),
        data_parser: Parsers::CreateSmsTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateSmsTemplate,
        stubs: @stubs,
        params_class: Params::CreateSmsTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_sms_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a message template for messages that are sent through the voice channel.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateVoiceTemplateInput}.
    #
    # @option params [String] :template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    #
    # @option params [VoiceTemplateRequest] :voice_template_request
    #   <p>Specifies the content and settings for a message template that can be used in messages that are sent through the voice channel.</p>
    #
    # @return [Types::CreateVoiceTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_voice_template(
    #     template_name: 'TemplateName', # required
    #     voice_template_request: {
    #       body: 'Body',
    #       default_substitutions: 'DefaultSubstitutions',
    #       language_code: 'LanguageCode',
    #       tags: {
    #         'key' => 'value'
    #       },
    #       template_description: 'TemplateDescription',
    #       voice_id: 'VoiceId'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateVoiceTemplateOutput
    #   resp.data.create_template_message_body #=> Types::CreateTemplateMessageBody
    #   resp.data.create_template_message_body.arn #=> String
    #   resp.data.create_template_message_body.message #=> String
    #   resp.data.create_template_message_body.request_id #=> String
    #
    def create_voice_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateVoiceTemplateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateVoiceTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateVoiceTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException]),
        data_parser: Parsers::CreateVoiceTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateVoiceTemplate,
        stubs: @stubs,
        params_class: Params::CreateVoiceTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_voice_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disables the ADM channel for an application and deletes any existing settings for the channel.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAdmChannelInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @return [Types::DeleteAdmChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_adm_channel(
    #     application_id: 'ApplicationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAdmChannelOutput
    #   resp.data.adm_channel_response #=> Types::ADMChannelResponse
    #   resp.data.adm_channel_response.application_id #=> String
    #   resp.data.adm_channel_response.creation_date #=> String
    #   resp.data.adm_channel_response.enabled #=> Boolean
    #   resp.data.adm_channel_response.has_credential #=> Boolean
    #   resp.data.adm_channel_response.id #=> String
    #   resp.data.adm_channel_response.is_archived #=> Boolean
    #   resp.data.adm_channel_response.last_modified_by #=> String
    #   resp.data.adm_channel_response.last_modified_date #=> String
    #   resp.data.adm_channel_response.platform #=> String
    #   resp.data.adm_channel_response.version #=> Integer
    #
    def delete_adm_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAdmChannelInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAdmChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAdmChannel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::DeleteAdmChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAdmChannel,
        stubs: @stubs,
        params_class: Params::DeleteAdmChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_adm_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disables the APNs channel for an application and deletes any existing settings for the channel.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteApnsChannelInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @return [Types::DeleteApnsChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_apns_channel(
    #     application_id: 'ApplicationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteApnsChannelOutput
    #   resp.data.apns_channel_response #=> Types::APNSChannelResponse
    #   resp.data.apns_channel_response.application_id #=> String
    #   resp.data.apns_channel_response.creation_date #=> String
    #   resp.data.apns_channel_response.default_authentication_method #=> String
    #   resp.data.apns_channel_response.enabled #=> Boolean
    #   resp.data.apns_channel_response.has_credential #=> Boolean
    #   resp.data.apns_channel_response.has_token_key #=> Boolean
    #   resp.data.apns_channel_response.id #=> String
    #   resp.data.apns_channel_response.is_archived #=> Boolean
    #   resp.data.apns_channel_response.last_modified_by #=> String
    #   resp.data.apns_channel_response.last_modified_date #=> String
    #   resp.data.apns_channel_response.platform #=> String
    #   resp.data.apns_channel_response.version #=> Integer
    #
    def delete_apns_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteApnsChannelInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteApnsChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteApnsChannel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::DeleteApnsChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteApnsChannel,
        stubs: @stubs,
        params_class: Params::DeleteApnsChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_apns_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disables the APNs sandbox channel for an application and deletes any existing settings for the channel.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteApnsSandboxChannelInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @return [Types::DeleteApnsSandboxChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_apns_sandbox_channel(
    #     application_id: 'ApplicationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteApnsSandboxChannelOutput
    #   resp.data.apns_sandbox_channel_response #=> Types::APNSSandboxChannelResponse
    #   resp.data.apns_sandbox_channel_response.application_id #=> String
    #   resp.data.apns_sandbox_channel_response.creation_date #=> String
    #   resp.data.apns_sandbox_channel_response.default_authentication_method #=> String
    #   resp.data.apns_sandbox_channel_response.enabled #=> Boolean
    #   resp.data.apns_sandbox_channel_response.has_credential #=> Boolean
    #   resp.data.apns_sandbox_channel_response.has_token_key #=> Boolean
    #   resp.data.apns_sandbox_channel_response.id #=> String
    #   resp.data.apns_sandbox_channel_response.is_archived #=> Boolean
    #   resp.data.apns_sandbox_channel_response.last_modified_by #=> String
    #   resp.data.apns_sandbox_channel_response.last_modified_date #=> String
    #   resp.data.apns_sandbox_channel_response.platform #=> String
    #   resp.data.apns_sandbox_channel_response.version #=> Integer
    #
    def delete_apns_sandbox_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteApnsSandboxChannelInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteApnsSandboxChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteApnsSandboxChannel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::DeleteApnsSandboxChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteApnsSandboxChannel,
        stubs: @stubs,
        params_class: Params::DeleteApnsSandboxChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_apns_sandbox_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disables the APNs VoIP channel for an application and deletes any existing settings for the channel.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteApnsVoipChannelInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @return [Types::DeleteApnsVoipChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_apns_voip_channel(
    #     application_id: 'ApplicationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteApnsVoipChannelOutput
    #   resp.data.apns_voip_channel_response #=> Types::APNSVoipChannelResponse
    #   resp.data.apns_voip_channel_response.application_id #=> String
    #   resp.data.apns_voip_channel_response.creation_date #=> String
    #   resp.data.apns_voip_channel_response.default_authentication_method #=> String
    #   resp.data.apns_voip_channel_response.enabled #=> Boolean
    #   resp.data.apns_voip_channel_response.has_credential #=> Boolean
    #   resp.data.apns_voip_channel_response.has_token_key #=> Boolean
    #   resp.data.apns_voip_channel_response.id #=> String
    #   resp.data.apns_voip_channel_response.is_archived #=> Boolean
    #   resp.data.apns_voip_channel_response.last_modified_by #=> String
    #   resp.data.apns_voip_channel_response.last_modified_date #=> String
    #   resp.data.apns_voip_channel_response.platform #=> String
    #   resp.data.apns_voip_channel_response.version #=> Integer
    #
    def delete_apns_voip_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteApnsVoipChannelInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteApnsVoipChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteApnsVoipChannel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::DeleteApnsVoipChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteApnsVoipChannel,
        stubs: @stubs,
        params_class: Params::DeleteApnsVoipChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_apns_voip_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disables the APNs VoIP sandbox channel for an application and deletes any existing settings for the channel.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteApnsVoipSandboxChannelInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @return [Types::DeleteApnsVoipSandboxChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_apns_voip_sandbox_channel(
    #     application_id: 'ApplicationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteApnsVoipSandboxChannelOutput
    #   resp.data.apns_voip_sandbox_channel_response #=> Types::APNSVoipSandboxChannelResponse
    #   resp.data.apns_voip_sandbox_channel_response.application_id #=> String
    #   resp.data.apns_voip_sandbox_channel_response.creation_date #=> String
    #   resp.data.apns_voip_sandbox_channel_response.default_authentication_method #=> String
    #   resp.data.apns_voip_sandbox_channel_response.enabled #=> Boolean
    #   resp.data.apns_voip_sandbox_channel_response.has_credential #=> Boolean
    #   resp.data.apns_voip_sandbox_channel_response.has_token_key #=> Boolean
    #   resp.data.apns_voip_sandbox_channel_response.id #=> String
    #   resp.data.apns_voip_sandbox_channel_response.is_archived #=> Boolean
    #   resp.data.apns_voip_sandbox_channel_response.last_modified_by #=> String
    #   resp.data.apns_voip_sandbox_channel_response.last_modified_date #=> String
    #   resp.data.apns_voip_sandbox_channel_response.platform #=> String
    #   resp.data.apns_voip_sandbox_channel_response.version #=> Integer
    #
    def delete_apns_voip_sandbox_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteApnsVoipSandboxChannelInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteApnsVoipSandboxChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteApnsVoipSandboxChannel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::DeleteApnsVoipSandboxChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteApnsVoipSandboxChannel,
        stubs: @stubs,
        params_class: Params::DeleteApnsVoipSandboxChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_apns_voip_sandbox_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an application.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAppInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @return [Types::DeleteAppOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_app(
    #     application_id: 'ApplicationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAppOutput
    #   resp.data.application_response #=> Types::ApplicationResponse
    #   resp.data.application_response.arn #=> String
    #   resp.data.application_response.id #=> String
    #   resp.data.application_response.name #=> String
    #   resp.data.application_response.tags #=> Hash<String, String>
    #   resp.data.application_response.tags['key'] #=> String
    #   resp.data.application_response.creation_date #=> String
    #
    def delete_app(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAppInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAppInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteApp
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::DeleteApp
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteApp,
        stubs: @stubs,
        params_class: Params::DeleteAppOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_app
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disables the Baidu channel for an application and deletes any existing settings for the channel.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteBaiduChannelInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @return [Types::DeleteBaiduChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_baidu_channel(
    #     application_id: 'ApplicationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteBaiduChannelOutput
    #   resp.data.baidu_channel_response #=> Types::BaiduChannelResponse
    #   resp.data.baidu_channel_response.application_id #=> String
    #   resp.data.baidu_channel_response.creation_date #=> String
    #   resp.data.baidu_channel_response.credential #=> String
    #   resp.data.baidu_channel_response.enabled #=> Boolean
    #   resp.data.baidu_channel_response.has_credential #=> Boolean
    #   resp.data.baidu_channel_response.id #=> String
    #   resp.data.baidu_channel_response.is_archived #=> Boolean
    #   resp.data.baidu_channel_response.last_modified_by #=> String
    #   resp.data.baidu_channel_response.last_modified_date #=> String
    #   resp.data.baidu_channel_response.platform #=> String
    #   resp.data.baidu_channel_response.version #=> Integer
    #
    def delete_baidu_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteBaiduChannelInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteBaiduChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteBaiduChannel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::DeleteBaiduChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteBaiduChannel,
        stubs: @stubs,
        params_class: Params::DeleteBaiduChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_baidu_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a campaign from an application.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteCampaignInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @option params [String] :campaign_id
    #   <p>The unique identifier for the campaign.</p>
    #
    # @return [Types::DeleteCampaignOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_campaign(
    #     application_id: 'ApplicationId', # required
    #     campaign_id: 'CampaignId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteCampaignOutput
    #   resp.data.campaign_response #=> Types::CampaignResponse
    #   resp.data.campaign_response.additional_treatments #=> Array<TreatmentResource>
    #   resp.data.campaign_response.additional_treatments[0] #=> Types::TreatmentResource
    #   resp.data.campaign_response.additional_treatments[0].custom_delivery_configuration #=> Types::CustomDeliveryConfiguration
    #   resp.data.campaign_response.additional_treatments[0].custom_delivery_configuration.delivery_uri #=> String
    #   resp.data.campaign_response.additional_treatments[0].custom_delivery_configuration.endpoint_types #=> Array<String>
    #   resp.data.campaign_response.additional_treatments[0].custom_delivery_configuration.endpoint_types[0] #=> String, one of ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"]
    #   resp.data.campaign_response.additional_treatments[0].id #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration #=> Types::MessageConfiguration
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message #=> Types::Message
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.action #=> String, one of ["OPEN_APP", "DEEP_LINK", "URL"]
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.body #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.image_icon_url #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.image_small_icon_url #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.image_url #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.json_body #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.media_url #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.raw_content #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.silent_push #=> Boolean
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.time_to_live #=> Integer
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.title #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.url #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.apns_message #=> Types::Message
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.baidu_message #=> Types::Message
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.custom_message #=> Types::CampaignCustomMessage
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.custom_message.data #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.default_message #=> Types::Message
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.email_message #=> Types::CampaignEmailMessage
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.email_message.body #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.email_message.from_address #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.email_message.html_body #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.email_message.title #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.gcm_message #=> Types::Message
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.sms_message #=> Types::CampaignSmsMessage
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.sms_message.body #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.sms_message.message_type #=> String, one of ["TRANSACTIONAL", "PROMOTIONAL"]
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.sms_message.origination_number #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.sms_message.sender_id #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.sms_message.entity_id #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.sms_message.template_id #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message #=> Types::CampaignInAppMessage
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.body #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content #=> Array<InAppMessageContent>
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0] #=> Types::InAppMessageContent
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].background_color #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].body_config #=> Types::InAppMessageBodyConfig
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].body_config.alignment #=> String, one of ["LEFT", "CENTER", "RIGHT"]
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].body_config.body #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].body_config.text_color #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].header_config #=> Types::InAppMessageHeaderConfig
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].header_config.alignment #=> String, one of ["LEFT", "CENTER", "RIGHT"]
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].header_config.header #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].header_config.text_color #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].image_url #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn #=> Types::InAppMessageButton
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.android #=> Types::OverrideButtonConfiguration
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.android.button_action #=> String, one of ["LINK", "DEEP_LINK", "CLOSE"]
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.android.link #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.default_config #=> Types::DefaultButtonConfiguration
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.default_config.background_color #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.default_config.border_radius #=> Integer
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.default_config.button_action #=> String, one of ["LINK", "DEEP_LINK", "CLOSE"]
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.default_config.link #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.default_config.text #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.default_config.text_color #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.ios #=> Types::OverrideButtonConfiguration
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.web #=> Types::OverrideButtonConfiguration
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].secondary_btn #=> Types::InAppMessageButton
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.custom_config #=> Hash<String, String>
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.custom_config['key'] #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.layout #=> String, one of ["BOTTOM_BANNER", "TOP_BANNER", "OVERLAYS", "MOBILE_FEED", "MIDDLE_BANNER", "CAROUSEL"]
    #   resp.data.campaign_response.additional_treatments[0].schedule #=> Types::Schedule
    #   resp.data.campaign_response.additional_treatments[0].schedule.end_time #=> String
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter #=> Types::CampaignEventFilter
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions #=> Types::EventDimensions
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.attributes #=> Hash<String, AttributeDimension>
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.attributes['key'] #=> Types::AttributeDimension
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.attributes['key'].attribute_type #=> String, one of ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"]
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.attributes['key'].values #=> Array<String>
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.attributes['key'].values[0] #=> String
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.event_type #=> Types::SetDimension
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.event_type.dimension_type #=> String, one of ["INCLUSIVE", "EXCLUSIVE"]
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.event_type.values #=> Array<String>
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.metrics #=> Hash<String, MetricDimension>
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.metrics['key'] #=> Types::MetricDimension
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.metrics['key'].comparison_operator #=> String
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.metrics['key'].value #=> Float
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.filter_type #=> String, one of ["SYSTEM", "ENDPOINT"]
    #   resp.data.campaign_response.additional_treatments[0].schedule.frequency #=> String, one of ["ONCE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY", "EVENT", "IN_APP_EVENT"]
    #   resp.data.campaign_response.additional_treatments[0].schedule.is_local_time #=> Boolean
    #   resp.data.campaign_response.additional_treatments[0].schedule.quiet_time #=> Types::QuietTime
    #   resp.data.campaign_response.additional_treatments[0].schedule.quiet_time.end #=> String
    #   resp.data.campaign_response.additional_treatments[0].schedule.quiet_time.start #=> String
    #   resp.data.campaign_response.additional_treatments[0].schedule.start_time #=> String
    #   resp.data.campaign_response.additional_treatments[0].schedule.timezone #=> String
    #   resp.data.campaign_response.additional_treatments[0].size_percent #=> Integer
    #   resp.data.campaign_response.additional_treatments[0].state #=> Types::CampaignState
    #   resp.data.campaign_response.additional_treatments[0].state.campaign_status #=> String, one of ["SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED", "DELETED", "INVALID"]
    #   resp.data.campaign_response.additional_treatments[0].template_configuration #=> Types::TemplateConfiguration
    #   resp.data.campaign_response.additional_treatments[0].template_configuration.email_template #=> Types::Template
    #   resp.data.campaign_response.additional_treatments[0].template_configuration.email_template.name #=> String
    #   resp.data.campaign_response.additional_treatments[0].template_configuration.email_template.version #=> String
    #   resp.data.campaign_response.additional_treatments[0].template_configuration.push_template #=> Types::Template
    #   resp.data.campaign_response.additional_treatments[0].template_configuration.sms_template #=> Types::Template
    #   resp.data.campaign_response.additional_treatments[0].template_configuration.voice_template #=> Types::Template
    #   resp.data.campaign_response.additional_treatments[0].treatment_description #=> String
    #   resp.data.campaign_response.additional_treatments[0].treatment_name #=> String
    #   resp.data.campaign_response.application_id #=> String
    #   resp.data.campaign_response.arn #=> String
    #   resp.data.campaign_response.creation_date #=> String
    #   resp.data.campaign_response.custom_delivery_configuration #=> Types::CustomDeliveryConfiguration
    #   resp.data.campaign_response.default_state #=> Types::CampaignState
    #   resp.data.campaign_response.description #=> String
    #   resp.data.campaign_response.holdout_percent #=> Integer
    #   resp.data.campaign_response.hook #=> Types::CampaignHook
    #   resp.data.campaign_response.hook.lambda_function_name #=> String
    #   resp.data.campaign_response.hook.mode #=> String, one of ["DELIVERY", "FILTER"]
    #   resp.data.campaign_response.hook.web_url #=> String
    #   resp.data.campaign_response.id #=> String
    #   resp.data.campaign_response.is_paused #=> Boolean
    #   resp.data.campaign_response.last_modified_date #=> String
    #   resp.data.campaign_response.limits #=> Types::CampaignLimits
    #   resp.data.campaign_response.limits.daily #=> Integer
    #   resp.data.campaign_response.limits.maximum_duration #=> Integer
    #   resp.data.campaign_response.limits.messages_per_second #=> Integer
    #   resp.data.campaign_response.limits.total #=> Integer
    #   resp.data.campaign_response.limits.session #=> Integer
    #   resp.data.campaign_response.message_configuration #=> Types::MessageConfiguration
    #   resp.data.campaign_response.name #=> String
    #   resp.data.campaign_response.schedule #=> Types::Schedule
    #   resp.data.campaign_response.segment_id #=> String
    #   resp.data.campaign_response.segment_version #=> Integer
    #   resp.data.campaign_response.state #=> Types::CampaignState
    #   resp.data.campaign_response.tags #=> Hash<String, String>
    #   resp.data.campaign_response.template_configuration #=> Types::TemplateConfiguration
    #   resp.data.campaign_response.treatment_description #=> String
    #   resp.data.campaign_response.treatment_name #=> String
    #   resp.data.campaign_response.version #=> Integer
    #   resp.data.campaign_response.priority #=> Integer
    #
    def delete_campaign(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteCampaignInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteCampaignInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteCampaign
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::DeleteCampaign
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteCampaign,
        stubs: @stubs,
        params_class: Params::DeleteCampaignOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_campaign
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disables the email channel for an application and deletes any existing settings for the channel.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteEmailChannelInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @return [Types::DeleteEmailChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_email_channel(
    #     application_id: 'ApplicationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteEmailChannelOutput
    #   resp.data.email_channel_response #=> Types::EmailChannelResponse
    #   resp.data.email_channel_response.application_id #=> String
    #   resp.data.email_channel_response.configuration_set #=> String
    #   resp.data.email_channel_response.creation_date #=> String
    #   resp.data.email_channel_response.enabled #=> Boolean
    #   resp.data.email_channel_response.from_address #=> String
    #   resp.data.email_channel_response.has_credential #=> Boolean
    #   resp.data.email_channel_response.id #=> String
    #   resp.data.email_channel_response.identity #=> String
    #   resp.data.email_channel_response.is_archived #=> Boolean
    #   resp.data.email_channel_response.last_modified_by #=> String
    #   resp.data.email_channel_response.last_modified_date #=> String
    #   resp.data.email_channel_response.messages_per_second #=> Integer
    #   resp.data.email_channel_response.platform #=> String
    #   resp.data.email_channel_response.role_arn #=> String
    #   resp.data.email_channel_response.version #=> Integer
    #
    def delete_email_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteEmailChannelInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteEmailChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteEmailChannel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::DeleteEmailChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteEmailChannel,
        stubs: @stubs,
        params_class: Params::DeleteEmailChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_email_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a message template for messages that were sent through the email channel.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteEmailTemplateInput}.
    #
    # @option params [String] :template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    #
    # @option params [String] :version
    #   <p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend="templates-template-name-template-type-versions">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>
    #
    # @return [Types::DeleteEmailTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_email_template(
    #     template_name: 'TemplateName', # required
    #     version: 'Version'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteEmailTemplateOutput
    #   resp.data.message_body #=> Types::MessageBody
    #   resp.data.message_body.message #=> String
    #   resp.data.message_body.request_id #=> String
    #
    def delete_email_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteEmailTemplateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteEmailTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteEmailTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::DeleteEmailTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteEmailTemplate,
        stubs: @stubs,
        params_class: Params::DeleteEmailTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_email_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an endpoint from an application.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteEndpointInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @option params [String] :endpoint_id
    #   <p>The unique identifier for the endpoint.</p>
    #
    # @return [Types::DeleteEndpointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_endpoint(
    #     application_id: 'ApplicationId', # required
    #     endpoint_id: 'EndpointId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteEndpointOutput
    #   resp.data.endpoint_response #=> Types::EndpointResponse
    #   resp.data.endpoint_response.address #=> String
    #   resp.data.endpoint_response.application_id #=> String
    #   resp.data.endpoint_response.attributes #=> Hash<String, Array<String>>
    #   resp.data.endpoint_response.attributes['key'] #=> Array<String>
    #   resp.data.endpoint_response.attributes['key'][0] #=> String
    #   resp.data.endpoint_response.channel_type #=> String, one of ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"]
    #   resp.data.endpoint_response.cohort_id #=> String
    #   resp.data.endpoint_response.creation_date #=> String
    #   resp.data.endpoint_response.demographic #=> Types::EndpointDemographic
    #   resp.data.endpoint_response.demographic.app_version #=> String
    #   resp.data.endpoint_response.demographic.locale #=> String
    #   resp.data.endpoint_response.demographic.make #=> String
    #   resp.data.endpoint_response.demographic.model #=> String
    #   resp.data.endpoint_response.demographic.model_version #=> String
    #   resp.data.endpoint_response.demographic.platform #=> String
    #   resp.data.endpoint_response.demographic.platform_version #=> String
    #   resp.data.endpoint_response.demographic.timezone #=> String
    #   resp.data.endpoint_response.effective_date #=> String
    #   resp.data.endpoint_response.endpoint_status #=> String
    #   resp.data.endpoint_response.id #=> String
    #   resp.data.endpoint_response.location #=> Types::EndpointLocation
    #   resp.data.endpoint_response.location.city #=> String
    #   resp.data.endpoint_response.location.country #=> String
    #   resp.data.endpoint_response.location.latitude #=> Float
    #   resp.data.endpoint_response.location.longitude #=> Float
    #   resp.data.endpoint_response.location.postal_code #=> String
    #   resp.data.endpoint_response.location.region #=> String
    #   resp.data.endpoint_response.metrics #=> Hash<String, Float>
    #   resp.data.endpoint_response.metrics['key'] #=> Float
    #   resp.data.endpoint_response.opt_out #=> String
    #   resp.data.endpoint_response.request_id #=> String
    #   resp.data.endpoint_response.user #=> Types::EndpointUser
    #   resp.data.endpoint_response.user.user_attributes #=> Hash<String, Array<String>>
    #   resp.data.endpoint_response.user.user_id #=> String
    #
    def delete_endpoint(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteEndpointInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteEndpointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteEndpoint
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::DeleteEndpoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteEndpoint,
        stubs: @stubs,
        params_class: Params::DeleteEndpointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_endpoint
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the event stream for an application.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteEventStreamInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @return [Types::DeleteEventStreamOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_event_stream(
    #     application_id: 'ApplicationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteEventStreamOutput
    #   resp.data.event_stream #=> Types::EventStream
    #   resp.data.event_stream.application_id #=> String
    #   resp.data.event_stream.destination_stream_arn #=> String
    #   resp.data.event_stream.external_id #=> String
    #   resp.data.event_stream.last_modified_date #=> String
    #   resp.data.event_stream.last_updated_by #=> String
    #   resp.data.event_stream.role_arn #=> String
    #
    def delete_event_stream(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteEventStreamInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteEventStreamInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteEventStream
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::DeleteEventStream
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteEventStream,
        stubs: @stubs,
        params_class: Params::DeleteEventStreamOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_event_stream
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disables the GCM channel for an application and deletes any existing settings for the channel.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteGcmChannelInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @return [Types::DeleteGcmChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_gcm_channel(
    #     application_id: 'ApplicationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteGcmChannelOutput
    #   resp.data.gcm_channel_response #=> Types::GCMChannelResponse
    #   resp.data.gcm_channel_response.application_id #=> String
    #   resp.data.gcm_channel_response.creation_date #=> String
    #   resp.data.gcm_channel_response.credential #=> String
    #   resp.data.gcm_channel_response.enabled #=> Boolean
    #   resp.data.gcm_channel_response.has_credential #=> Boolean
    #   resp.data.gcm_channel_response.id #=> String
    #   resp.data.gcm_channel_response.is_archived #=> Boolean
    #   resp.data.gcm_channel_response.last_modified_by #=> String
    #   resp.data.gcm_channel_response.last_modified_date #=> String
    #   resp.data.gcm_channel_response.platform #=> String
    #   resp.data.gcm_channel_response.version #=> Integer
    #
    def delete_gcm_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteGcmChannelInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteGcmChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteGcmChannel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::DeleteGcmChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteGcmChannel,
        stubs: @stubs,
        params_class: Params::DeleteGcmChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_gcm_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a message template for messages sent using the in-app message channel.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteInAppTemplateInput}.
    #
    # @option params [String] :template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    #
    # @option params [String] :version
    #   <p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend="templates-template-name-template-type-versions">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>
    #
    # @return [Types::DeleteInAppTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_in_app_template(
    #     template_name: 'TemplateName', # required
    #     version: 'Version'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteInAppTemplateOutput
    #   resp.data.message_body #=> Types::MessageBody
    #   resp.data.message_body.message #=> String
    #   resp.data.message_body.request_id #=> String
    #
    def delete_in_app_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteInAppTemplateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteInAppTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteInAppTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::DeleteInAppTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteInAppTemplate,
        stubs: @stubs,
        params_class: Params::DeleteInAppTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_in_app_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a journey from an application.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteJourneyInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @option params [String] :journey_id
    #   <p>The unique identifier for the journey.</p>
    #
    # @return [Types::DeleteJourneyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_journey(
    #     application_id: 'ApplicationId', # required
    #     journey_id: 'JourneyId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteJourneyOutput
    #   resp.data.journey_response #=> Types::JourneyResponse
    #   resp.data.journey_response.activities #=> Hash<String, Activity>
    #   resp.data.journey_response.activities['key'] #=> Types::Activity
    #   resp.data.journey_response.activities['key'].custom #=> Types::CustomMessageActivity
    #   resp.data.journey_response.activities['key'].custom.delivery_uri #=> String
    #   resp.data.journey_response.activities['key'].custom.endpoint_types #=> Array<String>
    #   resp.data.journey_response.activities['key'].custom.endpoint_types[0] #=> String, one of ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"]
    #   resp.data.journey_response.activities['key'].custom.message_config #=> Types::JourneyCustomMessage
    #   resp.data.journey_response.activities['key'].custom.message_config.data #=> String
    #   resp.data.journey_response.activities['key'].custom.next_activity #=> String
    #   resp.data.journey_response.activities['key'].custom.template_name #=> String
    #   resp.data.journey_response.activities['key'].custom.template_version #=> String
    #   resp.data.journey_response.activities['key'].conditional_split #=> Types::ConditionalSplitActivity
    #   resp.data.journey_response.activities['key'].conditional_split.condition #=> Types::Condition
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions #=> Array<SimpleCondition>
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0] #=> Types::SimpleCondition
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition #=> Types::EventCondition
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions #=> Types::EventDimensions
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.attributes #=> Hash<String, AttributeDimension>
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.attributes['key'] #=> Types::AttributeDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.attributes['key'].attribute_type #=> String, one of ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"]
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.attributes['key'].values #=> Array<String>
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.attributes['key'].values[0] #=> String
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.event_type #=> Types::SetDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.event_type.dimension_type #=> String, one of ["INCLUSIVE", "EXCLUSIVE"]
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.event_type.values #=> Array<String>
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.metrics #=> Hash<String, MetricDimension>
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.metrics['key'] #=> Types::MetricDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.metrics['key'].comparison_operator #=> String
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.metrics['key'].value #=> Float
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.message_activity #=> String
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_condition #=> Types::SegmentCondition
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_condition.segment_id #=> String
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions #=> Types::SegmentDimensions
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.attributes #=> Hash<String, AttributeDimension>
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.behavior #=> Types::SegmentBehaviors
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.behavior.recency #=> Types::RecencyDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.behavior.recency.duration #=> String, one of ["HR_24", "DAY_7", "DAY_14", "DAY_30"]
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.behavior.recency.recency_type #=> String, one of ["ACTIVE", "INACTIVE"]
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.demographic #=> Types::SegmentDemographics
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.demographic.app_version #=> Types::SetDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.demographic.channel #=> Types::SetDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.demographic.device_type #=> Types::SetDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.demographic.make #=> Types::SetDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.demographic.model #=> Types::SetDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.demographic.platform #=> Types::SetDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.location #=> Types::SegmentLocation
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.location.country #=> Types::SetDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.location.gps_point #=> Types::GPSPointDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.location.gps_point.coordinates #=> Types::GPSCoordinates
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.location.gps_point.coordinates.latitude #=> Float
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.location.gps_point.coordinates.longitude #=> Float
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.location.gps_point.range_in_kilometers #=> Float
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.metrics #=> Hash<String, MetricDimension>
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.user_attributes #=> Hash<String, AttributeDimension>
    #   resp.data.journey_response.activities['key'].conditional_split.condition.operator #=> String, one of ["ALL", "ANY"]
    #   resp.data.journey_response.activities['key'].conditional_split.evaluation_wait_time #=> Types::WaitTime
    #   resp.data.journey_response.activities['key'].conditional_split.evaluation_wait_time.wait_for #=> String
    #   resp.data.journey_response.activities['key'].conditional_split.evaluation_wait_time.wait_until #=> String
    #   resp.data.journey_response.activities['key'].conditional_split.false_activity #=> String
    #   resp.data.journey_response.activities['key'].conditional_split.true_activity #=> String
    #   resp.data.journey_response.activities['key'].description #=> String
    #   resp.data.journey_response.activities['key'].email #=> Types::EmailMessageActivity
    #   resp.data.journey_response.activities['key'].email.message_config #=> Types::JourneyEmailMessage
    #   resp.data.journey_response.activities['key'].email.message_config.from_address #=> String
    #   resp.data.journey_response.activities['key'].email.next_activity #=> String
    #   resp.data.journey_response.activities['key'].email.template_name #=> String
    #   resp.data.journey_response.activities['key'].email.template_version #=> String
    #   resp.data.journey_response.activities['key'].holdout #=> Types::HoldoutActivity
    #   resp.data.journey_response.activities['key'].holdout.next_activity #=> String
    #   resp.data.journey_response.activities['key'].holdout.percentage #=> Integer
    #   resp.data.journey_response.activities['key'].multi_condition #=> Types::MultiConditionalSplitActivity
    #   resp.data.journey_response.activities['key'].multi_condition.branches #=> Array<MultiConditionalBranch>
    #   resp.data.journey_response.activities['key'].multi_condition.branches[0] #=> Types::MultiConditionalBranch
    #   resp.data.journey_response.activities['key'].multi_condition.branches[0].condition #=> Types::SimpleCondition
    #   resp.data.journey_response.activities['key'].multi_condition.branches[0].next_activity #=> String
    #   resp.data.journey_response.activities['key'].multi_condition.default_activity #=> String
    #   resp.data.journey_response.activities['key'].multi_condition.evaluation_wait_time #=> Types::WaitTime
    #   resp.data.journey_response.activities['key'].push #=> Types::PushMessageActivity
    #   resp.data.journey_response.activities['key'].push.message_config #=> Types::JourneyPushMessage
    #   resp.data.journey_response.activities['key'].push.message_config.time_to_live #=> String
    #   resp.data.journey_response.activities['key'].push.next_activity #=> String
    #   resp.data.journey_response.activities['key'].push.template_name #=> String
    #   resp.data.journey_response.activities['key'].push.template_version #=> String
    #   resp.data.journey_response.activities['key'].random_split #=> Types::RandomSplitActivity
    #   resp.data.journey_response.activities['key'].random_split.branches #=> Array<RandomSplitEntry>
    #   resp.data.journey_response.activities['key'].random_split.branches[0] #=> Types::RandomSplitEntry
    #   resp.data.journey_response.activities['key'].random_split.branches[0].next_activity #=> String
    #   resp.data.journey_response.activities['key'].random_split.branches[0].percentage #=> Integer
    #   resp.data.journey_response.activities['key'].sms #=> Types::SMSMessageActivity
    #   resp.data.journey_response.activities['key'].sms.message_config #=> Types::JourneySMSMessage
    #   resp.data.journey_response.activities['key'].sms.message_config.message_type #=> String, one of ["TRANSACTIONAL", "PROMOTIONAL"]
    #   resp.data.journey_response.activities['key'].sms.message_config.origination_number #=> String
    #   resp.data.journey_response.activities['key'].sms.message_config.sender_id #=> String
    #   resp.data.journey_response.activities['key'].sms.message_config.entity_id #=> String
    #   resp.data.journey_response.activities['key'].sms.message_config.template_id #=> String
    #   resp.data.journey_response.activities['key'].sms.next_activity #=> String
    #   resp.data.journey_response.activities['key'].sms.template_name #=> String
    #   resp.data.journey_response.activities['key'].sms.template_version #=> String
    #   resp.data.journey_response.activities['key'].wait #=> Types::WaitActivity
    #   resp.data.journey_response.activities['key'].wait.next_activity #=> String
    #   resp.data.journey_response.activities['key'].wait.wait_time #=> Types::WaitTime
    #   resp.data.journey_response.activities['key'].contact_center #=> Types::ContactCenterActivity
    #   resp.data.journey_response.activities['key'].contact_center.next_activity #=> String
    #   resp.data.journey_response.application_id #=> String
    #   resp.data.journey_response.creation_date #=> String
    #   resp.data.journey_response.id #=> String
    #   resp.data.journey_response.last_modified_date #=> String
    #   resp.data.journey_response.limits #=> Types::JourneyLimits
    #   resp.data.journey_response.limits.daily_cap #=> Integer
    #   resp.data.journey_response.limits.endpoint_reentry_cap #=> Integer
    #   resp.data.journey_response.limits.messages_per_second #=> Integer
    #   resp.data.journey_response.limits.endpoint_reentry_interval #=> String
    #   resp.data.journey_response.local_time #=> Boolean
    #   resp.data.journey_response.name #=> String
    #   resp.data.journey_response.quiet_time #=> Types::QuietTime
    #   resp.data.journey_response.quiet_time.end #=> String
    #   resp.data.journey_response.quiet_time.start #=> String
    #   resp.data.journey_response.refresh_frequency #=> String
    #   resp.data.journey_response.schedule #=> Types::JourneySchedule
    #   resp.data.journey_response.schedule.end_time #=> Time
    #   resp.data.journey_response.schedule.start_time #=> Time
    #   resp.data.journey_response.schedule.timezone #=> String
    #   resp.data.journey_response.start_activity #=> String
    #   resp.data.journey_response.start_condition #=> Types::StartCondition
    #   resp.data.journey_response.start_condition.description #=> String
    #   resp.data.journey_response.start_condition.event_start_condition #=> Types::EventStartCondition
    #   resp.data.journey_response.start_condition.event_start_condition.event_filter #=> Types::EventFilter
    #   resp.data.journey_response.start_condition.event_start_condition.event_filter.dimensions #=> Types::EventDimensions
    #   resp.data.journey_response.start_condition.event_start_condition.event_filter.filter_type #=> String, one of ["SYSTEM", "ENDPOINT"]
    #   resp.data.journey_response.start_condition.event_start_condition.segment_id #=> String
    #   resp.data.journey_response.start_condition.segment_start_condition #=> Types::SegmentCondition
    #   resp.data.journey_response.state #=> String, one of ["DRAFT", "ACTIVE", "COMPLETED", "CANCELLED", "CLOSED", "PAUSED"]
    #   resp.data.journey_response.tags #=> Hash<String, String>
    #   resp.data.journey_response.tags['key'] #=> String
    #   resp.data.journey_response.wait_for_quiet_time #=> Boolean
    #   resp.data.journey_response.refresh_on_segment_update #=> Boolean
    #   resp.data.journey_response.journey_channel_settings #=> Types::JourneyChannelSettings
    #   resp.data.journey_response.journey_channel_settings.connect_campaign_arn #=> String
    #   resp.data.journey_response.journey_channel_settings.connect_campaign_execution_role_arn #=> String
    #
    def delete_journey(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteJourneyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteJourneyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteJourney
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::DeleteJourney
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteJourney,
        stubs: @stubs,
        params_class: Params::DeleteJourneyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_journey
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a message template for messages that were sent through a push notification channel.</p>
    #
    # @param [Hash] params
    #   See {Types::DeletePushTemplateInput}.
    #
    # @option params [String] :template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    #
    # @option params [String] :version
    #   <p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend="templates-template-name-template-type-versions">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>
    #
    # @return [Types::DeletePushTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_push_template(
    #     template_name: 'TemplateName', # required
    #     version: 'Version'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeletePushTemplateOutput
    #   resp.data.message_body #=> Types::MessageBody
    #   resp.data.message_body.message #=> String
    #   resp.data.message_body.request_id #=> String
    #
    def delete_push_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeletePushTemplateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeletePushTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeletePushTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::DeletePushTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeletePushTemplate,
        stubs: @stubs,
        params_class: Params::DeletePushTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_push_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an Amazon Pinpoint configuration for a recommender model.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteRecommenderConfigurationInput}.
    #
    # @option params [String] :recommender_id
    #   <p>The unique identifier for the recommender model configuration. This identifier is displayed as the <b>Recommender ID</b> on the Amazon Pinpoint console.</p>
    #
    # @return [Types::DeleteRecommenderConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_recommender_configuration(
    #     recommender_id: 'RecommenderId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRecommenderConfigurationOutput
    #   resp.data.recommender_configuration_response #=> Types::RecommenderConfigurationResponse
    #   resp.data.recommender_configuration_response.attributes #=> Hash<String, String>
    #   resp.data.recommender_configuration_response.attributes['key'] #=> String
    #   resp.data.recommender_configuration_response.creation_date #=> String
    #   resp.data.recommender_configuration_response.description #=> String
    #   resp.data.recommender_configuration_response.id #=> String
    #   resp.data.recommender_configuration_response.last_modified_date #=> String
    #   resp.data.recommender_configuration_response.name #=> String
    #   resp.data.recommender_configuration_response.recommendation_provider_id_type #=> String
    #   resp.data.recommender_configuration_response.recommendation_provider_role_arn #=> String
    #   resp.data.recommender_configuration_response.recommendation_provider_uri #=> String
    #   resp.data.recommender_configuration_response.recommendation_transformer_uri #=> String
    #   resp.data.recommender_configuration_response.recommendations_display_name #=> String
    #   resp.data.recommender_configuration_response.recommendations_per_message #=> Integer
    #
    def delete_recommender_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRecommenderConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRecommenderConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRecommenderConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::DeleteRecommenderConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRecommenderConfiguration,
        stubs: @stubs,
        params_class: Params::DeleteRecommenderConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_recommender_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a segment from an application.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteSegmentInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @option params [String] :segment_id
    #   <p>The unique identifier for the segment.</p>
    #
    # @return [Types::DeleteSegmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_segment(
    #     application_id: 'ApplicationId', # required
    #     segment_id: 'SegmentId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteSegmentOutput
    #   resp.data.segment_response #=> Types::SegmentResponse
    #   resp.data.segment_response.application_id #=> String
    #   resp.data.segment_response.arn #=> String
    #   resp.data.segment_response.creation_date #=> String
    #   resp.data.segment_response.dimensions #=> Types::SegmentDimensions
    #   resp.data.segment_response.dimensions.attributes #=> Hash<String, AttributeDimension>
    #   resp.data.segment_response.dimensions.attributes['key'] #=> Types::AttributeDimension
    #   resp.data.segment_response.dimensions.attributes['key'].attribute_type #=> String, one of ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"]
    #   resp.data.segment_response.dimensions.attributes['key'].values #=> Array<String>
    #   resp.data.segment_response.dimensions.attributes['key'].values[0] #=> String
    #   resp.data.segment_response.dimensions.behavior #=> Types::SegmentBehaviors
    #   resp.data.segment_response.dimensions.behavior.recency #=> Types::RecencyDimension
    #   resp.data.segment_response.dimensions.behavior.recency.duration #=> String, one of ["HR_24", "DAY_7", "DAY_14", "DAY_30"]
    #   resp.data.segment_response.dimensions.behavior.recency.recency_type #=> String, one of ["ACTIVE", "INACTIVE"]
    #   resp.data.segment_response.dimensions.demographic #=> Types::SegmentDemographics
    #   resp.data.segment_response.dimensions.demographic.app_version #=> Types::SetDimension
    #   resp.data.segment_response.dimensions.demographic.app_version.dimension_type #=> String, one of ["INCLUSIVE", "EXCLUSIVE"]
    #   resp.data.segment_response.dimensions.demographic.app_version.values #=> Array<String>
    #   resp.data.segment_response.dimensions.demographic.channel #=> Types::SetDimension
    #   resp.data.segment_response.dimensions.demographic.device_type #=> Types::SetDimension
    #   resp.data.segment_response.dimensions.demographic.make #=> Types::SetDimension
    #   resp.data.segment_response.dimensions.demographic.model #=> Types::SetDimension
    #   resp.data.segment_response.dimensions.demographic.platform #=> Types::SetDimension
    #   resp.data.segment_response.dimensions.location #=> Types::SegmentLocation
    #   resp.data.segment_response.dimensions.location.country #=> Types::SetDimension
    #   resp.data.segment_response.dimensions.location.gps_point #=> Types::GPSPointDimension
    #   resp.data.segment_response.dimensions.location.gps_point.coordinates #=> Types::GPSCoordinates
    #   resp.data.segment_response.dimensions.location.gps_point.coordinates.latitude #=> Float
    #   resp.data.segment_response.dimensions.location.gps_point.coordinates.longitude #=> Float
    #   resp.data.segment_response.dimensions.location.gps_point.range_in_kilometers #=> Float
    #   resp.data.segment_response.dimensions.metrics #=> Hash<String, MetricDimension>
    #   resp.data.segment_response.dimensions.metrics['key'] #=> Types::MetricDimension
    #   resp.data.segment_response.dimensions.metrics['key'].comparison_operator #=> String
    #   resp.data.segment_response.dimensions.metrics['key'].value #=> Float
    #   resp.data.segment_response.dimensions.user_attributes #=> Hash<String, AttributeDimension>
    #   resp.data.segment_response.id #=> String
    #   resp.data.segment_response.import_definition #=> Types::SegmentImportResource
    #   resp.data.segment_response.import_definition.channel_counts #=> Hash<String, Integer>
    #   resp.data.segment_response.import_definition.channel_counts['key'] #=> Integer
    #   resp.data.segment_response.import_definition.external_id #=> String
    #   resp.data.segment_response.import_definition.format #=> String, one of ["CSV", "JSON"]
    #   resp.data.segment_response.import_definition.role_arn #=> String
    #   resp.data.segment_response.import_definition.s3_url #=> String
    #   resp.data.segment_response.import_definition.size #=> Integer
    #   resp.data.segment_response.last_modified_date #=> String
    #   resp.data.segment_response.name #=> String
    #   resp.data.segment_response.segment_groups #=> Types::SegmentGroupList
    #   resp.data.segment_response.segment_groups.groups #=> Array<SegmentGroup>
    #   resp.data.segment_response.segment_groups.groups[0] #=> Types::SegmentGroup
    #   resp.data.segment_response.segment_groups.groups[0].dimensions #=> Array<SegmentDimensions>
    #   resp.data.segment_response.segment_groups.groups[0].source_segments #=> Array<SegmentReference>
    #   resp.data.segment_response.segment_groups.groups[0].source_segments[0] #=> Types::SegmentReference
    #   resp.data.segment_response.segment_groups.groups[0].source_segments[0].id #=> String
    #   resp.data.segment_response.segment_groups.groups[0].source_segments[0].version #=> Integer
    #   resp.data.segment_response.segment_groups.groups[0].source_type #=> String, one of ["ALL", "ANY", "NONE"]
    #   resp.data.segment_response.segment_groups.groups[0].type #=> String, one of ["ALL", "ANY", "NONE"]
    #   resp.data.segment_response.segment_groups.include #=> String, one of ["ALL", "ANY", "NONE"]
    #   resp.data.segment_response.segment_type #=> String, one of ["DIMENSIONAL", "IMPORT"]
    #   resp.data.segment_response.tags #=> Hash<String, String>
    #   resp.data.segment_response.tags['key'] #=> String
    #   resp.data.segment_response.version #=> Integer
    #
    def delete_segment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteSegmentInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteSegmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteSegment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::DeleteSegment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteSegment,
        stubs: @stubs,
        params_class: Params::DeleteSegmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_segment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disables the SMS channel for an application and deletes any existing settings for the channel.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteSmsChannelInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @return [Types::DeleteSmsChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_sms_channel(
    #     application_id: 'ApplicationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteSmsChannelOutput
    #   resp.data.sms_channel_response #=> Types::SMSChannelResponse
    #   resp.data.sms_channel_response.application_id #=> String
    #   resp.data.sms_channel_response.creation_date #=> String
    #   resp.data.sms_channel_response.enabled #=> Boolean
    #   resp.data.sms_channel_response.has_credential #=> Boolean
    #   resp.data.sms_channel_response.id #=> String
    #   resp.data.sms_channel_response.is_archived #=> Boolean
    #   resp.data.sms_channel_response.last_modified_by #=> String
    #   resp.data.sms_channel_response.last_modified_date #=> String
    #   resp.data.sms_channel_response.platform #=> String
    #   resp.data.sms_channel_response.promotional_messages_per_second #=> Integer
    #   resp.data.sms_channel_response.sender_id #=> String
    #   resp.data.sms_channel_response.short_code #=> String
    #   resp.data.sms_channel_response.transactional_messages_per_second #=> Integer
    #   resp.data.sms_channel_response.version #=> Integer
    #
    def delete_sms_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteSmsChannelInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteSmsChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteSmsChannel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::DeleteSmsChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteSmsChannel,
        stubs: @stubs,
        params_class: Params::DeleteSmsChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_sms_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a message template for messages that were sent through the SMS channel.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteSmsTemplateInput}.
    #
    # @option params [String] :template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    #
    # @option params [String] :version
    #   <p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend="templates-template-name-template-type-versions">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>
    #
    # @return [Types::DeleteSmsTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_sms_template(
    #     template_name: 'TemplateName', # required
    #     version: 'Version'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteSmsTemplateOutput
    #   resp.data.message_body #=> Types::MessageBody
    #   resp.data.message_body.message #=> String
    #   resp.data.message_body.request_id #=> String
    #
    def delete_sms_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteSmsTemplateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteSmsTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteSmsTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::DeleteSmsTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteSmsTemplate,
        stubs: @stubs,
        params_class: Params::DeleteSmsTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_sms_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes all the endpoints that are associated with a specific user ID.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteUserEndpointsInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @option params [String] :user_id
    #   <p>The unique identifier for the user.</p>
    #
    # @return [Types::DeleteUserEndpointsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user_endpoints(
    #     application_id: 'ApplicationId', # required
    #     user_id: 'UserId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteUserEndpointsOutput
    #   resp.data.endpoints_response #=> Types::EndpointsResponse
    #   resp.data.endpoints_response.item #=> Array<EndpointResponse>
    #   resp.data.endpoints_response.item[0] #=> Types::EndpointResponse
    #   resp.data.endpoints_response.item[0].address #=> String
    #   resp.data.endpoints_response.item[0].application_id #=> String
    #   resp.data.endpoints_response.item[0].attributes #=> Hash<String, Array<String>>
    #   resp.data.endpoints_response.item[0].attributes['key'] #=> Array<String>
    #   resp.data.endpoints_response.item[0].attributes['key'][0] #=> String
    #   resp.data.endpoints_response.item[0].channel_type #=> String, one of ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"]
    #   resp.data.endpoints_response.item[0].cohort_id #=> String
    #   resp.data.endpoints_response.item[0].creation_date #=> String
    #   resp.data.endpoints_response.item[0].demographic #=> Types::EndpointDemographic
    #   resp.data.endpoints_response.item[0].demographic.app_version #=> String
    #   resp.data.endpoints_response.item[0].demographic.locale #=> String
    #   resp.data.endpoints_response.item[0].demographic.make #=> String
    #   resp.data.endpoints_response.item[0].demographic.model #=> String
    #   resp.data.endpoints_response.item[0].demographic.model_version #=> String
    #   resp.data.endpoints_response.item[0].demographic.platform #=> String
    #   resp.data.endpoints_response.item[0].demographic.platform_version #=> String
    #   resp.data.endpoints_response.item[0].demographic.timezone #=> String
    #   resp.data.endpoints_response.item[0].effective_date #=> String
    #   resp.data.endpoints_response.item[0].endpoint_status #=> String
    #   resp.data.endpoints_response.item[0].id #=> String
    #   resp.data.endpoints_response.item[0].location #=> Types::EndpointLocation
    #   resp.data.endpoints_response.item[0].location.city #=> String
    #   resp.data.endpoints_response.item[0].location.country #=> String
    #   resp.data.endpoints_response.item[0].location.latitude #=> Float
    #   resp.data.endpoints_response.item[0].location.longitude #=> Float
    #   resp.data.endpoints_response.item[0].location.postal_code #=> String
    #   resp.data.endpoints_response.item[0].location.region #=> String
    #   resp.data.endpoints_response.item[0].metrics #=> Hash<String, Float>
    #   resp.data.endpoints_response.item[0].metrics['key'] #=> Float
    #   resp.data.endpoints_response.item[0].opt_out #=> String
    #   resp.data.endpoints_response.item[0].request_id #=> String
    #   resp.data.endpoints_response.item[0].user #=> Types::EndpointUser
    #   resp.data.endpoints_response.item[0].user.user_attributes #=> Hash<String, Array<String>>
    #   resp.data.endpoints_response.item[0].user.user_id #=> String
    #
    def delete_user_endpoints(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteUserEndpointsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteUserEndpointsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteUserEndpoints
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::DeleteUserEndpoints
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteUserEndpoints,
        stubs: @stubs,
        params_class: Params::DeleteUserEndpointsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_user_endpoints
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disables the voice channel for an application and deletes any existing settings for the channel.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteVoiceChannelInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @return [Types::DeleteVoiceChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_voice_channel(
    #     application_id: 'ApplicationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteVoiceChannelOutput
    #   resp.data.voice_channel_response #=> Types::VoiceChannelResponse
    #   resp.data.voice_channel_response.application_id #=> String
    #   resp.data.voice_channel_response.creation_date #=> String
    #   resp.data.voice_channel_response.enabled #=> Boolean
    #   resp.data.voice_channel_response.has_credential #=> Boolean
    #   resp.data.voice_channel_response.id #=> String
    #   resp.data.voice_channel_response.is_archived #=> Boolean
    #   resp.data.voice_channel_response.last_modified_by #=> String
    #   resp.data.voice_channel_response.last_modified_date #=> String
    #   resp.data.voice_channel_response.platform #=> String
    #   resp.data.voice_channel_response.version #=> Integer
    #
    def delete_voice_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteVoiceChannelInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteVoiceChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteVoiceChannel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::DeleteVoiceChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteVoiceChannel,
        stubs: @stubs,
        params_class: Params::DeleteVoiceChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_voice_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a message template for messages that were sent through the voice channel.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteVoiceTemplateInput}.
    #
    # @option params [String] :template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    #
    # @option params [String] :version
    #   <p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend="templates-template-name-template-type-versions">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>
    #
    # @return [Types::DeleteVoiceTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_voice_template(
    #     template_name: 'TemplateName', # required
    #     version: 'Version'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteVoiceTemplateOutput
    #   resp.data.message_body #=> Types::MessageBody
    #   resp.data.message_body.message #=> String
    #   resp.data.message_body.request_id #=> String
    #
    def delete_voice_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteVoiceTemplateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteVoiceTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteVoiceTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::DeleteVoiceTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteVoiceTemplate,
        stubs: @stubs,
        params_class: Params::DeleteVoiceTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_voice_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about the status and settings of the ADM channel for an application.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAdmChannelInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @return [Types::GetAdmChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_adm_channel(
    #     application_id: 'ApplicationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAdmChannelOutput
    #   resp.data.adm_channel_response #=> Types::ADMChannelResponse
    #   resp.data.adm_channel_response.application_id #=> String
    #   resp.data.adm_channel_response.creation_date #=> String
    #   resp.data.adm_channel_response.enabled #=> Boolean
    #   resp.data.adm_channel_response.has_credential #=> Boolean
    #   resp.data.adm_channel_response.id #=> String
    #   resp.data.adm_channel_response.is_archived #=> Boolean
    #   resp.data.adm_channel_response.last_modified_by #=> String
    #   resp.data.adm_channel_response.last_modified_date #=> String
    #   resp.data.adm_channel_response.platform #=> String
    #   resp.data.adm_channel_response.version #=> Integer
    #
    def get_adm_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAdmChannelInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAdmChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAdmChannel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::GetAdmChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAdmChannel,
        stubs: @stubs,
        params_class: Params::GetAdmChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_adm_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about the status and settings of the APNs channel for an application.</p>
    #
    # @param [Hash] params
    #   See {Types::GetApnsChannelInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @return [Types::GetApnsChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_apns_channel(
    #     application_id: 'ApplicationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetApnsChannelOutput
    #   resp.data.apns_channel_response #=> Types::APNSChannelResponse
    #   resp.data.apns_channel_response.application_id #=> String
    #   resp.data.apns_channel_response.creation_date #=> String
    #   resp.data.apns_channel_response.default_authentication_method #=> String
    #   resp.data.apns_channel_response.enabled #=> Boolean
    #   resp.data.apns_channel_response.has_credential #=> Boolean
    #   resp.data.apns_channel_response.has_token_key #=> Boolean
    #   resp.data.apns_channel_response.id #=> String
    #   resp.data.apns_channel_response.is_archived #=> Boolean
    #   resp.data.apns_channel_response.last_modified_by #=> String
    #   resp.data.apns_channel_response.last_modified_date #=> String
    #   resp.data.apns_channel_response.platform #=> String
    #   resp.data.apns_channel_response.version #=> Integer
    #
    def get_apns_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetApnsChannelInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetApnsChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetApnsChannel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::GetApnsChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetApnsChannel,
        stubs: @stubs,
        params_class: Params::GetApnsChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_apns_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about the status and settings of the APNs sandbox channel for an application.</p>
    #
    # @param [Hash] params
    #   See {Types::GetApnsSandboxChannelInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @return [Types::GetApnsSandboxChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_apns_sandbox_channel(
    #     application_id: 'ApplicationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetApnsSandboxChannelOutput
    #   resp.data.apns_sandbox_channel_response #=> Types::APNSSandboxChannelResponse
    #   resp.data.apns_sandbox_channel_response.application_id #=> String
    #   resp.data.apns_sandbox_channel_response.creation_date #=> String
    #   resp.data.apns_sandbox_channel_response.default_authentication_method #=> String
    #   resp.data.apns_sandbox_channel_response.enabled #=> Boolean
    #   resp.data.apns_sandbox_channel_response.has_credential #=> Boolean
    #   resp.data.apns_sandbox_channel_response.has_token_key #=> Boolean
    #   resp.data.apns_sandbox_channel_response.id #=> String
    #   resp.data.apns_sandbox_channel_response.is_archived #=> Boolean
    #   resp.data.apns_sandbox_channel_response.last_modified_by #=> String
    #   resp.data.apns_sandbox_channel_response.last_modified_date #=> String
    #   resp.data.apns_sandbox_channel_response.platform #=> String
    #   resp.data.apns_sandbox_channel_response.version #=> Integer
    #
    def get_apns_sandbox_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetApnsSandboxChannelInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetApnsSandboxChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetApnsSandboxChannel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::GetApnsSandboxChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetApnsSandboxChannel,
        stubs: @stubs,
        params_class: Params::GetApnsSandboxChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_apns_sandbox_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about the status and settings of the APNs VoIP channel for an application.</p>
    #
    # @param [Hash] params
    #   See {Types::GetApnsVoipChannelInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @return [Types::GetApnsVoipChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_apns_voip_channel(
    #     application_id: 'ApplicationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetApnsVoipChannelOutput
    #   resp.data.apns_voip_channel_response #=> Types::APNSVoipChannelResponse
    #   resp.data.apns_voip_channel_response.application_id #=> String
    #   resp.data.apns_voip_channel_response.creation_date #=> String
    #   resp.data.apns_voip_channel_response.default_authentication_method #=> String
    #   resp.data.apns_voip_channel_response.enabled #=> Boolean
    #   resp.data.apns_voip_channel_response.has_credential #=> Boolean
    #   resp.data.apns_voip_channel_response.has_token_key #=> Boolean
    #   resp.data.apns_voip_channel_response.id #=> String
    #   resp.data.apns_voip_channel_response.is_archived #=> Boolean
    #   resp.data.apns_voip_channel_response.last_modified_by #=> String
    #   resp.data.apns_voip_channel_response.last_modified_date #=> String
    #   resp.data.apns_voip_channel_response.platform #=> String
    #   resp.data.apns_voip_channel_response.version #=> Integer
    #
    def get_apns_voip_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetApnsVoipChannelInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetApnsVoipChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetApnsVoipChannel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::GetApnsVoipChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetApnsVoipChannel,
        stubs: @stubs,
        params_class: Params::GetApnsVoipChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_apns_voip_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about the status and settings of the APNs VoIP sandbox channel for an application.</p>
    #
    # @param [Hash] params
    #   See {Types::GetApnsVoipSandboxChannelInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @return [Types::GetApnsVoipSandboxChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_apns_voip_sandbox_channel(
    #     application_id: 'ApplicationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetApnsVoipSandboxChannelOutput
    #   resp.data.apns_voip_sandbox_channel_response #=> Types::APNSVoipSandboxChannelResponse
    #   resp.data.apns_voip_sandbox_channel_response.application_id #=> String
    #   resp.data.apns_voip_sandbox_channel_response.creation_date #=> String
    #   resp.data.apns_voip_sandbox_channel_response.default_authentication_method #=> String
    #   resp.data.apns_voip_sandbox_channel_response.enabled #=> Boolean
    #   resp.data.apns_voip_sandbox_channel_response.has_credential #=> Boolean
    #   resp.data.apns_voip_sandbox_channel_response.has_token_key #=> Boolean
    #   resp.data.apns_voip_sandbox_channel_response.id #=> String
    #   resp.data.apns_voip_sandbox_channel_response.is_archived #=> Boolean
    #   resp.data.apns_voip_sandbox_channel_response.last_modified_by #=> String
    #   resp.data.apns_voip_sandbox_channel_response.last_modified_date #=> String
    #   resp.data.apns_voip_sandbox_channel_response.platform #=> String
    #   resp.data.apns_voip_sandbox_channel_response.version #=> Integer
    #
    def get_apns_voip_sandbox_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetApnsVoipSandboxChannelInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetApnsVoipSandboxChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetApnsVoipSandboxChannel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::GetApnsVoipSandboxChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetApnsVoipSandboxChannel,
        stubs: @stubs,
        params_class: Params::GetApnsVoipSandboxChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_apns_voip_sandbox_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about an application.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAppInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @return [Types::GetAppOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_app(
    #     application_id: 'ApplicationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAppOutput
    #   resp.data.application_response #=> Types::ApplicationResponse
    #   resp.data.application_response.arn #=> String
    #   resp.data.application_response.id #=> String
    #   resp.data.application_response.name #=> String
    #   resp.data.application_response.tags #=> Hash<String, String>
    #   resp.data.application_response.tags['key'] #=> String
    #   resp.data.application_response.creation_date #=> String
    #
    def get_app(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAppInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAppInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetApp
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::GetApp
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetApp,
        stubs: @stubs,
        params_class: Params::GetAppOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_app
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves (queries) pre-aggregated data for a standard metric that applies to an application.</p>
    #
    # @param [Hash] params
    #   See {Types::GetApplicationDateRangeKpiInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @option params [Time] :end_time
    #   <p>The last date and time to retrieve data for, as part of an inclusive date range that filters the query results. This value should be in extended ISO 8601 format and use Coordinated Universal Time (UTC), for example: 2019-07-26T20:00:00Z for 8:00 PM UTC July 26, 2019.</p>
    #
    # @option params [String] :kpi_name
    #   <p>The name of the metric, also referred to as a <i>key performance indicator (KPI)</i>, to retrieve data for. This value describes the associated metric and consists of two or more terms, which are comprised of lowercase alphanumeric characters, separated by a hyphen. Examples are email-open-rate and successful-delivery-rate. For a list of valid values, see the <a href="https://docs.aws.amazon.com/pinpoint/latest/developerguide/analytics-standard-metrics.html">Amazon Pinpoint Developer Guide</a>.</p>
    #
    # @option params [String] :next_token
    #   <p>The  string that specifies which page of results to return in a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    #
    # @option params [String] :page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    #
    # @option params [Time] :start_time
    #   <p>The first date and time to retrieve data for, as part of an inclusive date range that filters the query results. This value should be in extended ISO 8601 format and use Coordinated Universal Time (UTC), for example: 2019-07-19T20:00:00Z for 8:00 PM UTC July 19, 2019. This value should also be fewer than 90 days from the current day.</p>
    #
    # @return [Types::GetApplicationDateRangeKpiOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_application_date_range_kpi(
    #     application_id: 'ApplicationId', # required
    #     end_time: Time.now,
    #     kpi_name: 'KpiName', # required
    #     next_token: 'NextToken',
    #     page_size: 'PageSize',
    #     start_time: Time.now
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetApplicationDateRangeKpiOutput
    #   resp.data.application_date_range_kpi_response #=> Types::ApplicationDateRangeKpiResponse
    #   resp.data.application_date_range_kpi_response.application_id #=> String
    #   resp.data.application_date_range_kpi_response.end_time #=> Time
    #   resp.data.application_date_range_kpi_response.kpi_name #=> String
    #   resp.data.application_date_range_kpi_response.kpi_result #=> Types::BaseKpiResult
    #   resp.data.application_date_range_kpi_response.kpi_result.rows #=> Array<ResultRow>
    #   resp.data.application_date_range_kpi_response.kpi_result.rows[0] #=> Types::ResultRow
    #   resp.data.application_date_range_kpi_response.kpi_result.rows[0].grouped_bys #=> Array<ResultRowValue>
    #   resp.data.application_date_range_kpi_response.kpi_result.rows[0].grouped_bys[0] #=> Types::ResultRowValue
    #   resp.data.application_date_range_kpi_response.kpi_result.rows[0].grouped_bys[0].key #=> String
    #   resp.data.application_date_range_kpi_response.kpi_result.rows[0].grouped_bys[0].type #=> String
    #   resp.data.application_date_range_kpi_response.kpi_result.rows[0].grouped_bys[0].value #=> String
    #   resp.data.application_date_range_kpi_response.kpi_result.rows[0].values #=> Array<ResultRowValue>
    #   resp.data.application_date_range_kpi_response.next_token #=> String
    #   resp.data.application_date_range_kpi_response.start_time #=> Time
    #
    def get_application_date_range_kpi(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetApplicationDateRangeKpiInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetApplicationDateRangeKpiInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetApplicationDateRangeKpi
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::GetApplicationDateRangeKpi
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetApplicationDateRangeKpi,
        stubs: @stubs,
        params_class: Params::GetApplicationDateRangeKpiOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_application_date_range_kpi
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about the settings for an application.</p>
    #
    # @param [Hash] params
    #   See {Types::GetApplicationSettingsInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @return [Types::GetApplicationSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_application_settings(
    #     application_id: 'ApplicationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetApplicationSettingsOutput
    #   resp.data.application_settings_resource #=> Types::ApplicationSettingsResource
    #   resp.data.application_settings_resource.application_id #=> String
    #   resp.data.application_settings_resource.campaign_hook #=> Types::CampaignHook
    #   resp.data.application_settings_resource.campaign_hook.lambda_function_name #=> String
    #   resp.data.application_settings_resource.campaign_hook.mode #=> String, one of ["DELIVERY", "FILTER"]
    #   resp.data.application_settings_resource.campaign_hook.web_url #=> String
    #   resp.data.application_settings_resource.last_modified_date #=> String
    #   resp.data.application_settings_resource.limits #=> Types::CampaignLimits
    #   resp.data.application_settings_resource.limits.daily #=> Integer
    #   resp.data.application_settings_resource.limits.maximum_duration #=> Integer
    #   resp.data.application_settings_resource.limits.messages_per_second #=> Integer
    #   resp.data.application_settings_resource.limits.total #=> Integer
    #   resp.data.application_settings_resource.limits.session #=> Integer
    #   resp.data.application_settings_resource.quiet_time #=> Types::QuietTime
    #   resp.data.application_settings_resource.quiet_time.end #=> String
    #   resp.data.application_settings_resource.quiet_time.start #=> String
    #
    def get_application_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetApplicationSettingsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetApplicationSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetApplicationSettings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::GetApplicationSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetApplicationSettings,
        stubs: @stubs,
        params_class: Params::GetApplicationSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_application_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about all the applications that are associated with your Amazon Pinpoint account.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAppsInput}.
    #
    # @option params [String] :page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    #
    # @option params [String] :token
    #   <p>The NextToken string that specifies which page of results to return in a paginated response.</p>
    #
    # @return [Types::GetAppsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_apps(
    #     page_size: 'PageSize',
    #     token: 'Token'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAppsOutput
    #   resp.data.applications_response #=> Types::ApplicationsResponse
    #   resp.data.applications_response.item #=> Array<ApplicationResponse>
    #   resp.data.applications_response.item[0] #=> Types::ApplicationResponse
    #   resp.data.applications_response.item[0].arn #=> String
    #   resp.data.applications_response.item[0].id #=> String
    #   resp.data.applications_response.item[0].name #=> String
    #   resp.data.applications_response.item[0].tags #=> Hash<String, String>
    #   resp.data.applications_response.item[0].tags['key'] #=> String
    #   resp.data.applications_response.item[0].creation_date #=> String
    #   resp.data.applications_response.next_token #=> String
    #
    def get_apps(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAppsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAppsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetApps
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::GetApps
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetApps,
        stubs: @stubs,
        params_class: Params::GetAppsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_apps
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about the status and settings of the Baidu channel for an application.</p>
    #
    # @param [Hash] params
    #   See {Types::GetBaiduChannelInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @return [Types::GetBaiduChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_baidu_channel(
    #     application_id: 'ApplicationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBaiduChannelOutput
    #   resp.data.baidu_channel_response #=> Types::BaiduChannelResponse
    #   resp.data.baidu_channel_response.application_id #=> String
    #   resp.data.baidu_channel_response.creation_date #=> String
    #   resp.data.baidu_channel_response.credential #=> String
    #   resp.data.baidu_channel_response.enabled #=> Boolean
    #   resp.data.baidu_channel_response.has_credential #=> Boolean
    #   resp.data.baidu_channel_response.id #=> String
    #   resp.data.baidu_channel_response.is_archived #=> Boolean
    #   resp.data.baidu_channel_response.last_modified_by #=> String
    #   resp.data.baidu_channel_response.last_modified_date #=> String
    #   resp.data.baidu_channel_response.platform #=> String
    #   resp.data.baidu_channel_response.version #=> Integer
    #
    def get_baidu_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBaiduChannelInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBaiduChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBaiduChannel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::GetBaiduChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetBaiduChannel,
        stubs: @stubs,
        params_class: Params::GetBaiduChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_baidu_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about the status, configuration, and other settings for a campaign.</p>
    #
    # @param [Hash] params
    #   See {Types::GetCampaignInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @option params [String] :campaign_id
    #   <p>The unique identifier for the campaign.</p>
    #
    # @return [Types::GetCampaignOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_campaign(
    #     application_id: 'ApplicationId', # required
    #     campaign_id: 'CampaignId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetCampaignOutput
    #   resp.data.campaign_response #=> Types::CampaignResponse
    #   resp.data.campaign_response.additional_treatments #=> Array<TreatmentResource>
    #   resp.data.campaign_response.additional_treatments[0] #=> Types::TreatmentResource
    #   resp.data.campaign_response.additional_treatments[0].custom_delivery_configuration #=> Types::CustomDeliveryConfiguration
    #   resp.data.campaign_response.additional_treatments[0].custom_delivery_configuration.delivery_uri #=> String
    #   resp.data.campaign_response.additional_treatments[0].custom_delivery_configuration.endpoint_types #=> Array<String>
    #   resp.data.campaign_response.additional_treatments[0].custom_delivery_configuration.endpoint_types[0] #=> String, one of ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"]
    #   resp.data.campaign_response.additional_treatments[0].id #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration #=> Types::MessageConfiguration
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message #=> Types::Message
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.action #=> String, one of ["OPEN_APP", "DEEP_LINK", "URL"]
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.body #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.image_icon_url #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.image_small_icon_url #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.image_url #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.json_body #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.media_url #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.raw_content #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.silent_push #=> Boolean
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.time_to_live #=> Integer
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.title #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.url #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.apns_message #=> Types::Message
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.baidu_message #=> Types::Message
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.custom_message #=> Types::CampaignCustomMessage
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.custom_message.data #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.default_message #=> Types::Message
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.email_message #=> Types::CampaignEmailMessage
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.email_message.body #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.email_message.from_address #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.email_message.html_body #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.email_message.title #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.gcm_message #=> Types::Message
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.sms_message #=> Types::CampaignSmsMessage
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.sms_message.body #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.sms_message.message_type #=> String, one of ["TRANSACTIONAL", "PROMOTIONAL"]
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.sms_message.origination_number #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.sms_message.sender_id #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.sms_message.entity_id #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.sms_message.template_id #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message #=> Types::CampaignInAppMessage
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.body #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content #=> Array<InAppMessageContent>
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0] #=> Types::InAppMessageContent
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].background_color #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].body_config #=> Types::InAppMessageBodyConfig
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].body_config.alignment #=> String, one of ["LEFT", "CENTER", "RIGHT"]
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].body_config.body #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].body_config.text_color #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].header_config #=> Types::InAppMessageHeaderConfig
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].header_config.alignment #=> String, one of ["LEFT", "CENTER", "RIGHT"]
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].header_config.header #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].header_config.text_color #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].image_url #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn #=> Types::InAppMessageButton
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.android #=> Types::OverrideButtonConfiguration
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.android.button_action #=> String, one of ["LINK", "DEEP_LINK", "CLOSE"]
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.android.link #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.default_config #=> Types::DefaultButtonConfiguration
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.default_config.background_color #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.default_config.border_radius #=> Integer
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.default_config.button_action #=> String, one of ["LINK", "DEEP_LINK", "CLOSE"]
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.default_config.link #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.default_config.text #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.default_config.text_color #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.ios #=> Types::OverrideButtonConfiguration
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.web #=> Types::OverrideButtonConfiguration
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].secondary_btn #=> Types::InAppMessageButton
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.custom_config #=> Hash<String, String>
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.custom_config['key'] #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.layout #=> String, one of ["BOTTOM_BANNER", "TOP_BANNER", "OVERLAYS", "MOBILE_FEED", "MIDDLE_BANNER", "CAROUSEL"]
    #   resp.data.campaign_response.additional_treatments[0].schedule #=> Types::Schedule
    #   resp.data.campaign_response.additional_treatments[0].schedule.end_time #=> String
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter #=> Types::CampaignEventFilter
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions #=> Types::EventDimensions
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.attributes #=> Hash<String, AttributeDimension>
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.attributes['key'] #=> Types::AttributeDimension
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.attributes['key'].attribute_type #=> String, one of ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"]
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.attributes['key'].values #=> Array<String>
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.attributes['key'].values[0] #=> String
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.event_type #=> Types::SetDimension
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.event_type.dimension_type #=> String, one of ["INCLUSIVE", "EXCLUSIVE"]
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.event_type.values #=> Array<String>
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.metrics #=> Hash<String, MetricDimension>
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.metrics['key'] #=> Types::MetricDimension
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.metrics['key'].comparison_operator #=> String
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.metrics['key'].value #=> Float
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.filter_type #=> String, one of ["SYSTEM", "ENDPOINT"]
    #   resp.data.campaign_response.additional_treatments[0].schedule.frequency #=> String, one of ["ONCE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY", "EVENT", "IN_APP_EVENT"]
    #   resp.data.campaign_response.additional_treatments[0].schedule.is_local_time #=> Boolean
    #   resp.data.campaign_response.additional_treatments[0].schedule.quiet_time #=> Types::QuietTime
    #   resp.data.campaign_response.additional_treatments[0].schedule.quiet_time.end #=> String
    #   resp.data.campaign_response.additional_treatments[0].schedule.quiet_time.start #=> String
    #   resp.data.campaign_response.additional_treatments[0].schedule.start_time #=> String
    #   resp.data.campaign_response.additional_treatments[0].schedule.timezone #=> String
    #   resp.data.campaign_response.additional_treatments[0].size_percent #=> Integer
    #   resp.data.campaign_response.additional_treatments[0].state #=> Types::CampaignState
    #   resp.data.campaign_response.additional_treatments[0].state.campaign_status #=> String, one of ["SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED", "DELETED", "INVALID"]
    #   resp.data.campaign_response.additional_treatments[0].template_configuration #=> Types::TemplateConfiguration
    #   resp.data.campaign_response.additional_treatments[0].template_configuration.email_template #=> Types::Template
    #   resp.data.campaign_response.additional_treatments[0].template_configuration.email_template.name #=> String
    #   resp.data.campaign_response.additional_treatments[0].template_configuration.email_template.version #=> String
    #   resp.data.campaign_response.additional_treatments[0].template_configuration.push_template #=> Types::Template
    #   resp.data.campaign_response.additional_treatments[0].template_configuration.sms_template #=> Types::Template
    #   resp.data.campaign_response.additional_treatments[0].template_configuration.voice_template #=> Types::Template
    #   resp.data.campaign_response.additional_treatments[0].treatment_description #=> String
    #   resp.data.campaign_response.additional_treatments[0].treatment_name #=> String
    #   resp.data.campaign_response.application_id #=> String
    #   resp.data.campaign_response.arn #=> String
    #   resp.data.campaign_response.creation_date #=> String
    #   resp.data.campaign_response.custom_delivery_configuration #=> Types::CustomDeliveryConfiguration
    #   resp.data.campaign_response.default_state #=> Types::CampaignState
    #   resp.data.campaign_response.description #=> String
    #   resp.data.campaign_response.holdout_percent #=> Integer
    #   resp.data.campaign_response.hook #=> Types::CampaignHook
    #   resp.data.campaign_response.hook.lambda_function_name #=> String
    #   resp.data.campaign_response.hook.mode #=> String, one of ["DELIVERY", "FILTER"]
    #   resp.data.campaign_response.hook.web_url #=> String
    #   resp.data.campaign_response.id #=> String
    #   resp.data.campaign_response.is_paused #=> Boolean
    #   resp.data.campaign_response.last_modified_date #=> String
    #   resp.data.campaign_response.limits #=> Types::CampaignLimits
    #   resp.data.campaign_response.limits.daily #=> Integer
    #   resp.data.campaign_response.limits.maximum_duration #=> Integer
    #   resp.data.campaign_response.limits.messages_per_second #=> Integer
    #   resp.data.campaign_response.limits.total #=> Integer
    #   resp.data.campaign_response.limits.session #=> Integer
    #   resp.data.campaign_response.message_configuration #=> Types::MessageConfiguration
    #   resp.data.campaign_response.name #=> String
    #   resp.data.campaign_response.schedule #=> Types::Schedule
    #   resp.data.campaign_response.segment_id #=> String
    #   resp.data.campaign_response.segment_version #=> Integer
    #   resp.data.campaign_response.state #=> Types::CampaignState
    #   resp.data.campaign_response.tags #=> Hash<String, String>
    #   resp.data.campaign_response.template_configuration #=> Types::TemplateConfiguration
    #   resp.data.campaign_response.treatment_description #=> String
    #   resp.data.campaign_response.treatment_name #=> String
    #   resp.data.campaign_response.version #=> Integer
    #   resp.data.campaign_response.priority #=> Integer
    #
    def get_campaign(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetCampaignInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetCampaignInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetCampaign
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::GetCampaign
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetCampaign,
        stubs: @stubs,
        params_class: Params::GetCampaignOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_campaign
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about all the activities for a campaign.</p>
    #
    # @param [Hash] params
    #   See {Types::GetCampaignActivitiesInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @option params [String] :campaign_id
    #   <p>The unique identifier for the campaign.</p>
    #
    # @option params [String] :page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    #
    # @option params [String] :token
    #   <p>The NextToken string that specifies which page of results to return in a paginated response.</p>
    #
    # @return [Types::GetCampaignActivitiesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_campaign_activities(
    #     application_id: 'ApplicationId', # required
    #     campaign_id: 'CampaignId', # required
    #     page_size: 'PageSize',
    #     token: 'Token'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetCampaignActivitiesOutput
    #   resp.data.activities_response #=> Types::ActivitiesResponse
    #   resp.data.activities_response.item #=> Array<ActivityResponse>
    #   resp.data.activities_response.item[0] #=> Types::ActivityResponse
    #   resp.data.activities_response.item[0].application_id #=> String
    #   resp.data.activities_response.item[0].campaign_id #=> String
    #   resp.data.activities_response.item[0].end #=> String
    #   resp.data.activities_response.item[0].id #=> String
    #   resp.data.activities_response.item[0].result #=> String
    #   resp.data.activities_response.item[0].scheduled_start #=> String
    #   resp.data.activities_response.item[0].start #=> String
    #   resp.data.activities_response.item[0].state #=> String
    #   resp.data.activities_response.item[0].successful_endpoint_count #=> Integer
    #   resp.data.activities_response.item[0].timezones_completed_count #=> Integer
    #   resp.data.activities_response.item[0].timezones_total_count #=> Integer
    #   resp.data.activities_response.item[0].total_endpoint_count #=> Integer
    #   resp.data.activities_response.item[0].treatment_id #=> String
    #   resp.data.activities_response.next_token #=> String
    #
    def get_campaign_activities(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetCampaignActivitiesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetCampaignActivitiesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetCampaignActivities
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::GetCampaignActivities
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetCampaignActivities,
        stubs: @stubs,
        params_class: Params::GetCampaignActivitiesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_campaign_activities
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves (queries) pre-aggregated data for a standard metric that applies to a campaign.</p>
    #
    # @param [Hash] params
    #   See {Types::GetCampaignDateRangeKpiInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @option params [String] :campaign_id
    #   <p>The unique identifier for the campaign.</p>
    #
    # @option params [Time] :end_time
    #   <p>The last date and time to retrieve data for, as part of an inclusive date range that filters the query results. This value should be in extended ISO 8601 format and use Coordinated Universal Time (UTC), for example: 2019-07-26T20:00:00Z for 8:00 PM UTC July 26, 2019.</p>
    #
    # @option params [String] :kpi_name
    #   <p>The name of the metric, also referred to as a <i>key performance indicator (KPI)</i>, to retrieve data for. This value describes the associated metric and consists of two or more terms, which are comprised of lowercase alphanumeric characters, separated by a hyphen. Examples are email-open-rate and successful-delivery-rate. For a list of valid values, see the <a href="https://docs.aws.amazon.com/pinpoint/latest/developerguide/analytics-standard-metrics.html">Amazon Pinpoint Developer Guide</a>.</p>
    #
    # @option params [String] :next_token
    #   <p>The  string that specifies which page of results to return in a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    #
    # @option params [String] :page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    #
    # @option params [Time] :start_time
    #   <p>The first date and time to retrieve data for, as part of an inclusive date range that filters the query results. This value should be in extended ISO 8601 format and use Coordinated Universal Time (UTC), for example: 2019-07-19T20:00:00Z for 8:00 PM UTC July 19, 2019. This value should also be fewer than 90 days from the current day.</p>
    #
    # @return [Types::GetCampaignDateRangeKpiOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_campaign_date_range_kpi(
    #     application_id: 'ApplicationId', # required
    #     campaign_id: 'CampaignId', # required
    #     end_time: Time.now,
    #     kpi_name: 'KpiName', # required
    #     next_token: 'NextToken',
    #     page_size: 'PageSize',
    #     start_time: Time.now
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetCampaignDateRangeKpiOutput
    #   resp.data.campaign_date_range_kpi_response #=> Types::CampaignDateRangeKpiResponse
    #   resp.data.campaign_date_range_kpi_response.application_id #=> String
    #   resp.data.campaign_date_range_kpi_response.campaign_id #=> String
    #   resp.data.campaign_date_range_kpi_response.end_time #=> Time
    #   resp.data.campaign_date_range_kpi_response.kpi_name #=> String
    #   resp.data.campaign_date_range_kpi_response.kpi_result #=> Types::BaseKpiResult
    #   resp.data.campaign_date_range_kpi_response.kpi_result.rows #=> Array<ResultRow>
    #   resp.data.campaign_date_range_kpi_response.kpi_result.rows[0] #=> Types::ResultRow
    #   resp.data.campaign_date_range_kpi_response.kpi_result.rows[0].grouped_bys #=> Array<ResultRowValue>
    #   resp.data.campaign_date_range_kpi_response.kpi_result.rows[0].grouped_bys[0] #=> Types::ResultRowValue
    #   resp.data.campaign_date_range_kpi_response.kpi_result.rows[0].grouped_bys[0].key #=> String
    #   resp.data.campaign_date_range_kpi_response.kpi_result.rows[0].grouped_bys[0].type #=> String
    #   resp.data.campaign_date_range_kpi_response.kpi_result.rows[0].grouped_bys[0].value #=> String
    #   resp.data.campaign_date_range_kpi_response.kpi_result.rows[0].values #=> Array<ResultRowValue>
    #   resp.data.campaign_date_range_kpi_response.next_token #=> String
    #   resp.data.campaign_date_range_kpi_response.start_time #=> Time
    #
    def get_campaign_date_range_kpi(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetCampaignDateRangeKpiInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetCampaignDateRangeKpiInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetCampaignDateRangeKpi
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::GetCampaignDateRangeKpi
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetCampaignDateRangeKpi,
        stubs: @stubs,
        params_class: Params::GetCampaignDateRangeKpiOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_campaign_date_range_kpi
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about the status, configuration, and other settings for a specific version of a campaign.</p>
    #
    # @param [Hash] params
    #   See {Types::GetCampaignVersionInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @option params [String] :campaign_id
    #   <p>The unique identifier for the campaign.</p>
    #
    # @option params [String] :version
    #   <p>The unique version number (Version property) for the campaign version.</p>
    #
    # @return [Types::GetCampaignVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_campaign_version(
    #     application_id: 'ApplicationId', # required
    #     campaign_id: 'CampaignId', # required
    #     version: 'Version' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetCampaignVersionOutput
    #   resp.data.campaign_response #=> Types::CampaignResponse
    #   resp.data.campaign_response.additional_treatments #=> Array<TreatmentResource>
    #   resp.data.campaign_response.additional_treatments[0] #=> Types::TreatmentResource
    #   resp.data.campaign_response.additional_treatments[0].custom_delivery_configuration #=> Types::CustomDeliveryConfiguration
    #   resp.data.campaign_response.additional_treatments[0].custom_delivery_configuration.delivery_uri #=> String
    #   resp.data.campaign_response.additional_treatments[0].custom_delivery_configuration.endpoint_types #=> Array<String>
    #   resp.data.campaign_response.additional_treatments[0].custom_delivery_configuration.endpoint_types[0] #=> String, one of ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"]
    #   resp.data.campaign_response.additional_treatments[0].id #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration #=> Types::MessageConfiguration
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message #=> Types::Message
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.action #=> String, one of ["OPEN_APP", "DEEP_LINK", "URL"]
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.body #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.image_icon_url #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.image_small_icon_url #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.image_url #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.json_body #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.media_url #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.raw_content #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.silent_push #=> Boolean
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.time_to_live #=> Integer
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.title #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.url #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.apns_message #=> Types::Message
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.baidu_message #=> Types::Message
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.custom_message #=> Types::CampaignCustomMessage
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.custom_message.data #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.default_message #=> Types::Message
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.email_message #=> Types::CampaignEmailMessage
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.email_message.body #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.email_message.from_address #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.email_message.html_body #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.email_message.title #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.gcm_message #=> Types::Message
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.sms_message #=> Types::CampaignSmsMessage
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.sms_message.body #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.sms_message.message_type #=> String, one of ["TRANSACTIONAL", "PROMOTIONAL"]
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.sms_message.origination_number #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.sms_message.sender_id #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.sms_message.entity_id #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.sms_message.template_id #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message #=> Types::CampaignInAppMessage
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.body #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content #=> Array<InAppMessageContent>
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0] #=> Types::InAppMessageContent
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].background_color #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].body_config #=> Types::InAppMessageBodyConfig
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].body_config.alignment #=> String, one of ["LEFT", "CENTER", "RIGHT"]
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].body_config.body #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].body_config.text_color #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].header_config #=> Types::InAppMessageHeaderConfig
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].header_config.alignment #=> String, one of ["LEFT", "CENTER", "RIGHT"]
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].header_config.header #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].header_config.text_color #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].image_url #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn #=> Types::InAppMessageButton
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.android #=> Types::OverrideButtonConfiguration
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.android.button_action #=> String, one of ["LINK", "DEEP_LINK", "CLOSE"]
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.android.link #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.default_config #=> Types::DefaultButtonConfiguration
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.default_config.background_color #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.default_config.border_radius #=> Integer
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.default_config.button_action #=> String, one of ["LINK", "DEEP_LINK", "CLOSE"]
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.default_config.link #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.default_config.text #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.default_config.text_color #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.ios #=> Types::OverrideButtonConfiguration
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.web #=> Types::OverrideButtonConfiguration
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].secondary_btn #=> Types::InAppMessageButton
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.custom_config #=> Hash<String, String>
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.custom_config['key'] #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.layout #=> String, one of ["BOTTOM_BANNER", "TOP_BANNER", "OVERLAYS", "MOBILE_FEED", "MIDDLE_BANNER", "CAROUSEL"]
    #   resp.data.campaign_response.additional_treatments[0].schedule #=> Types::Schedule
    #   resp.data.campaign_response.additional_treatments[0].schedule.end_time #=> String
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter #=> Types::CampaignEventFilter
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions #=> Types::EventDimensions
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.attributes #=> Hash<String, AttributeDimension>
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.attributes['key'] #=> Types::AttributeDimension
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.attributes['key'].attribute_type #=> String, one of ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"]
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.attributes['key'].values #=> Array<String>
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.attributes['key'].values[0] #=> String
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.event_type #=> Types::SetDimension
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.event_type.dimension_type #=> String, one of ["INCLUSIVE", "EXCLUSIVE"]
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.event_type.values #=> Array<String>
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.metrics #=> Hash<String, MetricDimension>
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.metrics['key'] #=> Types::MetricDimension
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.metrics['key'].comparison_operator #=> String
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.metrics['key'].value #=> Float
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.filter_type #=> String, one of ["SYSTEM", "ENDPOINT"]
    #   resp.data.campaign_response.additional_treatments[0].schedule.frequency #=> String, one of ["ONCE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY", "EVENT", "IN_APP_EVENT"]
    #   resp.data.campaign_response.additional_treatments[0].schedule.is_local_time #=> Boolean
    #   resp.data.campaign_response.additional_treatments[0].schedule.quiet_time #=> Types::QuietTime
    #   resp.data.campaign_response.additional_treatments[0].schedule.quiet_time.end #=> String
    #   resp.data.campaign_response.additional_treatments[0].schedule.quiet_time.start #=> String
    #   resp.data.campaign_response.additional_treatments[0].schedule.start_time #=> String
    #   resp.data.campaign_response.additional_treatments[0].schedule.timezone #=> String
    #   resp.data.campaign_response.additional_treatments[0].size_percent #=> Integer
    #   resp.data.campaign_response.additional_treatments[0].state #=> Types::CampaignState
    #   resp.data.campaign_response.additional_treatments[0].state.campaign_status #=> String, one of ["SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED", "DELETED", "INVALID"]
    #   resp.data.campaign_response.additional_treatments[0].template_configuration #=> Types::TemplateConfiguration
    #   resp.data.campaign_response.additional_treatments[0].template_configuration.email_template #=> Types::Template
    #   resp.data.campaign_response.additional_treatments[0].template_configuration.email_template.name #=> String
    #   resp.data.campaign_response.additional_treatments[0].template_configuration.email_template.version #=> String
    #   resp.data.campaign_response.additional_treatments[0].template_configuration.push_template #=> Types::Template
    #   resp.data.campaign_response.additional_treatments[0].template_configuration.sms_template #=> Types::Template
    #   resp.data.campaign_response.additional_treatments[0].template_configuration.voice_template #=> Types::Template
    #   resp.data.campaign_response.additional_treatments[0].treatment_description #=> String
    #   resp.data.campaign_response.additional_treatments[0].treatment_name #=> String
    #   resp.data.campaign_response.application_id #=> String
    #   resp.data.campaign_response.arn #=> String
    #   resp.data.campaign_response.creation_date #=> String
    #   resp.data.campaign_response.custom_delivery_configuration #=> Types::CustomDeliveryConfiguration
    #   resp.data.campaign_response.default_state #=> Types::CampaignState
    #   resp.data.campaign_response.description #=> String
    #   resp.data.campaign_response.holdout_percent #=> Integer
    #   resp.data.campaign_response.hook #=> Types::CampaignHook
    #   resp.data.campaign_response.hook.lambda_function_name #=> String
    #   resp.data.campaign_response.hook.mode #=> String, one of ["DELIVERY", "FILTER"]
    #   resp.data.campaign_response.hook.web_url #=> String
    #   resp.data.campaign_response.id #=> String
    #   resp.data.campaign_response.is_paused #=> Boolean
    #   resp.data.campaign_response.last_modified_date #=> String
    #   resp.data.campaign_response.limits #=> Types::CampaignLimits
    #   resp.data.campaign_response.limits.daily #=> Integer
    #   resp.data.campaign_response.limits.maximum_duration #=> Integer
    #   resp.data.campaign_response.limits.messages_per_second #=> Integer
    #   resp.data.campaign_response.limits.total #=> Integer
    #   resp.data.campaign_response.limits.session #=> Integer
    #   resp.data.campaign_response.message_configuration #=> Types::MessageConfiguration
    #   resp.data.campaign_response.name #=> String
    #   resp.data.campaign_response.schedule #=> Types::Schedule
    #   resp.data.campaign_response.segment_id #=> String
    #   resp.data.campaign_response.segment_version #=> Integer
    #   resp.data.campaign_response.state #=> Types::CampaignState
    #   resp.data.campaign_response.tags #=> Hash<String, String>
    #   resp.data.campaign_response.template_configuration #=> Types::TemplateConfiguration
    #   resp.data.campaign_response.treatment_description #=> String
    #   resp.data.campaign_response.treatment_name #=> String
    #   resp.data.campaign_response.version #=> Integer
    #   resp.data.campaign_response.priority #=> Integer
    #
    def get_campaign_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetCampaignVersionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetCampaignVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetCampaignVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::GetCampaignVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetCampaignVersion,
        stubs: @stubs,
        params_class: Params::GetCampaignVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_campaign_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about the status, configuration, and other settings for all versions of a campaign.</p>
    #
    # @param [Hash] params
    #   See {Types::GetCampaignVersionsInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @option params [String] :campaign_id
    #   <p>The unique identifier for the campaign.</p>
    #
    # @option params [String] :page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    #
    # @option params [String] :token
    #   <p>The NextToken string that specifies which page of results to return in a paginated response.</p>
    #
    # @return [Types::GetCampaignVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_campaign_versions(
    #     application_id: 'ApplicationId', # required
    #     campaign_id: 'CampaignId', # required
    #     page_size: 'PageSize',
    #     token: 'Token'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetCampaignVersionsOutput
    #   resp.data.campaigns_response #=> Types::CampaignsResponse
    #   resp.data.campaigns_response.item #=> Array<CampaignResponse>
    #   resp.data.campaigns_response.item[0] #=> Types::CampaignResponse
    #   resp.data.campaigns_response.item[0].additional_treatments #=> Array<TreatmentResource>
    #   resp.data.campaigns_response.item[0].additional_treatments[0] #=> Types::TreatmentResource
    #   resp.data.campaigns_response.item[0].additional_treatments[0].custom_delivery_configuration #=> Types::CustomDeliveryConfiguration
    #   resp.data.campaigns_response.item[0].additional_treatments[0].custom_delivery_configuration.delivery_uri #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].custom_delivery_configuration.endpoint_types #=> Array<String>
    #   resp.data.campaigns_response.item[0].additional_treatments[0].custom_delivery_configuration.endpoint_types[0] #=> String, one of ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"]
    #   resp.data.campaigns_response.item[0].additional_treatments[0].id #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration #=> Types::MessageConfiguration
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.adm_message #=> Types::Message
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.adm_message.action #=> String, one of ["OPEN_APP", "DEEP_LINK", "URL"]
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.adm_message.body #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.adm_message.image_icon_url #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.adm_message.image_small_icon_url #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.adm_message.image_url #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.adm_message.json_body #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.adm_message.media_url #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.adm_message.raw_content #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.adm_message.silent_push #=> Boolean
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.adm_message.time_to_live #=> Integer
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.adm_message.title #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.adm_message.url #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.apns_message #=> Types::Message
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.baidu_message #=> Types::Message
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.custom_message #=> Types::CampaignCustomMessage
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.custom_message.data #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.default_message #=> Types::Message
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.email_message #=> Types::CampaignEmailMessage
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.email_message.body #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.email_message.from_address #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.email_message.html_body #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.email_message.title #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.gcm_message #=> Types::Message
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.sms_message #=> Types::CampaignSmsMessage
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.sms_message.body #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.sms_message.message_type #=> String, one of ["TRANSACTIONAL", "PROMOTIONAL"]
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.sms_message.origination_number #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.sms_message.sender_id #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.sms_message.entity_id #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.sms_message.template_id #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message #=> Types::CampaignInAppMessage
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.body #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.content #=> Array<InAppMessageContent>
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.content[0] #=> Types::InAppMessageContent
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.content[0].background_color #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.content[0].body_config #=> Types::InAppMessageBodyConfig
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.content[0].body_config.alignment #=> String, one of ["LEFT", "CENTER", "RIGHT"]
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.content[0].body_config.body #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.content[0].body_config.text_color #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.content[0].header_config #=> Types::InAppMessageHeaderConfig
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.content[0].header_config.alignment #=> String, one of ["LEFT", "CENTER", "RIGHT"]
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.content[0].header_config.header #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.content[0].header_config.text_color #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.content[0].image_url #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn #=> Types::InAppMessageButton
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.android #=> Types::OverrideButtonConfiguration
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.android.button_action #=> String, one of ["LINK", "DEEP_LINK", "CLOSE"]
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.android.link #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.default_config #=> Types::DefaultButtonConfiguration
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.default_config.background_color #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.default_config.border_radius #=> Integer
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.default_config.button_action #=> String, one of ["LINK", "DEEP_LINK", "CLOSE"]
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.default_config.link #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.default_config.text #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.default_config.text_color #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.ios #=> Types::OverrideButtonConfiguration
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.web #=> Types::OverrideButtonConfiguration
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.content[0].secondary_btn #=> Types::InAppMessageButton
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.custom_config #=> Hash<String, String>
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.custom_config['key'] #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.layout #=> String, one of ["BOTTOM_BANNER", "TOP_BANNER", "OVERLAYS", "MOBILE_FEED", "MIDDLE_BANNER", "CAROUSEL"]
    #   resp.data.campaigns_response.item[0].additional_treatments[0].schedule #=> Types::Schedule
    #   resp.data.campaigns_response.item[0].additional_treatments[0].schedule.end_time #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].schedule.event_filter #=> Types::CampaignEventFilter
    #   resp.data.campaigns_response.item[0].additional_treatments[0].schedule.event_filter.dimensions #=> Types::EventDimensions
    #   resp.data.campaigns_response.item[0].additional_treatments[0].schedule.event_filter.dimensions.attributes #=> Hash<String, AttributeDimension>
    #   resp.data.campaigns_response.item[0].additional_treatments[0].schedule.event_filter.dimensions.attributes['key'] #=> Types::AttributeDimension
    #   resp.data.campaigns_response.item[0].additional_treatments[0].schedule.event_filter.dimensions.attributes['key'].attribute_type #=> String, one of ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"]
    #   resp.data.campaigns_response.item[0].additional_treatments[0].schedule.event_filter.dimensions.attributes['key'].values #=> Array<String>
    #   resp.data.campaigns_response.item[0].additional_treatments[0].schedule.event_filter.dimensions.attributes['key'].values[0] #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].schedule.event_filter.dimensions.event_type #=> Types::SetDimension
    #   resp.data.campaigns_response.item[0].additional_treatments[0].schedule.event_filter.dimensions.event_type.dimension_type #=> String, one of ["INCLUSIVE", "EXCLUSIVE"]
    #   resp.data.campaigns_response.item[0].additional_treatments[0].schedule.event_filter.dimensions.event_type.values #=> Array<String>
    #   resp.data.campaigns_response.item[0].additional_treatments[0].schedule.event_filter.dimensions.metrics #=> Hash<String, MetricDimension>
    #   resp.data.campaigns_response.item[0].additional_treatments[0].schedule.event_filter.dimensions.metrics['key'] #=> Types::MetricDimension
    #   resp.data.campaigns_response.item[0].additional_treatments[0].schedule.event_filter.dimensions.metrics['key'].comparison_operator #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].schedule.event_filter.dimensions.metrics['key'].value #=> Float
    #   resp.data.campaigns_response.item[0].additional_treatments[0].schedule.event_filter.filter_type #=> String, one of ["SYSTEM", "ENDPOINT"]
    #   resp.data.campaigns_response.item[0].additional_treatments[0].schedule.frequency #=> String, one of ["ONCE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY", "EVENT", "IN_APP_EVENT"]
    #   resp.data.campaigns_response.item[0].additional_treatments[0].schedule.is_local_time #=> Boolean
    #   resp.data.campaigns_response.item[0].additional_treatments[0].schedule.quiet_time #=> Types::QuietTime
    #   resp.data.campaigns_response.item[0].additional_treatments[0].schedule.quiet_time.end #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].schedule.quiet_time.start #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].schedule.start_time #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].schedule.timezone #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].size_percent #=> Integer
    #   resp.data.campaigns_response.item[0].additional_treatments[0].state #=> Types::CampaignState
    #   resp.data.campaigns_response.item[0].additional_treatments[0].state.campaign_status #=> String, one of ["SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED", "DELETED", "INVALID"]
    #   resp.data.campaigns_response.item[0].additional_treatments[0].template_configuration #=> Types::TemplateConfiguration
    #   resp.data.campaigns_response.item[0].additional_treatments[0].template_configuration.email_template #=> Types::Template
    #   resp.data.campaigns_response.item[0].additional_treatments[0].template_configuration.email_template.name #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].template_configuration.email_template.version #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].template_configuration.push_template #=> Types::Template
    #   resp.data.campaigns_response.item[0].additional_treatments[0].template_configuration.sms_template #=> Types::Template
    #   resp.data.campaigns_response.item[0].additional_treatments[0].template_configuration.voice_template #=> Types::Template
    #   resp.data.campaigns_response.item[0].additional_treatments[0].treatment_description #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].treatment_name #=> String
    #   resp.data.campaigns_response.item[0].application_id #=> String
    #   resp.data.campaigns_response.item[0].arn #=> String
    #   resp.data.campaigns_response.item[0].creation_date #=> String
    #   resp.data.campaigns_response.item[0].custom_delivery_configuration #=> Types::CustomDeliveryConfiguration
    #   resp.data.campaigns_response.item[0].default_state #=> Types::CampaignState
    #   resp.data.campaigns_response.item[0].description #=> String
    #   resp.data.campaigns_response.item[0].holdout_percent #=> Integer
    #   resp.data.campaigns_response.item[0].hook #=> Types::CampaignHook
    #   resp.data.campaigns_response.item[0].hook.lambda_function_name #=> String
    #   resp.data.campaigns_response.item[0].hook.mode #=> String, one of ["DELIVERY", "FILTER"]
    #   resp.data.campaigns_response.item[0].hook.web_url #=> String
    #   resp.data.campaigns_response.item[0].id #=> String
    #   resp.data.campaigns_response.item[0].is_paused #=> Boolean
    #   resp.data.campaigns_response.item[0].last_modified_date #=> String
    #   resp.data.campaigns_response.item[0].limits #=> Types::CampaignLimits
    #   resp.data.campaigns_response.item[0].limits.daily #=> Integer
    #   resp.data.campaigns_response.item[0].limits.maximum_duration #=> Integer
    #   resp.data.campaigns_response.item[0].limits.messages_per_second #=> Integer
    #   resp.data.campaigns_response.item[0].limits.total #=> Integer
    #   resp.data.campaigns_response.item[0].limits.session #=> Integer
    #   resp.data.campaigns_response.item[0].message_configuration #=> Types::MessageConfiguration
    #   resp.data.campaigns_response.item[0].name #=> String
    #   resp.data.campaigns_response.item[0].schedule #=> Types::Schedule
    #   resp.data.campaigns_response.item[0].segment_id #=> String
    #   resp.data.campaigns_response.item[0].segment_version #=> Integer
    #   resp.data.campaigns_response.item[0].state #=> Types::CampaignState
    #   resp.data.campaigns_response.item[0].tags #=> Hash<String, String>
    #   resp.data.campaigns_response.item[0].template_configuration #=> Types::TemplateConfiguration
    #   resp.data.campaigns_response.item[0].treatment_description #=> String
    #   resp.data.campaigns_response.item[0].treatment_name #=> String
    #   resp.data.campaigns_response.item[0].version #=> Integer
    #   resp.data.campaigns_response.item[0].priority #=> Integer
    #   resp.data.campaigns_response.next_token #=> String
    #
    def get_campaign_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetCampaignVersionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetCampaignVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetCampaignVersions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::GetCampaignVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetCampaignVersions,
        stubs: @stubs,
        params_class: Params::GetCampaignVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_campaign_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about the status, configuration, and other settings for all the campaigns that are associated with an application.</p>
    #
    # @param [Hash] params
    #   See {Types::GetCampaignsInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @option params [String] :page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    #
    # @option params [String] :token
    #   <p>The NextToken string that specifies which page of results to return in a paginated response.</p>
    #
    # @return [Types::GetCampaignsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_campaigns(
    #     application_id: 'ApplicationId', # required
    #     page_size: 'PageSize',
    #     token: 'Token'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetCampaignsOutput
    #   resp.data.campaigns_response #=> Types::CampaignsResponse
    #   resp.data.campaigns_response.item #=> Array<CampaignResponse>
    #   resp.data.campaigns_response.item[0] #=> Types::CampaignResponse
    #   resp.data.campaigns_response.item[0].additional_treatments #=> Array<TreatmentResource>
    #   resp.data.campaigns_response.item[0].additional_treatments[0] #=> Types::TreatmentResource
    #   resp.data.campaigns_response.item[0].additional_treatments[0].custom_delivery_configuration #=> Types::CustomDeliveryConfiguration
    #   resp.data.campaigns_response.item[0].additional_treatments[0].custom_delivery_configuration.delivery_uri #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].custom_delivery_configuration.endpoint_types #=> Array<String>
    #   resp.data.campaigns_response.item[0].additional_treatments[0].custom_delivery_configuration.endpoint_types[0] #=> String, one of ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"]
    #   resp.data.campaigns_response.item[0].additional_treatments[0].id #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration #=> Types::MessageConfiguration
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.adm_message #=> Types::Message
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.adm_message.action #=> String, one of ["OPEN_APP", "DEEP_LINK", "URL"]
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.adm_message.body #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.adm_message.image_icon_url #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.adm_message.image_small_icon_url #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.adm_message.image_url #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.adm_message.json_body #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.adm_message.media_url #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.adm_message.raw_content #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.adm_message.silent_push #=> Boolean
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.adm_message.time_to_live #=> Integer
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.adm_message.title #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.adm_message.url #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.apns_message #=> Types::Message
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.baidu_message #=> Types::Message
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.custom_message #=> Types::CampaignCustomMessage
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.custom_message.data #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.default_message #=> Types::Message
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.email_message #=> Types::CampaignEmailMessage
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.email_message.body #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.email_message.from_address #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.email_message.html_body #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.email_message.title #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.gcm_message #=> Types::Message
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.sms_message #=> Types::CampaignSmsMessage
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.sms_message.body #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.sms_message.message_type #=> String, one of ["TRANSACTIONAL", "PROMOTIONAL"]
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.sms_message.origination_number #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.sms_message.sender_id #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.sms_message.entity_id #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.sms_message.template_id #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message #=> Types::CampaignInAppMessage
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.body #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.content #=> Array<InAppMessageContent>
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.content[0] #=> Types::InAppMessageContent
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.content[0].background_color #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.content[0].body_config #=> Types::InAppMessageBodyConfig
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.content[0].body_config.alignment #=> String, one of ["LEFT", "CENTER", "RIGHT"]
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.content[0].body_config.body #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.content[0].body_config.text_color #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.content[0].header_config #=> Types::InAppMessageHeaderConfig
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.content[0].header_config.alignment #=> String, one of ["LEFT", "CENTER", "RIGHT"]
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.content[0].header_config.header #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.content[0].header_config.text_color #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.content[0].image_url #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn #=> Types::InAppMessageButton
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.android #=> Types::OverrideButtonConfiguration
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.android.button_action #=> String, one of ["LINK", "DEEP_LINK", "CLOSE"]
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.android.link #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.default_config #=> Types::DefaultButtonConfiguration
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.default_config.background_color #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.default_config.border_radius #=> Integer
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.default_config.button_action #=> String, one of ["LINK", "DEEP_LINK", "CLOSE"]
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.default_config.link #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.default_config.text #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.default_config.text_color #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.ios #=> Types::OverrideButtonConfiguration
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.web #=> Types::OverrideButtonConfiguration
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.content[0].secondary_btn #=> Types::InAppMessageButton
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.custom_config #=> Hash<String, String>
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.custom_config['key'] #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].message_configuration.in_app_message.layout #=> String, one of ["BOTTOM_BANNER", "TOP_BANNER", "OVERLAYS", "MOBILE_FEED", "MIDDLE_BANNER", "CAROUSEL"]
    #   resp.data.campaigns_response.item[0].additional_treatments[0].schedule #=> Types::Schedule
    #   resp.data.campaigns_response.item[0].additional_treatments[0].schedule.end_time #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].schedule.event_filter #=> Types::CampaignEventFilter
    #   resp.data.campaigns_response.item[0].additional_treatments[0].schedule.event_filter.dimensions #=> Types::EventDimensions
    #   resp.data.campaigns_response.item[0].additional_treatments[0].schedule.event_filter.dimensions.attributes #=> Hash<String, AttributeDimension>
    #   resp.data.campaigns_response.item[0].additional_treatments[0].schedule.event_filter.dimensions.attributes['key'] #=> Types::AttributeDimension
    #   resp.data.campaigns_response.item[0].additional_treatments[0].schedule.event_filter.dimensions.attributes['key'].attribute_type #=> String, one of ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"]
    #   resp.data.campaigns_response.item[0].additional_treatments[0].schedule.event_filter.dimensions.attributes['key'].values #=> Array<String>
    #   resp.data.campaigns_response.item[0].additional_treatments[0].schedule.event_filter.dimensions.attributes['key'].values[0] #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].schedule.event_filter.dimensions.event_type #=> Types::SetDimension
    #   resp.data.campaigns_response.item[0].additional_treatments[0].schedule.event_filter.dimensions.event_type.dimension_type #=> String, one of ["INCLUSIVE", "EXCLUSIVE"]
    #   resp.data.campaigns_response.item[0].additional_treatments[0].schedule.event_filter.dimensions.event_type.values #=> Array<String>
    #   resp.data.campaigns_response.item[0].additional_treatments[0].schedule.event_filter.dimensions.metrics #=> Hash<String, MetricDimension>
    #   resp.data.campaigns_response.item[0].additional_treatments[0].schedule.event_filter.dimensions.metrics['key'] #=> Types::MetricDimension
    #   resp.data.campaigns_response.item[0].additional_treatments[0].schedule.event_filter.dimensions.metrics['key'].comparison_operator #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].schedule.event_filter.dimensions.metrics['key'].value #=> Float
    #   resp.data.campaigns_response.item[0].additional_treatments[0].schedule.event_filter.filter_type #=> String, one of ["SYSTEM", "ENDPOINT"]
    #   resp.data.campaigns_response.item[0].additional_treatments[0].schedule.frequency #=> String, one of ["ONCE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY", "EVENT", "IN_APP_EVENT"]
    #   resp.data.campaigns_response.item[0].additional_treatments[0].schedule.is_local_time #=> Boolean
    #   resp.data.campaigns_response.item[0].additional_treatments[0].schedule.quiet_time #=> Types::QuietTime
    #   resp.data.campaigns_response.item[0].additional_treatments[0].schedule.quiet_time.end #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].schedule.quiet_time.start #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].schedule.start_time #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].schedule.timezone #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].size_percent #=> Integer
    #   resp.data.campaigns_response.item[0].additional_treatments[0].state #=> Types::CampaignState
    #   resp.data.campaigns_response.item[0].additional_treatments[0].state.campaign_status #=> String, one of ["SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED", "DELETED", "INVALID"]
    #   resp.data.campaigns_response.item[0].additional_treatments[0].template_configuration #=> Types::TemplateConfiguration
    #   resp.data.campaigns_response.item[0].additional_treatments[0].template_configuration.email_template #=> Types::Template
    #   resp.data.campaigns_response.item[0].additional_treatments[0].template_configuration.email_template.name #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].template_configuration.email_template.version #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].template_configuration.push_template #=> Types::Template
    #   resp.data.campaigns_response.item[0].additional_treatments[0].template_configuration.sms_template #=> Types::Template
    #   resp.data.campaigns_response.item[0].additional_treatments[0].template_configuration.voice_template #=> Types::Template
    #   resp.data.campaigns_response.item[0].additional_treatments[0].treatment_description #=> String
    #   resp.data.campaigns_response.item[0].additional_treatments[0].treatment_name #=> String
    #   resp.data.campaigns_response.item[0].application_id #=> String
    #   resp.data.campaigns_response.item[0].arn #=> String
    #   resp.data.campaigns_response.item[0].creation_date #=> String
    #   resp.data.campaigns_response.item[0].custom_delivery_configuration #=> Types::CustomDeliveryConfiguration
    #   resp.data.campaigns_response.item[0].default_state #=> Types::CampaignState
    #   resp.data.campaigns_response.item[0].description #=> String
    #   resp.data.campaigns_response.item[0].holdout_percent #=> Integer
    #   resp.data.campaigns_response.item[0].hook #=> Types::CampaignHook
    #   resp.data.campaigns_response.item[0].hook.lambda_function_name #=> String
    #   resp.data.campaigns_response.item[0].hook.mode #=> String, one of ["DELIVERY", "FILTER"]
    #   resp.data.campaigns_response.item[0].hook.web_url #=> String
    #   resp.data.campaigns_response.item[0].id #=> String
    #   resp.data.campaigns_response.item[0].is_paused #=> Boolean
    #   resp.data.campaigns_response.item[0].last_modified_date #=> String
    #   resp.data.campaigns_response.item[0].limits #=> Types::CampaignLimits
    #   resp.data.campaigns_response.item[0].limits.daily #=> Integer
    #   resp.data.campaigns_response.item[0].limits.maximum_duration #=> Integer
    #   resp.data.campaigns_response.item[0].limits.messages_per_second #=> Integer
    #   resp.data.campaigns_response.item[0].limits.total #=> Integer
    #   resp.data.campaigns_response.item[0].limits.session #=> Integer
    #   resp.data.campaigns_response.item[0].message_configuration #=> Types::MessageConfiguration
    #   resp.data.campaigns_response.item[0].name #=> String
    #   resp.data.campaigns_response.item[0].schedule #=> Types::Schedule
    #   resp.data.campaigns_response.item[0].segment_id #=> String
    #   resp.data.campaigns_response.item[0].segment_version #=> Integer
    #   resp.data.campaigns_response.item[0].state #=> Types::CampaignState
    #   resp.data.campaigns_response.item[0].tags #=> Hash<String, String>
    #   resp.data.campaigns_response.item[0].template_configuration #=> Types::TemplateConfiguration
    #   resp.data.campaigns_response.item[0].treatment_description #=> String
    #   resp.data.campaigns_response.item[0].treatment_name #=> String
    #   resp.data.campaigns_response.item[0].version #=> Integer
    #   resp.data.campaigns_response.item[0].priority #=> Integer
    #   resp.data.campaigns_response.next_token #=> String
    #
    def get_campaigns(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetCampaignsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetCampaignsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetCampaigns
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::GetCampaigns
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetCampaigns,
        stubs: @stubs,
        params_class: Params::GetCampaignsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_campaigns
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about the history and status of each channel for an application.</p>
    #
    # @param [Hash] params
    #   See {Types::GetChannelsInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @return [Types::GetChannelsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_channels(
    #     application_id: 'ApplicationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetChannelsOutput
    #   resp.data.channels_response #=> Types::ChannelsResponse
    #   resp.data.channels_response.channels #=> Hash<String, ChannelResponse>
    #   resp.data.channels_response.channels['key'] #=> Types::ChannelResponse
    #   resp.data.channels_response.channels['key'].application_id #=> String
    #   resp.data.channels_response.channels['key'].creation_date #=> String
    #   resp.data.channels_response.channels['key'].enabled #=> Boolean
    #   resp.data.channels_response.channels['key'].has_credential #=> Boolean
    #   resp.data.channels_response.channels['key'].id #=> String
    #   resp.data.channels_response.channels['key'].is_archived #=> Boolean
    #   resp.data.channels_response.channels['key'].last_modified_by #=> String
    #   resp.data.channels_response.channels['key'].last_modified_date #=> String
    #   resp.data.channels_response.channels['key'].version #=> Integer
    #
    def get_channels(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetChannelsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetChannelsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetChannels
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::GetChannels
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetChannels,
        stubs: @stubs,
        params_class: Params::GetChannelsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_channels
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about the status and settings of the email channel for an application.</p>
    #
    # @param [Hash] params
    #   See {Types::GetEmailChannelInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @return [Types::GetEmailChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_email_channel(
    #     application_id: 'ApplicationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetEmailChannelOutput
    #   resp.data.email_channel_response #=> Types::EmailChannelResponse
    #   resp.data.email_channel_response.application_id #=> String
    #   resp.data.email_channel_response.configuration_set #=> String
    #   resp.data.email_channel_response.creation_date #=> String
    #   resp.data.email_channel_response.enabled #=> Boolean
    #   resp.data.email_channel_response.from_address #=> String
    #   resp.data.email_channel_response.has_credential #=> Boolean
    #   resp.data.email_channel_response.id #=> String
    #   resp.data.email_channel_response.identity #=> String
    #   resp.data.email_channel_response.is_archived #=> Boolean
    #   resp.data.email_channel_response.last_modified_by #=> String
    #   resp.data.email_channel_response.last_modified_date #=> String
    #   resp.data.email_channel_response.messages_per_second #=> Integer
    #   resp.data.email_channel_response.platform #=> String
    #   resp.data.email_channel_response.role_arn #=> String
    #   resp.data.email_channel_response.version #=> Integer
    #
    def get_email_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetEmailChannelInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetEmailChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetEmailChannel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::GetEmailChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetEmailChannel,
        stubs: @stubs,
        params_class: Params::GetEmailChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_email_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the content and settings of a message template for messages that are sent through the email channel.</p>
    #
    # @param [Hash] params
    #   See {Types::GetEmailTemplateInput}.
    #
    # @option params [String] :template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    #
    # @option params [String] :version
    #   <p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend="templates-template-name-template-type-versions">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>
    #
    # @return [Types::GetEmailTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_email_template(
    #     template_name: 'TemplateName', # required
    #     version: 'Version'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetEmailTemplateOutput
    #   resp.data.email_template_response #=> Types::EmailTemplateResponse
    #   resp.data.email_template_response.arn #=> String
    #   resp.data.email_template_response.creation_date #=> String
    #   resp.data.email_template_response.default_substitutions #=> String
    #   resp.data.email_template_response.html_part #=> String
    #   resp.data.email_template_response.last_modified_date #=> String
    #   resp.data.email_template_response.recommender_id #=> String
    #   resp.data.email_template_response.subject #=> String
    #   resp.data.email_template_response.tags #=> Hash<String, String>
    #   resp.data.email_template_response.tags['key'] #=> String
    #   resp.data.email_template_response.template_description #=> String
    #   resp.data.email_template_response.template_name #=> String
    #   resp.data.email_template_response.template_type #=> String, one of ["EMAIL", "SMS", "VOICE", "PUSH", "INAPP"]
    #   resp.data.email_template_response.text_part #=> String
    #   resp.data.email_template_response.version #=> String
    #
    def get_email_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetEmailTemplateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetEmailTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetEmailTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::GetEmailTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetEmailTemplate,
        stubs: @stubs,
        params_class: Params::GetEmailTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_email_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about the settings and attributes of a specific endpoint for an application.</p>
    #
    # @param [Hash] params
    #   See {Types::GetEndpointInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @option params [String] :endpoint_id
    #   <p>The unique identifier for the endpoint.</p>
    #
    # @return [Types::GetEndpointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_endpoint(
    #     application_id: 'ApplicationId', # required
    #     endpoint_id: 'EndpointId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetEndpointOutput
    #   resp.data.endpoint_response #=> Types::EndpointResponse
    #   resp.data.endpoint_response.address #=> String
    #   resp.data.endpoint_response.application_id #=> String
    #   resp.data.endpoint_response.attributes #=> Hash<String, Array<String>>
    #   resp.data.endpoint_response.attributes['key'] #=> Array<String>
    #   resp.data.endpoint_response.attributes['key'][0] #=> String
    #   resp.data.endpoint_response.channel_type #=> String, one of ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"]
    #   resp.data.endpoint_response.cohort_id #=> String
    #   resp.data.endpoint_response.creation_date #=> String
    #   resp.data.endpoint_response.demographic #=> Types::EndpointDemographic
    #   resp.data.endpoint_response.demographic.app_version #=> String
    #   resp.data.endpoint_response.demographic.locale #=> String
    #   resp.data.endpoint_response.demographic.make #=> String
    #   resp.data.endpoint_response.demographic.model #=> String
    #   resp.data.endpoint_response.demographic.model_version #=> String
    #   resp.data.endpoint_response.demographic.platform #=> String
    #   resp.data.endpoint_response.demographic.platform_version #=> String
    #   resp.data.endpoint_response.demographic.timezone #=> String
    #   resp.data.endpoint_response.effective_date #=> String
    #   resp.data.endpoint_response.endpoint_status #=> String
    #   resp.data.endpoint_response.id #=> String
    #   resp.data.endpoint_response.location #=> Types::EndpointLocation
    #   resp.data.endpoint_response.location.city #=> String
    #   resp.data.endpoint_response.location.country #=> String
    #   resp.data.endpoint_response.location.latitude #=> Float
    #   resp.data.endpoint_response.location.longitude #=> Float
    #   resp.data.endpoint_response.location.postal_code #=> String
    #   resp.data.endpoint_response.location.region #=> String
    #   resp.data.endpoint_response.metrics #=> Hash<String, Float>
    #   resp.data.endpoint_response.metrics['key'] #=> Float
    #   resp.data.endpoint_response.opt_out #=> String
    #   resp.data.endpoint_response.request_id #=> String
    #   resp.data.endpoint_response.user #=> Types::EndpointUser
    #   resp.data.endpoint_response.user.user_attributes #=> Hash<String, Array<String>>
    #   resp.data.endpoint_response.user.user_id #=> String
    #
    def get_endpoint(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetEndpointInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetEndpointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetEndpoint
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::GetEndpoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetEndpoint,
        stubs: @stubs,
        params_class: Params::GetEndpointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_endpoint
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about the event stream settings for an application.</p>
    #
    # @param [Hash] params
    #   See {Types::GetEventStreamInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @return [Types::GetEventStreamOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_event_stream(
    #     application_id: 'ApplicationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetEventStreamOutput
    #   resp.data.event_stream #=> Types::EventStream
    #   resp.data.event_stream.application_id #=> String
    #   resp.data.event_stream.destination_stream_arn #=> String
    #   resp.data.event_stream.external_id #=> String
    #   resp.data.event_stream.last_modified_date #=> String
    #   resp.data.event_stream.last_updated_by #=> String
    #   resp.data.event_stream.role_arn #=> String
    #
    def get_event_stream(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetEventStreamInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetEventStreamInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetEventStream
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::GetEventStream
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetEventStream,
        stubs: @stubs,
        params_class: Params::GetEventStreamOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_event_stream
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about the status and settings of a specific export job for an application.</p>
    #
    # @param [Hash] params
    #   See {Types::GetExportJobInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @option params [String] :job_id
    #   <p>The unique identifier for the job.</p>
    #
    # @return [Types::GetExportJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_export_job(
    #     application_id: 'ApplicationId', # required
    #     job_id: 'JobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetExportJobOutput
    #   resp.data.export_job_response #=> Types::ExportJobResponse
    #   resp.data.export_job_response.application_id #=> String
    #   resp.data.export_job_response.completed_pieces #=> Integer
    #   resp.data.export_job_response.completion_date #=> String
    #   resp.data.export_job_response.creation_date #=> String
    #   resp.data.export_job_response.definition #=> Types::ExportJobResource
    #   resp.data.export_job_response.definition.role_arn #=> String
    #   resp.data.export_job_response.definition.s3_url_prefix #=> String
    #   resp.data.export_job_response.definition.segment_id #=> String
    #   resp.data.export_job_response.definition.segment_version #=> Integer
    #   resp.data.export_job_response.failed_pieces #=> Integer
    #   resp.data.export_job_response.failures #=> Array<String>
    #   resp.data.export_job_response.failures[0] #=> String
    #   resp.data.export_job_response.id #=> String
    #   resp.data.export_job_response.job_status #=> String, one of ["CREATED", "PREPARING_FOR_INITIALIZATION", "INITIALIZING", "PROCESSING", "PENDING_JOB", "COMPLETING", "COMPLETED", "FAILING", "FAILED"]
    #   resp.data.export_job_response.total_failures #=> Integer
    #   resp.data.export_job_response.total_pieces #=> Integer
    #   resp.data.export_job_response.total_processed #=> Integer
    #   resp.data.export_job_response.type #=> String
    #
    def get_export_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetExportJobInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetExportJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetExportJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::GetExportJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetExportJob,
        stubs: @stubs,
        params_class: Params::GetExportJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_export_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about the status and settings of all the export jobs for an application.</p>
    #
    # @param [Hash] params
    #   See {Types::GetExportJobsInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @option params [String] :page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    #
    # @option params [String] :token
    #   <p>The NextToken string that specifies which page of results to return in a paginated response.</p>
    #
    # @return [Types::GetExportJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_export_jobs(
    #     application_id: 'ApplicationId', # required
    #     page_size: 'PageSize',
    #     token: 'Token'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetExportJobsOutput
    #   resp.data.export_jobs_response #=> Types::ExportJobsResponse
    #   resp.data.export_jobs_response.item #=> Array<ExportJobResponse>
    #   resp.data.export_jobs_response.item[0] #=> Types::ExportJobResponse
    #   resp.data.export_jobs_response.item[0].application_id #=> String
    #   resp.data.export_jobs_response.item[0].completed_pieces #=> Integer
    #   resp.data.export_jobs_response.item[0].completion_date #=> String
    #   resp.data.export_jobs_response.item[0].creation_date #=> String
    #   resp.data.export_jobs_response.item[0].definition #=> Types::ExportJobResource
    #   resp.data.export_jobs_response.item[0].definition.role_arn #=> String
    #   resp.data.export_jobs_response.item[0].definition.s3_url_prefix #=> String
    #   resp.data.export_jobs_response.item[0].definition.segment_id #=> String
    #   resp.data.export_jobs_response.item[0].definition.segment_version #=> Integer
    #   resp.data.export_jobs_response.item[0].failed_pieces #=> Integer
    #   resp.data.export_jobs_response.item[0].failures #=> Array<String>
    #   resp.data.export_jobs_response.item[0].failures[0] #=> String
    #   resp.data.export_jobs_response.item[0].id #=> String
    #   resp.data.export_jobs_response.item[0].job_status #=> String, one of ["CREATED", "PREPARING_FOR_INITIALIZATION", "INITIALIZING", "PROCESSING", "PENDING_JOB", "COMPLETING", "COMPLETED", "FAILING", "FAILED"]
    #   resp.data.export_jobs_response.item[0].total_failures #=> Integer
    #   resp.data.export_jobs_response.item[0].total_pieces #=> Integer
    #   resp.data.export_jobs_response.item[0].total_processed #=> Integer
    #   resp.data.export_jobs_response.item[0].type #=> String
    #   resp.data.export_jobs_response.next_token #=> String
    #
    def get_export_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetExportJobsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetExportJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetExportJobs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::GetExportJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetExportJobs,
        stubs: @stubs,
        params_class: Params::GetExportJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_export_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about the status and settings of the GCM channel for an application.</p>
    #
    # @param [Hash] params
    #   See {Types::GetGcmChannelInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @return [Types::GetGcmChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_gcm_channel(
    #     application_id: 'ApplicationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetGcmChannelOutput
    #   resp.data.gcm_channel_response #=> Types::GCMChannelResponse
    #   resp.data.gcm_channel_response.application_id #=> String
    #   resp.data.gcm_channel_response.creation_date #=> String
    #   resp.data.gcm_channel_response.credential #=> String
    #   resp.data.gcm_channel_response.enabled #=> Boolean
    #   resp.data.gcm_channel_response.has_credential #=> Boolean
    #   resp.data.gcm_channel_response.id #=> String
    #   resp.data.gcm_channel_response.is_archived #=> Boolean
    #   resp.data.gcm_channel_response.last_modified_by #=> String
    #   resp.data.gcm_channel_response.last_modified_date #=> String
    #   resp.data.gcm_channel_response.platform #=> String
    #   resp.data.gcm_channel_response.version #=> Integer
    #
    def get_gcm_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetGcmChannelInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetGcmChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetGcmChannel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::GetGcmChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetGcmChannel,
        stubs: @stubs,
        params_class: Params::GetGcmChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_gcm_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about the status and settings of a specific import job for an application.</p>
    #
    # @param [Hash] params
    #   See {Types::GetImportJobInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @option params [String] :job_id
    #   <p>The unique identifier for the job.</p>
    #
    # @return [Types::GetImportJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_import_job(
    #     application_id: 'ApplicationId', # required
    #     job_id: 'JobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetImportJobOutput
    #   resp.data.import_job_response #=> Types::ImportJobResponse
    #   resp.data.import_job_response.application_id #=> String
    #   resp.data.import_job_response.completed_pieces #=> Integer
    #   resp.data.import_job_response.completion_date #=> String
    #   resp.data.import_job_response.creation_date #=> String
    #   resp.data.import_job_response.definition #=> Types::ImportJobResource
    #   resp.data.import_job_response.definition.define_segment #=> Boolean
    #   resp.data.import_job_response.definition.external_id #=> String
    #   resp.data.import_job_response.definition.format #=> String, one of ["CSV", "JSON"]
    #   resp.data.import_job_response.definition.register_endpoints #=> Boolean
    #   resp.data.import_job_response.definition.role_arn #=> String
    #   resp.data.import_job_response.definition.s3_url #=> String
    #   resp.data.import_job_response.definition.segment_id #=> String
    #   resp.data.import_job_response.definition.segment_name #=> String
    #   resp.data.import_job_response.failed_pieces #=> Integer
    #   resp.data.import_job_response.failures #=> Array<String>
    #   resp.data.import_job_response.failures[0] #=> String
    #   resp.data.import_job_response.id #=> String
    #   resp.data.import_job_response.job_status #=> String, one of ["CREATED", "PREPARING_FOR_INITIALIZATION", "INITIALIZING", "PROCESSING", "PENDING_JOB", "COMPLETING", "COMPLETED", "FAILING", "FAILED"]
    #   resp.data.import_job_response.total_failures #=> Integer
    #   resp.data.import_job_response.total_pieces #=> Integer
    #   resp.data.import_job_response.total_processed #=> Integer
    #   resp.data.import_job_response.type #=> String
    #
    def get_import_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetImportJobInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetImportJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetImportJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::GetImportJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetImportJob,
        stubs: @stubs,
        params_class: Params::GetImportJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_import_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about the status and settings of all the import jobs for an application.</p>
    #
    # @param [Hash] params
    #   See {Types::GetImportJobsInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @option params [String] :page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    #
    # @option params [String] :token
    #   <p>The NextToken string that specifies which page of results to return in a paginated response.</p>
    #
    # @return [Types::GetImportJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_import_jobs(
    #     application_id: 'ApplicationId', # required
    #     page_size: 'PageSize',
    #     token: 'Token'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetImportJobsOutput
    #   resp.data.import_jobs_response #=> Types::ImportJobsResponse
    #   resp.data.import_jobs_response.item #=> Array<ImportJobResponse>
    #   resp.data.import_jobs_response.item[0] #=> Types::ImportJobResponse
    #   resp.data.import_jobs_response.item[0].application_id #=> String
    #   resp.data.import_jobs_response.item[0].completed_pieces #=> Integer
    #   resp.data.import_jobs_response.item[0].completion_date #=> String
    #   resp.data.import_jobs_response.item[0].creation_date #=> String
    #   resp.data.import_jobs_response.item[0].definition #=> Types::ImportJobResource
    #   resp.data.import_jobs_response.item[0].definition.define_segment #=> Boolean
    #   resp.data.import_jobs_response.item[0].definition.external_id #=> String
    #   resp.data.import_jobs_response.item[0].definition.format #=> String, one of ["CSV", "JSON"]
    #   resp.data.import_jobs_response.item[0].definition.register_endpoints #=> Boolean
    #   resp.data.import_jobs_response.item[0].definition.role_arn #=> String
    #   resp.data.import_jobs_response.item[0].definition.s3_url #=> String
    #   resp.data.import_jobs_response.item[0].definition.segment_id #=> String
    #   resp.data.import_jobs_response.item[0].definition.segment_name #=> String
    #   resp.data.import_jobs_response.item[0].failed_pieces #=> Integer
    #   resp.data.import_jobs_response.item[0].failures #=> Array<String>
    #   resp.data.import_jobs_response.item[0].failures[0] #=> String
    #   resp.data.import_jobs_response.item[0].id #=> String
    #   resp.data.import_jobs_response.item[0].job_status #=> String, one of ["CREATED", "PREPARING_FOR_INITIALIZATION", "INITIALIZING", "PROCESSING", "PENDING_JOB", "COMPLETING", "COMPLETED", "FAILING", "FAILED"]
    #   resp.data.import_jobs_response.item[0].total_failures #=> Integer
    #   resp.data.import_jobs_response.item[0].total_pieces #=> Integer
    #   resp.data.import_jobs_response.item[0].total_processed #=> Integer
    #   resp.data.import_jobs_response.item[0].type #=> String
    #   resp.data.import_jobs_response.next_token #=> String
    #
    def get_import_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetImportJobsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetImportJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetImportJobs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::GetImportJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetImportJobs,
        stubs: @stubs,
        params_class: Params::GetImportJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_import_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the in-app messages targeted for the provided endpoint ID.</p>
    #
    # @param [Hash] params
    #   See {Types::GetInAppMessagesInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @option params [String] :endpoint_id
    #   <p>The unique identifier for the endpoint.</p>
    #
    # @return [Types::GetInAppMessagesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_in_app_messages(
    #     application_id: 'ApplicationId', # required
    #     endpoint_id: 'EndpointId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetInAppMessagesOutput
    #   resp.data.in_app_messages_response #=> Types::InAppMessagesResponse
    #   resp.data.in_app_messages_response.in_app_message_campaigns #=> Array<InAppMessageCampaign>
    #   resp.data.in_app_messages_response.in_app_message_campaigns[0] #=> Types::InAppMessageCampaign
    #   resp.data.in_app_messages_response.in_app_message_campaigns[0].campaign_id #=> String
    #   resp.data.in_app_messages_response.in_app_message_campaigns[0].daily_cap #=> Integer
    #   resp.data.in_app_messages_response.in_app_message_campaigns[0].in_app_message #=> Types::InAppMessage
    #   resp.data.in_app_messages_response.in_app_message_campaigns[0].in_app_message.content #=> Array<InAppMessageContent>
    #   resp.data.in_app_messages_response.in_app_message_campaigns[0].in_app_message.content[0] #=> Types::InAppMessageContent
    #   resp.data.in_app_messages_response.in_app_message_campaigns[0].in_app_message.content[0].background_color #=> String
    #   resp.data.in_app_messages_response.in_app_message_campaigns[0].in_app_message.content[0].body_config #=> Types::InAppMessageBodyConfig
    #   resp.data.in_app_messages_response.in_app_message_campaigns[0].in_app_message.content[0].body_config.alignment #=> String, one of ["LEFT", "CENTER", "RIGHT"]
    #   resp.data.in_app_messages_response.in_app_message_campaigns[0].in_app_message.content[0].body_config.body #=> String
    #   resp.data.in_app_messages_response.in_app_message_campaigns[0].in_app_message.content[0].body_config.text_color #=> String
    #   resp.data.in_app_messages_response.in_app_message_campaigns[0].in_app_message.content[0].header_config #=> Types::InAppMessageHeaderConfig
    #   resp.data.in_app_messages_response.in_app_message_campaigns[0].in_app_message.content[0].header_config.alignment #=> String, one of ["LEFT", "CENTER", "RIGHT"]
    #   resp.data.in_app_messages_response.in_app_message_campaigns[0].in_app_message.content[0].header_config.header #=> String
    #   resp.data.in_app_messages_response.in_app_message_campaigns[0].in_app_message.content[0].header_config.text_color #=> String
    #   resp.data.in_app_messages_response.in_app_message_campaigns[0].in_app_message.content[0].image_url #=> String
    #   resp.data.in_app_messages_response.in_app_message_campaigns[0].in_app_message.content[0].primary_btn #=> Types::InAppMessageButton
    #   resp.data.in_app_messages_response.in_app_message_campaigns[0].in_app_message.content[0].primary_btn.android #=> Types::OverrideButtonConfiguration
    #   resp.data.in_app_messages_response.in_app_message_campaigns[0].in_app_message.content[0].primary_btn.android.button_action #=> String, one of ["LINK", "DEEP_LINK", "CLOSE"]
    #   resp.data.in_app_messages_response.in_app_message_campaigns[0].in_app_message.content[0].primary_btn.android.link #=> String
    #   resp.data.in_app_messages_response.in_app_message_campaigns[0].in_app_message.content[0].primary_btn.default_config #=> Types::DefaultButtonConfiguration
    #   resp.data.in_app_messages_response.in_app_message_campaigns[0].in_app_message.content[0].primary_btn.default_config.background_color #=> String
    #   resp.data.in_app_messages_response.in_app_message_campaigns[0].in_app_message.content[0].primary_btn.default_config.border_radius #=> Integer
    #   resp.data.in_app_messages_response.in_app_message_campaigns[0].in_app_message.content[0].primary_btn.default_config.button_action #=> String, one of ["LINK", "DEEP_LINK", "CLOSE"]
    #   resp.data.in_app_messages_response.in_app_message_campaigns[0].in_app_message.content[0].primary_btn.default_config.link #=> String
    #   resp.data.in_app_messages_response.in_app_message_campaigns[0].in_app_message.content[0].primary_btn.default_config.text #=> String
    #   resp.data.in_app_messages_response.in_app_message_campaigns[0].in_app_message.content[0].primary_btn.default_config.text_color #=> String
    #   resp.data.in_app_messages_response.in_app_message_campaigns[0].in_app_message.content[0].primary_btn.ios #=> Types::OverrideButtonConfiguration
    #   resp.data.in_app_messages_response.in_app_message_campaigns[0].in_app_message.content[0].primary_btn.web #=> Types::OverrideButtonConfiguration
    #   resp.data.in_app_messages_response.in_app_message_campaigns[0].in_app_message.content[0].secondary_btn #=> Types::InAppMessageButton
    #   resp.data.in_app_messages_response.in_app_message_campaigns[0].in_app_message.custom_config #=> Hash<String, String>
    #   resp.data.in_app_messages_response.in_app_message_campaigns[0].in_app_message.custom_config['key'] #=> String
    #   resp.data.in_app_messages_response.in_app_message_campaigns[0].in_app_message.layout #=> String, one of ["BOTTOM_BANNER", "TOP_BANNER", "OVERLAYS", "MOBILE_FEED", "MIDDLE_BANNER", "CAROUSEL"]
    #   resp.data.in_app_messages_response.in_app_message_campaigns[0].priority #=> Integer
    #   resp.data.in_app_messages_response.in_app_message_campaigns[0].schedule #=> Types::InAppCampaignSchedule
    #   resp.data.in_app_messages_response.in_app_message_campaigns[0].schedule.end_date #=> String
    #   resp.data.in_app_messages_response.in_app_message_campaigns[0].schedule.event_filter #=> Types::CampaignEventFilter
    #   resp.data.in_app_messages_response.in_app_message_campaigns[0].schedule.event_filter.dimensions #=> Types::EventDimensions
    #   resp.data.in_app_messages_response.in_app_message_campaigns[0].schedule.event_filter.dimensions.attributes #=> Hash<String, AttributeDimension>
    #   resp.data.in_app_messages_response.in_app_message_campaigns[0].schedule.event_filter.dimensions.attributes['key'] #=> Types::AttributeDimension
    #   resp.data.in_app_messages_response.in_app_message_campaigns[0].schedule.event_filter.dimensions.attributes['key'].attribute_type #=> String, one of ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"]
    #   resp.data.in_app_messages_response.in_app_message_campaigns[0].schedule.event_filter.dimensions.attributes['key'].values #=> Array<String>
    #   resp.data.in_app_messages_response.in_app_message_campaigns[0].schedule.event_filter.dimensions.attributes['key'].values[0] #=> String
    #   resp.data.in_app_messages_response.in_app_message_campaigns[0].schedule.event_filter.dimensions.event_type #=> Types::SetDimension
    #   resp.data.in_app_messages_response.in_app_message_campaigns[0].schedule.event_filter.dimensions.event_type.dimension_type #=> String, one of ["INCLUSIVE", "EXCLUSIVE"]
    #   resp.data.in_app_messages_response.in_app_message_campaigns[0].schedule.event_filter.dimensions.event_type.values #=> Array<String>
    #   resp.data.in_app_messages_response.in_app_message_campaigns[0].schedule.event_filter.dimensions.metrics #=> Hash<String, MetricDimension>
    #   resp.data.in_app_messages_response.in_app_message_campaigns[0].schedule.event_filter.dimensions.metrics['key'] #=> Types::MetricDimension
    #   resp.data.in_app_messages_response.in_app_message_campaigns[0].schedule.event_filter.dimensions.metrics['key'].comparison_operator #=> String
    #   resp.data.in_app_messages_response.in_app_message_campaigns[0].schedule.event_filter.dimensions.metrics['key'].value #=> Float
    #   resp.data.in_app_messages_response.in_app_message_campaigns[0].schedule.event_filter.filter_type #=> String, one of ["SYSTEM", "ENDPOINT"]
    #   resp.data.in_app_messages_response.in_app_message_campaigns[0].schedule.quiet_time #=> Types::QuietTime
    #   resp.data.in_app_messages_response.in_app_message_campaigns[0].schedule.quiet_time.end #=> String
    #   resp.data.in_app_messages_response.in_app_message_campaigns[0].schedule.quiet_time.start #=> String
    #   resp.data.in_app_messages_response.in_app_message_campaigns[0].session_cap #=> Integer
    #   resp.data.in_app_messages_response.in_app_message_campaigns[0].total_cap #=> Integer
    #   resp.data.in_app_messages_response.in_app_message_campaigns[0].treatment_id #=> String
    #
    def get_in_app_messages(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetInAppMessagesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetInAppMessagesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetInAppMessages
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::GetInAppMessages
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetInAppMessages,
        stubs: @stubs,
        params_class: Params::GetInAppMessagesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_in_app_messages
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the content and settings of a message template for messages sent through the in-app channel.</p>
    #
    # @param [Hash] params
    #   See {Types::GetInAppTemplateInput}.
    #
    # @option params [String] :template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    #
    # @option params [String] :version
    #   <p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend="templates-template-name-template-type-versions">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>
    #
    # @return [Types::GetInAppTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_in_app_template(
    #     template_name: 'TemplateName', # required
    #     version: 'Version'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetInAppTemplateOutput
    #   resp.data.in_app_template_response #=> Types::InAppTemplateResponse
    #   resp.data.in_app_template_response.arn #=> String
    #   resp.data.in_app_template_response.content #=> Array<InAppMessageContent>
    #   resp.data.in_app_template_response.content[0] #=> Types::InAppMessageContent
    #   resp.data.in_app_template_response.content[0].background_color #=> String
    #   resp.data.in_app_template_response.content[0].body_config #=> Types::InAppMessageBodyConfig
    #   resp.data.in_app_template_response.content[0].body_config.alignment #=> String, one of ["LEFT", "CENTER", "RIGHT"]
    #   resp.data.in_app_template_response.content[0].body_config.body #=> String
    #   resp.data.in_app_template_response.content[0].body_config.text_color #=> String
    #   resp.data.in_app_template_response.content[0].header_config #=> Types::InAppMessageHeaderConfig
    #   resp.data.in_app_template_response.content[0].header_config.alignment #=> String, one of ["LEFT", "CENTER", "RIGHT"]
    #   resp.data.in_app_template_response.content[0].header_config.header #=> String
    #   resp.data.in_app_template_response.content[0].header_config.text_color #=> String
    #   resp.data.in_app_template_response.content[0].image_url #=> String
    #   resp.data.in_app_template_response.content[0].primary_btn #=> Types::InAppMessageButton
    #   resp.data.in_app_template_response.content[0].primary_btn.android #=> Types::OverrideButtonConfiguration
    #   resp.data.in_app_template_response.content[0].primary_btn.android.button_action #=> String, one of ["LINK", "DEEP_LINK", "CLOSE"]
    #   resp.data.in_app_template_response.content[0].primary_btn.android.link #=> String
    #   resp.data.in_app_template_response.content[0].primary_btn.default_config #=> Types::DefaultButtonConfiguration
    #   resp.data.in_app_template_response.content[0].primary_btn.default_config.background_color #=> String
    #   resp.data.in_app_template_response.content[0].primary_btn.default_config.border_radius #=> Integer
    #   resp.data.in_app_template_response.content[0].primary_btn.default_config.button_action #=> String, one of ["LINK", "DEEP_LINK", "CLOSE"]
    #   resp.data.in_app_template_response.content[0].primary_btn.default_config.link #=> String
    #   resp.data.in_app_template_response.content[0].primary_btn.default_config.text #=> String
    #   resp.data.in_app_template_response.content[0].primary_btn.default_config.text_color #=> String
    #   resp.data.in_app_template_response.content[0].primary_btn.ios #=> Types::OverrideButtonConfiguration
    #   resp.data.in_app_template_response.content[0].primary_btn.web #=> Types::OverrideButtonConfiguration
    #   resp.data.in_app_template_response.content[0].secondary_btn #=> Types::InAppMessageButton
    #   resp.data.in_app_template_response.creation_date #=> String
    #   resp.data.in_app_template_response.custom_config #=> Hash<String, String>
    #   resp.data.in_app_template_response.custom_config['key'] #=> String
    #   resp.data.in_app_template_response.last_modified_date #=> String
    #   resp.data.in_app_template_response.layout #=> String, one of ["BOTTOM_BANNER", "TOP_BANNER", "OVERLAYS", "MOBILE_FEED", "MIDDLE_BANNER", "CAROUSEL"]
    #   resp.data.in_app_template_response.tags #=> Hash<String, String>
    #   resp.data.in_app_template_response.template_description #=> String
    #   resp.data.in_app_template_response.template_name #=> String
    #   resp.data.in_app_template_response.template_type #=> String, one of ["EMAIL", "SMS", "VOICE", "PUSH", "INAPP"]
    #   resp.data.in_app_template_response.version #=> String
    #
    def get_in_app_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetInAppTemplateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetInAppTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetInAppTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::GetInAppTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetInAppTemplate,
        stubs: @stubs,
        params_class: Params::GetInAppTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_in_app_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about the status, configuration, and other settings for a journey.</p>
    #
    # @param [Hash] params
    #   See {Types::GetJourneyInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @option params [String] :journey_id
    #   <p>The unique identifier for the journey.</p>
    #
    # @return [Types::GetJourneyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_journey(
    #     application_id: 'ApplicationId', # required
    #     journey_id: 'JourneyId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetJourneyOutput
    #   resp.data.journey_response #=> Types::JourneyResponse
    #   resp.data.journey_response.activities #=> Hash<String, Activity>
    #   resp.data.journey_response.activities['key'] #=> Types::Activity
    #   resp.data.journey_response.activities['key'].custom #=> Types::CustomMessageActivity
    #   resp.data.journey_response.activities['key'].custom.delivery_uri #=> String
    #   resp.data.journey_response.activities['key'].custom.endpoint_types #=> Array<String>
    #   resp.data.journey_response.activities['key'].custom.endpoint_types[0] #=> String, one of ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"]
    #   resp.data.journey_response.activities['key'].custom.message_config #=> Types::JourneyCustomMessage
    #   resp.data.journey_response.activities['key'].custom.message_config.data #=> String
    #   resp.data.journey_response.activities['key'].custom.next_activity #=> String
    #   resp.data.journey_response.activities['key'].custom.template_name #=> String
    #   resp.data.journey_response.activities['key'].custom.template_version #=> String
    #   resp.data.journey_response.activities['key'].conditional_split #=> Types::ConditionalSplitActivity
    #   resp.data.journey_response.activities['key'].conditional_split.condition #=> Types::Condition
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions #=> Array<SimpleCondition>
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0] #=> Types::SimpleCondition
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition #=> Types::EventCondition
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions #=> Types::EventDimensions
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.attributes #=> Hash<String, AttributeDimension>
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.attributes['key'] #=> Types::AttributeDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.attributes['key'].attribute_type #=> String, one of ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"]
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.attributes['key'].values #=> Array<String>
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.attributes['key'].values[0] #=> String
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.event_type #=> Types::SetDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.event_type.dimension_type #=> String, one of ["INCLUSIVE", "EXCLUSIVE"]
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.event_type.values #=> Array<String>
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.metrics #=> Hash<String, MetricDimension>
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.metrics['key'] #=> Types::MetricDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.metrics['key'].comparison_operator #=> String
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.metrics['key'].value #=> Float
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.message_activity #=> String
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_condition #=> Types::SegmentCondition
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_condition.segment_id #=> String
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions #=> Types::SegmentDimensions
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.attributes #=> Hash<String, AttributeDimension>
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.behavior #=> Types::SegmentBehaviors
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.behavior.recency #=> Types::RecencyDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.behavior.recency.duration #=> String, one of ["HR_24", "DAY_7", "DAY_14", "DAY_30"]
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.behavior.recency.recency_type #=> String, one of ["ACTIVE", "INACTIVE"]
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.demographic #=> Types::SegmentDemographics
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.demographic.app_version #=> Types::SetDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.demographic.channel #=> Types::SetDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.demographic.device_type #=> Types::SetDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.demographic.make #=> Types::SetDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.demographic.model #=> Types::SetDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.demographic.platform #=> Types::SetDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.location #=> Types::SegmentLocation
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.location.country #=> Types::SetDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.location.gps_point #=> Types::GPSPointDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.location.gps_point.coordinates #=> Types::GPSCoordinates
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.location.gps_point.coordinates.latitude #=> Float
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.location.gps_point.coordinates.longitude #=> Float
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.location.gps_point.range_in_kilometers #=> Float
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.metrics #=> Hash<String, MetricDimension>
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.user_attributes #=> Hash<String, AttributeDimension>
    #   resp.data.journey_response.activities['key'].conditional_split.condition.operator #=> String, one of ["ALL", "ANY"]
    #   resp.data.journey_response.activities['key'].conditional_split.evaluation_wait_time #=> Types::WaitTime
    #   resp.data.journey_response.activities['key'].conditional_split.evaluation_wait_time.wait_for #=> String
    #   resp.data.journey_response.activities['key'].conditional_split.evaluation_wait_time.wait_until #=> String
    #   resp.data.journey_response.activities['key'].conditional_split.false_activity #=> String
    #   resp.data.journey_response.activities['key'].conditional_split.true_activity #=> String
    #   resp.data.journey_response.activities['key'].description #=> String
    #   resp.data.journey_response.activities['key'].email #=> Types::EmailMessageActivity
    #   resp.data.journey_response.activities['key'].email.message_config #=> Types::JourneyEmailMessage
    #   resp.data.journey_response.activities['key'].email.message_config.from_address #=> String
    #   resp.data.journey_response.activities['key'].email.next_activity #=> String
    #   resp.data.journey_response.activities['key'].email.template_name #=> String
    #   resp.data.journey_response.activities['key'].email.template_version #=> String
    #   resp.data.journey_response.activities['key'].holdout #=> Types::HoldoutActivity
    #   resp.data.journey_response.activities['key'].holdout.next_activity #=> String
    #   resp.data.journey_response.activities['key'].holdout.percentage #=> Integer
    #   resp.data.journey_response.activities['key'].multi_condition #=> Types::MultiConditionalSplitActivity
    #   resp.data.journey_response.activities['key'].multi_condition.branches #=> Array<MultiConditionalBranch>
    #   resp.data.journey_response.activities['key'].multi_condition.branches[0] #=> Types::MultiConditionalBranch
    #   resp.data.journey_response.activities['key'].multi_condition.branches[0].condition #=> Types::SimpleCondition
    #   resp.data.journey_response.activities['key'].multi_condition.branches[0].next_activity #=> String
    #   resp.data.journey_response.activities['key'].multi_condition.default_activity #=> String
    #   resp.data.journey_response.activities['key'].multi_condition.evaluation_wait_time #=> Types::WaitTime
    #   resp.data.journey_response.activities['key'].push #=> Types::PushMessageActivity
    #   resp.data.journey_response.activities['key'].push.message_config #=> Types::JourneyPushMessage
    #   resp.data.journey_response.activities['key'].push.message_config.time_to_live #=> String
    #   resp.data.journey_response.activities['key'].push.next_activity #=> String
    #   resp.data.journey_response.activities['key'].push.template_name #=> String
    #   resp.data.journey_response.activities['key'].push.template_version #=> String
    #   resp.data.journey_response.activities['key'].random_split #=> Types::RandomSplitActivity
    #   resp.data.journey_response.activities['key'].random_split.branches #=> Array<RandomSplitEntry>
    #   resp.data.journey_response.activities['key'].random_split.branches[0] #=> Types::RandomSplitEntry
    #   resp.data.journey_response.activities['key'].random_split.branches[0].next_activity #=> String
    #   resp.data.journey_response.activities['key'].random_split.branches[0].percentage #=> Integer
    #   resp.data.journey_response.activities['key'].sms #=> Types::SMSMessageActivity
    #   resp.data.journey_response.activities['key'].sms.message_config #=> Types::JourneySMSMessage
    #   resp.data.journey_response.activities['key'].sms.message_config.message_type #=> String, one of ["TRANSACTIONAL", "PROMOTIONAL"]
    #   resp.data.journey_response.activities['key'].sms.message_config.origination_number #=> String
    #   resp.data.journey_response.activities['key'].sms.message_config.sender_id #=> String
    #   resp.data.journey_response.activities['key'].sms.message_config.entity_id #=> String
    #   resp.data.journey_response.activities['key'].sms.message_config.template_id #=> String
    #   resp.data.journey_response.activities['key'].sms.next_activity #=> String
    #   resp.data.journey_response.activities['key'].sms.template_name #=> String
    #   resp.data.journey_response.activities['key'].sms.template_version #=> String
    #   resp.data.journey_response.activities['key'].wait #=> Types::WaitActivity
    #   resp.data.journey_response.activities['key'].wait.next_activity #=> String
    #   resp.data.journey_response.activities['key'].wait.wait_time #=> Types::WaitTime
    #   resp.data.journey_response.activities['key'].contact_center #=> Types::ContactCenterActivity
    #   resp.data.journey_response.activities['key'].contact_center.next_activity #=> String
    #   resp.data.journey_response.application_id #=> String
    #   resp.data.journey_response.creation_date #=> String
    #   resp.data.journey_response.id #=> String
    #   resp.data.journey_response.last_modified_date #=> String
    #   resp.data.journey_response.limits #=> Types::JourneyLimits
    #   resp.data.journey_response.limits.daily_cap #=> Integer
    #   resp.data.journey_response.limits.endpoint_reentry_cap #=> Integer
    #   resp.data.journey_response.limits.messages_per_second #=> Integer
    #   resp.data.journey_response.limits.endpoint_reentry_interval #=> String
    #   resp.data.journey_response.local_time #=> Boolean
    #   resp.data.journey_response.name #=> String
    #   resp.data.journey_response.quiet_time #=> Types::QuietTime
    #   resp.data.journey_response.quiet_time.end #=> String
    #   resp.data.journey_response.quiet_time.start #=> String
    #   resp.data.journey_response.refresh_frequency #=> String
    #   resp.data.journey_response.schedule #=> Types::JourneySchedule
    #   resp.data.journey_response.schedule.end_time #=> Time
    #   resp.data.journey_response.schedule.start_time #=> Time
    #   resp.data.journey_response.schedule.timezone #=> String
    #   resp.data.journey_response.start_activity #=> String
    #   resp.data.journey_response.start_condition #=> Types::StartCondition
    #   resp.data.journey_response.start_condition.description #=> String
    #   resp.data.journey_response.start_condition.event_start_condition #=> Types::EventStartCondition
    #   resp.data.journey_response.start_condition.event_start_condition.event_filter #=> Types::EventFilter
    #   resp.data.journey_response.start_condition.event_start_condition.event_filter.dimensions #=> Types::EventDimensions
    #   resp.data.journey_response.start_condition.event_start_condition.event_filter.filter_type #=> String, one of ["SYSTEM", "ENDPOINT"]
    #   resp.data.journey_response.start_condition.event_start_condition.segment_id #=> String
    #   resp.data.journey_response.start_condition.segment_start_condition #=> Types::SegmentCondition
    #   resp.data.journey_response.state #=> String, one of ["DRAFT", "ACTIVE", "COMPLETED", "CANCELLED", "CLOSED", "PAUSED"]
    #   resp.data.journey_response.tags #=> Hash<String, String>
    #   resp.data.journey_response.tags['key'] #=> String
    #   resp.data.journey_response.wait_for_quiet_time #=> Boolean
    #   resp.data.journey_response.refresh_on_segment_update #=> Boolean
    #   resp.data.journey_response.journey_channel_settings #=> Types::JourneyChannelSettings
    #   resp.data.journey_response.journey_channel_settings.connect_campaign_arn #=> String
    #   resp.data.journey_response.journey_channel_settings.connect_campaign_execution_role_arn #=> String
    #
    def get_journey(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetJourneyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetJourneyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetJourney
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::GetJourney
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetJourney,
        stubs: @stubs,
        params_class: Params::GetJourneyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_journey
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves (queries) pre-aggregated data for a standard engagement metric that applies to a journey.</p>
    #
    # @param [Hash] params
    #   See {Types::GetJourneyDateRangeKpiInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @option params [Time] :end_time
    #   <p>The last date and time to retrieve data for, as part of an inclusive date range that filters the query results. This value should be in extended ISO 8601 format and use Coordinated Universal Time (UTC), for example: 2019-07-26T20:00:00Z for 8:00 PM UTC July 26, 2019.</p>
    #
    # @option params [String] :journey_id
    #   <p>The unique identifier for the journey.</p>
    #
    # @option params [String] :kpi_name
    #   <p>The name of the metric, also referred to as a <i>key performance indicator (KPI)</i>, to retrieve data for. This value describes the associated metric and consists of two or more terms, which are comprised of lowercase alphanumeric characters, separated by a hyphen. Examples are email-open-rate and successful-delivery-rate. For a list of valid values, see the <a href="https://docs.aws.amazon.com/pinpoint/latest/developerguide/analytics-standard-metrics.html">Amazon Pinpoint Developer Guide</a>.</p>
    #
    # @option params [String] :next_token
    #   <p>The  string that specifies which page of results to return in a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    #
    # @option params [String] :page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    #
    # @option params [Time] :start_time
    #   <p>The first date and time to retrieve data for, as part of an inclusive date range that filters the query results. This value should be in extended ISO 8601 format and use Coordinated Universal Time (UTC), for example: 2019-07-19T20:00:00Z for 8:00 PM UTC July 19, 2019. This value should also be fewer than 90 days from the current day.</p>
    #
    # @return [Types::GetJourneyDateRangeKpiOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_journey_date_range_kpi(
    #     application_id: 'ApplicationId', # required
    #     end_time: Time.now,
    #     journey_id: 'JourneyId', # required
    #     kpi_name: 'KpiName', # required
    #     next_token: 'NextToken',
    #     page_size: 'PageSize',
    #     start_time: Time.now
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetJourneyDateRangeKpiOutput
    #   resp.data.journey_date_range_kpi_response #=> Types::JourneyDateRangeKpiResponse
    #   resp.data.journey_date_range_kpi_response.application_id #=> String
    #   resp.data.journey_date_range_kpi_response.end_time #=> Time
    #   resp.data.journey_date_range_kpi_response.journey_id #=> String
    #   resp.data.journey_date_range_kpi_response.kpi_name #=> String
    #   resp.data.journey_date_range_kpi_response.kpi_result #=> Types::BaseKpiResult
    #   resp.data.journey_date_range_kpi_response.kpi_result.rows #=> Array<ResultRow>
    #   resp.data.journey_date_range_kpi_response.kpi_result.rows[0] #=> Types::ResultRow
    #   resp.data.journey_date_range_kpi_response.kpi_result.rows[0].grouped_bys #=> Array<ResultRowValue>
    #   resp.data.journey_date_range_kpi_response.kpi_result.rows[0].grouped_bys[0] #=> Types::ResultRowValue
    #   resp.data.journey_date_range_kpi_response.kpi_result.rows[0].grouped_bys[0].key #=> String
    #   resp.data.journey_date_range_kpi_response.kpi_result.rows[0].grouped_bys[0].type #=> String
    #   resp.data.journey_date_range_kpi_response.kpi_result.rows[0].grouped_bys[0].value #=> String
    #   resp.data.journey_date_range_kpi_response.kpi_result.rows[0].values #=> Array<ResultRowValue>
    #   resp.data.journey_date_range_kpi_response.next_token #=> String
    #   resp.data.journey_date_range_kpi_response.start_time #=> Time
    #
    def get_journey_date_range_kpi(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetJourneyDateRangeKpiInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetJourneyDateRangeKpiInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetJourneyDateRangeKpi
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::GetJourneyDateRangeKpi
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetJourneyDateRangeKpi,
        stubs: @stubs,
        params_class: Params::GetJourneyDateRangeKpiOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_journey_date_range_kpi
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves (queries) pre-aggregated data for a standard execution metric that applies to a journey activity.</p>
    #
    # @param [Hash] params
    #   See {Types::GetJourneyExecutionActivityMetricsInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @option params [String] :journey_activity_id
    #   <p>The unique identifier for the journey activity.</p>
    #
    # @option params [String] :journey_id
    #   <p>The unique identifier for the journey.</p>
    #
    # @option params [String] :next_token
    #   <p>The  string that specifies which page of results to return in a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    #
    # @option params [String] :page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    #
    # @return [Types::GetJourneyExecutionActivityMetricsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_journey_execution_activity_metrics(
    #     application_id: 'ApplicationId', # required
    #     journey_activity_id: 'JourneyActivityId', # required
    #     journey_id: 'JourneyId', # required
    #     next_token: 'NextToken',
    #     page_size: 'PageSize'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetJourneyExecutionActivityMetricsOutput
    #   resp.data.journey_execution_activity_metrics_response #=> Types::JourneyExecutionActivityMetricsResponse
    #   resp.data.journey_execution_activity_metrics_response.activity_type #=> String
    #   resp.data.journey_execution_activity_metrics_response.application_id #=> String
    #   resp.data.journey_execution_activity_metrics_response.journey_activity_id #=> String
    #   resp.data.journey_execution_activity_metrics_response.journey_id #=> String
    #   resp.data.journey_execution_activity_metrics_response.last_evaluated_time #=> String
    #   resp.data.journey_execution_activity_metrics_response.metrics #=> Hash<String, String>
    #   resp.data.journey_execution_activity_metrics_response.metrics['key'] #=> String
    #
    def get_journey_execution_activity_metrics(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetJourneyExecutionActivityMetricsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetJourneyExecutionActivityMetricsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetJourneyExecutionActivityMetrics
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::GetJourneyExecutionActivityMetrics
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetJourneyExecutionActivityMetrics,
        stubs: @stubs,
        params_class: Params::GetJourneyExecutionActivityMetricsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_journey_execution_activity_metrics
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves (queries) pre-aggregated data for a standard execution metric that applies to a journey.</p>
    #
    # @param [Hash] params
    #   See {Types::GetJourneyExecutionMetricsInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @option params [String] :journey_id
    #   <p>The unique identifier for the journey.</p>
    #
    # @option params [String] :next_token
    #   <p>The  string that specifies which page of results to return in a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    #
    # @option params [String] :page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    #
    # @return [Types::GetJourneyExecutionMetricsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_journey_execution_metrics(
    #     application_id: 'ApplicationId', # required
    #     journey_id: 'JourneyId', # required
    #     next_token: 'NextToken',
    #     page_size: 'PageSize'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetJourneyExecutionMetricsOutput
    #   resp.data.journey_execution_metrics_response #=> Types::JourneyExecutionMetricsResponse
    #   resp.data.journey_execution_metrics_response.application_id #=> String
    #   resp.data.journey_execution_metrics_response.journey_id #=> String
    #   resp.data.journey_execution_metrics_response.last_evaluated_time #=> String
    #   resp.data.journey_execution_metrics_response.metrics #=> Hash<String, String>
    #   resp.data.journey_execution_metrics_response.metrics['key'] #=> String
    #
    def get_journey_execution_metrics(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetJourneyExecutionMetricsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetJourneyExecutionMetricsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetJourneyExecutionMetrics
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::GetJourneyExecutionMetrics
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetJourneyExecutionMetrics,
        stubs: @stubs,
        params_class: Params::GetJourneyExecutionMetricsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_journey_execution_metrics
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the content and settings of a message template for messages that are sent through a push notification channel.</p>
    #
    # @param [Hash] params
    #   See {Types::GetPushTemplateInput}.
    #
    # @option params [String] :template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    #
    # @option params [String] :version
    #   <p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend="templates-template-name-template-type-versions">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>
    #
    # @return [Types::GetPushTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_push_template(
    #     template_name: 'TemplateName', # required
    #     version: 'Version'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetPushTemplateOutput
    #   resp.data.push_notification_template_response #=> Types::PushNotificationTemplateResponse
    #   resp.data.push_notification_template_response.adm #=> Types::AndroidPushNotificationTemplate
    #   resp.data.push_notification_template_response.adm.action #=> String, one of ["OPEN_APP", "DEEP_LINK", "URL"]
    #   resp.data.push_notification_template_response.adm.body #=> String
    #   resp.data.push_notification_template_response.adm.image_icon_url #=> String
    #   resp.data.push_notification_template_response.adm.image_url #=> String
    #   resp.data.push_notification_template_response.adm.raw_content #=> String
    #   resp.data.push_notification_template_response.adm.small_image_icon_url #=> String
    #   resp.data.push_notification_template_response.adm.sound #=> String
    #   resp.data.push_notification_template_response.adm.title #=> String
    #   resp.data.push_notification_template_response.adm.url #=> String
    #   resp.data.push_notification_template_response.apns #=> Types::APNSPushNotificationTemplate
    #   resp.data.push_notification_template_response.apns.action #=> String, one of ["OPEN_APP", "DEEP_LINK", "URL"]
    #   resp.data.push_notification_template_response.apns.body #=> String
    #   resp.data.push_notification_template_response.apns.media_url #=> String
    #   resp.data.push_notification_template_response.apns.raw_content #=> String
    #   resp.data.push_notification_template_response.apns.sound #=> String
    #   resp.data.push_notification_template_response.apns.title #=> String
    #   resp.data.push_notification_template_response.apns.url #=> String
    #   resp.data.push_notification_template_response.arn #=> String
    #   resp.data.push_notification_template_response.baidu #=> Types::AndroidPushNotificationTemplate
    #   resp.data.push_notification_template_response.creation_date #=> String
    #   resp.data.push_notification_template_response.default #=> Types::DefaultPushNotificationTemplate
    #   resp.data.push_notification_template_response.default.action #=> String, one of ["OPEN_APP", "DEEP_LINK", "URL"]
    #   resp.data.push_notification_template_response.default.body #=> String
    #   resp.data.push_notification_template_response.default.sound #=> String
    #   resp.data.push_notification_template_response.default.title #=> String
    #   resp.data.push_notification_template_response.default.url #=> String
    #   resp.data.push_notification_template_response.default_substitutions #=> String
    #   resp.data.push_notification_template_response.gcm #=> Types::AndroidPushNotificationTemplate
    #   resp.data.push_notification_template_response.last_modified_date #=> String
    #   resp.data.push_notification_template_response.recommender_id #=> String
    #   resp.data.push_notification_template_response.tags #=> Hash<String, String>
    #   resp.data.push_notification_template_response.tags['key'] #=> String
    #   resp.data.push_notification_template_response.template_description #=> String
    #   resp.data.push_notification_template_response.template_name #=> String
    #   resp.data.push_notification_template_response.template_type #=> String, one of ["EMAIL", "SMS", "VOICE", "PUSH", "INAPP"]
    #   resp.data.push_notification_template_response.version #=> String
    #
    def get_push_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetPushTemplateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetPushTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetPushTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::GetPushTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetPushTemplate,
        stubs: @stubs,
        params_class: Params::GetPushTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_push_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about an Amazon Pinpoint configuration for a recommender model.</p>
    #
    # @param [Hash] params
    #   See {Types::GetRecommenderConfigurationInput}.
    #
    # @option params [String] :recommender_id
    #   <p>The unique identifier for the recommender model configuration. This identifier is displayed as the <b>Recommender ID</b> on the Amazon Pinpoint console.</p>
    #
    # @return [Types::GetRecommenderConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_recommender_configuration(
    #     recommender_id: 'RecommenderId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRecommenderConfigurationOutput
    #   resp.data.recommender_configuration_response #=> Types::RecommenderConfigurationResponse
    #   resp.data.recommender_configuration_response.attributes #=> Hash<String, String>
    #   resp.data.recommender_configuration_response.attributes['key'] #=> String
    #   resp.data.recommender_configuration_response.creation_date #=> String
    #   resp.data.recommender_configuration_response.description #=> String
    #   resp.data.recommender_configuration_response.id #=> String
    #   resp.data.recommender_configuration_response.last_modified_date #=> String
    #   resp.data.recommender_configuration_response.name #=> String
    #   resp.data.recommender_configuration_response.recommendation_provider_id_type #=> String
    #   resp.data.recommender_configuration_response.recommendation_provider_role_arn #=> String
    #   resp.data.recommender_configuration_response.recommendation_provider_uri #=> String
    #   resp.data.recommender_configuration_response.recommendation_transformer_uri #=> String
    #   resp.data.recommender_configuration_response.recommendations_display_name #=> String
    #   resp.data.recommender_configuration_response.recommendations_per_message #=> Integer
    #
    def get_recommender_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRecommenderConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRecommenderConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRecommenderConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::GetRecommenderConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRecommenderConfiguration,
        stubs: @stubs,
        params_class: Params::GetRecommenderConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_recommender_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about all the recommender model configurations that are associated with your Amazon Pinpoint account.</p>
    #
    # @param [Hash] params
    #   See {Types::GetRecommenderConfigurationsInput}.
    #
    # @option params [String] :page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    #
    # @option params [String] :token
    #   <p>The NextToken string that specifies which page of results to return in a paginated response.</p>
    #
    # @return [Types::GetRecommenderConfigurationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_recommender_configurations(
    #     page_size: 'PageSize',
    #     token: 'Token'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRecommenderConfigurationsOutput
    #   resp.data.list_recommender_configurations_response #=> Types::ListRecommenderConfigurationsResponse
    #   resp.data.list_recommender_configurations_response.item #=> Array<RecommenderConfigurationResponse>
    #   resp.data.list_recommender_configurations_response.item[0] #=> Types::RecommenderConfigurationResponse
    #   resp.data.list_recommender_configurations_response.item[0].attributes #=> Hash<String, String>
    #   resp.data.list_recommender_configurations_response.item[0].attributes['key'] #=> String
    #   resp.data.list_recommender_configurations_response.item[0].creation_date #=> String
    #   resp.data.list_recommender_configurations_response.item[0].description #=> String
    #   resp.data.list_recommender_configurations_response.item[0].id #=> String
    #   resp.data.list_recommender_configurations_response.item[0].last_modified_date #=> String
    #   resp.data.list_recommender_configurations_response.item[0].name #=> String
    #   resp.data.list_recommender_configurations_response.item[0].recommendation_provider_id_type #=> String
    #   resp.data.list_recommender_configurations_response.item[0].recommendation_provider_role_arn #=> String
    #   resp.data.list_recommender_configurations_response.item[0].recommendation_provider_uri #=> String
    #   resp.data.list_recommender_configurations_response.item[0].recommendation_transformer_uri #=> String
    #   resp.data.list_recommender_configurations_response.item[0].recommendations_display_name #=> String
    #   resp.data.list_recommender_configurations_response.item[0].recommendations_per_message #=> Integer
    #   resp.data.list_recommender_configurations_response.next_token #=> String
    #
    def get_recommender_configurations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRecommenderConfigurationsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRecommenderConfigurationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRecommenderConfigurations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::GetRecommenderConfigurations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRecommenderConfigurations,
        stubs: @stubs,
        params_class: Params::GetRecommenderConfigurationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_recommender_configurations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about the configuration, dimension, and other settings for a specific segment that's associated with an application.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSegmentInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @option params [String] :segment_id
    #   <p>The unique identifier for the segment.</p>
    #
    # @return [Types::GetSegmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_segment(
    #     application_id: 'ApplicationId', # required
    #     segment_id: 'SegmentId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSegmentOutput
    #   resp.data.segment_response #=> Types::SegmentResponse
    #   resp.data.segment_response.application_id #=> String
    #   resp.data.segment_response.arn #=> String
    #   resp.data.segment_response.creation_date #=> String
    #   resp.data.segment_response.dimensions #=> Types::SegmentDimensions
    #   resp.data.segment_response.dimensions.attributes #=> Hash<String, AttributeDimension>
    #   resp.data.segment_response.dimensions.attributes['key'] #=> Types::AttributeDimension
    #   resp.data.segment_response.dimensions.attributes['key'].attribute_type #=> String, one of ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"]
    #   resp.data.segment_response.dimensions.attributes['key'].values #=> Array<String>
    #   resp.data.segment_response.dimensions.attributes['key'].values[0] #=> String
    #   resp.data.segment_response.dimensions.behavior #=> Types::SegmentBehaviors
    #   resp.data.segment_response.dimensions.behavior.recency #=> Types::RecencyDimension
    #   resp.data.segment_response.dimensions.behavior.recency.duration #=> String, one of ["HR_24", "DAY_7", "DAY_14", "DAY_30"]
    #   resp.data.segment_response.dimensions.behavior.recency.recency_type #=> String, one of ["ACTIVE", "INACTIVE"]
    #   resp.data.segment_response.dimensions.demographic #=> Types::SegmentDemographics
    #   resp.data.segment_response.dimensions.demographic.app_version #=> Types::SetDimension
    #   resp.data.segment_response.dimensions.demographic.app_version.dimension_type #=> String, one of ["INCLUSIVE", "EXCLUSIVE"]
    #   resp.data.segment_response.dimensions.demographic.app_version.values #=> Array<String>
    #   resp.data.segment_response.dimensions.demographic.channel #=> Types::SetDimension
    #   resp.data.segment_response.dimensions.demographic.device_type #=> Types::SetDimension
    #   resp.data.segment_response.dimensions.demographic.make #=> Types::SetDimension
    #   resp.data.segment_response.dimensions.demographic.model #=> Types::SetDimension
    #   resp.data.segment_response.dimensions.demographic.platform #=> Types::SetDimension
    #   resp.data.segment_response.dimensions.location #=> Types::SegmentLocation
    #   resp.data.segment_response.dimensions.location.country #=> Types::SetDimension
    #   resp.data.segment_response.dimensions.location.gps_point #=> Types::GPSPointDimension
    #   resp.data.segment_response.dimensions.location.gps_point.coordinates #=> Types::GPSCoordinates
    #   resp.data.segment_response.dimensions.location.gps_point.coordinates.latitude #=> Float
    #   resp.data.segment_response.dimensions.location.gps_point.coordinates.longitude #=> Float
    #   resp.data.segment_response.dimensions.location.gps_point.range_in_kilometers #=> Float
    #   resp.data.segment_response.dimensions.metrics #=> Hash<String, MetricDimension>
    #   resp.data.segment_response.dimensions.metrics['key'] #=> Types::MetricDimension
    #   resp.data.segment_response.dimensions.metrics['key'].comparison_operator #=> String
    #   resp.data.segment_response.dimensions.metrics['key'].value #=> Float
    #   resp.data.segment_response.dimensions.user_attributes #=> Hash<String, AttributeDimension>
    #   resp.data.segment_response.id #=> String
    #   resp.data.segment_response.import_definition #=> Types::SegmentImportResource
    #   resp.data.segment_response.import_definition.channel_counts #=> Hash<String, Integer>
    #   resp.data.segment_response.import_definition.channel_counts['key'] #=> Integer
    #   resp.data.segment_response.import_definition.external_id #=> String
    #   resp.data.segment_response.import_definition.format #=> String, one of ["CSV", "JSON"]
    #   resp.data.segment_response.import_definition.role_arn #=> String
    #   resp.data.segment_response.import_definition.s3_url #=> String
    #   resp.data.segment_response.import_definition.size #=> Integer
    #   resp.data.segment_response.last_modified_date #=> String
    #   resp.data.segment_response.name #=> String
    #   resp.data.segment_response.segment_groups #=> Types::SegmentGroupList
    #   resp.data.segment_response.segment_groups.groups #=> Array<SegmentGroup>
    #   resp.data.segment_response.segment_groups.groups[0] #=> Types::SegmentGroup
    #   resp.data.segment_response.segment_groups.groups[0].dimensions #=> Array<SegmentDimensions>
    #   resp.data.segment_response.segment_groups.groups[0].source_segments #=> Array<SegmentReference>
    #   resp.data.segment_response.segment_groups.groups[0].source_segments[0] #=> Types::SegmentReference
    #   resp.data.segment_response.segment_groups.groups[0].source_segments[0].id #=> String
    #   resp.data.segment_response.segment_groups.groups[0].source_segments[0].version #=> Integer
    #   resp.data.segment_response.segment_groups.groups[0].source_type #=> String, one of ["ALL", "ANY", "NONE"]
    #   resp.data.segment_response.segment_groups.groups[0].type #=> String, one of ["ALL", "ANY", "NONE"]
    #   resp.data.segment_response.segment_groups.include #=> String, one of ["ALL", "ANY", "NONE"]
    #   resp.data.segment_response.segment_type #=> String, one of ["DIMENSIONAL", "IMPORT"]
    #   resp.data.segment_response.tags #=> Hash<String, String>
    #   resp.data.segment_response.tags['key'] #=> String
    #   resp.data.segment_response.version #=> Integer
    #
    def get_segment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSegmentInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSegmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSegment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::GetSegment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSegment,
        stubs: @stubs,
        params_class: Params::GetSegmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_segment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about the status and settings of the export jobs for a segment.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSegmentExportJobsInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @option params [String] :page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    #
    # @option params [String] :segment_id
    #   <p>The unique identifier for the segment.</p>
    #
    # @option params [String] :token
    #   <p>The NextToken string that specifies which page of results to return in a paginated response.</p>
    #
    # @return [Types::GetSegmentExportJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_segment_export_jobs(
    #     application_id: 'ApplicationId', # required
    #     page_size: 'PageSize',
    #     segment_id: 'SegmentId', # required
    #     token: 'Token'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSegmentExportJobsOutput
    #   resp.data.export_jobs_response #=> Types::ExportJobsResponse
    #   resp.data.export_jobs_response.item #=> Array<ExportJobResponse>
    #   resp.data.export_jobs_response.item[0] #=> Types::ExportJobResponse
    #   resp.data.export_jobs_response.item[0].application_id #=> String
    #   resp.data.export_jobs_response.item[0].completed_pieces #=> Integer
    #   resp.data.export_jobs_response.item[0].completion_date #=> String
    #   resp.data.export_jobs_response.item[0].creation_date #=> String
    #   resp.data.export_jobs_response.item[0].definition #=> Types::ExportJobResource
    #   resp.data.export_jobs_response.item[0].definition.role_arn #=> String
    #   resp.data.export_jobs_response.item[0].definition.s3_url_prefix #=> String
    #   resp.data.export_jobs_response.item[0].definition.segment_id #=> String
    #   resp.data.export_jobs_response.item[0].definition.segment_version #=> Integer
    #   resp.data.export_jobs_response.item[0].failed_pieces #=> Integer
    #   resp.data.export_jobs_response.item[0].failures #=> Array<String>
    #   resp.data.export_jobs_response.item[0].failures[0] #=> String
    #   resp.data.export_jobs_response.item[0].id #=> String
    #   resp.data.export_jobs_response.item[0].job_status #=> String, one of ["CREATED", "PREPARING_FOR_INITIALIZATION", "INITIALIZING", "PROCESSING", "PENDING_JOB", "COMPLETING", "COMPLETED", "FAILING", "FAILED"]
    #   resp.data.export_jobs_response.item[0].total_failures #=> Integer
    #   resp.data.export_jobs_response.item[0].total_pieces #=> Integer
    #   resp.data.export_jobs_response.item[0].total_processed #=> Integer
    #   resp.data.export_jobs_response.item[0].type #=> String
    #   resp.data.export_jobs_response.next_token #=> String
    #
    def get_segment_export_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSegmentExportJobsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSegmentExportJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSegmentExportJobs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::GetSegmentExportJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSegmentExportJobs,
        stubs: @stubs,
        params_class: Params::GetSegmentExportJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_segment_export_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about the status and settings of the import jobs for a segment.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSegmentImportJobsInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @option params [String] :page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    #
    # @option params [String] :segment_id
    #   <p>The unique identifier for the segment.</p>
    #
    # @option params [String] :token
    #   <p>The NextToken string that specifies which page of results to return in a paginated response.</p>
    #
    # @return [Types::GetSegmentImportJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_segment_import_jobs(
    #     application_id: 'ApplicationId', # required
    #     page_size: 'PageSize',
    #     segment_id: 'SegmentId', # required
    #     token: 'Token'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSegmentImportJobsOutput
    #   resp.data.import_jobs_response #=> Types::ImportJobsResponse
    #   resp.data.import_jobs_response.item #=> Array<ImportJobResponse>
    #   resp.data.import_jobs_response.item[0] #=> Types::ImportJobResponse
    #   resp.data.import_jobs_response.item[0].application_id #=> String
    #   resp.data.import_jobs_response.item[0].completed_pieces #=> Integer
    #   resp.data.import_jobs_response.item[0].completion_date #=> String
    #   resp.data.import_jobs_response.item[0].creation_date #=> String
    #   resp.data.import_jobs_response.item[0].definition #=> Types::ImportJobResource
    #   resp.data.import_jobs_response.item[0].definition.define_segment #=> Boolean
    #   resp.data.import_jobs_response.item[0].definition.external_id #=> String
    #   resp.data.import_jobs_response.item[0].definition.format #=> String, one of ["CSV", "JSON"]
    #   resp.data.import_jobs_response.item[0].definition.register_endpoints #=> Boolean
    #   resp.data.import_jobs_response.item[0].definition.role_arn #=> String
    #   resp.data.import_jobs_response.item[0].definition.s3_url #=> String
    #   resp.data.import_jobs_response.item[0].definition.segment_id #=> String
    #   resp.data.import_jobs_response.item[0].definition.segment_name #=> String
    #   resp.data.import_jobs_response.item[0].failed_pieces #=> Integer
    #   resp.data.import_jobs_response.item[0].failures #=> Array<String>
    #   resp.data.import_jobs_response.item[0].failures[0] #=> String
    #   resp.data.import_jobs_response.item[0].id #=> String
    #   resp.data.import_jobs_response.item[0].job_status #=> String, one of ["CREATED", "PREPARING_FOR_INITIALIZATION", "INITIALIZING", "PROCESSING", "PENDING_JOB", "COMPLETING", "COMPLETED", "FAILING", "FAILED"]
    #   resp.data.import_jobs_response.item[0].total_failures #=> Integer
    #   resp.data.import_jobs_response.item[0].total_pieces #=> Integer
    #   resp.data.import_jobs_response.item[0].total_processed #=> Integer
    #   resp.data.import_jobs_response.item[0].type #=> String
    #   resp.data.import_jobs_response.next_token #=> String
    #
    def get_segment_import_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSegmentImportJobsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSegmentImportJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSegmentImportJobs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::GetSegmentImportJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSegmentImportJobs,
        stubs: @stubs,
        params_class: Params::GetSegmentImportJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_segment_import_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about the configuration, dimension, and other settings for a specific version of a segment that's associated with an application.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSegmentVersionInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @option params [String] :segment_id
    #   <p>The unique identifier for the segment.</p>
    #
    # @option params [String] :version
    #   <p>The unique version number (Version property) for the campaign version.</p>
    #
    # @return [Types::GetSegmentVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_segment_version(
    #     application_id: 'ApplicationId', # required
    #     segment_id: 'SegmentId', # required
    #     version: 'Version' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSegmentVersionOutput
    #   resp.data.segment_response #=> Types::SegmentResponse
    #   resp.data.segment_response.application_id #=> String
    #   resp.data.segment_response.arn #=> String
    #   resp.data.segment_response.creation_date #=> String
    #   resp.data.segment_response.dimensions #=> Types::SegmentDimensions
    #   resp.data.segment_response.dimensions.attributes #=> Hash<String, AttributeDimension>
    #   resp.data.segment_response.dimensions.attributes['key'] #=> Types::AttributeDimension
    #   resp.data.segment_response.dimensions.attributes['key'].attribute_type #=> String, one of ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"]
    #   resp.data.segment_response.dimensions.attributes['key'].values #=> Array<String>
    #   resp.data.segment_response.dimensions.attributes['key'].values[0] #=> String
    #   resp.data.segment_response.dimensions.behavior #=> Types::SegmentBehaviors
    #   resp.data.segment_response.dimensions.behavior.recency #=> Types::RecencyDimension
    #   resp.data.segment_response.dimensions.behavior.recency.duration #=> String, one of ["HR_24", "DAY_7", "DAY_14", "DAY_30"]
    #   resp.data.segment_response.dimensions.behavior.recency.recency_type #=> String, one of ["ACTIVE", "INACTIVE"]
    #   resp.data.segment_response.dimensions.demographic #=> Types::SegmentDemographics
    #   resp.data.segment_response.dimensions.demographic.app_version #=> Types::SetDimension
    #   resp.data.segment_response.dimensions.demographic.app_version.dimension_type #=> String, one of ["INCLUSIVE", "EXCLUSIVE"]
    #   resp.data.segment_response.dimensions.demographic.app_version.values #=> Array<String>
    #   resp.data.segment_response.dimensions.demographic.channel #=> Types::SetDimension
    #   resp.data.segment_response.dimensions.demographic.device_type #=> Types::SetDimension
    #   resp.data.segment_response.dimensions.demographic.make #=> Types::SetDimension
    #   resp.data.segment_response.dimensions.demographic.model #=> Types::SetDimension
    #   resp.data.segment_response.dimensions.demographic.platform #=> Types::SetDimension
    #   resp.data.segment_response.dimensions.location #=> Types::SegmentLocation
    #   resp.data.segment_response.dimensions.location.country #=> Types::SetDimension
    #   resp.data.segment_response.dimensions.location.gps_point #=> Types::GPSPointDimension
    #   resp.data.segment_response.dimensions.location.gps_point.coordinates #=> Types::GPSCoordinates
    #   resp.data.segment_response.dimensions.location.gps_point.coordinates.latitude #=> Float
    #   resp.data.segment_response.dimensions.location.gps_point.coordinates.longitude #=> Float
    #   resp.data.segment_response.dimensions.location.gps_point.range_in_kilometers #=> Float
    #   resp.data.segment_response.dimensions.metrics #=> Hash<String, MetricDimension>
    #   resp.data.segment_response.dimensions.metrics['key'] #=> Types::MetricDimension
    #   resp.data.segment_response.dimensions.metrics['key'].comparison_operator #=> String
    #   resp.data.segment_response.dimensions.metrics['key'].value #=> Float
    #   resp.data.segment_response.dimensions.user_attributes #=> Hash<String, AttributeDimension>
    #   resp.data.segment_response.id #=> String
    #   resp.data.segment_response.import_definition #=> Types::SegmentImportResource
    #   resp.data.segment_response.import_definition.channel_counts #=> Hash<String, Integer>
    #   resp.data.segment_response.import_definition.channel_counts['key'] #=> Integer
    #   resp.data.segment_response.import_definition.external_id #=> String
    #   resp.data.segment_response.import_definition.format #=> String, one of ["CSV", "JSON"]
    #   resp.data.segment_response.import_definition.role_arn #=> String
    #   resp.data.segment_response.import_definition.s3_url #=> String
    #   resp.data.segment_response.import_definition.size #=> Integer
    #   resp.data.segment_response.last_modified_date #=> String
    #   resp.data.segment_response.name #=> String
    #   resp.data.segment_response.segment_groups #=> Types::SegmentGroupList
    #   resp.data.segment_response.segment_groups.groups #=> Array<SegmentGroup>
    #   resp.data.segment_response.segment_groups.groups[0] #=> Types::SegmentGroup
    #   resp.data.segment_response.segment_groups.groups[0].dimensions #=> Array<SegmentDimensions>
    #   resp.data.segment_response.segment_groups.groups[0].source_segments #=> Array<SegmentReference>
    #   resp.data.segment_response.segment_groups.groups[0].source_segments[0] #=> Types::SegmentReference
    #   resp.data.segment_response.segment_groups.groups[0].source_segments[0].id #=> String
    #   resp.data.segment_response.segment_groups.groups[0].source_segments[0].version #=> Integer
    #   resp.data.segment_response.segment_groups.groups[0].source_type #=> String, one of ["ALL", "ANY", "NONE"]
    #   resp.data.segment_response.segment_groups.groups[0].type #=> String, one of ["ALL", "ANY", "NONE"]
    #   resp.data.segment_response.segment_groups.include #=> String, one of ["ALL", "ANY", "NONE"]
    #   resp.data.segment_response.segment_type #=> String, one of ["DIMENSIONAL", "IMPORT"]
    #   resp.data.segment_response.tags #=> Hash<String, String>
    #   resp.data.segment_response.tags['key'] #=> String
    #   resp.data.segment_response.version #=> Integer
    #
    def get_segment_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSegmentVersionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSegmentVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSegmentVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::GetSegmentVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSegmentVersion,
        stubs: @stubs,
        params_class: Params::GetSegmentVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_segment_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about the configuration, dimension, and other settings for all the versions of a specific segment that's associated with an application.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSegmentVersionsInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @option params [String] :page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    #
    # @option params [String] :segment_id
    #   <p>The unique identifier for the segment.</p>
    #
    # @option params [String] :token
    #   <p>The NextToken string that specifies which page of results to return in a paginated response.</p>
    #
    # @return [Types::GetSegmentVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_segment_versions(
    #     application_id: 'ApplicationId', # required
    #     page_size: 'PageSize',
    #     segment_id: 'SegmentId', # required
    #     token: 'Token'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSegmentVersionsOutput
    #   resp.data.segments_response #=> Types::SegmentsResponse
    #   resp.data.segments_response.item #=> Array<SegmentResponse>
    #   resp.data.segments_response.item[0] #=> Types::SegmentResponse
    #   resp.data.segments_response.item[0].application_id #=> String
    #   resp.data.segments_response.item[0].arn #=> String
    #   resp.data.segments_response.item[0].creation_date #=> String
    #   resp.data.segments_response.item[0].dimensions #=> Types::SegmentDimensions
    #   resp.data.segments_response.item[0].dimensions.attributes #=> Hash<String, AttributeDimension>
    #   resp.data.segments_response.item[0].dimensions.attributes['key'] #=> Types::AttributeDimension
    #   resp.data.segments_response.item[0].dimensions.attributes['key'].attribute_type #=> String, one of ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"]
    #   resp.data.segments_response.item[0].dimensions.attributes['key'].values #=> Array<String>
    #   resp.data.segments_response.item[0].dimensions.attributes['key'].values[0] #=> String
    #   resp.data.segments_response.item[0].dimensions.behavior #=> Types::SegmentBehaviors
    #   resp.data.segments_response.item[0].dimensions.behavior.recency #=> Types::RecencyDimension
    #   resp.data.segments_response.item[0].dimensions.behavior.recency.duration #=> String, one of ["HR_24", "DAY_7", "DAY_14", "DAY_30"]
    #   resp.data.segments_response.item[0].dimensions.behavior.recency.recency_type #=> String, one of ["ACTIVE", "INACTIVE"]
    #   resp.data.segments_response.item[0].dimensions.demographic #=> Types::SegmentDemographics
    #   resp.data.segments_response.item[0].dimensions.demographic.app_version #=> Types::SetDimension
    #   resp.data.segments_response.item[0].dimensions.demographic.app_version.dimension_type #=> String, one of ["INCLUSIVE", "EXCLUSIVE"]
    #   resp.data.segments_response.item[0].dimensions.demographic.app_version.values #=> Array<String>
    #   resp.data.segments_response.item[0].dimensions.demographic.channel #=> Types::SetDimension
    #   resp.data.segments_response.item[0].dimensions.demographic.device_type #=> Types::SetDimension
    #   resp.data.segments_response.item[0].dimensions.demographic.make #=> Types::SetDimension
    #   resp.data.segments_response.item[0].dimensions.demographic.model #=> Types::SetDimension
    #   resp.data.segments_response.item[0].dimensions.demographic.platform #=> Types::SetDimension
    #   resp.data.segments_response.item[0].dimensions.location #=> Types::SegmentLocation
    #   resp.data.segments_response.item[0].dimensions.location.country #=> Types::SetDimension
    #   resp.data.segments_response.item[0].dimensions.location.gps_point #=> Types::GPSPointDimension
    #   resp.data.segments_response.item[0].dimensions.location.gps_point.coordinates #=> Types::GPSCoordinates
    #   resp.data.segments_response.item[0].dimensions.location.gps_point.coordinates.latitude #=> Float
    #   resp.data.segments_response.item[0].dimensions.location.gps_point.coordinates.longitude #=> Float
    #   resp.data.segments_response.item[0].dimensions.location.gps_point.range_in_kilometers #=> Float
    #   resp.data.segments_response.item[0].dimensions.metrics #=> Hash<String, MetricDimension>
    #   resp.data.segments_response.item[0].dimensions.metrics['key'] #=> Types::MetricDimension
    #   resp.data.segments_response.item[0].dimensions.metrics['key'].comparison_operator #=> String
    #   resp.data.segments_response.item[0].dimensions.metrics['key'].value #=> Float
    #   resp.data.segments_response.item[0].dimensions.user_attributes #=> Hash<String, AttributeDimension>
    #   resp.data.segments_response.item[0].id #=> String
    #   resp.data.segments_response.item[0].import_definition #=> Types::SegmentImportResource
    #   resp.data.segments_response.item[0].import_definition.channel_counts #=> Hash<String, Integer>
    #   resp.data.segments_response.item[0].import_definition.channel_counts['key'] #=> Integer
    #   resp.data.segments_response.item[0].import_definition.external_id #=> String
    #   resp.data.segments_response.item[0].import_definition.format #=> String, one of ["CSV", "JSON"]
    #   resp.data.segments_response.item[0].import_definition.role_arn #=> String
    #   resp.data.segments_response.item[0].import_definition.s3_url #=> String
    #   resp.data.segments_response.item[0].import_definition.size #=> Integer
    #   resp.data.segments_response.item[0].last_modified_date #=> String
    #   resp.data.segments_response.item[0].name #=> String
    #   resp.data.segments_response.item[0].segment_groups #=> Types::SegmentGroupList
    #   resp.data.segments_response.item[0].segment_groups.groups #=> Array<SegmentGroup>
    #   resp.data.segments_response.item[0].segment_groups.groups[0] #=> Types::SegmentGroup
    #   resp.data.segments_response.item[0].segment_groups.groups[0].dimensions #=> Array<SegmentDimensions>
    #   resp.data.segments_response.item[0].segment_groups.groups[0].source_segments #=> Array<SegmentReference>
    #   resp.data.segments_response.item[0].segment_groups.groups[0].source_segments[0] #=> Types::SegmentReference
    #   resp.data.segments_response.item[0].segment_groups.groups[0].source_segments[0].id #=> String
    #   resp.data.segments_response.item[0].segment_groups.groups[0].source_segments[0].version #=> Integer
    #   resp.data.segments_response.item[0].segment_groups.groups[0].source_type #=> String, one of ["ALL", "ANY", "NONE"]
    #   resp.data.segments_response.item[0].segment_groups.groups[0].type #=> String, one of ["ALL", "ANY", "NONE"]
    #   resp.data.segments_response.item[0].segment_groups.include #=> String, one of ["ALL", "ANY", "NONE"]
    #   resp.data.segments_response.item[0].segment_type #=> String, one of ["DIMENSIONAL", "IMPORT"]
    #   resp.data.segments_response.item[0].tags #=> Hash<String, String>
    #   resp.data.segments_response.item[0].tags['key'] #=> String
    #   resp.data.segments_response.item[0].version #=> Integer
    #   resp.data.segments_response.next_token #=> String
    #
    def get_segment_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSegmentVersionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSegmentVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSegmentVersions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::GetSegmentVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSegmentVersions,
        stubs: @stubs,
        params_class: Params::GetSegmentVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_segment_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about the configuration, dimension, and other settings for all the segments that are associated with an application.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSegmentsInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @option params [String] :page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    #
    # @option params [String] :token
    #   <p>The NextToken string that specifies which page of results to return in a paginated response.</p>
    #
    # @return [Types::GetSegmentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_segments(
    #     application_id: 'ApplicationId', # required
    #     page_size: 'PageSize',
    #     token: 'Token'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSegmentsOutput
    #   resp.data.segments_response #=> Types::SegmentsResponse
    #   resp.data.segments_response.item #=> Array<SegmentResponse>
    #   resp.data.segments_response.item[0] #=> Types::SegmentResponse
    #   resp.data.segments_response.item[0].application_id #=> String
    #   resp.data.segments_response.item[0].arn #=> String
    #   resp.data.segments_response.item[0].creation_date #=> String
    #   resp.data.segments_response.item[0].dimensions #=> Types::SegmentDimensions
    #   resp.data.segments_response.item[0].dimensions.attributes #=> Hash<String, AttributeDimension>
    #   resp.data.segments_response.item[0].dimensions.attributes['key'] #=> Types::AttributeDimension
    #   resp.data.segments_response.item[0].dimensions.attributes['key'].attribute_type #=> String, one of ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"]
    #   resp.data.segments_response.item[0].dimensions.attributes['key'].values #=> Array<String>
    #   resp.data.segments_response.item[0].dimensions.attributes['key'].values[0] #=> String
    #   resp.data.segments_response.item[0].dimensions.behavior #=> Types::SegmentBehaviors
    #   resp.data.segments_response.item[0].dimensions.behavior.recency #=> Types::RecencyDimension
    #   resp.data.segments_response.item[0].dimensions.behavior.recency.duration #=> String, one of ["HR_24", "DAY_7", "DAY_14", "DAY_30"]
    #   resp.data.segments_response.item[0].dimensions.behavior.recency.recency_type #=> String, one of ["ACTIVE", "INACTIVE"]
    #   resp.data.segments_response.item[0].dimensions.demographic #=> Types::SegmentDemographics
    #   resp.data.segments_response.item[0].dimensions.demographic.app_version #=> Types::SetDimension
    #   resp.data.segments_response.item[0].dimensions.demographic.app_version.dimension_type #=> String, one of ["INCLUSIVE", "EXCLUSIVE"]
    #   resp.data.segments_response.item[0].dimensions.demographic.app_version.values #=> Array<String>
    #   resp.data.segments_response.item[0].dimensions.demographic.channel #=> Types::SetDimension
    #   resp.data.segments_response.item[0].dimensions.demographic.device_type #=> Types::SetDimension
    #   resp.data.segments_response.item[0].dimensions.demographic.make #=> Types::SetDimension
    #   resp.data.segments_response.item[0].dimensions.demographic.model #=> Types::SetDimension
    #   resp.data.segments_response.item[0].dimensions.demographic.platform #=> Types::SetDimension
    #   resp.data.segments_response.item[0].dimensions.location #=> Types::SegmentLocation
    #   resp.data.segments_response.item[0].dimensions.location.country #=> Types::SetDimension
    #   resp.data.segments_response.item[0].dimensions.location.gps_point #=> Types::GPSPointDimension
    #   resp.data.segments_response.item[0].dimensions.location.gps_point.coordinates #=> Types::GPSCoordinates
    #   resp.data.segments_response.item[0].dimensions.location.gps_point.coordinates.latitude #=> Float
    #   resp.data.segments_response.item[0].dimensions.location.gps_point.coordinates.longitude #=> Float
    #   resp.data.segments_response.item[0].dimensions.location.gps_point.range_in_kilometers #=> Float
    #   resp.data.segments_response.item[0].dimensions.metrics #=> Hash<String, MetricDimension>
    #   resp.data.segments_response.item[0].dimensions.metrics['key'] #=> Types::MetricDimension
    #   resp.data.segments_response.item[0].dimensions.metrics['key'].comparison_operator #=> String
    #   resp.data.segments_response.item[0].dimensions.metrics['key'].value #=> Float
    #   resp.data.segments_response.item[0].dimensions.user_attributes #=> Hash<String, AttributeDimension>
    #   resp.data.segments_response.item[0].id #=> String
    #   resp.data.segments_response.item[0].import_definition #=> Types::SegmentImportResource
    #   resp.data.segments_response.item[0].import_definition.channel_counts #=> Hash<String, Integer>
    #   resp.data.segments_response.item[0].import_definition.channel_counts['key'] #=> Integer
    #   resp.data.segments_response.item[0].import_definition.external_id #=> String
    #   resp.data.segments_response.item[0].import_definition.format #=> String, one of ["CSV", "JSON"]
    #   resp.data.segments_response.item[0].import_definition.role_arn #=> String
    #   resp.data.segments_response.item[0].import_definition.s3_url #=> String
    #   resp.data.segments_response.item[0].import_definition.size #=> Integer
    #   resp.data.segments_response.item[0].last_modified_date #=> String
    #   resp.data.segments_response.item[0].name #=> String
    #   resp.data.segments_response.item[0].segment_groups #=> Types::SegmentGroupList
    #   resp.data.segments_response.item[0].segment_groups.groups #=> Array<SegmentGroup>
    #   resp.data.segments_response.item[0].segment_groups.groups[0] #=> Types::SegmentGroup
    #   resp.data.segments_response.item[0].segment_groups.groups[0].dimensions #=> Array<SegmentDimensions>
    #   resp.data.segments_response.item[0].segment_groups.groups[0].source_segments #=> Array<SegmentReference>
    #   resp.data.segments_response.item[0].segment_groups.groups[0].source_segments[0] #=> Types::SegmentReference
    #   resp.data.segments_response.item[0].segment_groups.groups[0].source_segments[0].id #=> String
    #   resp.data.segments_response.item[0].segment_groups.groups[0].source_segments[0].version #=> Integer
    #   resp.data.segments_response.item[0].segment_groups.groups[0].source_type #=> String, one of ["ALL", "ANY", "NONE"]
    #   resp.data.segments_response.item[0].segment_groups.groups[0].type #=> String, one of ["ALL", "ANY", "NONE"]
    #   resp.data.segments_response.item[0].segment_groups.include #=> String, one of ["ALL", "ANY", "NONE"]
    #   resp.data.segments_response.item[0].segment_type #=> String, one of ["DIMENSIONAL", "IMPORT"]
    #   resp.data.segments_response.item[0].tags #=> Hash<String, String>
    #   resp.data.segments_response.item[0].tags['key'] #=> String
    #   resp.data.segments_response.item[0].version #=> Integer
    #   resp.data.segments_response.next_token #=> String
    #
    def get_segments(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSegmentsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSegmentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSegments
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::GetSegments
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSegments,
        stubs: @stubs,
        params_class: Params::GetSegmentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_segments
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about the status and settings of the SMS channel for an application.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSmsChannelInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @return [Types::GetSmsChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sms_channel(
    #     application_id: 'ApplicationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSmsChannelOutput
    #   resp.data.sms_channel_response #=> Types::SMSChannelResponse
    #   resp.data.sms_channel_response.application_id #=> String
    #   resp.data.sms_channel_response.creation_date #=> String
    #   resp.data.sms_channel_response.enabled #=> Boolean
    #   resp.data.sms_channel_response.has_credential #=> Boolean
    #   resp.data.sms_channel_response.id #=> String
    #   resp.data.sms_channel_response.is_archived #=> Boolean
    #   resp.data.sms_channel_response.last_modified_by #=> String
    #   resp.data.sms_channel_response.last_modified_date #=> String
    #   resp.data.sms_channel_response.platform #=> String
    #   resp.data.sms_channel_response.promotional_messages_per_second #=> Integer
    #   resp.data.sms_channel_response.sender_id #=> String
    #   resp.data.sms_channel_response.short_code #=> String
    #   resp.data.sms_channel_response.transactional_messages_per_second #=> Integer
    #   resp.data.sms_channel_response.version #=> Integer
    #
    def get_sms_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSmsChannelInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSmsChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSmsChannel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::GetSmsChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSmsChannel,
        stubs: @stubs,
        params_class: Params::GetSmsChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_sms_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the content and settings of a message template for messages that are sent through the SMS channel.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSmsTemplateInput}.
    #
    # @option params [String] :template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    #
    # @option params [String] :version
    #   <p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend="templates-template-name-template-type-versions">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>
    #
    # @return [Types::GetSmsTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sms_template(
    #     template_name: 'TemplateName', # required
    #     version: 'Version'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSmsTemplateOutput
    #   resp.data.sms_template_response #=> Types::SMSTemplateResponse
    #   resp.data.sms_template_response.arn #=> String
    #   resp.data.sms_template_response.body #=> String
    #   resp.data.sms_template_response.creation_date #=> String
    #   resp.data.sms_template_response.default_substitutions #=> String
    #   resp.data.sms_template_response.last_modified_date #=> String
    #   resp.data.sms_template_response.recommender_id #=> String
    #   resp.data.sms_template_response.tags #=> Hash<String, String>
    #   resp.data.sms_template_response.tags['key'] #=> String
    #   resp.data.sms_template_response.template_description #=> String
    #   resp.data.sms_template_response.template_name #=> String
    #   resp.data.sms_template_response.template_type #=> String, one of ["EMAIL", "SMS", "VOICE", "PUSH", "INAPP"]
    #   resp.data.sms_template_response.version #=> String
    #
    def get_sms_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSmsTemplateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSmsTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSmsTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::GetSmsTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSmsTemplate,
        stubs: @stubs,
        params_class: Params::GetSmsTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_sms_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about all the endpoints that are associated with a specific user ID.</p>
    #
    # @param [Hash] params
    #   See {Types::GetUserEndpointsInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @option params [String] :user_id
    #   <p>The unique identifier for the user.</p>
    #
    # @return [Types::GetUserEndpointsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_user_endpoints(
    #     application_id: 'ApplicationId', # required
    #     user_id: 'UserId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetUserEndpointsOutput
    #   resp.data.endpoints_response #=> Types::EndpointsResponse
    #   resp.data.endpoints_response.item #=> Array<EndpointResponse>
    #   resp.data.endpoints_response.item[0] #=> Types::EndpointResponse
    #   resp.data.endpoints_response.item[0].address #=> String
    #   resp.data.endpoints_response.item[0].application_id #=> String
    #   resp.data.endpoints_response.item[0].attributes #=> Hash<String, Array<String>>
    #   resp.data.endpoints_response.item[0].attributes['key'] #=> Array<String>
    #   resp.data.endpoints_response.item[0].attributes['key'][0] #=> String
    #   resp.data.endpoints_response.item[0].channel_type #=> String, one of ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"]
    #   resp.data.endpoints_response.item[0].cohort_id #=> String
    #   resp.data.endpoints_response.item[0].creation_date #=> String
    #   resp.data.endpoints_response.item[0].demographic #=> Types::EndpointDemographic
    #   resp.data.endpoints_response.item[0].demographic.app_version #=> String
    #   resp.data.endpoints_response.item[0].demographic.locale #=> String
    #   resp.data.endpoints_response.item[0].demographic.make #=> String
    #   resp.data.endpoints_response.item[0].demographic.model #=> String
    #   resp.data.endpoints_response.item[0].demographic.model_version #=> String
    #   resp.data.endpoints_response.item[0].demographic.platform #=> String
    #   resp.data.endpoints_response.item[0].demographic.platform_version #=> String
    #   resp.data.endpoints_response.item[0].demographic.timezone #=> String
    #   resp.data.endpoints_response.item[0].effective_date #=> String
    #   resp.data.endpoints_response.item[0].endpoint_status #=> String
    #   resp.data.endpoints_response.item[0].id #=> String
    #   resp.data.endpoints_response.item[0].location #=> Types::EndpointLocation
    #   resp.data.endpoints_response.item[0].location.city #=> String
    #   resp.data.endpoints_response.item[0].location.country #=> String
    #   resp.data.endpoints_response.item[0].location.latitude #=> Float
    #   resp.data.endpoints_response.item[0].location.longitude #=> Float
    #   resp.data.endpoints_response.item[0].location.postal_code #=> String
    #   resp.data.endpoints_response.item[0].location.region #=> String
    #   resp.data.endpoints_response.item[0].metrics #=> Hash<String, Float>
    #   resp.data.endpoints_response.item[0].metrics['key'] #=> Float
    #   resp.data.endpoints_response.item[0].opt_out #=> String
    #   resp.data.endpoints_response.item[0].request_id #=> String
    #   resp.data.endpoints_response.item[0].user #=> Types::EndpointUser
    #   resp.data.endpoints_response.item[0].user.user_attributes #=> Hash<String, Array<String>>
    #   resp.data.endpoints_response.item[0].user.user_id #=> String
    #
    def get_user_endpoints(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetUserEndpointsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetUserEndpointsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetUserEndpoints
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::GetUserEndpoints
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetUserEndpoints,
        stubs: @stubs,
        params_class: Params::GetUserEndpointsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_user_endpoints
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about the status and settings of the voice channel for an application.</p>
    #
    # @param [Hash] params
    #   See {Types::GetVoiceChannelInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @return [Types::GetVoiceChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_voice_channel(
    #     application_id: 'ApplicationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetVoiceChannelOutput
    #   resp.data.voice_channel_response #=> Types::VoiceChannelResponse
    #   resp.data.voice_channel_response.application_id #=> String
    #   resp.data.voice_channel_response.creation_date #=> String
    #   resp.data.voice_channel_response.enabled #=> Boolean
    #   resp.data.voice_channel_response.has_credential #=> Boolean
    #   resp.data.voice_channel_response.id #=> String
    #   resp.data.voice_channel_response.is_archived #=> Boolean
    #   resp.data.voice_channel_response.last_modified_by #=> String
    #   resp.data.voice_channel_response.last_modified_date #=> String
    #   resp.data.voice_channel_response.platform #=> String
    #   resp.data.voice_channel_response.version #=> Integer
    #
    def get_voice_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetVoiceChannelInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetVoiceChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetVoiceChannel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::GetVoiceChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetVoiceChannel,
        stubs: @stubs,
        params_class: Params::GetVoiceChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_voice_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the content and settings of a message template for messages that are sent through the voice channel.</p>
    #
    # @param [Hash] params
    #   See {Types::GetVoiceTemplateInput}.
    #
    # @option params [String] :template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    #
    # @option params [String] :version
    #   <p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend="templates-template-name-template-type-versions">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>
    #
    # @return [Types::GetVoiceTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_voice_template(
    #     template_name: 'TemplateName', # required
    #     version: 'Version'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetVoiceTemplateOutput
    #   resp.data.voice_template_response #=> Types::VoiceTemplateResponse
    #   resp.data.voice_template_response.arn #=> String
    #   resp.data.voice_template_response.body #=> String
    #   resp.data.voice_template_response.creation_date #=> String
    #   resp.data.voice_template_response.default_substitutions #=> String
    #   resp.data.voice_template_response.language_code #=> String
    #   resp.data.voice_template_response.last_modified_date #=> String
    #   resp.data.voice_template_response.tags #=> Hash<String, String>
    #   resp.data.voice_template_response.tags['key'] #=> String
    #   resp.data.voice_template_response.template_description #=> String
    #   resp.data.voice_template_response.template_name #=> String
    #   resp.data.voice_template_response.template_type #=> String, one of ["EMAIL", "SMS", "VOICE", "PUSH", "INAPP"]
    #   resp.data.voice_template_response.version #=> String
    #   resp.data.voice_template_response.voice_id #=> String
    #
    def get_voice_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetVoiceTemplateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetVoiceTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetVoiceTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::GetVoiceTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetVoiceTemplate,
        stubs: @stubs,
        params_class: Params::GetVoiceTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_voice_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about the status, configuration, and other settings for all the journeys that are associated with an application.</p>
    #
    # @param [Hash] params
    #   See {Types::ListJourneysInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @option params [String] :page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    #
    # @option params [String] :token
    #   <p>The NextToken string that specifies which page of results to return in a paginated response.</p>
    #
    # @return [Types::ListJourneysOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_journeys(
    #     application_id: 'ApplicationId', # required
    #     page_size: 'PageSize',
    #     token: 'Token'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListJourneysOutput
    #   resp.data.journeys_response #=> Types::JourneysResponse
    #   resp.data.journeys_response.item #=> Array<JourneyResponse>
    #   resp.data.journeys_response.item[0] #=> Types::JourneyResponse
    #   resp.data.journeys_response.item[0].activities #=> Hash<String, Activity>
    #   resp.data.journeys_response.item[0].activities['key'] #=> Types::Activity
    #   resp.data.journeys_response.item[0].activities['key'].custom #=> Types::CustomMessageActivity
    #   resp.data.journeys_response.item[0].activities['key'].custom.delivery_uri #=> String
    #   resp.data.journeys_response.item[0].activities['key'].custom.endpoint_types #=> Array<String>
    #   resp.data.journeys_response.item[0].activities['key'].custom.endpoint_types[0] #=> String, one of ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"]
    #   resp.data.journeys_response.item[0].activities['key'].custom.message_config #=> Types::JourneyCustomMessage
    #   resp.data.journeys_response.item[0].activities['key'].custom.message_config.data #=> String
    #   resp.data.journeys_response.item[0].activities['key'].custom.next_activity #=> String
    #   resp.data.journeys_response.item[0].activities['key'].custom.template_name #=> String
    #   resp.data.journeys_response.item[0].activities['key'].custom.template_version #=> String
    #   resp.data.journeys_response.item[0].activities['key'].conditional_split #=> Types::ConditionalSplitActivity
    #   resp.data.journeys_response.item[0].activities['key'].conditional_split.condition #=> Types::Condition
    #   resp.data.journeys_response.item[0].activities['key'].conditional_split.condition.conditions #=> Array<SimpleCondition>
    #   resp.data.journeys_response.item[0].activities['key'].conditional_split.condition.conditions[0] #=> Types::SimpleCondition
    #   resp.data.journeys_response.item[0].activities['key'].conditional_split.condition.conditions[0].event_condition #=> Types::EventCondition
    #   resp.data.journeys_response.item[0].activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions #=> Types::EventDimensions
    #   resp.data.journeys_response.item[0].activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.attributes #=> Hash<String, AttributeDimension>
    #   resp.data.journeys_response.item[0].activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.attributes['key'] #=> Types::AttributeDimension
    #   resp.data.journeys_response.item[0].activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.attributes['key'].attribute_type #=> String, one of ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"]
    #   resp.data.journeys_response.item[0].activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.attributes['key'].values #=> Array<String>
    #   resp.data.journeys_response.item[0].activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.attributes['key'].values[0] #=> String
    #   resp.data.journeys_response.item[0].activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.event_type #=> Types::SetDimension
    #   resp.data.journeys_response.item[0].activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.event_type.dimension_type #=> String, one of ["INCLUSIVE", "EXCLUSIVE"]
    #   resp.data.journeys_response.item[0].activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.event_type.values #=> Array<String>
    #   resp.data.journeys_response.item[0].activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.metrics #=> Hash<String, MetricDimension>
    #   resp.data.journeys_response.item[0].activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.metrics['key'] #=> Types::MetricDimension
    #   resp.data.journeys_response.item[0].activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.metrics['key'].comparison_operator #=> String
    #   resp.data.journeys_response.item[0].activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.metrics['key'].value #=> Float
    #   resp.data.journeys_response.item[0].activities['key'].conditional_split.condition.conditions[0].event_condition.message_activity #=> String
    #   resp.data.journeys_response.item[0].activities['key'].conditional_split.condition.conditions[0].segment_condition #=> Types::SegmentCondition
    #   resp.data.journeys_response.item[0].activities['key'].conditional_split.condition.conditions[0].segment_condition.segment_id #=> String
    #   resp.data.journeys_response.item[0].activities['key'].conditional_split.condition.conditions[0].segment_dimensions #=> Types::SegmentDimensions
    #   resp.data.journeys_response.item[0].activities['key'].conditional_split.condition.conditions[0].segment_dimensions.attributes #=> Hash<String, AttributeDimension>
    #   resp.data.journeys_response.item[0].activities['key'].conditional_split.condition.conditions[0].segment_dimensions.behavior #=> Types::SegmentBehaviors
    #   resp.data.journeys_response.item[0].activities['key'].conditional_split.condition.conditions[0].segment_dimensions.behavior.recency #=> Types::RecencyDimension
    #   resp.data.journeys_response.item[0].activities['key'].conditional_split.condition.conditions[0].segment_dimensions.behavior.recency.duration #=> String, one of ["HR_24", "DAY_7", "DAY_14", "DAY_30"]
    #   resp.data.journeys_response.item[0].activities['key'].conditional_split.condition.conditions[0].segment_dimensions.behavior.recency.recency_type #=> String, one of ["ACTIVE", "INACTIVE"]
    #   resp.data.journeys_response.item[0].activities['key'].conditional_split.condition.conditions[0].segment_dimensions.demographic #=> Types::SegmentDemographics
    #   resp.data.journeys_response.item[0].activities['key'].conditional_split.condition.conditions[0].segment_dimensions.demographic.app_version #=> Types::SetDimension
    #   resp.data.journeys_response.item[0].activities['key'].conditional_split.condition.conditions[0].segment_dimensions.demographic.channel #=> Types::SetDimension
    #   resp.data.journeys_response.item[0].activities['key'].conditional_split.condition.conditions[0].segment_dimensions.demographic.device_type #=> Types::SetDimension
    #   resp.data.journeys_response.item[0].activities['key'].conditional_split.condition.conditions[0].segment_dimensions.demographic.make #=> Types::SetDimension
    #   resp.data.journeys_response.item[0].activities['key'].conditional_split.condition.conditions[0].segment_dimensions.demographic.model #=> Types::SetDimension
    #   resp.data.journeys_response.item[0].activities['key'].conditional_split.condition.conditions[0].segment_dimensions.demographic.platform #=> Types::SetDimension
    #   resp.data.journeys_response.item[0].activities['key'].conditional_split.condition.conditions[0].segment_dimensions.location #=> Types::SegmentLocation
    #   resp.data.journeys_response.item[0].activities['key'].conditional_split.condition.conditions[0].segment_dimensions.location.country #=> Types::SetDimension
    #   resp.data.journeys_response.item[0].activities['key'].conditional_split.condition.conditions[0].segment_dimensions.location.gps_point #=> Types::GPSPointDimension
    #   resp.data.journeys_response.item[0].activities['key'].conditional_split.condition.conditions[0].segment_dimensions.location.gps_point.coordinates #=> Types::GPSCoordinates
    #   resp.data.journeys_response.item[0].activities['key'].conditional_split.condition.conditions[0].segment_dimensions.location.gps_point.coordinates.latitude #=> Float
    #   resp.data.journeys_response.item[0].activities['key'].conditional_split.condition.conditions[0].segment_dimensions.location.gps_point.coordinates.longitude #=> Float
    #   resp.data.journeys_response.item[0].activities['key'].conditional_split.condition.conditions[0].segment_dimensions.location.gps_point.range_in_kilometers #=> Float
    #   resp.data.journeys_response.item[0].activities['key'].conditional_split.condition.conditions[0].segment_dimensions.metrics #=> Hash<String, MetricDimension>
    #   resp.data.journeys_response.item[0].activities['key'].conditional_split.condition.conditions[0].segment_dimensions.user_attributes #=> Hash<String, AttributeDimension>
    #   resp.data.journeys_response.item[0].activities['key'].conditional_split.condition.operator #=> String, one of ["ALL", "ANY"]
    #   resp.data.journeys_response.item[0].activities['key'].conditional_split.evaluation_wait_time #=> Types::WaitTime
    #   resp.data.journeys_response.item[0].activities['key'].conditional_split.evaluation_wait_time.wait_for #=> String
    #   resp.data.journeys_response.item[0].activities['key'].conditional_split.evaluation_wait_time.wait_until #=> String
    #   resp.data.journeys_response.item[0].activities['key'].conditional_split.false_activity #=> String
    #   resp.data.journeys_response.item[0].activities['key'].conditional_split.true_activity #=> String
    #   resp.data.journeys_response.item[0].activities['key'].description #=> String
    #   resp.data.journeys_response.item[0].activities['key'].email #=> Types::EmailMessageActivity
    #   resp.data.journeys_response.item[0].activities['key'].email.message_config #=> Types::JourneyEmailMessage
    #   resp.data.journeys_response.item[0].activities['key'].email.message_config.from_address #=> String
    #   resp.data.journeys_response.item[0].activities['key'].email.next_activity #=> String
    #   resp.data.journeys_response.item[0].activities['key'].email.template_name #=> String
    #   resp.data.journeys_response.item[0].activities['key'].email.template_version #=> String
    #   resp.data.journeys_response.item[0].activities['key'].holdout #=> Types::HoldoutActivity
    #   resp.data.journeys_response.item[0].activities['key'].holdout.next_activity #=> String
    #   resp.data.journeys_response.item[0].activities['key'].holdout.percentage #=> Integer
    #   resp.data.journeys_response.item[0].activities['key'].multi_condition #=> Types::MultiConditionalSplitActivity
    #   resp.data.journeys_response.item[0].activities['key'].multi_condition.branches #=> Array<MultiConditionalBranch>
    #   resp.data.journeys_response.item[0].activities['key'].multi_condition.branches[0] #=> Types::MultiConditionalBranch
    #   resp.data.journeys_response.item[0].activities['key'].multi_condition.branches[0].condition #=> Types::SimpleCondition
    #   resp.data.journeys_response.item[0].activities['key'].multi_condition.branches[0].next_activity #=> String
    #   resp.data.journeys_response.item[0].activities['key'].multi_condition.default_activity #=> String
    #   resp.data.journeys_response.item[0].activities['key'].multi_condition.evaluation_wait_time #=> Types::WaitTime
    #   resp.data.journeys_response.item[0].activities['key'].push #=> Types::PushMessageActivity
    #   resp.data.journeys_response.item[0].activities['key'].push.message_config #=> Types::JourneyPushMessage
    #   resp.data.journeys_response.item[0].activities['key'].push.message_config.time_to_live #=> String
    #   resp.data.journeys_response.item[0].activities['key'].push.next_activity #=> String
    #   resp.data.journeys_response.item[0].activities['key'].push.template_name #=> String
    #   resp.data.journeys_response.item[0].activities['key'].push.template_version #=> String
    #   resp.data.journeys_response.item[0].activities['key'].random_split #=> Types::RandomSplitActivity
    #   resp.data.journeys_response.item[0].activities['key'].random_split.branches #=> Array<RandomSplitEntry>
    #   resp.data.journeys_response.item[0].activities['key'].random_split.branches[0] #=> Types::RandomSplitEntry
    #   resp.data.journeys_response.item[0].activities['key'].random_split.branches[0].next_activity #=> String
    #   resp.data.journeys_response.item[0].activities['key'].random_split.branches[0].percentage #=> Integer
    #   resp.data.journeys_response.item[0].activities['key'].sms #=> Types::SMSMessageActivity
    #   resp.data.journeys_response.item[0].activities['key'].sms.message_config #=> Types::JourneySMSMessage
    #   resp.data.journeys_response.item[0].activities['key'].sms.message_config.message_type #=> String, one of ["TRANSACTIONAL", "PROMOTIONAL"]
    #   resp.data.journeys_response.item[0].activities['key'].sms.message_config.origination_number #=> String
    #   resp.data.journeys_response.item[0].activities['key'].sms.message_config.sender_id #=> String
    #   resp.data.journeys_response.item[0].activities['key'].sms.message_config.entity_id #=> String
    #   resp.data.journeys_response.item[0].activities['key'].sms.message_config.template_id #=> String
    #   resp.data.journeys_response.item[0].activities['key'].sms.next_activity #=> String
    #   resp.data.journeys_response.item[0].activities['key'].sms.template_name #=> String
    #   resp.data.journeys_response.item[0].activities['key'].sms.template_version #=> String
    #   resp.data.journeys_response.item[0].activities['key'].wait #=> Types::WaitActivity
    #   resp.data.journeys_response.item[0].activities['key'].wait.next_activity #=> String
    #   resp.data.journeys_response.item[0].activities['key'].wait.wait_time #=> Types::WaitTime
    #   resp.data.journeys_response.item[0].activities['key'].contact_center #=> Types::ContactCenterActivity
    #   resp.data.journeys_response.item[0].activities['key'].contact_center.next_activity #=> String
    #   resp.data.journeys_response.item[0].application_id #=> String
    #   resp.data.journeys_response.item[0].creation_date #=> String
    #   resp.data.journeys_response.item[0].id #=> String
    #   resp.data.journeys_response.item[0].last_modified_date #=> String
    #   resp.data.journeys_response.item[0].limits #=> Types::JourneyLimits
    #   resp.data.journeys_response.item[0].limits.daily_cap #=> Integer
    #   resp.data.journeys_response.item[0].limits.endpoint_reentry_cap #=> Integer
    #   resp.data.journeys_response.item[0].limits.messages_per_second #=> Integer
    #   resp.data.journeys_response.item[0].limits.endpoint_reentry_interval #=> String
    #   resp.data.journeys_response.item[0].local_time #=> Boolean
    #   resp.data.journeys_response.item[0].name #=> String
    #   resp.data.journeys_response.item[0].quiet_time #=> Types::QuietTime
    #   resp.data.journeys_response.item[0].quiet_time.end #=> String
    #   resp.data.journeys_response.item[0].quiet_time.start #=> String
    #   resp.data.journeys_response.item[0].refresh_frequency #=> String
    #   resp.data.journeys_response.item[0].schedule #=> Types::JourneySchedule
    #   resp.data.journeys_response.item[0].schedule.end_time #=> Time
    #   resp.data.journeys_response.item[0].schedule.start_time #=> Time
    #   resp.data.journeys_response.item[0].schedule.timezone #=> String
    #   resp.data.journeys_response.item[0].start_activity #=> String
    #   resp.data.journeys_response.item[0].start_condition #=> Types::StartCondition
    #   resp.data.journeys_response.item[0].start_condition.description #=> String
    #   resp.data.journeys_response.item[0].start_condition.event_start_condition #=> Types::EventStartCondition
    #   resp.data.journeys_response.item[0].start_condition.event_start_condition.event_filter #=> Types::EventFilter
    #   resp.data.journeys_response.item[0].start_condition.event_start_condition.event_filter.dimensions #=> Types::EventDimensions
    #   resp.data.journeys_response.item[0].start_condition.event_start_condition.event_filter.filter_type #=> String, one of ["SYSTEM", "ENDPOINT"]
    #   resp.data.journeys_response.item[0].start_condition.event_start_condition.segment_id #=> String
    #   resp.data.journeys_response.item[0].start_condition.segment_start_condition #=> Types::SegmentCondition
    #   resp.data.journeys_response.item[0].state #=> String, one of ["DRAFT", "ACTIVE", "COMPLETED", "CANCELLED", "CLOSED", "PAUSED"]
    #   resp.data.journeys_response.item[0].tags #=> Hash<String, String>
    #   resp.data.journeys_response.item[0].tags['key'] #=> String
    #   resp.data.journeys_response.item[0].wait_for_quiet_time #=> Boolean
    #   resp.data.journeys_response.item[0].refresh_on_segment_update #=> Boolean
    #   resp.data.journeys_response.item[0].journey_channel_settings #=> Types::JourneyChannelSettings
    #   resp.data.journeys_response.item[0].journey_channel_settings.connect_campaign_arn #=> String
    #   resp.data.journeys_response.item[0].journey_channel_settings.connect_campaign_execution_role_arn #=> String
    #   resp.data.journeys_response.next_token #=> String
    #
    def list_journeys(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListJourneysInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListJourneysInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListJourneys
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::ListJourneys
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListJourneys,
        stubs: @stubs,
        params_class: Params::ListJourneysOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_journeys
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves all the tags (keys and values) that are associated with an application, campaign, message template, or segment.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'ResourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForResourceOutput
    #   resp.data.tags_model #=> Types::TagsModel
    #   resp.data.tags_model.tags #=> Hash<String, String>
    #   resp.data.tags_model.tags['key'] #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
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

    # <p>Retrieves information about all the versions of a specific message template.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTemplateVersionsInput}.
    #
    # @option params [String] :next_token
    #   <p>The  string that specifies which page of results to return in a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    #
    # @option params [String] :page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    #
    # @option params [String] :template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    #
    # @option params [String] :template_type
    #   <p>The type of channel that the message template is designed for. Valid values are: EMAIL, PUSH, SMS, and VOICE.</p>
    #
    # @return [Types::ListTemplateVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_template_versions(
    #     next_token: 'NextToken',
    #     page_size: 'PageSize',
    #     template_name: 'TemplateName', # required
    #     template_type: 'TemplateType' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTemplateVersionsOutput
    #   resp.data.template_versions_response #=> Types::TemplateVersionsResponse
    #   resp.data.template_versions_response.item #=> Array<TemplateVersionResponse>
    #   resp.data.template_versions_response.item[0] #=> Types::TemplateVersionResponse
    #   resp.data.template_versions_response.item[0].creation_date #=> String
    #   resp.data.template_versions_response.item[0].default_substitutions #=> String
    #   resp.data.template_versions_response.item[0].last_modified_date #=> String
    #   resp.data.template_versions_response.item[0].template_description #=> String
    #   resp.data.template_versions_response.item[0].template_name #=> String
    #   resp.data.template_versions_response.item[0].template_type #=> String
    #   resp.data.template_versions_response.item[0].version #=> String
    #   resp.data.template_versions_response.message #=> String
    #   resp.data.template_versions_response.next_token #=> String
    #   resp.data.template_versions_response.request_id #=> String
    #
    def list_template_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTemplateVersionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTemplateVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTemplateVersions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::ListTemplateVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTemplateVersions,
        stubs: @stubs,
        params_class: Params::ListTemplateVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_template_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about all the message templates that are associated with your Amazon Pinpoint account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTemplatesInput}.
    #
    # @option params [String] :next_token
    #   <p>The  string that specifies which page of results to return in a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    #
    # @option params [String] :page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    #
    # @option params [String] :prefix
    #   <p>The substring to match in the names of the message templates to include in the results. If you specify this value, Amazon Pinpoint returns only those templates whose names begin with the value that you specify.</p>
    #
    # @option params [String] :template_type
    #   <p>The type of message template to include in the results. Valid values are: EMAIL, PUSH, SMS, and VOICE. To include all types of templates in the results, don't include this parameter in your request.</p>
    #
    # @return [Types::ListTemplatesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_templates(
    #     next_token: 'NextToken',
    #     page_size: 'PageSize',
    #     prefix: 'Prefix',
    #     template_type: 'TemplateType'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTemplatesOutput
    #   resp.data.templates_response #=> Types::TemplatesResponse
    #   resp.data.templates_response.item #=> Array<TemplateResponse>
    #   resp.data.templates_response.item[0] #=> Types::TemplateResponse
    #   resp.data.templates_response.item[0].arn #=> String
    #   resp.data.templates_response.item[0].creation_date #=> String
    #   resp.data.templates_response.item[0].default_substitutions #=> String
    #   resp.data.templates_response.item[0].last_modified_date #=> String
    #   resp.data.templates_response.item[0].tags #=> Hash<String, String>
    #   resp.data.templates_response.item[0].tags['key'] #=> String
    #   resp.data.templates_response.item[0].template_description #=> String
    #   resp.data.templates_response.item[0].template_name #=> String
    #   resp.data.templates_response.item[0].template_type #=> String, one of ["EMAIL", "SMS", "VOICE", "PUSH", "INAPP"]
    #   resp.data.templates_response.item[0].version #=> String
    #   resp.data.templates_response.next_token #=> String
    #
    def list_templates(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTemplatesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTemplatesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTemplates
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException]),
        data_parser: Parsers::ListTemplates
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTemplates,
        stubs: @stubs,
        params_class: Params::ListTemplatesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_templates
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about a phone number.</p>
    #
    # @param [Hash] params
    #   See {Types::PhoneNumberValidateInput}.
    #
    # @option params [NumberValidateRequest] :number_validate_request
    #   <p>Specifies a phone number to validate and retrieve information about.</p>
    #
    # @return [Types::PhoneNumberValidateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.phone_number_validate(
    #     number_validate_request: {
    #       iso_country_code: 'IsoCountryCode',
    #       phone_number: 'PhoneNumber'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PhoneNumberValidateOutput
    #   resp.data.number_validate_response #=> Types::NumberValidateResponse
    #   resp.data.number_validate_response.carrier #=> String
    #   resp.data.number_validate_response.city #=> String
    #   resp.data.number_validate_response.cleansed_phone_number_e164 #=> String
    #   resp.data.number_validate_response.cleansed_phone_number_national #=> String
    #   resp.data.number_validate_response.country #=> String
    #   resp.data.number_validate_response.country_code_iso2 #=> String
    #   resp.data.number_validate_response.country_code_numeric #=> String
    #   resp.data.number_validate_response.county #=> String
    #   resp.data.number_validate_response.original_country_code_iso2 #=> String
    #   resp.data.number_validate_response.original_phone_number #=> String
    #   resp.data.number_validate_response.phone_type #=> String
    #   resp.data.number_validate_response.phone_type_code #=> Integer
    #   resp.data.number_validate_response.timezone #=> String
    #   resp.data.number_validate_response.zip_code #=> String
    #
    def phone_number_validate(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PhoneNumberValidateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PhoneNumberValidateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PhoneNumberValidate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::PhoneNumberValidate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PhoneNumberValidate,
        stubs: @stubs,
        params_class: Params::PhoneNumberValidateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :phone_number_validate
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new event stream for an application or updates the settings of an existing event stream for an application.</p>
    #
    # @param [Hash] params
    #   See {Types::PutEventStreamInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @option params [WriteEventStream] :write_event_stream
    #   <p>Specifies the Amazon Resource Name (ARN) of an event stream to publish events to and the AWS Identity and Access Management (IAM) role to use when publishing those events.</p>
    #
    # @return [Types::PutEventStreamOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_event_stream(
    #     application_id: 'ApplicationId', # required
    #     write_event_stream: {
    #       destination_stream_arn: 'DestinationStreamArn', # required
    #       role_arn: 'RoleArn' # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutEventStreamOutput
    #   resp.data.event_stream #=> Types::EventStream
    #   resp.data.event_stream.application_id #=> String
    #   resp.data.event_stream.destination_stream_arn #=> String
    #   resp.data.event_stream.external_id #=> String
    #   resp.data.event_stream.last_modified_date #=> String
    #   resp.data.event_stream.last_updated_by #=> String
    #   resp.data.event_stream.role_arn #=> String
    #
    def put_event_stream(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutEventStreamInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutEventStreamInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutEventStream
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::PutEventStream
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutEventStream,
        stubs: @stubs,
        params_class: Params::PutEventStreamOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_event_stream
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new event to record for endpoints, or creates or updates endpoint data that existing events are associated with.</p>
    #
    # @param [Hash] params
    #   See {Types::PutEventsInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @option params [EventsRequest] :events_request
    #   <p>Specifies a batch of events to process.</p>
    #
    # @return [Types::PutEventsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_events(
    #     application_id: 'ApplicationId', # required
    #     events_request: {
    #       batch_item: {
    #         'key' => {
    #           endpoint: {
    #             address: 'Address',
    #             attributes: {
    #               'key' => [
    #                 'member'
    #               ]
    #             },
    #             channel_type: 'PUSH', # accepts ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"]
    #             demographic: {
    #               app_version: 'AppVersion',
    #               locale: 'Locale',
    #               make: 'Make',
    #               model: 'Model',
    #               model_version: 'ModelVersion',
    #               platform: 'Platform',
    #               platform_version: 'PlatformVersion',
    #               timezone: 'Timezone'
    #             },
    #             effective_date: 'EffectiveDate',
    #             endpoint_status: 'EndpointStatus',
    #             location: {
    #               city: 'City',
    #               country: 'Country',
    #               latitude: 1.0,
    #               longitude: 1.0,
    #               postal_code: 'PostalCode',
    #               region: 'Region'
    #             },
    #             metrics: {
    #               'key' => 1.0
    #             },
    #             opt_out: 'OptOut',
    #             request_id: 'RequestId',
    #             user: {
    #               user_id: 'UserId'
    #             }
    #           }, # required
    #           events: {
    #             'key' => {
    #               app_package_name: 'AppPackageName',
    #               app_title: 'AppTitle',
    #               app_version_code: 'AppVersionCode',
    #               attributes: {
    #                 'key' => 'value'
    #               },
    #               client_sdk_version: 'ClientSdkVersion',
    #               event_type: 'EventType', # required
    #               sdk_name: 'SdkName',
    #               session: {
    #                 duration: 1,
    #                 id: 'Id', # required
    #                 start_timestamp: 'StartTimestamp', # required
    #                 stop_timestamp: 'StopTimestamp'
    #               },
    #               timestamp: 'Timestamp' # required
    #             }
    #           } # required
    #         }
    #       } # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutEventsOutput
    #   resp.data.events_response #=> Types::EventsResponse
    #   resp.data.events_response.results #=> Hash<String, ItemResponse>
    #   resp.data.events_response.results['key'] #=> Types::ItemResponse
    #   resp.data.events_response.results['key'].endpoint_item_response #=> Types::EndpointItemResponse
    #   resp.data.events_response.results['key'].endpoint_item_response.message #=> String
    #   resp.data.events_response.results['key'].endpoint_item_response.status_code #=> Integer
    #   resp.data.events_response.results['key'].events_item_response #=> Hash<String, EventItemResponse>
    #   resp.data.events_response.results['key'].events_item_response['key'] #=> Types::EventItemResponse
    #   resp.data.events_response.results['key'].events_item_response['key'].message #=> String
    #   resp.data.events_response.results['key'].events_item_response['key'].status_code #=> Integer
    #
    def put_events(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutEventsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutEventsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutEvents
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::PutEvents
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutEvents,
        stubs: @stubs,
        params_class: Params::PutEventsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_events
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes one or more attributes, of the same attribute type, from all the endpoints that are associated with an application.</p>
    #
    # @param [Hash] params
    #   See {Types::RemoveAttributesInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @option params [String] :attribute_type
    #   <p>The type of attribute or attributes to remove. Valid values are:</p> <ul><li><p>endpoint-custom-attributes - Custom attributes that describe endpoints, such as the date when an associated user opted in or out of receiving communications from you through a specific type of channel.</p></li> <li><p>endpoint-metric-attributes - Custom metrics that your app reports to Amazon Pinpoint for endpoints, such as the number of app sessions or the number of items left in a cart.</p></li> <li><p>endpoint-user-attributes - Custom attributes that describe users, such as first name, last name, and age.</p></li></ul>
    #
    # @option params [UpdateAttributesRequest] :update_attributes_request
    #   <p>Specifies one or more attributes to remove from all the endpoints that are associated with an application.</p>
    #
    # @return [Types::RemoveAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_attributes(
    #     application_id: 'ApplicationId', # required
    #     attribute_type: 'AttributeType', # required
    #     update_attributes_request: {
    #       blacklist: [
    #         'member'
    #       ]
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RemoveAttributesOutput
    #   resp.data.attributes_resource #=> Types::AttributesResource
    #   resp.data.attributes_resource.application_id #=> String
    #   resp.data.attributes_resource.attribute_type #=> String
    #   resp.data.attributes_resource.attributes #=> Array<String>
    #   resp.data.attributes_resource.attributes[0] #=> String
    #
    def remove_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RemoveAttributesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RemoveAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RemoveAttributes
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::RemoveAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RemoveAttributes,
        stubs: @stubs,
        params_class: Params::RemoveAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :remove_attributes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates and sends a direct message.</p>
    #
    # @param [Hash] params
    #   See {Types::SendMessagesInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @option params [MessageRequest] :message_request
    #   <p>Specifies the configuration and other settings for a message.</p>
    #
    # @return [Types::SendMessagesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_messages(
    #     application_id: 'ApplicationId', # required
    #     message_request: {
    #       addresses: {
    #         'key' => {
    #           body_override: 'BodyOverride',
    #           channel_type: 'PUSH', # accepts ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"]
    #           context: {
    #             'key' => 'value'
    #           },
    #           raw_content: 'RawContent',
    #           substitutions: {
    #             'key' => [
    #               'member'
    #             ]
    #           },
    #           title_override: 'TitleOverride'
    #         }
    #       },
    #       endpoints: {
    #         'key' => {
    #           body_override: 'BodyOverride',
    #           raw_content: 'RawContent',
    #           title_override: 'TitleOverride'
    #         }
    #       },
    #       message_configuration: {
    #         adm_message: {
    #           action: 'OPEN_APP', # accepts ["OPEN_APP", "DEEP_LINK", "URL"]
    #           body: 'Body',
    #           consolidation_key: 'ConsolidationKey',
    #           expires_after: 'ExpiresAfter',
    #           icon_reference: 'IconReference',
    #           image_icon_url: 'ImageIconUrl',
    #           image_url: 'ImageUrl',
    #           md5: 'MD5',
    #           raw_content: 'RawContent',
    #           silent_push: false,
    #           small_image_icon_url: 'SmallImageIconUrl',
    #           sound: 'Sound',
    #           title: 'Title',
    #           url: 'Url'
    #         },
    #         apns_message: {
    #           apns_push_type: 'APNSPushType',
    #           action: 'OPEN_APP', # accepts ["OPEN_APP", "DEEP_LINK", "URL"]
    #           badge: 1,
    #           body: 'Body',
    #           category: 'Category',
    #           collapse_id: 'CollapseId',
    #           media_url: 'MediaUrl',
    #           preferred_authentication_method: 'PreferredAuthenticationMethod',
    #           priority: 'Priority',
    #           raw_content: 'RawContent',
    #           silent_push: false,
    #           sound: 'Sound',
    #           thread_id: 'ThreadId',
    #           time_to_live: 1,
    #           title: 'Title',
    #           url: 'Url'
    #         },
    #         baidu_message: {
    #           action: 'OPEN_APP', # accepts ["OPEN_APP", "DEEP_LINK", "URL"]
    #           body: 'Body',
    #           icon_reference: 'IconReference',
    #           image_icon_url: 'ImageIconUrl',
    #           image_url: 'ImageUrl',
    #           raw_content: 'RawContent',
    #           silent_push: false,
    #           small_image_icon_url: 'SmallImageIconUrl',
    #           sound: 'Sound',
    #           time_to_live: 1,
    #           title: 'Title',
    #           url: 'Url'
    #         },
    #         default_message: {
    #           body: 'Body',
    #         },
    #         default_push_notification_message: {
    #           action: 'OPEN_APP', # accepts ["OPEN_APP", "DEEP_LINK", "URL"]
    #           body: 'Body',
    #           silent_push: false,
    #           title: 'Title',
    #           url: 'Url'
    #         },
    #         email_message: {
    #           body: 'Body',
    #           feedback_forwarding_address: 'FeedbackForwardingAddress',
    #           from_address: 'FromAddress',
    #           raw_email: {
    #             data: 'Data'
    #           },
    #           simple_email: {
    #             html_part: {
    #               charset: 'Charset',
    #               data: 'Data'
    #             },
    #           },
    #         },
    #         gcm_message: {
    #           action: 'OPEN_APP', # accepts ["OPEN_APP", "DEEP_LINK", "URL"]
    #           body: 'Body',
    #           collapse_key: 'CollapseKey',
    #           icon_reference: 'IconReference',
    #           image_icon_url: 'ImageIconUrl',
    #           image_url: 'ImageUrl',
    #           priority: 'Priority',
    #           raw_content: 'RawContent',
    #           restricted_package_name: 'RestrictedPackageName',
    #           silent_push: false,
    #           small_image_icon_url: 'SmallImageIconUrl',
    #           sound: 'Sound',
    #           time_to_live: 1,
    #           title: 'Title',
    #           url: 'Url'
    #         },
    #         sms_message: {
    #           body: 'Body',
    #           keyword: 'Keyword',
    #           media_url: 'MediaUrl',
    #           message_type: 'TRANSACTIONAL', # accepts ["TRANSACTIONAL", "PROMOTIONAL"]
    #           origination_number: 'OriginationNumber',
    #           sender_id: 'SenderId',
    #           entity_id: 'EntityId',
    #           template_id: 'TemplateId'
    #         },
    #         voice_message: {
    #           body: 'Body',
    #           language_code: 'LanguageCode',
    #           origination_number: 'OriginationNumber',
    #           voice_id: 'VoiceId'
    #         }
    #       }, # required
    #       template_configuration: {
    #         email_template: {
    #           name: 'Name',
    #           version: 'Version'
    #         },
    #       },
    #       trace_id: 'TraceId'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SendMessagesOutput
    #   resp.data.message_response #=> Types::MessageResponse
    #   resp.data.message_response.application_id #=> String
    #   resp.data.message_response.endpoint_result #=> Hash<String, EndpointMessageResult>
    #   resp.data.message_response.endpoint_result['key'] #=> Types::EndpointMessageResult
    #   resp.data.message_response.endpoint_result['key'].address #=> String
    #   resp.data.message_response.endpoint_result['key'].delivery_status #=> String, one of ["SUCCESSFUL", "THROTTLED", "TEMPORARY_FAILURE", "PERMANENT_FAILURE", "UNKNOWN_FAILURE", "OPT_OUT", "DUPLICATE"]
    #   resp.data.message_response.endpoint_result['key'].message_id #=> String
    #   resp.data.message_response.endpoint_result['key'].status_code #=> Integer
    #   resp.data.message_response.endpoint_result['key'].status_message #=> String
    #   resp.data.message_response.endpoint_result['key'].updated_token #=> String
    #   resp.data.message_response.request_id #=> String
    #   resp.data.message_response.result #=> Hash<String, MessageResult>
    #   resp.data.message_response.result['key'] #=> Types::MessageResult
    #   resp.data.message_response.result['key'].delivery_status #=> String, one of ["SUCCESSFUL", "THROTTLED", "TEMPORARY_FAILURE", "PERMANENT_FAILURE", "UNKNOWN_FAILURE", "OPT_OUT", "DUPLICATE"]
    #   resp.data.message_response.result['key'].message_id #=> String
    #   resp.data.message_response.result['key'].status_code #=> Integer
    #   resp.data.message_response.result['key'].status_message #=> String
    #   resp.data.message_response.result['key'].updated_token #=> String
    #
    def send_messages(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SendMessagesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SendMessagesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SendMessages
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::SendMessages
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SendMessages,
        stubs: @stubs,
        params_class: Params::SendMessagesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :send_messages
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Send an OTP message</p>
    #
    # @param [Hash] params
    #   See {Types::SendOTPMessageInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique ID of your Amazon Pinpoint application.</p>
    #
    # @option params [SendOTPMessageRequestParameters] :send_otp_message_request_parameters
    #   <p>Send OTP message request parameters.</p>
    #
    # @return [Types::SendOTPMessageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_otp_message(
    #     application_id: 'ApplicationId', # required
    #     send_otp_message_request_parameters: {
    #       allowed_attempts: 1,
    #       brand_name: 'BrandName', # required
    #       channel: 'Channel', # required
    #       code_length: 1,
    #       destination_identity: 'DestinationIdentity', # required
    #       entity_id: 'EntityId',
    #       language: 'Language',
    #       origination_identity: 'OriginationIdentity', # required
    #       reference_id: 'ReferenceId', # required
    #       template_id: 'TemplateId',
    #       validity_period: 1
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SendOTPMessageOutput
    #   resp.data.message_response #=> Types::MessageResponse
    #   resp.data.message_response.application_id #=> String
    #   resp.data.message_response.endpoint_result #=> Hash<String, EndpointMessageResult>
    #   resp.data.message_response.endpoint_result['key'] #=> Types::EndpointMessageResult
    #   resp.data.message_response.endpoint_result['key'].address #=> String
    #   resp.data.message_response.endpoint_result['key'].delivery_status #=> String, one of ["SUCCESSFUL", "THROTTLED", "TEMPORARY_FAILURE", "PERMANENT_FAILURE", "UNKNOWN_FAILURE", "OPT_OUT", "DUPLICATE"]
    #   resp.data.message_response.endpoint_result['key'].message_id #=> String
    #   resp.data.message_response.endpoint_result['key'].status_code #=> Integer
    #   resp.data.message_response.endpoint_result['key'].status_message #=> String
    #   resp.data.message_response.endpoint_result['key'].updated_token #=> String
    #   resp.data.message_response.request_id #=> String
    #   resp.data.message_response.result #=> Hash<String, MessageResult>
    #   resp.data.message_response.result['key'] #=> Types::MessageResult
    #   resp.data.message_response.result['key'].delivery_status #=> String, one of ["SUCCESSFUL", "THROTTLED", "TEMPORARY_FAILURE", "PERMANENT_FAILURE", "UNKNOWN_FAILURE", "OPT_OUT", "DUPLICATE"]
    #   resp.data.message_response.result['key'].message_id #=> String
    #   resp.data.message_response.result['key'].status_code #=> Integer
    #   resp.data.message_response.result['key'].status_message #=> String
    #   resp.data.message_response.result['key'].updated_token #=> String
    #
    def send_otp_message(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SendOTPMessageInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SendOTPMessageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SendOTPMessage
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::SendOTPMessage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SendOTPMessage,
        stubs: @stubs,
        params_class: Params::SendOTPMessageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :send_otp_message
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates and sends a message to a list of users.</p>
    #
    # @param [Hash] params
    #   See {Types::SendUsersMessagesInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @option params [SendUsersMessageRequest] :send_users_message_request
    #   <p>Specifies the configuration and other settings for a message to send to all the endpoints that are associated with a list of users.</p>
    #
    # @return [Types::SendUsersMessagesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_users_messages(
    #     application_id: 'ApplicationId', # required
    #     send_users_message_request: {
    #       context: {
    #         'key' => 'value'
    #       },
    #       message_configuration: {
    #         adm_message: {
    #           action: 'OPEN_APP', # accepts ["OPEN_APP", "DEEP_LINK", "URL"]
    #           body: 'Body',
    #           consolidation_key: 'ConsolidationKey',
    #           expires_after: 'ExpiresAfter',
    #           icon_reference: 'IconReference',
    #           image_icon_url: 'ImageIconUrl',
    #           image_url: 'ImageUrl',
    #           md5: 'MD5',
    #           raw_content: 'RawContent',
    #           silent_push: false,
    #           small_image_icon_url: 'SmallImageIconUrl',
    #           sound: 'Sound',
    #           substitutions: {
    #             'key' => [
    #               'member'
    #             ]
    #           },
    #           title: 'Title',
    #           url: 'Url'
    #         },
    #         apns_message: {
    #           apns_push_type: 'APNSPushType',
    #           action: 'OPEN_APP', # accepts ["OPEN_APP", "DEEP_LINK", "URL"]
    #           badge: 1,
    #           body: 'Body',
    #           category: 'Category',
    #           collapse_id: 'CollapseId',
    #           media_url: 'MediaUrl',
    #           preferred_authentication_method: 'PreferredAuthenticationMethod',
    #           priority: 'Priority',
    #           raw_content: 'RawContent',
    #           silent_push: false,
    #           sound: 'Sound',
    #           thread_id: 'ThreadId',
    #           time_to_live: 1,
    #           title: 'Title',
    #           url: 'Url'
    #         },
    #         baidu_message: {
    #           action: 'OPEN_APP', # accepts ["OPEN_APP", "DEEP_LINK", "URL"]
    #           body: 'Body',
    #           icon_reference: 'IconReference',
    #           image_icon_url: 'ImageIconUrl',
    #           image_url: 'ImageUrl',
    #           raw_content: 'RawContent',
    #           silent_push: false,
    #           small_image_icon_url: 'SmallImageIconUrl',
    #           sound: 'Sound',
    #           time_to_live: 1,
    #           title: 'Title',
    #           url: 'Url'
    #         },
    #         default_message: {
    #           body: 'Body',
    #         },
    #         default_push_notification_message: {
    #           action: 'OPEN_APP', # accepts ["OPEN_APP", "DEEP_LINK", "URL"]
    #           body: 'Body',
    #           silent_push: false,
    #           title: 'Title',
    #           url: 'Url'
    #         },
    #         email_message: {
    #           body: 'Body',
    #           feedback_forwarding_address: 'FeedbackForwardingAddress',
    #           from_address: 'FromAddress',
    #           raw_email: {
    #             data: 'Data'
    #           },
    #           simple_email: {
    #             html_part: {
    #               charset: 'Charset',
    #               data: 'Data'
    #             },
    #           },
    #         },
    #         gcm_message: {
    #           action: 'OPEN_APP', # accepts ["OPEN_APP", "DEEP_LINK", "URL"]
    #           body: 'Body',
    #           collapse_key: 'CollapseKey',
    #           icon_reference: 'IconReference',
    #           image_icon_url: 'ImageIconUrl',
    #           image_url: 'ImageUrl',
    #           priority: 'Priority',
    #           raw_content: 'RawContent',
    #           restricted_package_name: 'RestrictedPackageName',
    #           silent_push: false,
    #           small_image_icon_url: 'SmallImageIconUrl',
    #           sound: 'Sound',
    #           time_to_live: 1,
    #           title: 'Title',
    #           url: 'Url'
    #         },
    #         sms_message: {
    #           body: 'Body',
    #           keyword: 'Keyword',
    #           media_url: 'MediaUrl',
    #           message_type: 'TRANSACTIONAL', # accepts ["TRANSACTIONAL", "PROMOTIONAL"]
    #           origination_number: 'OriginationNumber',
    #           sender_id: 'SenderId',
    #           entity_id: 'EntityId',
    #           template_id: 'TemplateId'
    #         },
    #         voice_message: {
    #           body: 'Body',
    #           language_code: 'LanguageCode',
    #           origination_number: 'OriginationNumber',
    #           voice_id: 'VoiceId'
    #         }
    #       }, # required
    #       template_configuration: {
    #         email_template: {
    #           name: 'Name',
    #           version: 'Version'
    #         },
    #       },
    #       trace_id: 'TraceId',
    #       users: {
    #         'key' => {
    #           body_override: 'BodyOverride',
    #           raw_content: 'RawContent',
    #           title_override: 'TitleOverride'
    #         }
    #       } # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SendUsersMessagesOutput
    #   resp.data.send_users_message_response #=> Types::SendUsersMessageResponse
    #   resp.data.send_users_message_response.application_id #=> String
    #   resp.data.send_users_message_response.request_id #=> String
    #   resp.data.send_users_message_response.result #=> Hash<String, Hash<String, EndpointMessageResult>>
    #   resp.data.send_users_message_response.result['key'] #=> Hash<String, EndpointMessageResult>
    #   resp.data.send_users_message_response.result['key']['key'] #=> Types::EndpointMessageResult
    #   resp.data.send_users_message_response.result['key']['key'].address #=> String
    #   resp.data.send_users_message_response.result['key']['key'].delivery_status #=> String, one of ["SUCCESSFUL", "THROTTLED", "TEMPORARY_FAILURE", "PERMANENT_FAILURE", "UNKNOWN_FAILURE", "OPT_OUT", "DUPLICATE"]
    #   resp.data.send_users_message_response.result['key']['key'].message_id #=> String
    #   resp.data.send_users_message_response.result['key']['key'].status_code #=> Integer
    #   resp.data.send_users_message_response.result['key']['key'].status_message #=> String
    #   resp.data.send_users_message_response.result['key']['key'].updated_token #=> String
    #
    def send_users_messages(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SendUsersMessagesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SendUsersMessagesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SendUsersMessages
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::SendUsersMessages
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SendUsersMessages,
        stubs: @stubs,
        params_class: Params::SendUsersMessagesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :send_users_messages
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds one or more tags (keys and values) to an application, campaign, message template, or segment.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    # @option params [TagsModel] :tags_model
    #   <p>Specifies the tags (keys and values) for an application, campaign, message template, or segment.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'ResourceArn', # required
    #     tags_model: {
    #       tags: {
    #         'key' => 'value'
    #       } # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: []),
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

    # <p>Removes one or more tags (keys and values) from an application, campaign, message template, or segment.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The key of the tag to remove from the resource. To remove multiple tags, append the tagKeys parameter and argument for each additional tag to remove, separated by an ampersand (&amp;).</p>
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
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: []),
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

    # <p>Enables the ADM channel for an application or updates the status and settings of the ADM channel for an application.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateAdmChannelInput}.
    #
    # @option params [ADMChannelRequest] :adm_channel_request
    #   <p>Specifies the status and settings of the ADM (Amazon Device Messaging) channel for an application.</p>
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @return [Types::UpdateAdmChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_adm_channel(
    #     adm_channel_request: {
    #       client_id: 'ClientId', # required
    #       client_secret: 'ClientSecret', # required
    #       enabled: false
    #     }, # required
    #     application_id: 'ApplicationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAdmChannelOutput
    #   resp.data.adm_channel_response #=> Types::ADMChannelResponse
    #   resp.data.adm_channel_response.application_id #=> String
    #   resp.data.adm_channel_response.creation_date #=> String
    #   resp.data.adm_channel_response.enabled #=> Boolean
    #   resp.data.adm_channel_response.has_credential #=> Boolean
    #   resp.data.adm_channel_response.id #=> String
    #   resp.data.adm_channel_response.is_archived #=> Boolean
    #   resp.data.adm_channel_response.last_modified_by #=> String
    #   resp.data.adm_channel_response.last_modified_date #=> String
    #   resp.data.adm_channel_response.platform #=> String
    #   resp.data.adm_channel_response.version #=> Integer
    #
    def update_adm_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAdmChannelInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAdmChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAdmChannel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::UpdateAdmChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateAdmChannel,
        stubs: @stubs,
        params_class: Params::UpdateAdmChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_adm_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Enables the APNs channel for an application or updates the status and settings of the APNs channel for an application.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateApnsChannelInput}.
    #
    # @option params [APNSChannelRequest] :apns_channel_request
    #   <p>Specifies the status and settings of the APNs (Apple Push Notification service) channel for an application.</p>
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @return [Types::UpdateApnsChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_apns_channel(
    #     apns_channel_request: {
    #       bundle_id: 'BundleId',
    #       certificate: 'Certificate',
    #       default_authentication_method: 'DefaultAuthenticationMethod',
    #       enabled: false,
    #       private_key: 'PrivateKey',
    #       team_id: 'TeamId',
    #       token_key: 'TokenKey',
    #       token_key_id: 'TokenKeyId'
    #     }, # required
    #     application_id: 'ApplicationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateApnsChannelOutput
    #   resp.data.apns_channel_response #=> Types::APNSChannelResponse
    #   resp.data.apns_channel_response.application_id #=> String
    #   resp.data.apns_channel_response.creation_date #=> String
    #   resp.data.apns_channel_response.default_authentication_method #=> String
    #   resp.data.apns_channel_response.enabled #=> Boolean
    #   resp.data.apns_channel_response.has_credential #=> Boolean
    #   resp.data.apns_channel_response.has_token_key #=> Boolean
    #   resp.data.apns_channel_response.id #=> String
    #   resp.data.apns_channel_response.is_archived #=> Boolean
    #   resp.data.apns_channel_response.last_modified_by #=> String
    #   resp.data.apns_channel_response.last_modified_date #=> String
    #   resp.data.apns_channel_response.platform #=> String
    #   resp.data.apns_channel_response.version #=> Integer
    #
    def update_apns_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateApnsChannelInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateApnsChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateApnsChannel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::UpdateApnsChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateApnsChannel,
        stubs: @stubs,
        params_class: Params::UpdateApnsChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_apns_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Enables the APNs sandbox channel for an application or updates the status and settings of the APNs sandbox channel for an application.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateApnsSandboxChannelInput}.
    #
    # @option params [APNSSandboxChannelRequest] :apns_sandbox_channel_request
    #   <p>Specifies the status and settings of the APNs (Apple Push Notification service) sandbox channel for an application.</p>
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @return [Types::UpdateApnsSandboxChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_apns_sandbox_channel(
    #     apns_sandbox_channel_request: {
    #       bundle_id: 'BundleId',
    #       certificate: 'Certificate',
    #       default_authentication_method: 'DefaultAuthenticationMethod',
    #       enabled: false,
    #       private_key: 'PrivateKey',
    #       team_id: 'TeamId',
    #       token_key: 'TokenKey',
    #       token_key_id: 'TokenKeyId'
    #     }, # required
    #     application_id: 'ApplicationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateApnsSandboxChannelOutput
    #   resp.data.apns_sandbox_channel_response #=> Types::APNSSandboxChannelResponse
    #   resp.data.apns_sandbox_channel_response.application_id #=> String
    #   resp.data.apns_sandbox_channel_response.creation_date #=> String
    #   resp.data.apns_sandbox_channel_response.default_authentication_method #=> String
    #   resp.data.apns_sandbox_channel_response.enabled #=> Boolean
    #   resp.data.apns_sandbox_channel_response.has_credential #=> Boolean
    #   resp.data.apns_sandbox_channel_response.has_token_key #=> Boolean
    #   resp.data.apns_sandbox_channel_response.id #=> String
    #   resp.data.apns_sandbox_channel_response.is_archived #=> Boolean
    #   resp.data.apns_sandbox_channel_response.last_modified_by #=> String
    #   resp.data.apns_sandbox_channel_response.last_modified_date #=> String
    #   resp.data.apns_sandbox_channel_response.platform #=> String
    #   resp.data.apns_sandbox_channel_response.version #=> Integer
    #
    def update_apns_sandbox_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateApnsSandboxChannelInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateApnsSandboxChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateApnsSandboxChannel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::UpdateApnsSandboxChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateApnsSandboxChannel,
        stubs: @stubs,
        params_class: Params::UpdateApnsSandboxChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_apns_sandbox_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Enables the APNs VoIP channel for an application or updates the status and settings of the APNs VoIP channel for an application.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateApnsVoipChannelInput}.
    #
    # @option params [APNSVoipChannelRequest] :apns_voip_channel_request
    #   <p>Specifies the status and settings of the APNs (Apple Push Notification service) VoIP channel for an application.</p>
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @return [Types::UpdateApnsVoipChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_apns_voip_channel(
    #     apns_voip_channel_request: {
    #       bundle_id: 'BundleId',
    #       certificate: 'Certificate',
    #       default_authentication_method: 'DefaultAuthenticationMethod',
    #       enabled: false,
    #       private_key: 'PrivateKey',
    #       team_id: 'TeamId',
    #       token_key: 'TokenKey',
    #       token_key_id: 'TokenKeyId'
    #     }, # required
    #     application_id: 'ApplicationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateApnsVoipChannelOutput
    #   resp.data.apns_voip_channel_response #=> Types::APNSVoipChannelResponse
    #   resp.data.apns_voip_channel_response.application_id #=> String
    #   resp.data.apns_voip_channel_response.creation_date #=> String
    #   resp.data.apns_voip_channel_response.default_authentication_method #=> String
    #   resp.data.apns_voip_channel_response.enabled #=> Boolean
    #   resp.data.apns_voip_channel_response.has_credential #=> Boolean
    #   resp.data.apns_voip_channel_response.has_token_key #=> Boolean
    #   resp.data.apns_voip_channel_response.id #=> String
    #   resp.data.apns_voip_channel_response.is_archived #=> Boolean
    #   resp.data.apns_voip_channel_response.last_modified_by #=> String
    #   resp.data.apns_voip_channel_response.last_modified_date #=> String
    #   resp.data.apns_voip_channel_response.platform #=> String
    #   resp.data.apns_voip_channel_response.version #=> Integer
    #
    def update_apns_voip_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateApnsVoipChannelInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateApnsVoipChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateApnsVoipChannel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::UpdateApnsVoipChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateApnsVoipChannel,
        stubs: @stubs,
        params_class: Params::UpdateApnsVoipChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_apns_voip_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Enables the APNs VoIP sandbox channel for an application or updates the status and settings of the APNs VoIP sandbox channel for an application.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateApnsVoipSandboxChannelInput}.
    #
    # @option params [APNSVoipSandboxChannelRequest] :apns_voip_sandbox_channel_request
    #   <p>Specifies the status and settings of the APNs (Apple Push Notification service) VoIP sandbox channel for an application.</p>
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @return [Types::UpdateApnsVoipSandboxChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_apns_voip_sandbox_channel(
    #     apns_voip_sandbox_channel_request: {
    #       bundle_id: 'BundleId',
    #       certificate: 'Certificate',
    #       default_authentication_method: 'DefaultAuthenticationMethod',
    #       enabled: false,
    #       private_key: 'PrivateKey',
    #       team_id: 'TeamId',
    #       token_key: 'TokenKey',
    #       token_key_id: 'TokenKeyId'
    #     }, # required
    #     application_id: 'ApplicationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateApnsVoipSandboxChannelOutput
    #   resp.data.apns_voip_sandbox_channel_response #=> Types::APNSVoipSandboxChannelResponse
    #   resp.data.apns_voip_sandbox_channel_response.application_id #=> String
    #   resp.data.apns_voip_sandbox_channel_response.creation_date #=> String
    #   resp.data.apns_voip_sandbox_channel_response.default_authentication_method #=> String
    #   resp.data.apns_voip_sandbox_channel_response.enabled #=> Boolean
    #   resp.data.apns_voip_sandbox_channel_response.has_credential #=> Boolean
    #   resp.data.apns_voip_sandbox_channel_response.has_token_key #=> Boolean
    #   resp.data.apns_voip_sandbox_channel_response.id #=> String
    #   resp.data.apns_voip_sandbox_channel_response.is_archived #=> Boolean
    #   resp.data.apns_voip_sandbox_channel_response.last_modified_by #=> String
    #   resp.data.apns_voip_sandbox_channel_response.last_modified_date #=> String
    #   resp.data.apns_voip_sandbox_channel_response.platform #=> String
    #   resp.data.apns_voip_sandbox_channel_response.version #=> Integer
    #
    def update_apns_voip_sandbox_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateApnsVoipSandboxChannelInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateApnsVoipSandboxChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateApnsVoipSandboxChannel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::UpdateApnsVoipSandboxChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateApnsVoipSandboxChannel,
        stubs: @stubs,
        params_class: Params::UpdateApnsVoipSandboxChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_apns_voip_sandbox_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the settings for an application.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateApplicationSettingsInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @option params [WriteApplicationSettingsRequest] :write_application_settings_request
    #   <p>Specifies the default settings for an application.</p>
    #
    # @return [Types::UpdateApplicationSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_application_settings(
    #     application_id: 'ApplicationId', # required
    #     write_application_settings_request: {
    #       campaign_hook: {
    #         lambda_function_name: 'LambdaFunctionName',
    #         mode: 'DELIVERY', # accepts ["DELIVERY", "FILTER"]
    #         web_url: 'WebUrl'
    #       },
    #       cloud_watch_metrics_enabled: false,
    #       event_tagging_enabled: false,
    #       limits: {
    #         daily: 1,
    #         maximum_duration: 1,
    #         messages_per_second: 1,
    #         total: 1,
    #         session: 1
    #       },
    #       quiet_time: {
    #         end: 'End',
    #         start: 'Start'
    #       }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateApplicationSettingsOutput
    #   resp.data.application_settings_resource #=> Types::ApplicationSettingsResource
    #   resp.data.application_settings_resource.application_id #=> String
    #   resp.data.application_settings_resource.campaign_hook #=> Types::CampaignHook
    #   resp.data.application_settings_resource.campaign_hook.lambda_function_name #=> String
    #   resp.data.application_settings_resource.campaign_hook.mode #=> String, one of ["DELIVERY", "FILTER"]
    #   resp.data.application_settings_resource.campaign_hook.web_url #=> String
    #   resp.data.application_settings_resource.last_modified_date #=> String
    #   resp.data.application_settings_resource.limits #=> Types::CampaignLimits
    #   resp.data.application_settings_resource.limits.daily #=> Integer
    #   resp.data.application_settings_resource.limits.maximum_duration #=> Integer
    #   resp.data.application_settings_resource.limits.messages_per_second #=> Integer
    #   resp.data.application_settings_resource.limits.total #=> Integer
    #   resp.data.application_settings_resource.limits.session #=> Integer
    #   resp.data.application_settings_resource.quiet_time #=> Types::QuietTime
    #   resp.data.application_settings_resource.quiet_time.end #=> String
    #   resp.data.application_settings_resource.quiet_time.start #=> String
    #
    def update_application_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateApplicationSettingsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateApplicationSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateApplicationSettings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::UpdateApplicationSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateApplicationSettings,
        stubs: @stubs,
        params_class: Params::UpdateApplicationSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_application_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Enables the Baidu channel for an application or updates the status and settings of the Baidu channel for an application.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateBaiduChannelInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @option params [BaiduChannelRequest] :baidu_channel_request
    #   <p>Specifies the status and settings of the Baidu (Baidu Cloud Push) channel for an application.</p>
    #
    # @return [Types::UpdateBaiduChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_baidu_channel(
    #     application_id: 'ApplicationId', # required
    #     baidu_channel_request: {
    #       api_key: 'ApiKey', # required
    #       enabled: false,
    #       secret_key: 'SecretKey' # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateBaiduChannelOutput
    #   resp.data.baidu_channel_response #=> Types::BaiduChannelResponse
    #   resp.data.baidu_channel_response.application_id #=> String
    #   resp.data.baidu_channel_response.creation_date #=> String
    #   resp.data.baidu_channel_response.credential #=> String
    #   resp.data.baidu_channel_response.enabled #=> Boolean
    #   resp.data.baidu_channel_response.has_credential #=> Boolean
    #   resp.data.baidu_channel_response.id #=> String
    #   resp.data.baidu_channel_response.is_archived #=> Boolean
    #   resp.data.baidu_channel_response.last_modified_by #=> String
    #   resp.data.baidu_channel_response.last_modified_date #=> String
    #   resp.data.baidu_channel_response.platform #=> String
    #   resp.data.baidu_channel_response.version #=> Integer
    #
    def update_baidu_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateBaiduChannelInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateBaiduChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateBaiduChannel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::UpdateBaiduChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateBaiduChannel,
        stubs: @stubs,
        params_class: Params::UpdateBaiduChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_baidu_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the configuration and other settings for a campaign.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateCampaignInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @option params [String] :campaign_id
    #   <p>The unique identifier for the campaign.</p>
    #
    # @option params [WriteCampaignRequest] :write_campaign_request
    #   <p>Specifies the configuration and other settings for a campaign.</p>
    #
    # @return [Types::UpdateCampaignOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_campaign(
    #     application_id: 'ApplicationId', # required
    #     campaign_id: 'CampaignId', # required
    #     write_campaign_request: {
    #       additional_treatments: [
    #         {
    #           custom_delivery_configuration: {
    #             delivery_uri: 'DeliveryUri', # required
    #             endpoint_types: [
    #               'PUSH' # accepts ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"]
    #             ]
    #           },
    #           message_configuration: {
    #             adm_message: {
    #               action: 'OPEN_APP', # accepts ["OPEN_APP", "DEEP_LINK", "URL"]
    #               body: 'Body',
    #               image_icon_url: 'ImageIconUrl',
    #               image_small_icon_url: 'ImageSmallIconUrl',
    #               image_url: 'ImageUrl',
    #               json_body: 'JsonBody',
    #               media_url: 'MediaUrl',
    #               raw_content: 'RawContent',
    #               silent_push: false,
    #               time_to_live: 1,
    #               title: 'Title',
    #               url: 'Url'
    #             },
    #             custom_message: {
    #               data: 'Data'
    #             },
    #             email_message: {
    #               body: 'Body',
    #               from_address: 'FromAddress',
    #               html_body: 'HtmlBody',
    #               title: 'Title'
    #             },
    #             sms_message: {
    #               body: 'Body',
    #               message_type: 'TRANSACTIONAL', # accepts ["TRANSACTIONAL", "PROMOTIONAL"]
    #               origination_number: 'OriginationNumber',
    #               sender_id: 'SenderId',
    #               entity_id: 'EntityId',
    #               template_id: 'TemplateId'
    #             },
    #             in_app_message: {
    #               body: 'Body',
    #               content: [
    #                 {
    #                   background_color: 'BackgroundColor',
    #                   body_config: {
    #                     alignment: 'LEFT', # required - accepts ["LEFT", "CENTER", "RIGHT"]
    #                     body: 'Body', # required
    #                     text_color: 'TextColor' # required
    #                   },
    #                   header_config: {
    #                     alignment: 'LEFT', # required - accepts ["LEFT", "CENTER", "RIGHT"]
    #                     header: 'Header', # required
    #                     text_color: 'TextColor' # required
    #                   },
    #                   image_url: 'ImageUrl',
    #                   primary_btn: {
    #                     android: {
    #                       button_action: 'LINK', # required - accepts ["LINK", "DEEP_LINK", "CLOSE"]
    #                       link: 'Link'
    #                     },
    #                     default_config: {
    #                       background_color: 'BackgroundColor',
    #                       border_radius: 1,
    #                       button_action: 'LINK', # required - accepts ["LINK", "DEEP_LINK", "CLOSE"]
    #                       link: 'Link',
    #                       text: 'Text', # required
    #                       text_color: 'TextColor'
    #                     },
    #                   },
    #                 }
    #               ],
    #               custom_config: {
    #                 'key' => 'value'
    #               },
    #               layout: 'BOTTOM_BANNER' # accepts ["BOTTOM_BANNER", "TOP_BANNER", "OVERLAYS", "MOBILE_FEED", "MIDDLE_BANNER", "CAROUSEL"]
    #             }
    #           },
    #           schedule: {
    #             end_time: 'EndTime',
    #             event_filter: {
    #               dimensions: {
    #                 attributes: {
    #                   'key' => {
    #                     attribute_type: 'INCLUSIVE', # accepts ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"]
    #                     values: [
    #                       'member'
    #                     ] # required
    #                   }
    #                 },
    #                 event_type: {
    #                   dimension_type: 'INCLUSIVE', # accepts ["INCLUSIVE", "EXCLUSIVE"]
    #                 },
    #                 metrics: {
    #                   'key' => {
    #                     comparison_operator: 'ComparisonOperator', # required
    #                     value: 1.0 # required
    #                   }
    #                 }
    #               }, # required
    #               filter_type: 'SYSTEM' # required - accepts ["SYSTEM", "ENDPOINT"]
    #             },
    #             frequency: 'ONCE', # accepts ["ONCE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY", "EVENT", "IN_APP_EVENT"]
    #             is_local_time: false,
    #             quiet_time: {
    #               end: 'End',
    #               start: 'Start'
    #             },
    #             start_time: 'StartTime', # required
    #             timezone: 'Timezone'
    #           },
    #           size_percent: 1, # required
    #           template_configuration: {
    #             email_template: {
    #               name: 'Name',
    #               version: 'Version'
    #             },
    #           },
    #           treatment_description: 'TreatmentDescription',
    #           treatment_name: 'TreatmentName'
    #         }
    #       ],
    #       description: 'Description',
    #       holdout_percent: 1,
    #       hook: {
    #         lambda_function_name: 'LambdaFunctionName',
    #         mode: 'DELIVERY', # accepts ["DELIVERY", "FILTER"]
    #         web_url: 'WebUrl'
    #       },
    #       is_paused: false,
    #       limits: {
    #         daily: 1,
    #         maximum_duration: 1,
    #         messages_per_second: 1,
    #         total: 1,
    #         session: 1
    #       },
    #       name: 'Name',
    #       segment_id: 'SegmentId',
    #       segment_version: 1,
    #       treatment_description: 'TreatmentDescription',
    #       treatment_name: 'TreatmentName',
    #       priority: 1
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateCampaignOutput
    #   resp.data.campaign_response #=> Types::CampaignResponse
    #   resp.data.campaign_response.additional_treatments #=> Array<TreatmentResource>
    #   resp.data.campaign_response.additional_treatments[0] #=> Types::TreatmentResource
    #   resp.data.campaign_response.additional_treatments[0].custom_delivery_configuration #=> Types::CustomDeliveryConfiguration
    #   resp.data.campaign_response.additional_treatments[0].custom_delivery_configuration.delivery_uri #=> String
    #   resp.data.campaign_response.additional_treatments[0].custom_delivery_configuration.endpoint_types #=> Array<String>
    #   resp.data.campaign_response.additional_treatments[0].custom_delivery_configuration.endpoint_types[0] #=> String, one of ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"]
    #   resp.data.campaign_response.additional_treatments[0].id #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration #=> Types::MessageConfiguration
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message #=> Types::Message
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.action #=> String, one of ["OPEN_APP", "DEEP_LINK", "URL"]
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.body #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.image_icon_url #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.image_small_icon_url #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.image_url #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.json_body #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.media_url #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.raw_content #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.silent_push #=> Boolean
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.time_to_live #=> Integer
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.title #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.adm_message.url #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.apns_message #=> Types::Message
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.baidu_message #=> Types::Message
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.custom_message #=> Types::CampaignCustomMessage
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.custom_message.data #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.default_message #=> Types::Message
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.email_message #=> Types::CampaignEmailMessage
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.email_message.body #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.email_message.from_address #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.email_message.html_body #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.email_message.title #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.gcm_message #=> Types::Message
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.sms_message #=> Types::CampaignSmsMessage
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.sms_message.body #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.sms_message.message_type #=> String, one of ["TRANSACTIONAL", "PROMOTIONAL"]
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.sms_message.origination_number #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.sms_message.sender_id #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.sms_message.entity_id #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.sms_message.template_id #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message #=> Types::CampaignInAppMessage
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.body #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content #=> Array<InAppMessageContent>
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0] #=> Types::InAppMessageContent
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].background_color #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].body_config #=> Types::InAppMessageBodyConfig
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].body_config.alignment #=> String, one of ["LEFT", "CENTER", "RIGHT"]
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].body_config.body #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].body_config.text_color #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].header_config #=> Types::InAppMessageHeaderConfig
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].header_config.alignment #=> String, one of ["LEFT", "CENTER", "RIGHT"]
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].header_config.header #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].header_config.text_color #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].image_url #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn #=> Types::InAppMessageButton
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.android #=> Types::OverrideButtonConfiguration
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.android.button_action #=> String, one of ["LINK", "DEEP_LINK", "CLOSE"]
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.android.link #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.default_config #=> Types::DefaultButtonConfiguration
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.default_config.background_color #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.default_config.border_radius #=> Integer
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.default_config.button_action #=> String, one of ["LINK", "DEEP_LINK", "CLOSE"]
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.default_config.link #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.default_config.text #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.default_config.text_color #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.ios #=> Types::OverrideButtonConfiguration
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].primary_btn.web #=> Types::OverrideButtonConfiguration
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.content[0].secondary_btn #=> Types::InAppMessageButton
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.custom_config #=> Hash<String, String>
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.custom_config['key'] #=> String
    #   resp.data.campaign_response.additional_treatments[0].message_configuration.in_app_message.layout #=> String, one of ["BOTTOM_BANNER", "TOP_BANNER", "OVERLAYS", "MOBILE_FEED", "MIDDLE_BANNER", "CAROUSEL"]
    #   resp.data.campaign_response.additional_treatments[0].schedule #=> Types::Schedule
    #   resp.data.campaign_response.additional_treatments[0].schedule.end_time #=> String
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter #=> Types::CampaignEventFilter
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions #=> Types::EventDimensions
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.attributes #=> Hash<String, AttributeDimension>
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.attributes['key'] #=> Types::AttributeDimension
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.attributes['key'].attribute_type #=> String, one of ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"]
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.attributes['key'].values #=> Array<String>
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.attributes['key'].values[0] #=> String
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.event_type #=> Types::SetDimension
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.event_type.dimension_type #=> String, one of ["INCLUSIVE", "EXCLUSIVE"]
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.event_type.values #=> Array<String>
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.metrics #=> Hash<String, MetricDimension>
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.metrics['key'] #=> Types::MetricDimension
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.metrics['key'].comparison_operator #=> String
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.dimensions.metrics['key'].value #=> Float
    #   resp.data.campaign_response.additional_treatments[0].schedule.event_filter.filter_type #=> String, one of ["SYSTEM", "ENDPOINT"]
    #   resp.data.campaign_response.additional_treatments[0].schedule.frequency #=> String, one of ["ONCE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY", "EVENT", "IN_APP_EVENT"]
    #   resp.data.campaign_response.additional_treatments[0].schedule.is_local_time #=> Boolean
    #   resp.data.campaign_response.additional_treatments[0].schedule.quiet_time #=> Types::QuietTime
    #   resp.data.campaign_response.additional_treatments[0].schedule.quiet_time.end #=> String
    #   resp.data.campaign_response.additional_treatments[0].schedule.quiet_time.start #=> String
    #   resp.data.campaign_response.additional_treatments[0].schedule.start_time #=> String
    #   resp.data.campaign_response.additional_treatments[0].schedule.timezone #=> String
    #   resp.data.campaign_response.additional_treatments[0].size_percent #=> Integer
    #   resp.data.campaign_response.additional_treatments[0].state #=> Types::CampaignState
    #   resp.data.campaign_response.additional_treatments[0].state.campaign_status #=> String, one of ["SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED", "DELETED", "INVALID"]
    #   resp.data.campaign_response.additional_treatments[0].template_configuration #=> Types::TemplateConfiguration
    #   resp.data.campaign_response.additional_treatments[0].template_configuration.email_template #=> Types::Template
    #   resp.data.campaign_response.additional_treatments[0].template_configuration.email_template.name #=> String
    #   resp.data.campaign_response.additional_treatments[0].template_configuration.email_template.version #=> String
    #   resp.data.campaign_response.additional_treatments[0].template_configuration.push_template #=> Types::Template
    #   resp.data.campaign_response.additional_treatments[0].template_configuration.sms_template #=> Types::Template
    #   resp.data.campaign_response.additional_treatments[0].template_configuration.voice_template #=> Types::Template
    #   resp.data.campaign_response.additional_treatments[0].treatment_description #=> String
    #   resp.data.campaign_response.additional_treatments[0].treatment_name #=> String
    #   resp.data.campaign_response.application_id #=> String
    #   resp.data.campaign_response.arn #=> String
    #   resp.data.campaign_response.creation_date #=> String
    #   resp.data.campaign_response.custom_delivery_configuration #=> Types::CustomDeliveryConfiguration
    #   resp.data.campaign_response.default_state #=> Types::CampaignState
    #   resp.data.campaign_response.description #=> String
    #   resp.data.campaign_response.holdout_percent #=> Integer
    #   resp.data.campaign_response.hook #=> Types::CampaignHook
    #   resp.data.campaign_response.hook.lambda_function_name #=> String
    #   resp.data.campaign_response.hook.mode #=> String, one of ["DELIVERY", "FILTER"]
    #   resp.data.campaign_response.hook.web_url #=> String
    #   resp.data.campaign_response.id #=> String
    #   resp.data.campaign_response.is_paused #=> Boolean
    #   resp.data.campaign_response.last_modified_date #=> String
    #   resp.data.campaign_response.limits #=> Types::CampaignLimits
    #   resp.data.campaign_response.limits.daily #=> Integer
    #   resp.data.campaign_response.limits.maximum_duration #=> Integer
    #   resp.data.campaign_response.limits.messages_per_second #=> Integer
    #   resp.data.campaign_response.limits.total #=> Integer
    #   resp.data.campaign_response.limits.session #=> Integer
    #   resp.data.campaign_response.message_configuration #=> Types::MessageConfiguration
    #   resp.data.campaign_response.name #=> String
    #   resp.data.campaign_response.schedule #=> Types::Schedule
    #   resp.data.campaign_response.segment_id #=> String
    #   resp.data.campaign_response.segment_version #=> Integer
    #   resp.data.campaign_response.state #=> Types::CampaignState
    #   resp.data.campaign_response.tags #=> Hash<String, String>
    #   resp.data.campaign_response.template_configuration #=> Types::TemplateConfiguration
    #   resp.data.campaign_response.treatment_description #=> String
    #   resp.data.campaign_response.treatment_name #=> String
    #   resp.data.campaign_response.version #=> Integer
    #   resp.data.campaign_response.priority #=> Integer
    #
    def update_campaign(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateCampaignInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateCampaignInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateCampaign
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::UpdateCampaign
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateCampaign,
        stubs: @stubs,
        params_class: Params::UpdateCampaignOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_campaign
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Enables the email channel for an application or updates the status and settings of the email channel for an application.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateEmailChannelInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @option params [EmailChannelRequest] :email_channel_request
    #   <p>Specifies the status and settings of the email channel for an application.</p>
    #
    # @return [Types::UpdateEmailChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_email_channel(
    #     application_id: 'ApplicationId', # required
    #     email_channel_request: {
    #       configuration_set: 'ConfigurationSet',
    #       enabled: false,
    #       from_address: 'FromAddress', # required
    #       identity: 'Identity', # required
    #       role_arn: 'RoleArn'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateEmailChannelOutput
    #   resp.data.email_channel_response #=> Types::EmailChannelResponse
    #   resp.data.email_channel_response.application_id #=> String
    #   resp.data.email_channel_response.configuration_set #=> String
    #   resp.data.email_channel_response.creation_date #=> String
    #   resp.data.email_channel_response.enabled #=> Boolean
    #   resp.data.email_channel_response.from_address #=> String
    #   resp.data.email_channel_response.has_credential #=> Boolean
    #   resp.data.email_channel_response.id #=> String
    #   resp.data.email_channel_response.identity #=> String
    #   resp.data.email_channel_response.is_archived #=> Boolean
    #   resp.data.email_channel_response.last_modified_by #=> String
    #   resp.data.email_channel_response.last_modified_date #=> String
    #   resp.data.email_channel_response.messages_per_second #=> Integer
    #   resp.data.email_channel_response.platform #=> String
    #   resp.data.email_channel_response.role_arn #=> String
    #   resp.data.email_channel_response.version #=> Integer
    #
    def update_email_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateEmailChannelInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateEmailChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateEmailChannel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::UpdateEmailChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateEmailChannel,
        stubs: @stubs,
        params_class: Params::UpdateEmailChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_email_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an existing message template for messages that are sent through the email channel.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateEmailTemplateInput}.
    #
    # @option params [Boolean] :create_new_version
    #   <p>Specifies whether to save the updates as a new version of the message template. Valid values are: true, save the updates as a new version; and, false, save the updates to (overwrite) the latest existing version of the template.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint saves the updates to (overwrites) the latest existing version of the template. If you specify a value of true for this parameter, don't specify a value for the version parameter. Otherwise, an error will occur.</p>
    #
    # @option params [EmailTemplateRequest] :email_template_request
    #   <p>Specifies the content and settings for a message template that can be used in messages that are sent through the email channel.</p>
    #
    # @option params [String] :template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    #
    # @option params [String] :version
    #   <p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend="templates-template-name-template-type-versions">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>
    #
    # @return [Types::UpdateEmailTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_email_template(
    #     create_new_version: false,
    #     email_template_request: {
    #       default_substitutions: 'DefaultSubstitutions',
    #       html_part: 'HtmlPart',
    #       recommender_id: 'RecommenderId',
    #       subject: 'Subject',
    #       tags: {
    #         'key' => 'value'
    #       },
    #       template_description: 'TemplateDescription',
    #       text_part: 'TextPart'
    #     }, # required
    #     template_name: 'TemplateName', # required
    #     version: 'Version'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateEmailTemplateOutput
    #   resp.data.message_body #=> Types::MessageBody
    #   resp.data.message_body.message #=> String
    #   resp.data.message_body.request_id #=> String
    #
    def update_email_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateEmailTemplateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateEmailTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateEmailTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::UpdateEmailTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateEmailTemplate,
        stubs: @stubs,
        params_class: Params::UpdateEmailTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_email_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new endpoint for an application or updates the settings and attributes of an existing endpoint for an application. You can also use this operation to define custom attributes for an endpoint. If an update includes one or more values for a custom attribute, Amazon Pinpoint replaces (overwrites) any existing values with the new values.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateEndpointInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @option params [String] :endpoint_id
    #   <p>The unique identifier for the endpoint.</p>
    #
    # @option params [EndpointRequest] :endpoint_request
    #   <p>Specifies the channel type and other settings for an endpoint.</p>
    #
    # @return [Types::UpdateEndpointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_endpoint(
    #     application_id: 'ApplicationId', # required
    #     endpoint_id: 'EndpointId', # required
    #     endpoint_request: {
    #       address: 'Address',
    #       attributes: {
    #         'key' => [
    #           'member'
    #         ]
    #       },
    #       channel_type: 'PUSH', # accepts ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"]
    #       demographic: {
    #         app_version: 'AppVersion',
    #         locale: 'Locale',
    #         make: 'Make',
    #         model: 'Model',
    #         model_version: 'ModelVersion',
    #         platform: 'Platform',
    #         platform_version: 'PlatformVersion',
    #         timezone: 'Timezone'
    #       },
    #       effective_date: 'EffectiveDate',
    #       endpoint_status: 'EndpointStatus',
    #       location: {
    #         city: 'City',
    #         country: 'Country',
    #         latitude: 1.0,
    #         longitude: 1.0,
    #         postal_code: 'PostalCode',
    #         region: 'Region'
    #       },
    #       metrics: {
    #         'key' => 1.0
    #       },
    #       opt_out: 'OptOut',
    #       request_id: 'RequestId',
    #       user: {
    #         user_id: 'UserId'
    #       }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateEndpointOutput
    #   resp.data.message_body #=> Types::MessageBody
    #   resp.data.message_body.message #=> String
    #   resp.data.message_body.request_id #=> String
    #
    def update_endpoint(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateEndpointInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateEndpointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateEndpoint
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::UpdateEndpoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateEndpoint,
        stubs: @stubs,
        params_class: Params::UpdateEndpointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_endpoint
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new batch of endpoints for an application or updates the settings and attributes of a batch of existing endpoints for an application. You can also use this operation to define custom attributes for a batch of endpoints. If an update includes one or more values for a custom attribute, Amazon Pinpoint replaces (overwrites) any existing values with the new values.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateEndpointsBatchInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @option params [EndpointBatchRequest] :endpoint_batch_request
    #   <p>Specifies a batch of endpoints to create or update and the settings and attributes to set or change for each endpoint.</p>
    #
    # @return [Types::UpdateEndpointsBatchOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_endpoints_batch(
    #     application_id: 'ApplicationId', # required
    #     endpoint_batch_request: {
    #       item: [
    #         {
    #           address: 'Address',
    #           attributes: {
    #             'key' => [
    #               'member'
    #             ]
    #           },
    #           channel_type: 'PUSH', # accepts ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"]
    #           demographic: {
    #             app_version: 'AppVersion',
    #             locale: 'Locale',
    #             make: 'Make',
    #             model: 'Model',
    #             model_version: 'ModelVersion',
    #             platform: 'Platform',
    #             platform_version: 'PlatformVersion',
    #             timezone: 'Timezone'
    #           },
    #           effective_date: 'EffectiveDate',
    #           endpoint_status: 'EndpointStatus',
    #           id: 'Id',
    #           location: {
    #             city: 'City',
    #             country: 'Country',
    #             latitude: 1.0,
    #             longitude: 1.0,
    #             postal_code: 'PostalCode',
    #             region: 'Region'
    #           },
    #           metrics: {
    #             'key' => 1.0
    #           },
    #           opt_out: 'OptOut',
    #           request_id: 'RequestId',
    #           user: {
    #             user_id: 'UserId'
    #           }
    #         }
    #       ] # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateEndpointsBatchOutput
    #   resp.data.message_body #=> Types::MessageBody
    #   resp.data.message_body.message #=> String
    #   resp.data.message_body.request_id #=> String
    #
    def update_endpoints_batch(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateEndpointsBatchInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateEndpointsBatchInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateEndpointsBatch
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::UpdateEndpointsBatch
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateEndpointsBatch,
        stubs: @stubs,
        params_class: Params::UpdateEndpointsBatchOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_endpoints_batch
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Enables the GCM channel for an application or updates the status and settings of the GCM channel for an application.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateGcmChannelInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @option params [GCMChannelRequest] :gcm_channel_request
    #   <p>Specifies the status and settings of the GCM channel for an application. This channel enables Amazon Pinpoint to send push notifications through the Firebase Cloud Messaging (FCM), formerly Google Cloud Messaging (GCM), service.</p>
    #
    # @return [Types::UpdateGcmChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_gcm_channel(
    #     application_id: 'ApplicationId', # required
    #     gcm_channel_request: {
    #       api_key: 'ApiKey', # required
    #       enabled: false
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateGcmChannelOutput
    #   resp.data.gcm_channel_response #=> Types::GCMChannelResponse
    #   resp.data.gcm_channel_response.application_id #=> String
    #   resp.data.gcm_channel_response.creation_date #=> String
    #   resp.data.gcm_channel_response.credential #=> String
    #   resp.data.gcm_channel_response.enabled #=> Boolean
    #   resp.data.gcm_channel_response.has_credential #=> Boolean
    #   resp.data.gcm_channel_response.id #=> String
    #   resp.data.gcm_channel_response.is_archived #=> Boolean
    #   resp.data.gcm_channel_response.last_modified_by #=> String
    #   resp.data.gcm_channel_response.last_modified_date #=> String
    #   resp.data.gcm_channel_response.platform #=> String
    #   resp.data.gcm_channel_response.version #=> Integer
    #
    def update_gcm_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateGcmChannelInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateGcmChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateGcmChannel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::UpdateGcmChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateGcmChannel,
        stubs: @stubs,
        params_class: Params::UpdateGcmChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_gcm_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an existing message template for messages sent through the in-app message channel.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateInAppTemplateInput}.
    #
    # @option params [Boolean] :create_new_version
    #   <p>Specifies whether to save the updates as a new version of the message template. Valid values are: true, save the updates as a new version; and, false, save the updates to (overwrite) the latest existing version of the template.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint saves the updates to (overwrites) the latest existing version of the template. If you specify a value of true for this parameter, don't specify a value for the version parameter. Otherwise, an error will occur.</p>
    #
    # @option params [InAppTemplateRequest] :in_app_template_request
    #   <p>InApp Template Request.</p>
    #
    # @option params [String] :template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    #
    # @option params [String] :version
    #   <p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend="templates-template-name-template-type-versions">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>
    #
    # @return [Types::UpdateInAppTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_in_app_template(
    #     create_new_version: false,
    #     in_app_template_request: {
    #       content: [
    #         {
    #           background_color: 'BackgroundColor',
    #           body_config: {
    #             alignment: 'LEFT', # required - accepts ["LEFT", "CENTER", "RIGHT"]
    #             body: 'Body', # required
    #             text_color: 'TextColor' # required
    #           },
    #           header_config: {
    #             alignment: 'LEFT', # required - accepts ["LEFT", "CENTER", "RIGHT"]
    #             header: 'Header', # required
    #             text_color: 'TextColor' # required
    #           },
    #           image_url: 'ImageUrl',
    #           primary_btn: {
    #             android: {
    #               button_action: 'LINK', # required - accepts ["LINK", "DEEP_LINK", "CLOSE"]
    #               link: 'Link'
    #             },
    #             default_config: {
    #               background_color: 'BackgroundColor',
    #               border_radius: 1,
    #               button_action: 'LINK', # required - accepts ["LINK", "DEEP_LINK", "CLOSE"]
    #               link: 'Link',
    #               text: 'Text', # required
    #               text_color: 'TextColor'
    #             },
    #           },
    #         }
    #       ],
    #       custom_config: {
    #         'key' => 'value'
    #       },
    #       layout: 'BOTTOM_BANNER', # accepts ["BOTTOM_BANNER", "TOP_BANNER", "OVERLAYS", "MOBILE_FEED", "MIDDLE_BANNER", "CAROUSEL"]
    #       template_description: 'TemplateDescription'
    #     }, # required
    #     template_name: 'TemplateName', # required
    #     version: 'Version'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateInAppTemplateOutput
    #   resp.data.message_body #=> Types::MessageBody
    #   resp.data.message_body.message #=> String
    #   resp.data.message_body.request_id #=> String
    #
    def update_in_app_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateInAppTemplateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateInAppTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateInAppTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::UpdateInAppTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateInAppTemplate,
        stubs: @stubs,
        params_class: Params::UpdateInAppTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_in_app_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the configuration and other settings for a journey.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateJourneyInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @option params [String] :journey_id
    #   <p>The unique identifier for the journey.</p>
    #
    # @option params [WriteJourneyRequest] :write_journey_request
    #   <p>Specifies the configuration and other settings for a journey.</p>
    #
    # @return [Types::UpdateJourneyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_journey(
    #     application_id: 'ApplicationId', # required
    #     journey_id: 'JourneyId', # required
    #     write_journey_request: {
    #       activities: {
    #         'key' => {
    #           custom: {
    #             delivery_uri: 'DeliveryUri',
    #             endpoint_types: [
    #               'PUSH' # accepts ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"]
    #             ],
    #             message_config: {
    #               data: 'Data'
    #             },
    #             next_activity: 'NextActivity',
    #             template_name: 'TemplateName',
    #             template_version: 'TemplateVersion'
    #           },
    #           conditional_split: {
    #             condition: {
    #               conditions: [
    #                 {
    #                   event_condition: {
    #                     dimensions: {
    #                       attributes: {
    #                         'key' => {
    #                           attribute_type: 'INCLUSIVE', # accepts ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"]
    #                           values: [
    #                             'member'
    #                           ] # required
    #                         }
    #                       },
    #                       event_type: {
    #                         dimension_type: 'INCLUSIVE', # accepts ["INCLUSIVE", "EXCLUSIVE"]
    #                       },
    #                       metrics: {
    #                         'key' => {
    #                           comparison_operator: 'ComparisonOperator', # required
    #                           value: 1.0 # required
    #                         }
    #                       }
    #                     },
    #                     message_activity: 'MessageActivity'
    #                   },
    #                   segment_condition: {
    #                     segment_id: 'SegmentId' # required
    #                   },
    #                   segment_dimensions: {
    #                     behavior: {
    #                       recency: {
    #                         duration: 'HR_24', # required - accepts ["HR_24", "DAY_7", "DAY_14", "DAY_30"]
    #                         recency_type: 'ACTIVE' # required - accepts ["ACTIVE", "INACTIVE"]
    #                       }
    #                     },
    #                     demographic: {
    #                     },
    #                     location: {
    #                       gps_point: {
    #                         coordinates: {
    #                           latitude: 1.0, # required
    #                           longitude: 1.0 # required
    #                         }, # required
    #                         range_in_kilometers: 1.0
    #                       }
    #                     },
    #                   }
    #                 }
    #               ],
    #               operator: 'ALL' # accepts ["ALL", "ANY"]
    #             },
    #             evaluation_wait_time: {
    #               wait_for: 'WaitFor',
    #               wait_until: 'WaitUntil'
    #             },
    #             false_activity: 'FalseActivity',
    #             true_activity: 'TrueActivity'
    #           },
    #           description: 'Description',
    #           email: {
    #             message_config: {
    #               from_address: 'FromAddress'
    #             },
    #             next_activity: 'NextActivity',
    #             template_name: 'TemplateName',
    #             template_version: 'TemplateVersion'
    #           },
    #           holdout: {
    #             next_activity: 'NextActivity',
    #             percentage: 1 # required
    #           },
    #           multi_condition: {
    #             branches: [
    #               {
    #                 next_activity: 'NextActivity'
    #               }
    #             ],
    #             default_activity: 'DefaultActivity',
    #           },
    #           push: {
    #             message_config: {
    #               time_to_live: 'TimeToLive'
    #             },
    #             next_activity: 'NextActivity',
    #             template_name: 'TemplateName',
    #             template_version: 'TemplateVersion'
    #           },
    #           random_split: {
    #             branches: [
    #               {
    #                 next_activity: 'NextActivity',
    #                 percentage: 1
    #               }
    #             ]
    #           },
    #           sms: {
    #             message_config: {
    #               message_type: 'TRANSACTIONAL', # accepts ["TRANSACTIONAL", "PROMOTIONAL"]
    #               origination_number: 'OriginationNumber',
    #               sender_id: 'SenderId',
    #               entity_id: 'EntityId',
    #               template_id: 'TemplateId'
    #             },
    #             next_activity: 'NextActivity',
    #             template_name: 'TemplateName',
    #             template_version: 'TemplateVersion'
    #           },
    #           wait: {
    #             next_activity: 'NextActivity',
    #           },
    #           contact_center: {
    #             next_activity: 'NextActivity'
    #           }
    #         }
    #       },
    #       creation_date: 'CreationDate',
    #       last_modified_date: 'LastModifiedDate',
    #       limits: {
    #         daily_cap: 1,
    #         endpoint_reentry_cap: 1,
    #         messages_per_second: 1,
    #         endpoint_reentry_interval: 'EndpointReentryInterval'
    #       },
    #       local_time: false,
    #       name: 'Name', # required
    #       quiet_time: {
    #         end: 'End',
    #         start: 'Start'
    #       },
    #       refresh_frequency: 'RefreshFrequency',
    #       schedule: {
    #         end_time: Time.now,
    #         start_time: Time.now,
    #         timezone: 'Timezone'
    #       },
    #       start_activity: 'StartActivity',
    #       start_condition: {
    #         description: 'Description',
    #         event_start_condition: {
    #           event_filter: {
    #             filter_type: 'SYSTEM' # required - accepts ["SYSTEM", "ENDPOINT"]
    #           },
    #           segment_id: 'SegmentId'
    #         },
    #       },
    #       state: 'DRAFT', # accepts ["DRAFT", "ACTIVE", "COMPLETED", "CANCELLED", "CLOSED", "PAUSED"]
    #       wait_for_quiet_time: false,
    #       refresh_on_segment_update: false,
    #       journey_channel_settings: {
    #         connect_campaign_arn: 'ConnectCampaignArn',
    #         connect_campaign_execution_role_arn: 'ConnectCampaignExecutionRoleArn'
    #       }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateJourneyOutput
    #   resp.data.journey_response #=> Types::JourneyResponse
    #   resp.data.journey_response.activities #=> Hash<String, Activity>
    #   resp.data.journey_response.activities['key'] #=> Types::Activity
    #   resp.data.journey_response.activities['key'].custom #=> Types::CustomMessageActivity
    #   resp.data.journey_response.activities['key'].custom.delivery_uri #=> String
    #   resp.data.journey_response.activities['key'].custom.endpoint_types #=> Array<String>
    #   resp.data.journey_response.activities['key'].custom.endpoint_types[0] #=> String, one of ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"]
    #   resp.data.journey_response.activities['key'].custom.message_config #=> Types::JourneyCustomMessage
    #   resp.data.journey_response.activities['key'].custom.message_config.data #=> String
    #   resp.data.journey_response.activities['key'].custom.next_activity #=> String
    #   resp.data.journey_response.activities['key'].custom.template_name #=> String
    #   resp.data.journey_response.activities['key'].custom.template_version #=> String
    #   resp.data.journey_response.activities['key'].conditional_split #=> Types::ConditionalSplitActivity
    #   resp.data.journey_response.activities['key'].conditional_split.condition #=> Types::Condition
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions #=> Array<SimpleCondition>
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0] #=> Types::SimpleCondition
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition #=> Types::EventCondition
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions #=> Types::EventDimensions
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.attributes #=> Hash<String, AttributeDimension>
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.attributes['key'] #=> Types::AttributeDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.attributes['key'].attribute_type #=> String, one of ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"]
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.attributes['key'].values #=> Array<String>
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.attributes['key'].values[0] #=> String
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.event_type #=> Types::SetDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.event_type.dimension_type #=> String, one of ["INCLUSIVE", "EXCLUSIVE"]
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.event_type.values #=> Array<String>
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.metrics #=> Hash<String, MetricDimension>
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.metrics['key'] #=> Types::MetricDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.metrics['key'].comparison_operator #=> String
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.metrics['key'].value #=> Float
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.message_activity #=> String
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_condition #=> Types::SegmentCondition
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_condition.segment_id #=> String
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions #=> Types::SegmentDimensions
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.attributes #=> Hash<String, AttributeDimension>
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.behavior #=> Types::SegmentBehaviors
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.behavior.recency #=> Types::RecencyDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.behavior.recency.duration #=> String, one of ["HR_24", "DAY_7", "DAY_14", "DAY_30"]
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.behavior.recency.recency_type #=> String, one of ["ACTIVE", "INACTIVE"]
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.demographic #=> Types::SegmentDemographics
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.demographic.app_version #=> Types::SetDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.demographic.channel #=> Types::SetDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.demographic.device_type #=> Types::SetDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.demographic.make #=> Types::SetDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.demographic.model #=> Types::SetDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.demographic.platform #=> Types::SetDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.location #=> Types::SegmentLocation
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.location.country #=> Types::SetDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.location.gps_point #=> Types::GPSPointDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.location.gps_point.coordinates #=> Types::GPSCoordinates
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.location.gps_point.coordinates.latitude #=> Float
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.location.gps_point.coordinates.longitude #=> Float
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.location.gps_point.range_in_kilometers #=> Float
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.metrics #=> Hash<String, MetricDimension>
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.user_attributes #=> Hash<String, AttributeDimension>
    #   resp.data.journey_response.activities['key'].conditional_split.condition.operator #=> String, one of ["ALL", "ANY"]
    #   resp.data.journey_response.activities['key'].conditional_split.evaluation_wait_time #=> Types::WaitTime
    #   resp.data.journey_response.activities['key'].conditional_split.evaluation_wait_time.wait_for #=> String
    #   resp.data.journey_response.activities['key'].conditional_split.evaluation_wait_time.wait_until #=> String
    #   resp.data.journey_response.activities['key'].conditional_split.false_activity #=> String
    #   resp.data.journey_response.activities['key'].conditional_split.true_activity #=> String
    #   resp.data.journey_response.activities['key'].description #=> String
    #   resp.data.journey_response.activities['key'].email #=> Types::EmailMessageActivity
    #   resp.data.journey_response.activities['key'].email.message_config #=> Types::JourneyEmailMessage
    #   resp.data.journey_response.activities['key'].email.message_config.from_address #=> String
    #   resp.data.journey_response.activities['key'].email.next_activity #=> String
    #   resp.data.journey_response.activities['key'].email.template_name #=> String
    #   resp.data.journey_response.activities['key'].email.template_version #=> String
    #   resp.data.journey_response.activities['key'].holdout #=> Types::HoldoutActivity
    #   resp.data.journey_response.activities['key'].holdout.next_activity #=> String
    #   resp.data.journey_response.activities['key'].holdout.percentage #=> Integer
    #   resp.data.journey_response.activities['key'].multi_condition #=> Types::MultiConditionalSplitActivity
    #   resp.data.journey_response.activities['key'].multi_condition.branches #=> Array<MultiConditionalBranch>
    #   resp.data.journey_response.activities['key'].multi_condition.branches[0] #=> Types::MultiConditionalBranch
    #   resp.data.journey_response.activities['key'].multi_condition.branches[0].condition #=> Types::SimpleCondition
    #   resp.data.journey_response.activities['key'].multi_condition.branches[0].next_activity #=> String
    #   resp.data.journey_response.activities['key'].multi_condition.default_activity #=> String
    #   resp.data.journey_response.activities['key'].multi_condition.evaluation_wait_time #=> Types::WaitTime
    #   resp.data.journey_response.activities['key'].push #=> Types::PushMessageActivity
    #   resp.data.journey_response.activities['key'].push.message_config #=> Types::JourneyPushMessage
    #   resp.data.journey_response.activities['key'].push.message_config.time_to_live #=> String
    #   resp.data.journey_response.activities['key'].push.next_activity #=> String
    #   resp.data.journey_response.activities['key'].push.template_name #=> String
    #   resp.data.journey_response.activities['key'].push.template_version #=> String
    #   resp.data.journey_response.activities['key'].random_split #=> Types::RandomSplitActivity
    #   resp.data.journey_response.activities['key'].random_split.branches #=> Array<RandomSplitEntry>
    #   resp.data.journey_response.activities['key'].random_split.branches[0] #=> Types::RandomSplitEntry
    #   resp.data.journey_response.activities['key'].random_split.branches[0].next_activity #=> String
    #   resp.data.journey_response.activities['key'].random_split.branches[0].percentage #=> Integer
    #   resp.data.journey_response.activities['key'].sms #=> Types::SMSMessageActivity
    #   resp.data.journey_response.activities['key'].sms.message_config #=> Types::JourneySMSMessage
    #   resp.data.journey_response.activities['key'].sms.message_config.message_type #=> String, one of ["TRANSACTIONAL", "PROMOTIONAL"]
    #   resp.data.journey_response.activities['key'].sms.message_config.origination_number #=> String
    #   resp.data.journey_response.activities['key'].sms.message_config.sender_id #=> String
    #   resp.data.journey_response.activities['key'].sms.message_config.entity_id #=> String
    #   resp.data.journey_response.activities['key'].sms.message_config.template_id #=> String
    #   resp.data.journey_response.activities['key'].sms.next_activity #=> String
    #   resp.data.journey_response.activities['key'].sms.template_name #=> String
    #   resp.data.journey_response.activities['key'].sms.template_version #=> String
    #   resp.data.journey_response.activities['key'].wait #=> Types::WaitActivity
    #   resp.data.journey_response.activities['key'].wait.next_activity #=> String
    #   resp.data.journey_response.activities['key'].wait.wait_time #=> Types::WaitTime
    #   resp.data.journey_response.activities['key'].contact_center #=> Types::ContactCenterActivity
    #   resp.data.journey_response.activities['key'].contact_center.next_activity #=> String
    #   resp.data.journey_response.application_id #=> String
    #   resp.data.journey_response.creation_date #=> String
    #   resp.data.journey_response.id #=> String
    #   resp.data.journey_response.last_modified_date #=> String
    #   resp.data.journey_response.limits #=> Types::JourneyLimits
    #   resp.data.journey_response.limits.daily_cap #=> Integer
    #   resp.data.journey_response.limits.endpoint_reentry_cap #=> Integer
    #   resp.data.journey_response.limits.messages_per_second #=> Integer
    #   resp.data.journey_response.limits.endpoint_reentry_interval #=> String
    #   resp.data.journey_response.local_time #=> Boolean
    #   resp.data.journey_response.name #=> String
    #   resp.data.journey_response.quiet_time #=> Types::QuietTime
    #   resp.data.journey_response.quiet_time.end #=> String
    #   resp.data.journey_response.quiet_time.start #=> String
    #   resp.data.journey_response.refresh_frequency #=> String
    #   resp.data.journey_response.schedule #=> Types::JourneySchedule
    #   resp.data.journey_response.schedule.end_time #=> Time
    #   resp.data.journey_response.schedule.start_time #=> Time
    #   resp.data.journey_response.schedule.timezone #=> String
    #   resp.data.journey_response.start_activity #=> String
    #   resp.data.journey_response.start_condition #=> Types::StartCondition
    #   resp.data.journey_response.start_condition.description #=> String
    #   resp.data.journey_response.start_condition.event_start_condition #=> Types::EventStartCondition
    #   resp.data.journey_response.start_condition.event_start_condition.event_filter #=> Types::EventFilter
    #   resp.data.journey_response.start_condition.event_start_condition.event_filter.dimensions #=> Types::EventDimensions
    #   resp.data.journey_response.start_condition.event_start_condition.event_filter.filter_type #=> String, one of ["SYSTEM", "ENDPOINT"]
    #   resp.data.journey_response.start_condition.event_start_condition.segment_id #=> String
    #   resp.data.journey_response.start_condition.segment_start_condition #=> Types::SegmentCondition
    #   resp.data.journey_response.state #=> String, one of ["DRAFT", "ACTIVE", "COMPLETED", "CANCELLED", "CLOSED", "PAUSED"]
    #   resp.data.journey_response.tags #=> Hash<String, String>
    #   resp.data.journey_response.tags['key'] #=> String
    #   resp.data.journey_response.wait_for_quiet_time #=> Boolean
    #   resp.data.journey_response.refresh_on_segment_update #=> Boolean
    #   resp.data.journey_response.journey_channel_settings #=> Types::JourneyChannelSettings
    #   resp.data.journey_response.journey_channel_settings.connect_campaign_arn #=> String
    #   resp.data.journey_response.journey_channel_settings.connect_campaign_execution_role_arn #=> String
    #
    def update_journey(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateJourneyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateJourneyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateJourney
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ConflictException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::UpdateJourney
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateJourney,
        stubs: @stubs,
        params_class: Params::UpdateJourneyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_journey
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Cancels (stops) an active journey.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateJourneyStateInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @option params [String] :journey_id
    #   <p>The unique identifier for the journey.</p>
    #
    # @option params [JourneyStateRequest] :journey_state_request
    #   <p>Changes the status of a journey.</p>
    #
    # @return [Types::UpdateJourneyStateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_journey_state(
    #     application_id: 'ApplicationId', # required
    #     journey_id: 'JourneyId', # required
    #     journey_state_request: {
    #       state: 'DRAFT' # accepts ["DRAFT", "ACTIVE", "COMPLETED", "CANCELLED", "CLOSED", "PAUSED"]
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateJourneyStateOutput
    #   resp.data.journey_response #=> Types::JourneyResponse
    #   resp.data.journey_response.activities #=> Hash<String, Activity>
    #   resp.data.journey_response.activities['key'] #=> Types::Activity
    #   resp.data.journey_response.activities['key'].custom #=> Types::CustomMessageActivity
    #   resp.data.journey_response.activities['key'].custom.delivery_uri #=> String
    #   resp.data.journey_response.activities['key'].custom.endpoint_types #=> Array<String>
    #   resp.data.journey_response.activities['key'].custom.endpoint_types[0] #=> String, one of ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"]
    #   resp.data.journey_response.activities['key'].custom.message_config #=> Types::JourneyCustomMessage
    #   resp.data.journey_response.activities['key'].custom.message_config.data #=> String
    #   resp.data.journey_response.activities['key'].custom.next_activity #=> String
    #   resp.data.journey_response.activities['key'].custom.template_name #=> String
    #   resp.data.journey_response.activities['key'].custom.template_version #=> String
    #   resp.data.journey_response.activities['key'].conditional_split #=> Types::ConditionalSplitActivity
    #   resp.data.journey_response.activities['key'].conditional_split.condition #=> Types::Condition
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions #=> Array<SimpleCondition>
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0] #=> Types::SimpleCondition
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition #=> Types::EventCondition
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions #=> Types::EventDimensions
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.attributes #=> Hash<String, AttributeDimension>
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.attributes['key'] #=> Types::AttributeDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.attributes['key'].attribute_type #=> String, one of ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"]
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.attributes['key'].values #=> Array<String>
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.attributes['key'].values[0] #=> String
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.event_type #=> Types::SetDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.event_type.dimension_type #=> String, one of ["INCLUSIVE", "EXCLUSIVE"]
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.event_type.values #=> Array<String>
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.metrics #=> Hash<String, MetricDimension>
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.metrics['key'] #=> Types::MetricDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.metrics['key'].comparison_operator #=> String
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.dimensions.metrics['key'].value #=> Float
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].event_condition.message_activity #=> String
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_condition #=> Types::SegmentCondition
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_condition.segment_id #=> String
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions #=> Types::SegmentDimensions
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.attributes #=> Hash<String, AttributeDimension>
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.behavior #=> Types::SegmentBehaviors
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.behavior.recency #=> Types::RecencyDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.behavior.recency.duration #=> String, one of ["HR_24", "DAY_7", "DAY_14", "DAY_30"]
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.behavior.recency.recency_type #=> String, one of ["ACTIVE", "INACTIVE"]
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.demographic #=> Types::SegmentDemographics
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.demographic.app_version #=> Types::SetDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.demographic.channel #=> Types::SetDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.demographic.device_type #=> Types::SetDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.demographic.make #=> Types::SetDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.demographic.model #=> Types::SetDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.demographic.platform #=> Types::SetDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.location #=> Types::SegmentLocation
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.location.country #=> Types::SetDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.location.gps_point #=> Types::GPSPointDimension
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.location.gps_point.coordinates #=> Types::GPSCoordinates
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.location.gps_point.coordinates.latitude #=> Float
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.location.gps_point.coordinates.longitude #=> Float
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.location.gps_point.range_in_kilometers #=> Float
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.metrics #=> Hash<String, MetricDimension>
    #   resp.data.journey_response.activities['key'].conditional_split.condition.conditions[0].segment_dimensions.user_attributes #=> Hash<String, AttributeDimension>
    #   resp.data.journey_response.activities['key'].conditional_split.condition.operator #=> String, one of ["ALL", "ANY"]
    #   resp.data.journey_response.activities['key'].conditional_split.evaluation_wait_time #=> Types::WaitTime
    #   resp.data.journey_response.activities['key'].conditional_split.evaluation_wait_time.wait_for #=> String
    #   resp.data.journey_response.activities['key'].conditional_split.evaluation_wait_time.wait_until #=> String
    #   resp.data.journey_response.activities['key'].conditional_split.false_activity #=> String
    #   resp.data.journey_response.activities['key'].conditional_split.true_activity #=> String
    #   resp.data.journey_response.activities['key'].description #=> String
    #   resp.data.journey_response.activities['key'].email #=> Types::EmailMessageActivity
    #   resp.data.journey_response.activities['key'].email.message_config #=> Types::JourneyEmailMessage
    #   resp.data.journey_response.activities['key'].email.message_config.from_address #=> String
    #   resp.data.journey_response.activities['key'].email.next_activity #=> String
    #   resp.data.journey_response.activities['key'].email.template_name #=> String
    #   resp.data.journey_response.activities['key'].email.template_version #=> String
    #   resp.data.journey_response.activities['key'].holdout #=> Types::HoldoutActivity
    #   resp.data.journey_response.activities['key'].holdout.next_activity #=> String
    #   resp.data.journey_response.activities['key'].holdout.percentage #=> Integer
    #   resp.data.journey_response.activities['key'].multi_condition #=> Types::MultiConditionalSplitActivity
    #   resp.data.journey_response.activities['key'].multi_condition.branches #=> Array<MultiConditionalBranch>
    #   resp.data.journey_response.activities['key'].multi_condition.branches[0] #=> Types::MultiConditionalBranch
    #   resp.data.journey_response.activities['key'].multi_condition.branches[0].condition #=> Types::SimpleCondition
    #   resp.data.journey_response.activities['key'].multi_condition.branches[0].next_activity #=> String
    #   resp.data.journey_response.activities['key'].multi_condition.default_activity #=> String
    #   resp.data.journey_response.activities['key'].multi_condition.evaluation_wait_time #=> Types::WaitTime
    #   resp.data.journey_response.activities['key'].push #=> Types::PushMessageActivity
    #   resp.data.journey_response.activities['key'].push.message_config #=> Types::JourneyPushMessage
    #   resp.data.journey_response.activities['key'].push.message_config.time_to_live #=> String
    #   resp.data.journey_response.activities['key'].push.next_activity #=> String
    #   resp.data.journey_response.activities['key'].push.template_name #=> String
    #   resp.data.journey_response.activities['key'].push.template_version #=> String
    #   resp.data.journey_response.activities['key'].random_split #=> Types::RandomSplitActivity
    #   resp.data.journey_response.activities['key'].random_split.branches #=> Array<RandomSplitEntry>
    #   resp.data.journey_response.activities['key'].random_split.branches[0] #=> Types::RandomSplitEntry
    #   resp.data.journey_response.activities['key'].random_split.branches[0].next_activity #=> String
    #   resp.data.journey_response.activities['key'].random_split.branches[0].percentage #=> Integer
    #   resp.data.journey_response.activities['key'].sms #=> Types::SMSMessageActivity
    #   resp.data.journey_response.activities['key'].sms.message_config #=> Types::JourneySMSMessage
    #   resp.data.journey_response.activities['key'].sms.message_config.message_type #=> String, one of ["TRANSACTIONAL", "PROMOTIONAL"]
    #   resp.data.journey_response.activities['key'].sms.message_config.origination_number #=> String
    #   resp.data.journey_response.activities['key'].sms.message_config.sender_id #=> String
    #   resp.data.journey_response.activities['key'].sms.message_config.entity_id #=> String
    #   resp.data.journey_response.activities['key'].sms.message_config.template_id #=> String
    #   resp.data.journey_response.activities['key'].sms.next_activity #=> String
    #   resp.data.journey_response.activities['key'].sms.template_name #=> String
    #   resp.data.journey_response.activities['key'].sms.template_version #=> String
    #   resp.data.journey_response.activities['key'].wait #=> Types::WaitActivity
    #   resp.data.journey_response.activities['key'].wait.next_activity #=> String
    #   resp.data.journey_response.activities['key'].wait.wait_time #=> Types::WaitTime
    #   resp.data.journey_response.activities['key'].contact_center #=> Types::ContactCenterActivity
    #   resp.data.journey_response.activities['key'].contact_center.next_activity #=> String
    #   resp.data.journey_response.application_id #=> String
    #   resp.data.journey_response.creation_date #=> String
    #   resp.data.journey_response.id #=> String
    #   resp.data.journey_response.last_modified_date #=> String
    #   resp.data.journey_response.limits #=> Types::JourneyLimits
    #   resp.data.journey_response.limits.daily_cap #=> Integer
    #   resp.data.journey_response.limits.endpoint_reentry_cap #=> Integer
    #   resp.data.journey_response.limits.messages_per_second #=> Integer
    #   resp.data.journey_response.limits.endpoint_reentry_interval #=> String
    #   resp.data.journey_response.local_time #=> Boolean
    #   resp.data.journey_response.name #=> String
    #   resp.data.journey_response.quiet_time #=> Types::QuietTime
    #   resp.data.journey_response.quiet_time.end #=> String
    #   resp.data.journey_response.quiet_time.start #=> String
    #   resp.data.journey_response.refresh_frequency #=> String
    #   resp.data.journey_response.schedule #=> Types::JourneySchedule
    #   resp.data.journey_response.schedule.end_time #=> Time
    #   resp.data.journey_response.schedule.start_time #=> Time
    #   resp.data.journey_response.schedule.timezone #=> String
    #   resp.data.journey_response.start_activity #=> String
    #   resp.data.journey_response.start_condition #=> Types::StartCondition
    #   resp.data.journey_response.start_condition.description #=> String
    #   resp.data.journey_response.start_condition.event_start_condition #=> Types::EventStartCondition
    #   resp.data.journey_response.start_condition.event_start_condition.event_filter #=> Types::EventFilter
    #   resp.data.journey_response.start_condition.event_start_condition.event_filter.dimensions #=> Types::EventDimensions
    #   resp.data.journey_response.start_condition.event_start_condition.event_filter.filter_type #=> String, one of ["SYSTEM", "ENDPOINT"]
    #   resp.data.journey_response.start_condition.event_start_condition.segment_id #=> String
    #   resp.data.journey_response.start_condition.segment_start_condition #=> Types::SegmentCondition
    #   resp.data.journey_response.state #=> String, one of ["DRAFT", "ACTIVE", "COMPLETED", "CANCELLED", "CLOSED", "PAUSED"]
    #   resp.data.journey_response.tags #=> Hash<String, String>
    #   resp.data.journey_response.tags['key'] #=> String
    #   resp.data.journey_response.wait_for_quiet_time #=> Boolean
    #   resp.data.journey_response.refresh_on_segment_update #=> Boolean
    #   resp.data.journey_response.journey_channel_settings #=> Types::JourneyChannelSettings
    #   resp.data.journey_response.journey_channel_settings.connect_campaign_arn #=> String
    #   resp.data.journey_response.journey_channel_settings.connect_campaign_execution_role_arn #=> String
    #
    def update_journey_state(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateJourneyStateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateJourneyStateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateJourneyState
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::UpdateJourneyState
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateJourneyState,
        stubs: @stubs,
        params_class: Params::UpdateJourneyStateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_journey_state
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an existing message template for messages that are sent through a push notification channel.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdatePushTemplateInput}.
    #
    # @option params [Boolean] :create_new_version
    #   <p>Specifies whether to save the updates as a new version of the message template. Valid values are: true, save the updates as a new version; and, false, save the updates to (overwrite) the latest existing version of the template.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint saves the updates to (overwrites) the latest existing version of the template. If you specify a value of true for this parameter, don't specify a value for the version parameter. Otherwise, an error will occur.</p>
    #
    # @option params [PushNotificationTemplateRequest] :push_notification_template_request
    #   <p>Specifies the content and settings for a message template that can be used in messages that are sent through a push notification channel.</p>
    #
    # @option params [String] :template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    #
    # @option params [String] :version
    #   <p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend="templates-template-name-template-type-versions">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>
    #
    # @return [Types::UpdatePushTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_push_template(
    #     create_new_version: false,
    #     push_notification_template_request: {
    #       adm: {
    #         action: 'OPEN_APP', # accepts ["OPEN_APP", "DEEP_LINK", "URL"]
    #         body: 'Body',
    #         image_icon_url: 'ImageIconUrl',
    #         image_url: 'ImageUrl',
    #         raw_content: 'RawContent',
    #         small_image_icon_url: 'SmallImageIconUrl',
    #         sound: 'Sound',
    #         title: 'Title',
    #         url: 'Url'
    #       },
    #       apns: {
    #         action: 'OPEN_APP', # accepts ["OPEN_APP", "DEEP_LINK", "URL"]
    #         body: 'Body',
    #         media_url: 'MediaUrl',
    #         raw_content: 'RawContent',
    #         sound: 'Sound',
    #         title: 'Title',
    #         url: 'Url'
    #       },
    #       default: {
    #         action: 'OPEN_APP', # accepts ["OPEN_APP", "DEEP_LINK", "URL"]
    #         body: 'Body',
    #         sound: 'Sound',
    #         title: 'Title',
    #         url: 'Url'
    #       },
    #       default_substitutions: 'DefaultSubstitutions',
    #       recommender_id: 'RecommenderId',
    #       tags: {
    #         'key' => 'value'
    #       },
    #       template_description: 'TemplateDescription'
    #     }, # required
    #     template_name: 'TemplateName', # required
    #     version: 'Version'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdatePushTemplateOutput
    #   resp.data.message_body #=> Types::MessageBody
    #   resp.data.message_body.message #=> String
    #   resp.data.message_body.request_id #=> String
    #
    def update_push_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdatePushTemplateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdatePushTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdatePushTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::UpdatePushTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdatePushTemplate,
        stubs: @stubs,
        params_class: Params::UpdatePushTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_push_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an Amazon Pinpoint configuration for a recommender model.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateRecommenderConfigurationInput}.
    #
    # @option params [String] :recommender_id
    #   <p>The unique identifier for the recommender model configuration. This identifier is displayed as the <b>Recommender ID</b> on the Amazon Pinpoint console.</p>
    #
    # @option params [UpdateRecommenderConfigurationShape] :update_recommender_configuration
    #   <p>Specifies Amazon Pinpoint configuration settings for retrieving and processing recommendation data from a recommender model.</p>
    #
    # @return [Types::UpdateRecommenderConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_recommender_configuration(
    #     recommender_id: 'RecommenderId', # required
    #     update_recommender_configuration: {
    #       attributes: {
    #         'key' => 'value'
    #       },
    #       description: 'Description',
    #       name: 'Name',
    #       recommendation_provider_id_type: 'RecommendationProviderIdType',
    #       recommendation_provider_role_arn: 'RecommendationProviderRoleArn', # required
    #       recommendation_provider_uri: 'RecommendationProviderUri', # required
    #       recommendation_transformer_uri: 'RecommendationTransformerUri',
    #       recommendations_display_name: 'RecommendationsDisplayName',
    #       recommendations_per_message: 1
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateRecommenderConfigurationOutput
    #   resp.data.recommender_configuration_response #=> Types::RecommenderConfigurationResponse
    #   resp.data.recommender_configuration_response.attributes #=> Hash<String, String>
    #   resp.data.recommender_configuration_response.attributes['key'] #=> String
    #   resp.data.recommender_configuration_response.creation_date #=> String
    #   resp.data.recommender_configuration_response.description #=> String
    #   resp.data.recommender_configuration_response.id #=> String
    #   resp.data.recommender_configuration_response.last_modified_date #=> String
    #   resp.data.recommender_configuration_response.name #=> String
    #   resp.data.recommender_configuration_response.recommendation_provider_id_type #=> String
    #   resp.data.recommender_configuration_response.recommendation_provider_role_arn #=> String
    #   resp.data.recommender_configuration_response.recommendation_provider_uri #=> String
    #   resp.data.recommender_configuration_response.recommendation_transformer_uri #=> String
    #   resp.data.recommender_configuration_response.recommendations_display_name #=> String
    #   resp.data.recommender_configuration_response.recommendations_per_message #=> Integer
    #
    def update_recommender_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateRecommenderConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateRecommenderConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateRecommenderConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::UpdateRecommenderConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateRecommenderConfiguration,
        stubs: @stubs,
        params_class: Params::UpdateRecommenderConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_recommender_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new segment for an application or updates the configuration, dimension, and other settings for an existing segment that's associated with an application.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateSegmentInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @option params [String] :segment_id
    #   <p>The unique identifier for the segment.</p>
    #
    # @option params [WriteSegmentRequest] :write_segment_request
    #   <p>Specifies the configuration, dimension, and other settings for a segment. A WriteSegmentRequest object can include a Dimensions object or a SegmentGroups object, but not both.</p>
    #
    # @return [Types::UpdateSegmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_segment(
    #     application_id: 'ApplicationId', # required
    #     segment_id: 'SegmentId', # required
    #     write_segment_request: {
    #       dimensions: {
    #         attributes: {
    #           'key' => {
    #             attribute_type: 'INCLUSIVE', # accepts ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"]
    #             values: [
    #               'member'
    #             ] # required
    #           }
    #         },
    #         behavior: {
    #           recency: {
    #             duration: 'HR_24', # required - accepts ["HR_24", "DAY_7", "DAY_14", "DAY_30"]
    #             recency_type: 'ACTIVE' # required - accepts ["ACTIVE", "INACTIVE"]
    #           }
    #         },
    #         demographic: {
    #           app_version: {
    #             dimension_type: 'INCLUSIVE', # accepts ["INCLUSIVE", "EXCLUSIVE"]
    #           },
    #         },
    #         location: {
    #           gps_point: {
    #             coordinates: {
    #               latitude: 1.0, # required
    #               longitude: 1.0 # required
    #             }, # required
    #             range_in_kilometers: 1.0
    #           }
    #         },
    #         metrics: {
    #           'key' => {
    #             comparison_operator: 'ComparisonOperator', # required
    #             value: 1.0 # required
    #           }
    #         },
    #       },
    #       name: 'Name',
    #       segment_groups: {
    #         groups: [
    #           {
    #             source_segments: [
    #               {
    #                 id: 'Id', # required
    #                 version: 1
    #               }
    #             ],
    #             source_type: 'ALL', # accepts ["ALL", "ANY", "NONE"]
    #             type: 'ALL' # accepts ["ALL", "ANY", "NONE"]
    #           }
    #         ],
    #         include: 'ALL' # accepts ["ALL", "ANY", "NONE"]
    #       },
    #       tags: {
    #         'key' => 'value'
    #       }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateSegmentOutput
    #   resp.data.segment_response #=> Types::SegmentResponse
    #   resp.data.segment_response.application_id #=> String
    #   resp.data.segment_response.arn #=> String
    #   resp.data.segment_response.creation_date #=> String
    #   resp.data.segment_response.dimensions #=> Types::SegmentDimensions
    #   resp.data.segment_response.dimensions.attributes #=> Hash<String, AttributeDimension>
    #   resp.data.segment_response.dimensions.attributes['key'] #=> Types::AttributeDimension
    #   resp.data.segment_response.dimensions.attributes['key'].attribute_type #=> String, one of ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"]
    #   resp.data.segment_response.dimensions.attributes['key'].values #=> Array<String>
    #   resp.data.segment_response.dimensions.attributes['key'].values[0] #=> String
    #   resp.data.segment_response.dimensions.behavior #=> Types::SegmentBehaviors
    #   resp.data.segment_response.dimensions.behavior.recency #=> Types::RecencyDimension
    #   resp.data.segment_response.dimensions.behavior.recency.duration #=> String, one of ["HR_24", "DAY_7", "DAY_14", "DAY_30"]
    #   resp.data.segment_response.dimensions.behavior.recency.recency_type #=> String, one of ["ACTIVE", "INACTIVE"]
    #   resp.data.segment_response.dimensions.demographic #=> Types::SegmentDemographics
    #   resp.data.segment_response.dimensions.demographic.app_version #=> Types::SetDimension
    #   resp.data.segment_response.dimensions.demographic.app_version.dimension_type #=> String, one of ["INCLUSIVE", "EXCLUSIVE"]
    #   resp.data.segment_response.dimensions.demographic.app_version.values #=> Array<String>
    #   resp.data.segment_response.dimensions.demographic.channel #=> Types::SetDimension
    #   resp.data.segment_response.dimensions.demographic.device_type #=> Types::SetDimension
    #   resp.data.segment_response.dimensions.demographic.make #=> Types::SetDimension
    #   resp.data.segment_response.dimensions.demographic.model #=> Types::SetDimension
    #   resp.data.segment_response.dimensions.demographic.platform #=> Types::SetDimension
    #   resp.data.segment_response.dimensions.location #=> Types::SegmentLocation
    #   resp.data.segment_response.dimensions.location.country #=> Types::SetDimension
    #   resp.data.segment_response.dimensions.location.gps_point #=> Types::GPSPointDimension
    #   resp.data.segment_response.dimensions.location.gps_point.coordinates #=> Types::GPSCoordinates
    #   resp.data.segment_response.dimensions.location.gps_point.coordinates.latitude #=> Float
    #   resp.data.segment_response.dimensions.location.gps_point.coordinates.longitude #=> Float
    #   resp.data.segment_response.dimensions.location.gps_point.range_in_kilometers #=> Float
    #   resp.data.segment_response.dimensions.metrics #=> Hash<String, MetricDimension>
    #   resp.data.segment_response.dimensions.metrics['key'] #=> Types::MetricDimension
    #   resp.data.segment_response.dimensions.metrics['key'].comparison_operator #=> String
    #   resp.data.segment_response.dimensions.metrics['key'].value #=> Float
    #   resp.data.segment_response.dimensions.user_attributes #=> Hash<String, AttributeDimension>
    #   resp.data.segment_response.id #=> String
    #   resp.data.segment_response.import_definition #=> Types::SegmentImportResource
    #   resp.data.segment_response.import_definition.channel_counts #=> Hash<String, Integer>
    #   resp.data.segment_response.import_definition.channel_counts['key'] #=> Integer
    #   resp.data.segment_response.import_definition.external_id #=> String
    #   resp.data.segment_response.import_definition.format #=> String, one of ["CSV", "JSON"]
    #   resp.data.segment_response.import_definition.role_arn #=> String
    #   resp.data.segment_response.import_definition.s3_url #=> String
    #   resp.data.segment_response.import_definition.size #=> Integer
    #   resp.data.segment_response.last_modified_date #=> String
    #   resp.data.segment_response.name #=> String
    #   resp.data.segment_response.segment_groups #=> Types::SegmentGroupList
    #   resp.data.segment_response.segment_groups.groups #=> Array<SegmentGroup>
    #   resp.data.segment_response.segment_groups.groups[0] #=> Types::SegmentGroup
    #   resp.data.segment_response.segment_groups.groups[0].dimensions #=> Array<SegmentDimensions>
    #   resp.data.segment_response.segment_groups.groups[0].source_segments #=> Array<SegmentReference>
    #   resp.data.segment_response.segment_groups.groups[0].source_segments[0] #=> Types::SegmentReference
    #   resp.data.segment_response.segment_groups.groups[0].source_segments[0].id #=> String
    #   resp.data.segment_response.segment_groups.groups[0].source_segments[0].version #=> Integer
    #   resp.data.segment_response.segment_groups.groups[0].source_type #=> String, one of ["ALL", "ANY", "NONE"]
    #   resp.data.segment_response.segment_groups.groups[0].type #=> String, one of ["ALL", "ANY", "NONE"]
    #   resp.data.segment_response.segment_groups.include #=> String, one of ["ALL", "ANY", "NONE"]
    #   resp.data.segment_response.segment_type #=> String, one of ["DIMENSIONAL", "IMPORT"]
    #   resp.data.segment_response.tags #=> Hash<String, String>
    #   resp.data.segment_response.tags['key'] #=> String
    #   resp.data.segment_response.version #=> Integer
    #
    def update_segment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateSegmentInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateSegmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateSegment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::UpdateSegment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateSegment,
        stubs: @stubs,
        params_class: Params::UpdateSegmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_segment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Enables the SMS channel for an application or updates the status and settings of the SMS channel for an application.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateSmsChannelInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @option params [SMSChannelRequest] :sms_channel_request
    #   <p>Specifies the status and settings of the SMS channel for an application.</p>
    #
    # @return [Types::UpdateSmsChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_sms_channel(
    #     application_id: 'ApplicationId', # required
    #     sms_channel_request: {
    #       enabled: false,
    #       sender_id: 'SenderId',
    #       short_code: 'ShortCode'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateSmsChannelOutput
    #   resp.data.sms_channel_response #=> Types::SMSChannelResponse
    #   resp.data.sms_channel_response.application_id #=> String
    #   resp.data.sms_channel_response.creation_date #=> String
    #   resp.data.sms_channel_response.enabled #=> Boolean
    #   resp.data.sms_channel_response.has_credential #=> Boolean
    #   resp.data.sms_channel_response.id #=> String
    #   resp.data.sms_channel_response.is_archived #=> Boolean
    #   resp.data.sms_channel_response.last_modified_by #=> String
    #   resp.data.sms_channel_response.last_modified_date #=> String
    #   resp.data.sms_channel_response.platform #=> String
    #   resp.data.sms_channel_response.promotional_messages_per_second #=> Integer
    #   resp.data.sms_channel_response.sender_id #=> String
    #   resp.data.sms_channel_response.short_code #=> String
    #   resp.data.sms_channel_response.transactional_messages_per_second #=> Integer
    #   resp.data.sms_channel_response.version #=> Integer
    #
    def update_sms_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateSmsChannelInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateSmsChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateSmsChannel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::UpdateSmsChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateSmsChannel,
        stubs: @stubs,
        params_class: Params::UpdateSmsChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_sms_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an existing message template for messages that are sent through the SMS channel.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateSmsTemplateInput}.
    #
    # @option params [Boolean] :create_new_version
    #   <p>Specifies whether to save the updates as a new version of the message template. Valid values are: true, save the updates as a new version; and, false, save the updates to (overwrite) the latest existing version of the template.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint saves the updates to (overwrites) the latest existing version of the template. If you specify a value of true for this parameter, don't specify a value for the version parameter. Otherwise, an error will occur.</p>
    #
    # @option params [SMSTemplateRequest] :sms_template_request
    #   <p>Specifies the content and settings for a message template that can be used in text messages that are sent through the SMS channel.</p>
    #
    # @option params [String] :template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    #
    # @option params [String] :version
    #   <p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend="templates-template-name-template-type-versions">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>
    #
    # @return [Types::UpdateSmsTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_sms_template(
    #     create_new_version: false,
    #     sms_template_request: {
    #       body: 'Body',
    #       default_substitutions: 'DefaultSubstitutions',
    #       recommender_id: 'RecommenderId',
    #       tags: {
    #         'key' => 'value'
    #       },
    #       template_description: 'TemplateDescription'
    #     }, # required
    #     template_name: 'TemplateName', # required
    #     version: 'Version'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateSmsTemplateOutput
    #   resp.data.message_body #=> Types::MessageBody
    #   resp.data.message_body.message #=> String
    #   resp.data.message_body.request_id #=> String
    #
    def update_sms_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateSmsTemplateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateSmsTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateSmsTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::UpdateSmsTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateSmsTemplate,
        stubs: @stubs,
        params_class: Params::UpdateSmsTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_sms_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Changes the status of a specific version of a message template to <i>active</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateTemplateActiveVersionInput}.
    #
    # @option params [TemplateActiveVersionRequest] :template_active_version_request
    #   <p>Specifies which version of a message template to use as the active version of the template.</p>
    #
    # @option params [String] :template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    #
    # @option params [String] :template_type
    #   <p>The type of channel that the message template is designed for. Valid values are: EMAIL, PUSH, SMS, and VOICE.</p>
    #
    # @return [Types::UpdateTemplateActiveVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_template_active_version(
    #     template_active_version_request: {
    #       version: 'Version'
    #     }, # required
    #     template_name: 'TemplateName', # required
    #     template_type: 'TemplateType' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateTemplateActiveVersionOutput
    #   resp.data.message_body #=> Types::MessageBody
    #   resp.data.message_body.message #=> String
    #   resp.data.message_body.request_id #=> String
    #
    def update_template_active_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateTemplateActiveVersionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateTemplateActiveVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateTemplateActiveVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::UpdateTemplateActiveVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateTemplateActiveVersion,
        stubs: @stubs,
        params_class: Params::UpdateTemplateActiveVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_template_active_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Enables the voice channel for an application or updates the status and settings of the voice channel for an application.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateVoiceChannelInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    # @option params [VoiceChannelRequest] :voice_channel_request
    #   <p>Specifies the status and settings of the voice channel for an application.</p>
    #
    # @return [Types::UpdateVoiceChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_voice_channel(
    #     application_id: 'ApplicationId', # required
    #     voice_channel_request: {
    #       enabled: false
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateVoiceChannelOutput
    #   resp.data.voice_channel_response #=> Types::VoiceChannelResponse
    #   resp.data.voice_channel_response.application_id #=> String
    #   resp.data.voice_channel_response.creation_date #=> String
    #   resp.data.voice_channel_response.enabled #=> Boolean
    #   resp.data.voice_channel_response.has_credential #=> Boolean
    #   resp.data.voice_channel_response.id #=> String
    #   resp.data.voice_channel_response.is_archived #=> Boolean
    #   resp.data.voice_channel_response.last_modified_by #=> String
    #   resp.data.voice_channel_response.last_modified_date #=> String
    #   resp.data.voice_channel_response.platform #=> String
    #   resp.data.voice_channel_response.version #=> Integer
    #
    def update_voice_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateVoiceChannelInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateVoiceChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateVoiceChannel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::UpdateVoiceChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateVoiceChannel,
        stubs: @stubs,
        params_class: Params::UpdateVoiceChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_voice_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an existing message template for messages that are sent through the voice channel.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateVoiceTemplateInput}.
    #
    # @option params [Boolean] :create_new_version
    #   <p>Specifies whether to save the updates as a new version of the message template. Valid values are: true, save the updates as a new version; and, false, save the updates to (overwrite) the latest existing version of the template.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint saves the updates to (overwrites) the latest existing version of the template. If you specify a value of true for this parameter, don't specify a value for the version parameter. Otherwise, an error will occur.</p>
    #
    # @option params [String] :template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    #
    # @option params [String] :version
    #   <p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend="templates-template-name-template-type-versions">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>
    #
    # @option params [VoiceTemplateRequest] :voice_template_request
    #   <p>Specifies the content and settings for a message template that can be used in messages that are sent through the voice channel.</p>
    #
    # @return [Types::UpdateVoiceTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_voice_template(
    #     create_new_version: false,
    #     template_name: 'TemplateName', # required
    #     version: 'Version',
    #     voice_template_request: {
    #       body: 'Body',
    #       default_substitutions: 'DefaultSubstitutions',
    #       language_code: 'LanguageCode',
    #       tags: {
    #         'key' => 'value'
    #       },
    #       template_description: 'TemplateDescription',
    #       voice_id: 'VoiceId'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateVoiceTemplateOutput
    #   resp.data.message_body #=> Types::MessageBody
    #   resp.data.message_body.message #=> String
    #   resp.data.message_body.request_id #=> String
    #
    def update_voice_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateVoiceTemplateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateVoiceTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateVoiceTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::UpdateVoiceTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateVoiceTemplate,
        stubs: @stubs,
        params_class: Params::UpdateVoiceTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_voice_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Verify an OTP</p>
    #
    # @param [Hash] params
    #   See {Types::VerifyOTPMessageInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique ID of your Amazon Pinpoint application.</p>
    #
    # @option params [VerifyOTPMessageRequestParameters] :verify_otp_message_request_parameters
    #   <p>Verify OTP message request.</p>
    #
    # @return [Types::VerifyOTPMessageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.verify_otp_message(
    #     application_id: 'ApplicationId', # required
    #     verify_otp_message_request_parameters: {
    #       destination_identity: 'DestinationIdentity', # required
    #       otp: 'Otp', # required
    #       reference_id: 'ReferenceId' # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::VerifyOTPMessageOutput
    #   resp.data.verification_response #=> Types::VerificationResponse
    #   resp.data.verification_response.valid #=> Boolean
    #
    def verify_otp_message(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::VerifyOTPMessageInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::VerifyOTPMessageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::VerifyOTPMessage
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::PayloadTooLargeException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException]),
        data_parser: Parsers::VerifyOTPMessage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::VerifyOTPMessage,
        stubs: @stubs,
        params_class: Params::VerifyOTPMessageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :verify_otp_message
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
