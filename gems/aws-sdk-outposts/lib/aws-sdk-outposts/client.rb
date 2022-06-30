# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::Outposts
  # An API client for OutpostsOlafService
  # See {#initialize} for a full list of supported configuration options
  # <p>Amazon Web Services Outposts is a fully managed service that extends Amazon Web Services infrastructure, APIs, and tools
  #       to customer premises. By providing local access to Amazon Web Services managed infrastructure, Amazon Web Services Outposts
  #       enables customers to build and run applications on premises using the same programming
  #       interfaces as in Amazon Web Services Regions, while using local compute and storage resources for lower
  #       latency and local data processing needs.</p>
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
    def initialize(config = AWS::SDK::Outposts::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>
    #       Cancels an order for an Outpost.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::CancelOrderInput}.
    #
    # @option params [String] :order_id
    #   <p>
    #         The ID of the order to cancel.
    #       </p>
    #
    # @return [Types::CancelOrderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_order(
    #     order_id: 'OrderId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelOrderOutput
    #
    def cancel_order(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelOrderInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelOrderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelOrder
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ConflictException, Errors::NotFoundException]),
        data_parser: Parsers::CancelOrder
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelOrder,
        stubs: @stubs,
        params_class: Params::CancelOrderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_order
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an order for an Outpost.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateOrderInput}.
    #
    # @option params [String] :outpost_identifier
    #   <p>
    #         The ID or the Amazon Resource Name (ARN) of the Outpost.
    #       </p>
    #
    # @option params [Array<LineItemRequest>] :line_items
    #   <p>The line items that make up the order.</p>
    #
    # @option params [String] :payment_option
    #   <p>The payment option for the order.</p>
    #
    # @option params [String] :payment_term
    #   <p>The payment terms for the order.</p>
    #
    # @return [Types::CreateOrderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_order(
    #     outpost_identifier: 'OutpostIdentifier', # required
    #     line_items: [
    #       {
    #         catalog_item_id: 'CatalogItemId',
    #         quantity: 1
    #       }
    #     ], # required
    #     payment_option: 'ALL_UPFRONT', # required - accepts ["ALL_UPFRONT", "NO_UPFRONT", "PARTIAL_UPFRONT"]
    #     payment_term: 'THREE_YEARS' # accepts ["THREE_YEARS"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateOrderOutput
    #   resp.data.order #=> Types::Order
    #   resp.data.order.outpost_id #=> String
    #   resp.data.order.order_id #=> String
    #   resp.data.order.status #=> String, one of ["RECEIVED", "PENDING", "PROCESSING", "INSTALLING", "FULFILLED", "CANCELLED", "PREPARING", "IN_PROGRESS", "COMPLETED", "ERROR"]
    #   resp.data.order.line_items #=> Array<LineItem>
    #   resp.data.order.line_items[0] #=> Types::LineItem
    #   resp.data.order.line_items[0].catalog_item_id #=> String
    #   resp.data.order.line_items[0].line_item_id #=> String
    #   resp.data.order.line_items[0].quantity #=> Integer
    #   resp.data.order.line_items[0].status #=> String, one of ["PREPARING", "BUILDING", "SHIPPED", "DELIVERED", "INSTALLING", "INSTALLED", "ERROR", "CANCELLED"]
    #   resp.data.order.payment_option #=> String, one of ["ALL_UPFRONT", "NO_UPFRONT", "PARTIAL_UPFRONT"]
    #   resp.data.order.order_submission_date #=> Time
    #   resp.data.order.order_fulfilled_date #=> Time
    #
    def create_order(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateOrderInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateOrderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateOrder
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::ValidationException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ConflictException, Errors::NotFoundException]),
        data_parser: Parsers::CreateOrder
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateOrder,
        stubs: @stubs,
        params_class: Params::CreateOrderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_order
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an Outpost.</p>
    #          <p>You can specify <code>AvailabilityZone</code> or <code>AvailabilityZoneId</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateOutpostInput}.
    #
    # @option params [String] :name
    #   <p>The name of the Outpost.</p>
    #
    # @option params [String] :description
    #   <p>The description of the Outpost.</p>
    #
    # @option params [String] :site_id
    #   <p>
    #         The ID or the Amazon Resource Name (ARN) of the site.
    #       </p>
    #            <note>
    #               <p>In requests, Amazon Web Services Outposts accepts the Amazon Resource Name (ARN) or an ID for Outposts and
    #         sites throughout the Outposts Query API. To address backwards compatibility, the parameter names
    #         <code>OutpostID</code> or <code>SiteID</code> remain in use. Despite the parameter name,
    #         you can make the request with an ARN.</p>
    #            </note>
    #
    # @option params [String] :availability_zone
    #   <p>The Availability Zone.</p>
    #
    # @option params [String] :availability_zone_id
    #   <p>The ID of the Availability Zone.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to apply to the Outpost.</p>
    #
    # @option params [String] :supported_hardware_type
    #   <p>
    #         The type of hardware for this Outpost.
    #       </p>
    #
    # @return [Types::CreateOutpostOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_outpost(
    #     name: 'Name', # required
    #     description: 'Description',
    #     site_id: 'SiteId', # required
    #     availability_zone: 'AvailabilityZone',
    #     availability_zone_id: 'AvailabilityZoneId',
    #     tags: {
    #       'key' => 'value'
    #     },
    #     supported_hardware_type: 'RACK' # accepts ["RACK", "SERVER"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateOutpostOutput
    #   resp.data.outpost #=> Types::Outpost
    #   resp.data.outpost.outpost_id #=> String
    #   resp.data.outpost.owner_id #=> String
    #   resp.data.outpost.outpost_arn #=> String
    #   resp.data.outpost.site_id #=> String
    #   resp.data.outpost.name #=> String
    #   resp.data.outpost.description #=> String
    #   resp.data.outpost.life_cycle_status #=> String
    #   resp.data.outpost.availability_zone #=> String
    #   resp.data.outpost.availability_zone_id #=> String
    #   resp.data.outpost.tags #=> Hash<String, String>
    #   resp.data.outpost.tags['key'] #=> String
    #   resp.data.outpost.site_arn #=> String
    #   resp.data.outpost.supported_hardware_type #=> String, one of ["RACK", "SERVER"]
    #
    def create_outpost(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateOutpostInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateOutpostInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateOutpost
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::ValidationException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ConflictException, Errors::NotFoundException]),
        data_parser: Parsers::CreateOutpost
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateOutpost,
        stubs: @stubs,
        params_class: Params::CreateOutpostOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_outpost
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Creates a site for an Outpost.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::CreateSiteInput}.
    #
    # @option params [String] :name
    #   <p>The name of the site.</p>
    #
    # @option params [String] :description
    #   <p>The description of the site.</p>
    #
    # @option params [String] :notes
    #   <p>Additional information that you provide about site access requirements, electrician
    #         scheduling, personal protective equipment, or regulation of equipment materials that could
    #         affect your installation process. </p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>
    #         The tags to apply to a site.
    #       </p>
    #
    # @option params [Address] :operating_address
    #   <p>
    #         The location to install and power on the hardware. This address might be
    #         different from the shipping address.
    #       </p>
    #
    # @option params [Address] :shipping_address
    #   <p>
    #         The location to ship the hardware. This address might be different
    #         from the operating address.
    #       </p>
    #
    # @option params [RackPhysicalProperties] :rack_physical_properties
    #   <p> Information about the physical and logistical details for the rack at this site.
    #         For more information
    #         about hardware requirements for racks, see <a href="https://docs.aws.amazon.com/outposts/latest/userguide/outposts-requirements.html#checklist">Network
    #           readiness checklist</a> in the Amazon Web Services Outposts User Guide.
    #           </p>
    #
    # @return [Types::CreateSiteOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_site(
    #     name: 'Name', # required
    #     description: 'Description',
    #     notes: 'Notes',
    #     tags: {
    #       'key' => 'value'
    #     },
    #     operating_address: {
    #       contact_name: 'ContactName',
    #       contact_phone_number: 'ContactPhoneNumber',
    #       address_line1: 'AddressLine1', # required
    #       address_line2: 'AddressLine2',
    #       address_line3: 'AddressLine3',
    #       city: 'City', # required
    #       state_or_region: 'StateOrRegion', # required
    #       district_or_county: 'DistrictOrCounty',
    #       postal_code: 'PostalCode', # required
    #       country_code: 'CountryCode', # required
    #       municipality: 'Municipality'
    #     },
    #     rack_physical_properties: {
    #       power_draw_kva: 'POWER_5_KVA', # accepts ["POWER_5_KVA", "POWER_10_KVA", "POWER_15_KVA"]
    #       power_phase: 'SINGLE_PHASE', # accepts ["SINGLE_PHASE", "THREE_PHASE"]
    #       power_connector: 'L6_30P', # accepts ["L6_30P", "IEC309", "AH530P7W", "AH532P6W"]
    #       power_feed_drop: 'ABOVE_RACK', # accepts ["ABOVE_RACK", "BELOW_RACK"]
    #       uplink_gbps: 'UPLINK_1G', # accepts ["UPLINK_1G", "UPLINK_10G", "UPLINK_40G", "UPLINK_100G"]
    #       uplink_count: 'UPLINK_COUNT_1', # accepts ["UPLINK_COUNT_1", "UPLINK_COUNT_2", "UPLINK_COUNT_3", "UPLINK_COUNT_4", "UPLINK_COUNT_5", "UPLINK_COUNT_6", "UPLINK_COUNT_7", "UPLINK_COUNT_8", "UPLINK_COUNT_12", "UPLINK_COUNT_16"]
    #       fiber_optic_cable_type: 'SINGLE_MODE', # accepts ["SINGLE_MODE", "MULTI_MODE"]
    #       optical_standard: 'OPTIC_10GBASE_SR', # accepts ["OPTIC_10GBASE_SR", "OPTIC_10GBASE_IR", "OPTIC_10GBASE_LR", "OPTIC_40GBASE_SR", "OPTIC_40GBASE_ESR", "OPTIC_40GBASE_IR4_LR4L", "OPTIC_40GBASE_LR4", "OPTIC_100GBASE_SR4", "OPTIC_100GBASE_CWDM4", "OPTIC_100GBASE_LR4", "OPTIC_100G_PSM4_MSA", "OPTIC_1000BASE_LX", "OPTIC_1000BASE_SX"]
    #       maximum_supported_weight_lbs: 'NO_LIMIT' # accepts ["NO_LIMIT", "MAX_1400_LBS", "MAX_1600_LBS", "MAX_1800_LBS", "MAX_2000_LBS"]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateSiteOutput
    #   resp.data.site #=> Types::Site
    #   resp.data.site.site_id #=> String
    #   resp.data.site.account_id #=> String
    #   resp.data.site.name #=> String
    #   resp.data.site.description #=> String
    #   resp.data.site.tags #=> Hash<String, String>
    #   resp.data.site.tags['key'] #=> String
    #   resp.data.site.site_arn #=> String
    #   resp.data.site.notes #=> String
    #   resp.data.site.operating_address_country_code #=> String
    #   resp.data.site.operating_address_state_or_region #=> String
    #   resp.data.site.operating_address_city #=> String
    #   resp.data.site.rack_physical_properties #=> Types::RackPhysicalProperties
    #   resp.data.site.rack_physical_properties.power_draw_kva #=> String, one of ["POWER_5_KVA", "POWER_10_KVA", "POWER_15_KVA"]
    #   resp.data.site.rack_physical_properties.power_phase #=> String, one of ["SINGLE_PHASE", "THREE_PHASE"]
    #   resp.data.site.rack_physical_properties.power_connector #=> String, one of ["L6_30P", "IEC309", "AH530P7W", "AH532P6W"]
    #   resp.data.site.rack_physical_properties.power_feed_drop #=> String, one of ["ABOVE_RACK", "BELOW_RACK"]
    #   resp.data.site.rack_physical_properties.uplink_gbps #=> String, one of ["UPLINK_1G", "UPLINK_10G", "UPLINK_40G", "UPLINK_100G"]
    #   resp.data.site.rack_physical_properties.uplink_count #=> String, one of ["UPLINK_COUNT_1", "UPLINK_COUNT_2", "UPLINK_COUNT_3", "UPLINK_COUNT_4", "UPLINK_COUNT_5", "UPLINK_COUNT_6", "UPLINK_COUNT_7", "UPLINK_COUNT_8", "UPLINK_COUNT_12", "UPLINK_COUNT_16"]
    #   resp.data.site.rack_physical_properties.fiber_optic_cable_type #=> String, one of ["SINGLE_MODE", "MULTI_MODE"]
    #   resp.data.site.rack_physical_properties.optical_standard #=> String, one of ["OPTIC_10GBASE_SR", "OPTIC_10GBASE_IR", "OPTIC_10GBASE_LR", "OPTIC_40GBASE_SR", "OPTIC_40GBASE_ESR", "OPTIC_40GBASE_IR4_LR4L", "OPTIC_40GBASE_LR4", "OPTIC_100GBASE_SR4", "OPTIC_100GBASE_CWDM4", "OPTIC_100GBASE_LR4", "OPTIC_100G_PSM4_MSA", "OPTIC_1000BASE_LX", "OPTIC_1000BASE_SX"]
    #   resp.data.site.rack_physical_properties.maximum_supported_weight_lbs #=> String, one of ["NO_LIMIT", "MAX_1400_LBS", "MAX_1600_LBS", "MAX_1800_LBS", "MAX_2000_LBS"]
    #
    def create_site(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateSiteInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateSiteInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateSite
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::ValidationException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ConflictException]),
        data_parser: Parsers::CreateSite
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateSite,
        stubs: @stubs,
        params_class: Params::CreateSiteOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_site
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the Outpost.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteOutpostInput}.
    #
    # @option params [String] :outpost_id
    #   <p>
    #         The ID or the Amazon Resource Name (ARN) of the Outpost.
    #       </p>
    #            <note>
    #               <p>In requests, Amazon Web Services Outposts accepts the Amazon Resource Name (ARN) or an ID for Outposts and
    #         sites throughout the Outposts Query API. To address backwards compatibility, the parameter names
    #         <code>OutpostID</code> or <code>SiteID</code> remain in use. Despite the parameter name,
    #         you can make the request with an ARN.</p>
    #            </note>
    #
    # @return [Types::DeleteOutpostOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_outpost(
    #     outpost_id: 'OutpostId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteOutpostOutput
    #
    def delete_outpost(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteOutpostInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteOutpostInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteOutpost
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ConflictException, Errors::NotFoundException]),
        data_parser: Parsers::DeleteOutpost
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteOutpost,
        stubs: @stubs,
        params_class: Params::DeleteOutpostOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_outpost
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the site.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteSiteInput}.
    #
    # @option params [String] :site_id
    #   <p>
    #         The ID or the Amazon Resource Name (ARN) of the site.
    #       </p>
    #            <note>
    #               <p>In requests, Amazon Web Services Outposts accepts the Amazon Resource Name (ARN) or an ID for Outposts and
    #         sites throughout the Outposts Query API. To address backwards compatibility, the parameter names
    #         <code>OutpostID</code> or <code>SiteID</code> remain in use. Despite the parameter name,
    #         you can make the request with an ARN.</p>
    #            </note>
    #
    # @return [Types::DeleteSiteOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_site(
    #     site_id: 'SiteId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteSiteOutput
    #
    def delete_site(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteSiteInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteSiteInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteSite
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ConflictException, Errors::NotFoundException]),
        data_parser: Parsers::DeleteSite
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteSite,
        stubs: @stubs,
        params_class: Params::DeleteSiteOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_site
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about a catalog item.</p>
    #
    # @param [Hash] params
    #   See {Types::GetCatalogItemInput}.
    #
    # @option params [String] :catalog_item_id
    #   <p>The ID of the catalog item.</p>
    #
    # @return [Types::GetCatalogItemOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_catalog_item(
    #     catalog_item_id: 'CatalogItemId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetCatalogItemOutput
    #   resp.data.catalog_item #=> Types::CatalogItem
    #   resp.data.catalog_item.catalog_item_id #=> String
    #   resp.data.catalog_item.item_status #=> String, one of ["AVAILABLE", "DISCONTINUED"]
    #   resp.data.catalog_item.ec2_capacities #=> Array<EC2Capacity>
    #   resp.data.catalog_item.ec2_capacities[0] #=> Types::EC2Capacity
    #   resp.data.catalog_item.ec2_capacities[0].family #=> String
    #   resp.data.catalog_item.ec2_capacities[0].max_size #=> String
    #   resp.data.catalog_item.ec2_capacities[0].quantity #=> String
    #   resp.data.catalog_item.power_kva #=> Float
    #   resp.data.catalog_item.weight_lbs #=> Integer
    #   resp.data.catalog_item.supported_uplink_gbps #=> Array<Integer>
    #   resp.data.catalog_item.supported_uplink_gbps[0] #=> Integer
    #   resp.data.catalog_item.supported_storage #=> Array<String>
    #   resp.data.catalog_item.supported_storage[0] #=> String, one of ["EBS", "S3"]
    #
    def get_catalog_item(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetCatalogItemInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetCatalogItemInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetCatalogItem
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::NotFoundException]),
        data_parser: Parsers::GetCatalogItem
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetCatalogItem,
        stubs: @stubs,
        params_class: Params::GetCatalogItemOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_catalog_item
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>
    #       Amazon Web Services uses this action to install Outpost servers.</p>
    #          </note>
    #          <p>
    #       Gets information about a specified connection.
    #     </p>
    #          <p>
    #       Use CloudTrail to monitor this action or Amazon Web Services managed policy for Amazon Web Services Outposts to secure it. For
    #       more information, see <a href="https://docs.aws.amazon.com/outposts/latest/userguide/security-iam-awsmanpol.html">
    #       Amazon Web Services managed policies for Amazon Web Services Outposts</a> and <a href="https://docs.aws.amazon.com/outposts/latest/userguide/logging-using-cloudtrail.html">
    #       Logging Amazon Web Services Outposts API calls with Amazon Web Services CloudTrail</a> in the <i>Amazon Web Services Outposts User Guide</i>.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::GetConnectionInput}.
    #
    # @option params [String] :connection_id
    #   <p>
    #         The ID of the connection you request.
    #       </p>
    #
    # @return [Types::GetConnectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_connection(
    #     connection_id: 'ConnectionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetConnectionOutput
    #   resp.data.connection_id #=> String
    #   resp.data.connection_details #=> Types::ConnectionDetails
    #   resp.data.connection_details.client_public_key #=> String
    #   resp.data.connection_details.server_public_key #=> String
    #   resp.data.connection_details.server_endpoint #=> String
    #   resp.data.connection_details.client_tunnel_address #=> String
    #   resp.data.connection_details.server_tunnel_address #=> String
    #   resp.data.connection_details.allowed_ips #=> Array<String>
    #   resp.data.connection_details.allowed_ips[0] #=> String
    #
    def get_connection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetConnectionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetConnectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetConnection
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::NotFoundException]),
        data_parser: Parsers::GetConnection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetConnection,
        stubs: @stubs,
        params_class: Params::GetConnectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_connection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets an order.</p>
    #
    # @param [Hash] params
    #   See {Types::GetOrderInput}.
    #
    # @option params [String] :order_id
    #   <p>The ID of the order.</p>
    #
    # @return [Types::GetOrderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_order(
    #     order_id: 'OrderId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetOrderOutput
    #   resp.data.order #=> Types::Order
    #   resp.data.order.outpost_id #=> String
    #   resp.data.order.order_id #=> String
    #   resp.data.order.status #=> String, one of ["RECEIVED", "PENDING", "PROCESSING", "INSTALLING", "FULFILLED", "CANCELLED", "PREPARING", "IN_PROGRESS", "COMPLETED", "ERROR"]
    #   resp.data.order.line_items #=> Array<LineItem>
    #   resp.data.order.line_items[0] #=> Types::LineItem
    #   resp.data.order.line_items[0].catalog_item_id #=> String
    #   resp.data.order.line_items[0].line_item_id #=> String
    #   resp.data.order.line_items[0].quantity #=> Integer
    #   resp.data.order.line_items[0].status #=> String, one of ["PREPARING", "BUILDING", "SHIPPED", "DELIVERED", "INSTALLING", "INSTALLED", "ERROR", "CANCELLED"]
    #   resp.data.order.payment_option #=> String, one of ["ALL_UPFRONT", "NO_UPFRONT", "PARTIAL_UPFRONT"]
    #   resp.data.order.order_submission_date #=> Time
    #   resp.data.order.order_fulfilled_date #=> Time
    #
    def get_order(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetOrderInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetOrderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetOrder
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::NotFoundException]),
        data_parser: Parsers::GetOrder
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetOrder,
        stubs: @stubs,
        params_class: Params::GetOrderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_order
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about the specified Outpost.</p>
    #
    # @param [Hash] params
    #   See {Types::GetOutpostInput}.
    #
    # @option params [String] :outpost_id
    #   <p>
    #         The ID or the Amazon Resource Name (ARN) of the Outpost.
    #       </p>
    #            <note>
    #               <p>In requests, Amazon Web Services Outposts accepts the Amazon Resource Name (ARN) or an ID for Outposts and
    #         sites throughout the Outposts Query API. To address backwards compatibility, the parameter names
    #         <code>OutpostID</code> or <code>SiteID</code> remain in use. Despite the parameter name,
    #         you can make the request with an ARN.</p>
    #            </note>
    #
    # @return [Types::GetOutpostOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_outpost(
    #     outpost_id: 'OutpostId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetOutpostOutput
    #   resp.data.outpost #=> Types::Outpost
    #   resp.data.outpost.outpost_id #=> String
    #   resp.data.outpost.owner_id #=> String
    #   resp.data.outpost.outpost_arn #=> String
    #   resp.data.outpost.site_id #=> String
    #   resp.data.outpost.name #=> String
    #   resp.data.outpost.description #=> String
    #   resp.data.outpost.life_cycle_status #=> String
    #   resp.data.outpost.availability_zone #=> String
    #   resp.data.outpost.availability_zone_id #=> String
    #   resp.data.outpost.tags #=> Hash<String, String>
    #   resp.data.outpost.tags['key'] #=> String
    #   resp.data.outpost.site_arn #=> String
    #   resp.data.outpost.supported_hardware_type #=> String, one of ["RACK", "SERVER"]
    #
    def get_outpost(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetOutpostInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetOutpostInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetOutpost
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::NotFoundException]),
        data_parser: Parsers::GetOutpost
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetOutpost,
        stubs: @stubs,
        params_class: Params::GetOutpostOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_outpost
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the instance types for the specified Outpost.</p>
    #
    # @param [Hash] params
    #   See {Types::GetOutpostInstanceTypesInput}.
    #
    # @option params [String] :outpost_id
    #   <p>
    #         The ID or the Amazon Resource Name (ARN) of the Outpost.
    #       </p>
    #            <note>
    #               <p>In requests, Amazon Web Services Outposts accepts the Amazon Resource Name (ARN) or an ID for Outposts and
    #         sites throughout the Outposts Query API. To address backwards compatibility, the parameter names
    #         <code>OutpostID</code> or <code>SiteID</code> remain in use. Despite the parameter name,
    #         you can make the request with an ARN.</p>
    #            </note>
    #
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum page size.</p>
    #
    # @return [Types::GetOutpostInstanceTypesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_outpost_instance_types(
    #     outpost_id: 'OutpostId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetOutpostInstanceTypesOutput
    #   resp.data.instance_types #=> Array<InstanceTypeItem>
    #   resp.data.instance_types[0] #=> Types::InstanceTypeItem
    #   resp.data.instance_types[0].instance_type #=> String
    #   resp.data.next_token #=> String
    #   resp.data.outpost_id #=> String
    #   resp.data.outpost_arn #=> String
    #
    def get_outpost_instance_types(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetOutpostInstanceTypesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetOutpostInstanceTypesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetOutpostInstanceTypes
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::NotFoundException]),
        data_parser: Parsers::GetOutpostInstanceTypes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetOutpostInstanceTypes,
        stubs: @stubs,
        params_class: Params::GetOutpostInstanceTypesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_outpost_instance_types
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Gets information about the specified Outpost site.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::GetSiteInput}.
    #
    # @option params [String] :site_id
    #   <p>
    #         The ID or the Amazon Resource Name (ARN) of the site.
    #       </p>
    #            <note>
    #               <p>In requests, Amazon Web Services Outposts accepts the Amazon Resource Name (ARN) or an ID for Outposts and
    #         sites throughout the Outposts Query API. To address backwards compatibility, the parameter names
    #         <code>OutpostID</code> or <code>SiteID</code> remain in use. Despite the parameter name,
    #         you can make the request with an ARN.</p>
    #            </note>
    #
    # @return [Types::GetSiteOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_site(
    #     site_id: 'SiteId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSiteOutput
    #   resp.data.site #=> Types::Site
    #   resp.data.site.site_id #=> String
    #   resp.data.site.account_id #=> String
    #   resp.data.site.name #=> String
    #   resp.data.site.description #=> String
    #   resp.data.site.tags #=> Hash<String, String>
    #   resp.data.site.tags['key'] #=> String
    #   resp.data.site.site_arn #=> String
    #   resp.data.site.notes #=> String
    #   resp.data.site.operating_address_country_code #=> String
    #   resp.data.site.operating_address_state_or_region #=> String
    #   resp.data.site.operating_address_city #=> String
    #   resp.data.site.rack_physical_properties #=> Types::RackPhysicalProperties
    #   resp.data.site.rack_physical_properties.power_draw_kva #=> String, one of ["POWER_5_KVA", "POWER_10_KVA", "POWER_15_KVA"]
    #   resp.data.site.rack_physical_properties.power_phase #=> String, one of ["SINGLE_PHASE", "THREE_PHASE"]
    #   resp.data.site.rack_physical_properties.power_connector #=> String, one of ["L6_30P", "IEC309", "AH530P7W", "AH532P6W"]
    #   resp.data.site.rack_physical_properties.power_feed_drop #=> String, one of ["ABOVE_RACK", "BELOW_RACK"]
    #   resp.data.site.rack_physical_properties.uplink_gbps #=> String, one of ["UPLINK_1G", "UPLINK_10G", "UPLINK_40G", "UPLINK_100G"]
    #   resp.data.site.rack_physical_properties.uplink_count #=> String, one of ["UPLINK_COUNT_1", "UPLINK_COUNT_2", "UPLINK_COUNT_3", "UPLINK_COUNT_4", "UPLINK_COUNT_5", "UPLINK_COUNT_6", "UPLINK_COUNT_7", "UPLINK_COUNT_8", "UPLINK_COUNT_12", "UPLINK_COUNT_16"]
    #   resp.data.site.rack_physical_properties.fiber_optic_cable_type #=> String, one of ["SINGLE_MODE", "MULTI_MODE"]
    #   resp.data.site.rack_physical_properties.optical_standard #=> String, one of ["OPTIC_10GBASE_SR", "OPTIC_10GBASE_IR", "OPTIC_10GBASE_LR", "OPTIC_40GBASE_SR", "OPTIC_40GBASE_ESR", "OPTIC_40GBASE_IR4_LR4L", "OPTIC_40GBASE_LR4", "OPTIC_100GBASE_SR4", "OPTIC_100GBASE_CWDM4", "OPTIC_100GBASE_LR4", "OPTIC_100G_PSM4_MSA", "OPTIC_1000BASE_LX", "OPTIC_1000BASE_SX"]
    #   resp.data.site.rack_physical_properties.maximum_supported_weight_lbs #=> String, one of ["NO_LIMIT", "MAX_1400_LBS", "MAX_1600_LBS", "MAX_1800_LBS", "MAX_2000_LBS"]
    #
    def get_site(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSiteInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSiteInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSite
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::NotFoundException]),
        data_parser: Parsers::GetSite
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSite,
        stubs: @stubs,
        params_class: Params::GetSiteOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_site
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Gets the site address.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::GetSiteAddressInput}.
    #
    # @option params [String] :site_id
    #   <p>
    #         The ID or the Amazon Resource Name (ARN) of the site.
    #       </p>
    #            <note>
    #               <p>In requests, Amazon Web Services Outposts accepts the Amazon Resource Name (ARN) or an ID for Outposts and
    #         sites throughout the Outposts Query API. To address backwards compatibility, the parameter names
    #         <code>OutpostID</code> or <code>SiteID</code> remain in use. Despite the parameter name,
    #         you can make the request with an ARN.</p>
    #            </note>
    #
    # @option params [String] :address_type
    #   <p> The type of the address you request. </p>
    #
    # @return [Types::GetSiteAddressOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_site_address(
    #     site_id: 'SiteId', # required
    #     address_type: 'SHIPPING_ADDRESS' # required - accepts ["SHIPPING_ADDRESS", "OPERATING_ADDRESS"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSiteAddressOutput
    #   resp.data.site_id #=> String
    #   resp.data.address_type #=> String, one of ["SHIPPING_ADDRESS", "OPERATING_ADDRESS"]
    #   resp.data.address #=> Types::Address
    #   resp.data.address.contact_name #=> String
    #   resp.data.address.contact_phone_number #=> String
    #   resp.data.address.address_line1 #=> String
    #   resp.data.address.address_line2 #=> String
    #   resp.data.address.address_line3 #=> String
    #   resp.data.address.city #=> String
    #   resp.data.address.state_or_region #=> String
    #   resp.data.address.district_or_county #=> String
    #   resp.data.address.postal_code #=> String
    #   resp.data.address.country_code #=> String
    #   resp.data.address.municipality #=> String
    #
    def get_site_address(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSiteAddressInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSiteAddressInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSiteAddress
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::NotFoundException]),
        data_parser: Parsers::GetSiteAddress
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSiteAddress,
        stubs: @stubs,
        params_class: Params::GetSiteAddressOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_site_address
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Lists the hardware assets in an Outpost. If you are using Dedicated Hosts on
    #       Amazon Web Services Outposts, you can filter your request by host ID to return a list of hardware
    #       assets that allocate resources for Dedicated Hosts.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::ListAssetsInput}.
    #
    # @option params [String] :outpost_identifier
    #   <p>
    #         The ID or the Amazon Resource Name (ARN) of the Outpost.
    #       </p>
    #
    # @option params [Array<String>] :host_id_filter
    #   <p>
    #         A filter for the host ID of Dedicated Hosts on the Outpost.
    #       </p>
    #            <p>Filter values are case sensitive. If you specify multiple
    #            values for a filter, the values are joined with an <code>OR</code>, and the request returns
    #            all results that match any of the specified values.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum page size.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    #
    # @return [Types::ListAssetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_assets(
    #     outpost_identifier: 'OutpostIdentifier', # required
    #     host_id_filter: [
    #       'member'
    #     ],
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAssetsOutput
    #   resp.data.assets #=> Array<AssetInfo>
    #   resp.data.assets[0] #=> Types::AssetInfo
    #   resp.data.assets[0].asset_id #=> String
    #   resp.data.assets[0].rack_id #=> String
    #   resp.data.assets[0].asset_type #=> String, one of ["COMPUTE"]
    #   resp.data.assets[0].compute_attributes #=> Types::ComputeAttributes
    #   resp.data.assets[0].compute_attributes.host_id #=> String
    #   resp.data.next_token #=> String
    #
    def list_assets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAssetsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAssetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAssets
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::NotFoundException]),
        data_parser: Parsers::ListAssets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAssets,
        stubs: @stubs,
        params_class: Params::ListAssetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_assets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the items in the catalog. Add filters to your request to return a
    #       more specific list of results. Use filters to match an item class, storage
    #       option, or EC2 family. </p>
    #          <p>If you specify multiple filters, the filters are joined with an <code>AND</code>, and
    #       the request returns only results that match all of the specified filters.</p>
    #
    # @param [Hash] params
    #   See {Types::ListCatalogItemsInput}.
    #
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum page size.</p>
    #
    # @option params [Array<String>] :item_class_filter
    #   <p>
    #         A filter for the class of items in the catalog.
    #       </p>
    #            <p>Filter values are case sensitive. If you specify multiple
    #            values for a filter, the values are joined with an <code>OR</code>, and the request returns
    #            all results that match any of the specified values.</p>
    #
    # @option params [Array<String>] :supported_storage_filter
    #   <p>
    #         A filter for the storage options of items in the catalog.
    #       </p>
    #            <p>Filter values are case sensitive. If you specify multiple
    #            values for a filter, the values are joined with an <code>OR</code>, and the request returns
    #            all results that match any of the specified values.</p>
    #
    # @option params [Array<String>] :ec2_family_filter
    #   <p>
    #         A filter for EC2 family options for items in the catalog.
    #       </p>
    #            <p>Filter values are case sensitive. If you specify multiple
    #            values for a filter, the values are joined with an <code>OR</code>, and the request returns
    #            all results that match any of the specified values.</p>
    #
    # @return [Types::ListCatalogItemsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_catalog_items(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     item_class_filter: [
    #       'RACK' # accepts ["RACK", "SERVER"]
    #     ],
    #     supported_storage_filter: [
    #       'EBS' # accepts ["EBS", "S3"]
    #     ],
    #     ec2_family_filter: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListCatalogItemsOutput
    #   resp.data.catalog_items #=> Array<CatalogItem>
    #   resp.data.catalog_items[0] #=> Types::CatalogItem
    #   resp.data.catalog_items[0].catalog_item_id #=> String
    #   resp.data.catalog_items[0].item_status #=> String, one of ["AVAILABLE", "DISCONTINUED"]
    #   resp.data.catalog_items[0].ec2_capacities #=> Array<EC2Capacity>
    #   resp.data.catalog_items[0].ec2_capacities[0] #=> Types::EC2Capacity
    #   resp.data.catalog_items[0].ec2_capacities[0].family #=> String
    #   resp.data.catalog_items[0].ec2_capacities[0].max_size #=> String
    #   resp.data.catalog_items[0].ec2_capacities[0].quantity #=> String
    #   resp.data.catalog_items[0].power_kva #=> Float
    #   resp.data.catalog_items[0].weight_lbs #=> Integer
    #   resp.data.catalog_items[0].supported_uplink_gbps #=> Array<Integer>
    #   resp.data.catalog_items[0].supported_uplink_gbps[0] #=> Integer
    #   resp.data.catalog_items[0].supported_storage #=> Array<String>
    #   resp.data.catalog_items[0].supported_storage[0] #=> String, one of ["EBS", "S3"]
    #   resp.data.next_token #=> String
    #
    def list_catalog_items(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListCatalogItemsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListCatalogItemsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListCatalogItems
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::NotFoundException]),
        data_parser: Parsers::ListCatalogItems
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListCatalogItems,
        stubs: @stubs,
        params_class: Params::ListCatalogItemsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_catalog_items
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the Outpost orders for your Amazon Web Services account. You can filter your request by Outpost to
    #       return a more specific list of results. </p>
    #
    # @param [Hash] params
    #   See {Types::ListOrdersInput}.
    #
    # @option params [String] :outpost_identifier_filter
    #   <p>
    #         The ID or the Amazon Resource Name (ARN) of the Outpost.
    #       </p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum page size.</p>
    #
    # @return [Types::ListOrdersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_orders(
    #     outpost_identifier_filter: 'OutpostIdentifierFilter',
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListOrdersOutput
    #   resp.data.orders #=> Array<OrderSummary>
    #   resp.data.orders[0] #=> Types::OrderSummary
    #   resp.data.orders[0].outpost_id #=> String
    #   resp.data.orders[0].order_id #=> String
    #   resp.data.orders[0].order_type #=> String, one of ["OUTPOST", "REPLACEMENT"]
    #   resp.data.orders[0].status #=> String, one of ["RECEIVED", "PENDING", "PROCESSING", "INSTALLING", "FULFILLED", "CANCELLED", "PREPARING", "IN_PROGRESS", "COMPLETED", "ERROR"]
    #   resp.data.orders[0].line_item_counts_by_status #=> Hash<String, Integer>
    #   resp.data.orders[0].line_item_counts_by_status['key'] #=> Integer
    #   resp.data.orders[0].order_submission_date #=> Time
    #   resp.data.orders[0].order_fulfilled_date #=> Time
    #   resp.data.next_token #=> String
    #
    def list_orders(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListOrdersInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListOrdersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListOrders
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::NotFoundException]),
        data_parser: Parsers::ListOrders
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListOrders,
        stubs: @stubs,
        params_class: Params::ListOrdersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_orders
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the Outposts for your Amazon Web Services account. Add filters to your request to return
    #       a more specific list of results. Use filters to match an Outpost lifecycle status,
    #       Availability Zone (<code>us-east-1a</code>), and AZ ID (<code>use1-az1</code>). </p>
    #
    #          <p>If you specify multiple filters, the filters are joined with an <code>AND</code>, and the request returns only
    #       results that match all of the specified filters.</p>
    #
    # @param [Hash] params
    #   See {Types::ListOutpostsInput}.
    #
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum page size.</p>
    #
    # @option params [Array<String>] :life_cycle_status_filter
    #   <p>
    #         A filter for the lifecycle status of the Outpost.
    #       </p>
    #            <p>Filter values are case sensitive. If you specify multiple
    #            values for a filter, the values are joined with an <code>OR</code>, and the request returns
    #            all results that match any of the specified values.</p>
    #
    # @option params [Array<String>] :availability_zone_filter
    #   <p> A filter for the Availability Zone (<code>us-east-1a</code>) of the Outpost. </p>
    #
    #            <p>Filter values are case sensitive. If you specify multiple
    #            values for a filter, the values are joined with an <code>OR</code>, and the request returns
    #            all results that match any of the specified values.</p>
    #
    # @option params [Array<String>] :availability_zone_id_filter
    #   <p>
    #         A filter for the AZ IDs (<code>use1-az1</code>) of the Outpost.
    #       </p>
    #
    #            <p>Filter values are case sensitive. If you specify multiple
    #            values for a filter, the values are joined with an <code>OR</code>, and the request returns
    #            all results that match any of the specified values.</p>
    #
    # @return [Types::ListOutpostsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_outposts(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     life_cycle_status_filter: [
    #       'member'
    #     ],
    #     availability_zone_filter: [
    #       'member'
    #     ],
    #     availability_zone_id_filter: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListOutpostsOutput
    #   resp.data.outposts #=> Array<Outpost>
    #   resp.data.outposts[0] #=> Types::Outpost
    #   resp.data.outposts[0].outpost_id #=> String
    #   resp.data.outposts[0].owner_id #=> String
    #   resp.data.outposts[0].outpost_arn #=> String
    #   resp.data.outposts[0].site_id #=> String
    #   resp.data.outposts[0].name #=> String
    #   resp.data.outposts[0].description #=> String
    #   resp.data.outposts[0].life_cycle_status #=> String
    #   resp.data.outposts[0].availability_zone #=> String
    #   resp.data.outposts[0].availability_zone_id #=> String
    #   resp.data.outposts[0].tags #=> Hash<String, String>
    #   resp.data.outposts[0].tags['key'] #=> String
    #   resp.data.outposts[0].site_arn #=> String
    #   resp.data.outposts[0].supported_hardware_type #=> String, one of ["RACK", "SERVER"]
    #   resp.data.next_token #=> String
    #
    def list_outposts(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListOutpostsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListOutpostsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListOutposts
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::InternalServerException]),
        data_parser: Parsers::ListOutposts
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListOutposts,
        stubs: @stubs,
        params_class: Params::ListOutpostsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_outposts
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the Outpost sites for your Amazon Web Services account. Add operating address filters to your request to
    #       return a more specific list of results. Use filters to match site city, country code, or state/region of the
    #       operating address. </p>
    #
    #          <p>If you specify multiple filters, the filters are joined with an <code>AND</code>, and the request returns only
    #       results that match all of the specified filters.</p>
    #
    # @param [Hash] params
    #   See {Types::ListSitesInput}.
    #
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum page size.</p>
    #
    # @option params [Array<String>] :operating_address_country_code_filter
    #   <p> A filter for the country code of the Outpost site. </p>
    #            <p>Filter values are case sensitive. If you specify multiple
    #            values for a filter, the values are joined with an <code>OR</code>, and the request returns
    #            all results that match any of the specified values.</p>
    #
    # @option params [Array<String>] :operating_address_state_or_region_filter
    #   <p> A filter for the state/region of the Outpost site. </p>
    #            <p>Filter values are case sensitive. If you specify multiple
    #            values for a filter, the values are joined with an <code>OR</code>, and the request returns
    #            all results that match any of the specified values.</p>
    #
    # @option params [Array<String>] :operating_address_city_filter
    #   <p>
    #         A filter for the city of the Outpost site.
    #       </p>
    #            <p>Filter values are case sensitive. If you specify multiple
    #            values for a filter, the values are joined with an <code>OR</code>, and the request returns
    #            all results that match any of the specified values.</p>
    #
    # @return [Types::ListSitesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_sites(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     operating_address_country_code_filter: [
    #       'member'
    #     ],
    #     operating_address_state_or_region_filter: [
    #       'member'
    #     ],
    #     operating_address_city_filter: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSitesOutput
    #   resp.data.sites #=> Array<Site>
    #   resp.data.sites[0] #=> Types::Site
    #   resp.data.sites[0].site_id #=> String
    #   resp.data.sites[0].account_id #=> String
    #   resp.data.sites[0].name #=> String
    #   resp.data.sites[0].description #=> String
    #   resp.data.sites[0].tags #=> Hash<String, String>
    #   resp.data.sites[0].tags['key'] #=> String
    #   resp.data.sites[0].site_arn #=> String
    #   resp.data.sites[0].notes #=> String
    #   resp.data.sites[0].operating_address_country_code #=> String
    #   resp.data.sites[0].operating_address_state_or_region #=> String
    #   resp.data.sites[0].operating_address_city #=> String
    #   resp.data.sites[0].rack_physical_properties #=> Types::RackPhysicalProperties
    #   resp.data.sites[0].rack_physical_properties.power_draw_kva #=> String, one of ["POWER_5_KVA", "POWER_10_KVA", "POWER_15_KVA"]
    #   resp.data.sites[0].rack_physical_properties.power_phase #=> String, one of ["SINGLE_PHASE", "THREE_PHASE"]
    #   resp.data.sites[0].rack_physical_properties.power_connector #=> String, one of ["L6_30P", "IEC309", "AH530P7W", "AH532P6W"]
    #   resp.data.sites[0].rack_physical_properties.power_feed_drop #=> String, one of ["ABOVE_RACK", "BELOW_RACK"]
    #   resp.data.sites[0].rack_physical_properties.uplink_gbps #=> String, one of ["UPLINK_1G", "UPLINK_10G", "UPLINK_40G", "UPLINK_100G"]
    #   resp.data.sites[0].rack_physical_properties.uplink_count #=> String, one of ["UPLINK_COUNT_1", "UPLINK_COUNT_2", "UPLINK_COUNT_3", "UPLINK_COUNT_4", "UPLINK_COUNT_5", "UPLINK_COUNT_6", "UPLINK_COUNT_7", "UPLINK_COUNT_8", "UPLINK_COUNT_12", "UPLINK_COUNT_16"]
    #   resp.data.sites[0].rack_physical_properties.fiber_optic_cable_type #=> String, one of ["SINGLE_MODE", "MULTI_MODE"]
    #   resp.data.sites[0].rack_physical_properties.optical_standard #=> String, one of ["OPTIC_10GBASE_SR", "OPTIC_10GBASE_IR", "OPTIC_10GBASE_LR", "OPTIC_40GBASE_SR", "OPTIC_40GBASE_ESR", "OPTIC_40GBASE_IR4_LR4L", "OPTIC_40GBASE_LR4", "OPTIC_100GBASE_SR4", "OPTIC_100GBASE_CWDM4", "OPTIC_100GBASE_LR4", "OPTIC_100G_PSM4_MSA", "OPTIC_1000BASE_LX", "OPTIC_1000BASE_SX"]
    #   resp.data.sites[0].rack_physical_properties.maximum_supported_weight_lbs #=> String, one of ["NO_LIMIT", "MAX_1400_LBS", "MAX_1600_LBS", "MAX_1800_LBS", "MAX_2000_LBS"]
    #   resp.data.next_token #=> String
    #
    def list_sites(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSitesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSitesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSites
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::InternalServerException]),
        data_parser: Parsers::ListSites
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSites,
        stubs: @stubs,
        params_class: Params::ListSitesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_sites
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the tags for the specified resource.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::NotFoundException]),
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

    # <note>
    #             <p>
    #       Amazon Web Services uses this action to install Outpost servers.</p>
    #          </note>
    #          <p>
    #       Starts the connection required for Outpost server installation.
    #     </p>
    #          <p>
    #       Use CloudTrail to monitor this action or Amazon Web Services managed policy for Amazon Web Services Outposts to secure it. For
    #       more information, see <a href="https://docs.aws.amazon.com/outposts/latest/userguide/security-iam-awsmanpol.html">
    #       Amazon Web Services managed policies for Amazon Web Services Outposts</a> and <a href="https://docs.aws.amazon.com/outposts/latest/userguide/logging-using-cloudtrail.html">
    #       Logging Amazon Web Services Outposts API calls with Amazon Web Services CloudTrail</a> in the <i>Amazon Web Services Outposts User Guide</i>.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::StartConnectionInput}.
    #
    # @option params [String] :device_serial_number
    #   <p>
    #         The serial number of the dongle.
    #       </p>
    #
    # @option params [String] :asset_id
    #   <p>
    #         The ID of the Outpost server.
    #       </p>
    #
    # @option params [String] :client_public_key
    #   <p>
    #         The public key of the client.
    #       </p>
    #
    # @option params [Integer] :network_interface_device_index
    #   <p>
    #         The device index of the network interface on the Outpost server.
    #       </p>
    #
    # @return [Types::StartConnectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_connection(
    #     device_serial_number: 'DeviceSerialNumber', # required
    #     asset_id: 'AssetId', # required
    #     client_public_key: 'ClientPublicKey', # required
    #     network_interface_device_index: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartConnectionOutput
    #   resp.data.connection_id #=> String
    #   resp.data.underlay_ip_address #=> String
    #
    def start_connection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartConnectionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartConnectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartConnection
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::NotFoundException]),
        data_parser: Parsers::StartConnection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartConnection,
        stubs: @stubs,
        params_class: Params::StartConnectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_connection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds tags to the specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to add to the resource.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'ResourceArn', # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::NotFoundException]),
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

    # <p>Removes tags from the specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::NotFoundException]),
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

    # <p>
    #       Updates an Outpost.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateOutpostInput}.
    #
    # @option params [String] :outpost_id
    #   <p>
    #         The ID or the Amazon Resource Name (ARN) of the Outpost.
    #       </p>
    #            <note>
    #               <p>In requests, Amazon Web Services Outposts accepts the Amazon Resource Name (ARN) or an ID for Outposts and
    #         sites throughout the Outposts Query API. To address backwards compatibility, the parameter names
    #         <code>OutpostID</code> or <code>SiteID</code> remain in use. Despite the parameter name,
    #         you can make the request with an ARN.</p>
    #            </note>
    #
    # @option params [String] :name
    #   <p>The name of the Outpost.</p>
    #
    # @option params [String] :description
    #   <p>The description of the Outpost.</p>
    #
    # @option params [String] :supported_hardware_type
    #   <p>
    #         The type of hardware for this Outpost.
    #       </p>
    #
    # @return [Types::UpdateOutpostOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_outpost(
    #     outpost_id: 'OutpostId', # required
    #     name: 'Name',
    #     description: 'Description',
    #     supported_hardware_type: 'RACK' # accepts ["RACK", "SERVER"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateOutpostOutput
    #   resp.data.outpost #=> Types::Outpost
    #   resp.data.outpost.outpost_id #=> String
    #   resp.data.outpost.owner_id #=> String
    #   resp.data.outpost.outpost_arn #=> String
    #   resp.data.outpost.site_id #=> String
    #   resp.data.outpost.name #=> String
    #   resp.data.outpost.description #=> String
    #   resp.data.outpost.life_cycle_status #=> String
    #   resp.data.outpost.availability_zone #=> String
    #   resp.data.outpost.availability_zone_id #=> String
    #   resp.data.outpost.tags #=> Hash<String, String>
    #   resp.data.outpost.tags['key'] #=> String
    #   resp.data.outpost.site_arn #=> String
    #   resp.data.outpost.supported_hardware_type #=> String, one of ["RACK", "SERVER"]
    #
    def update_outpost(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateOutpostInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateOutpostInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateOutpost
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ConflictException, Errors::NotFoundException]),
        data_parser: Parsers::UpdateOutpost
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateOutpost,
        stubs: @stubs,
        params_class: Params::UpdateOutpostOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_outpost
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Updates the site.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateSiteInput}.
    #
    # @option params [String] :site_id
    #   <p>
    #         The ID or the Amazon Resource Name (ARN) of the site.
    #       </p>
    #            <note>
    #               <p>In requests, Amazon Web Services Outposts accepts the Amazon Resource Name (ARN) or an ID for Outposts and
    #         sites throughout the Outposts Query API. To address backwards compatibility, the parameter names
    #         <code>OutpostID</code> or <code>SiteID</code> remain in use. Despite the parameter name,
    #         you can make the request with an ARN.</p>
    #            </note>
    #
    # @option params [String] :name
    #   <p>The name of the site.</p>
    #
    # @option params [String] :description
    #   <p>The description of the site.</p>
    #
    # @option params [String] :notes
    #   <p>
    #         Notes about a site.
    #       </p>
    #
    # @return [Types::UpdateSiteOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_site(
    #     site_id: 'SiteId', # required
    #     name: 'Name',
    #     description: 'Description',
    #     notes: 'Notes'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateSiteOutput
    #   resp.data.site #=> Types::Site
    #   resp.data.site.site_id #=> String
    #   resp.data.site.account_id #=> String
    #   resp.data.site.name #=> String
    #   resp.data.site.description #=> String
    #   resp.data.site.tags #=> Hash<String, String>
    #   resp.data.site.tags['key'] #=> String
    #   resp.data.site.site_arn #=> String
    #   resp.data.site.notes #=> String
    #   resp.data.site.operating_address_country_code #=> String
    #   resp.data.site.operating_address_state_or_region #=> String
    #   resp.data.site.operating_address_city #=> String
    #   resp.data.site.rack_physical_properties #=> Types::RackPhysicalProperties
    #   resp.data.site.rack_physical_properties.power_draw_kva #=> String, one of ["POWER_5_KVA", "POWER_10_KVA", "POWER_15_KVA"]
    #   resp.data.site.rack_physical_properties.power_phase #=> String, one of ["SINGLE_PHASE", "THREE_PHASE"]
    #   resp.data.site.rack_physical_properties.power_connector #=> String, one of ["L6_30P", "IEC309", "AH530P7W", "AH532P6W"]
    #   resp.data.site.rack_physical_properties.power_feed_drop #=> String, one of ["ABOVE_RACK", "BELOW_RACK"]
    #   resp.data.site.rack_physical_properties.uplink_gbps #=> String, one of ["UPLINK_1G", "UPLINK_10G", "UPLINK_40G", "UPLINK_100G"]
    #   resp.data.site.rack_physical_properties.uplink_count #=> String, one of ["UPLINK_COUNT_1", "UPLINK_COUNT_2", "UPLINK_COUNT_3", "UPLINK_COUNT_4", "UPLINK_COUNT_5", "UPLINK_COUNT_6", "UPLINK_COUNT_7", "UPLINK_COUNT_8", "UPLINK_COUNT_12", "UPLINK_COUNT_16"]
    #   resp.data.site.rack_physical_properties.fiber_optic_cable_type #=> String, one of ["SINGLE_MODE", "MULTI_MODE"]
    #   resp.data.site.rack_physical_properties.optical_standard #=> String, one of ["OPTIC_10GBASE_SR", "OPTIC_10GBASE_IR", "OPTIC_10GBASE_LR", "OPTIC_40GBASE_SR", "OPTIC_40GBASE_ESR", "OPTIC_40GBASE_IR4_LR4L", "OPTIC_40GBASE_LR4", "OPTIC_100GBASE_SR4", "OPTIC_100GBASE_CWDM4", "OPTIC_100GBASE_LR4", "OPTIC_100G_PSM4_MSA", "OPTIC_1000BASE_LX", "OPTIC_1000BASE_SX"]
    #   resp.data.site.rack_physical_properties.maximum_supported_weight_lbs #=> String, one of ["NO_LIMIT", "MAX_1400_LBS", "MAX_1600_LBS", "MAX_1800_LBS", "MAX_2000_LBS"]
    #
    def update_site(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateSiteInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateSiteInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateSite
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ConflictException, Errors::NotFoundException]),
        data_parser: Parsers::UpdateSite
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateSite,
        stubs: @stubs,
        params_class: Params::UpdateSiteOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_site
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Updates the site address.
    #     </p>
    #          <p>
    #       To update a site address
    #       with an order <code>IN_PROGRESS</code>, you must wait for the order
    #       to complete or cancel the order.
    #     </p>
    #          <p>You
    #       can update the operating address before you place an order at the
    #       site, or after all Outposts that belong to the site have been deactivated.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateSiteAddressInput}.
    #
    # @option params [String] :site_id
    #   <p>
    #         The ID or the Amazon Resource Name (ARN) of the site.
    #       </p>
    #            <note>
    #               <p>In requests, Amazon Web Services Outposts accepts the Amazon Resource Name (ARN) or an ID for Outposts and
    #         sites throughout the Outposts Query API. To address backwards compatibility, the parameter names
    #         <code>OutpostID</code> or <code>SiteID</code> remain in use. Despite the parameter name,
    #         you can make the request with an ARN.</p>
    #            </note>
    #
    # @option params [String] :address_type
    #   <p>
    #         The type of the address.
    #       </p>
    #
    # @option params [Address] :address
    #   <p>
    #         The address for the site.
    #       </p>
    #
    # @return [Types::UpdateSiteAddressOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_site_address(
    #     site_id: 'SiteId', # required
    #     address_type: 'SHIPPING_ADDRESS', # required - accepts ["SHIPPING_ADDRESS", "OPERATING_ADDRESS"]
    #     address: {
    #       contact_name: 'ContactName',
    #       contact_phone_number: 'ContactPhoneNumber',
    #       address_line1: 'AddressLine1', # required
    #       address_line2: 'AddressLine2',
    #       address_line3: 'AddressLine3',
    #       city: 'City', # required
    #       state_or_region: 'StateOrRegion', # required
    #       district_or_county: 'DistrictOrCounty',
    #       postal_code: 'PostalCode', # required
    #       country_code: 'CountryCode', # required
    #       municipality: 'Municipality'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateSiteAddressOutput
    #   resp.data.address_type #=> String, one of ["SHIPPING_ADDRESS", "OPERATING_ADDRESS"]
    #   resp.data.address #=> Types::Address
    #   resp.data.address.contact_name #=> String
    #   resp.data.address.contact_phone_number #=> String
    #   resp.data.address.address_line1 #=> String
    #   resp.data.address.address_line2 #=> String
    #   resp.data.address.address_line3 #=> String
    #   resp.data.address.city #=> String
    #   resp.data.address.state_or_region #=> String
    #   resp.data.address.district_or_county #=> String
    #   resp.data.address.postal_code #=> String
    #   resp.data.address.country_code #=> String
    #   resp.data.address.municipality #=> String
    #
    def update_site_address(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateSiteAddressInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateSiteAddressInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateSiteAddress
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ConflictException, Errors::NotFoundException]),
        data_parser: Parsers::UpdateSiteAddress
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateSiteAddress,
        stubs: @stubs,
        params_class: Params::UpdateSiteAddressOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_site_address
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Update the physical and logistical details for a rack at a site. For more information
    #       about hardware requirements for racks, see <a href="https://docs.aws.amazon.com/outposts/latest/userguide/outposts-requirements.html#checklist">Network
    #         readiness checklist</a> in the Amazon Web Services Outposts User Guide.
    #          </p>
    #          <p>To update a rack at a site with an order of <code>IN_PROGRESS</code>, you must wait for
    #       the order to complete or cancel the order.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateSiteRackPhysicalPropertiesInput}.
    #
    # @option params [String] :site_id
    #   <p>
    #         The ID or the Amazon Resource Name (ARN) of the site.
    #       </p>
    #            <note>
    #               <p>In requests, Amazon Web Services Outposts accepts the Amazon Resource Name (ARN) or an ID for Outposts and
    #         sites throughout the Outposts Query API. To address backwards compatibility, the parameter names
    #         <code>OutpostID</code> or <code>SiteID</code> remain in use. Despite the parameter name,
    #         you can make the request with an ARN.</p>
    #            </note>
    #
    # @option params [String] :power_draw_kva
    #   <p>Specify in kVA the power draw available at the hardware placement position for the
    #         rack.</p>
    #
    # @option params [String] :power_phase
    #   <p> Specify the power option that you can provide for hardware. </p>
    #            <ul>
    #               <li>
    #                  <p>Single-phase AC feed: 200 V to 277 V, 50 Hz or 60 Hz</p>
    #               </li>
    #               <li>
    #                  <p>Three-phase AC feed: 346 V to 480 V, 50 Hz or 60 Hz</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :power_connector
    #   <p> Specify the power connector that Amazon Web Services should plan to provide for connections to the
    #         hardware. Note the correlation between <code>PowerPhase</code> and
    #         <code>PowerConnector</code>. </p>
    #            <ul>
    #               <li>
    #                  <p>Single-phase AC feed</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <b>L6-30P</b> – (common in US); 30A; single phase</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <b>IEC309 (blue)</b> – P+N+E, 6hr; 32 A; single
    #                 phase</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Three-phase AC feed</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <b>AH530P7W (red)</b> – 3P+N+E, 7hr; 30A; three
    #                 phase</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <b>AH532P6W (red)</b> – 3P+N+E, 6hr; 32A; three
    #                 phase</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #
    # @option params [String] :power_feed_drop
    #   <p> Specify whether the power feed comes above or below the rack. </p>
    #
    # @option params [String] :uplink_gbps
    #   <p> Specify the uplink speed the rack should support for the connection to the Region.
    #       </p>
    #
    # @option params [String] :uplink_count
    #   <p>Racks come with two Outpost network devices. Depending on the supported uplink speed at
    #         the site, the Outpost network devices provide a variable number of uplinks. Specify the number
    #         of uplinks for each Outpost network device that you intend to use to connect the rack to your
    #         network. Note the correlation between <code>UplinkGbps</code> and <code>UplinkCount</code>. </p>
    #            <ul>
    #               <li>
    #                  <p>1Gbps - Uplinks available: 1, 2, 4, 6, 8</p>
    #               </li>
    #               <li>
    #                  <p>10Gbps - Uplinks available: 1, 2, 4, 8, 12, 16</p>
    #               </li>
    #               <li>
    #                  <p>40 and 100 Gbps- Uplinks available: 1, 2, 4</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :fiber_optic_cable_type
    #   <p> Specify the type of fiber that you will use to attach the Outpost to your network.
    #       </p>
    #
    # @option params [String] :optical_standard
    #   <p>Specify the type of optical standard that you will use to attach the Outpost to your
    #         network. This field is dependent on uplink speed, fiber type, and distance to the upstream
    #         device. For more information
    #         about networking requirements for racks, see <a href="https://docs.aws.amazon.com/outposts/latest/userguide/outposts-requirements.html#facility-networking">Network</a>
    #           in the Amazon Web Services Outposts User Guide.
    #           </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>OPTIC_10GBASE_SR</code>: 10GBASE-SR</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPTIC_10GBASE_IR</code>: 10GBASE-IR</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPTIC_10GBASE_LR</code>: 10GBASE-LR</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPTIC_40GBASE_SR</code>: 40GBASE-SR</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPTIC_40GBASE_ESR</code>: 40GBASE-ESR</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPTIC_40GBASE_IR4_LR4L</code>: 40GBASE-IR (LR4L)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPTIC_40GBASE_LR4</code>: 40GBASE-LR4</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPTIC_100GBASE_SR4</code>: 100GBASE-SR4</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPTIC_100GBASE_CWDM4</code>: 100GBASE-CWDM4</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPTIC_100GBASE_LR4</code>: 100GBASE-LR4</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPTIC_100G_PSM4_MSA</code>: 100G PSM4 MSA</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPTIC_1000BASE_LX</code>: 1000Base-LX</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPTIC_1000BASE_SX</code> : 1000Base-SX</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :maximum_supported_weight_lbs
    #   <p> Specify the maximum rack weight that this site can support. <code>NO_LIMIT</code> is over
    #         2000lbs. </p>
    #
    # @return [Types::UpdateSiteRackPhysicalPropertiesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_site_rack_physical_properties(
    #     site_id: 'SiteId', # required
    #     power_draw_kva: 'POWER_5_KVA', # accepts ["POWER_5_KVA", "POWER_10_KVA", "POWER_15_KVA"]
    #     power_phase: 'SINGLE_PHASE', # accepts ["SINGLE_PHASE", "THREE_PHASE"]
    #     power_connector: 'L6_30P', # accepts ["L6_30P", "IEC309", "AH530P7W", "AH532P6W"]
    #     power_feed_drop: 'ABOVE_RACK', # accepts ["ABOVE_RACK", "BELOW_RACK"]
    #     uplink_gbps: 'UPLINK_1G', # accepts ["UPLINK_1G", "UPLINK_10G", "UPLINK_40G", "UPLINK_100G"]
    #     uplink_count: 'UPLINK_COUNT_1', # accepts ["UPLINK_COUNT_1", "UPLINK_COUNT_2", "UPLINK_COUNT_3", "UPLINK_COUNT_4", "UPLINK_COUNT_5", "UPLINK_COUNT_6", "UPLINK_COUNT_7", "UPLINK_COUNT_8", "UPLINK_COUNT_12", "UPLINK_COUNT_16"]
    #     fiber_optic_cable_type: 'SINGLE_MODE', # accepts ["SINGLE_MODE", "MULTI_MODE"]
    #     optical_standard: 'OPTIC_10GBASE_SR', # accepts ["OPTIC_10GBASE_SR", "OPTIC_10GBASE_IR", "OPTIC_10GBASE_LR", "OPTIC_40GBASE_SR", "OPTIC_40GBASE_ESR", "OPTIC_40GBASE_IR4_LR4L", "OPTIC_40GBASE_LR4", "OPTIC_100GBASE_SR4", "OPTIC_100GBASE_CWDM4", "OPTIC_100GBASE_LR4", "OPTIC_100G_PSM4_MSA", "OPTIC_1000BASE_LX", "OPTIC_1000BASE_SX"]
    #     maximum_supported_weight_lbs: 'NO_LIMIT' # accepts ["NO_LIMIT", "MAX_1400_LBS", "MAX_1600_LBS", "MAX_1800_LBS", "MAX_2000_LBS"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateSiteRackPhysicalPropertiesOutput
    #   resp.data.site #=> Types::Site
    #   resp.data.site.site_id #=> String
    #   resp.data.site.account_id #=> String
    #   resp.data.site.name #=> String
    #   resp.data.site.description #=> String
    #   resp.data.site.tags #=> Hash<String, String>
    #   resp.data.site.tags['key'] #=> String
    #   resp.data.site.site_arn #=> String
    #   resp.data.site.notes #=> String
    #   resp.data.site.operating_address_country_code #=> String
    #   resp.data.site.operating_address_state_or_region #=> String
    #   resp.data.site.operating_address_city #=> String
    #   resp.data.site.rack_physical_properties #=> Types::RackPhysicalProperties
    #   resp.data.site.rack_physical_properties.power_draw_kva #=> String, one of ["POWER_5_KVA", "POWER_10_KVA", "POWER_15_KVA"]
    #   resp.data.site.rack_physical_properties.power_phase #=> String, one of ["SINGLE_PHASE", "THREE_PHASE"]
    #   resp.data.site.rack_physical_properties.power_connector #=> String, one of ["L6_30P", "IEC309", "AH530P7W", "AH532P6W"]
    #   resp.data.site.rack_physical_properties.power_feed_drop #=> String, one of ["ABOVE_RACK", "BELOW_RACK"]
    #   resp.data.site.rack_physical_properties.uplink_gbps #=> String, one of ["UPLINK_1G", "UPLINK_10G", "UPLINK_40G", "UPLINK_100G"]
    #   resp.data.site.rack_physical_properties.uplink_count #=> String, one of ["UPLINK_COUNT_1", "UPLINK_COUNT_2", "UPLINK_COUNT_3", "UPLINK_COUNT_4", "UPLINK_COUNT_5", "UPLINK_COUNT_6", "UPLINK_COUNT_7", "UPLINK_COUNT_8", "UPLINK_COUNT_12", "UPLINK_COUNT_16"]
    #   resp.data.site.rack_physical_properties.fiber_optic_cable_type #=> String, one of ["SINGLE_MODE", "MULTI_MODE"]
    #   resp.data.site.rack_physical_properties.optical_standard #=> String, one of ["OPTIC_10GBASE_SR", "OPTIC_10GBASE_IR", "OPTIC_10GBASE_LR", "OPTIC_40GBASE_SR", "OPTIC_40GBASE_ESR", "OPTIC_40GBASE_IR4_LR4L", "OPTIC_40GBASE_LR4", "OPTIC_100GBASE_SR4", "OPTIC_100GBASE_CWDM4", "OPTIC_100GBASE_LR4", "OPTIC_100G_PSM4_MSA", "OPTIC_1000BASE_LX", "OPTIC_1000BASE_SX"]
    #   resp.data.site.rack_physical_properties.maximum_supported_weight_lbs #=> String, one of ["NO_LIMIT", "MAX_1400_LBS", "MAX_1600_LBS", "MAX_1800_LBS", "MAX_2000_LBS"]
    #
    def update_site_rack_physical_properties(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateSiteRackPhysicalPropertiesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateSiteRackPhysicalPropertiesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateSiteRackPhysicalProperties
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ConflictException, Errors::NotFoundException]),
        data_parser: Parsers::UpdateSiteRackPhysicalProperties
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateSiteRackPhysicalProperties,
        stubs: @stubs,
        params_class: Params::UpdateSiteRackPhysicalPropertiesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_site_rack_physical_properties
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
