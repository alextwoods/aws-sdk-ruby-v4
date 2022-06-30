# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::MarketplaceCommerceAnalytics
  # An API client for MarketplaceCommerceAnalytics20150701
  # See {#initialize} for a full list of supported configuration options
  # Provides AWS Marketplace business intelligence data on-demand.
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
    def initialize(config = AWS::SDK::MarketplaceCommerceAnalytics::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # Given a data set type and data set publication date, asynchronously publishes the requested data set to the specified
    #         S3 bucket and notifies the specified SNS topic once the data is available. Returns a unique request identifier that
    #         can be used to correlate requests with notifications from the SNS topic.
    #         Data sets will be published in comma-separated values (CSV) format with the file name {data_set_type}_YYYY-MM-DD.csv.
    #         If a file with the same name already exists (e.g. if the same data set is requested twice), the original file will
    #         be overwritten by the new file.
    #         Requires a Role with an attached permissions policy providing Allow permissions for the following actions:
    #         s3:PutObject, s3:GetBucketLocation, sns:GetTopicAttributes, sns:Publish, iam:GetRolePolicy.
    #
    # @param [Hash] params
    #   See {Types::GenerateDataSetInput}.
    #
    # @option params [String] :data_set_type
    #   <p>The desired data set type.</p>
    #           <p>
    #               <ul>
    #                   <li>
    #                       <strong>customer_subscriber_hourly_monthly_subscriptions</strong>
    #                       <p>From 2017-09-15 to present: Available daily by 24:00 UTC.</p>
    #                   </li>
    #                   <li>
    #                       <strong>customer_subscriber_annual_subscriptions</strong>
    #                       <p>From 2017-09-15 to present: Available daily by 24:00 UTC.</p>
    #                   </li>
    #                   <li>
    #                       <strong>daily_business_usage_by_instance_type</strong>
    #                       <p>From 2017-09-15 to present: Available daily by 24:00 UTC.</p>
    #                   </li>
    #                   <li>
    #                       <strong>daily_business_fees</strong>
    #                       <p>From 2017-09-15 to present: Available daily by 24:00 UTC.</p>
    #                   </li>
    #                   <li>
    #                       <strong>daily_business_free_trial_conversions</strong>
    #                       <p>From 2017-09-15 to present: Available daily by 24:00 UTC.</p>
    #                   </li>
    #                   <li>
    #                       <strong>daily_business_new_instances</strong>
    #                       <p>From 2017-09-15 to present: Available daily by 24:00 UTC.</p>
    #                   </li>
    #                   <li>
    #                       <strong>daily_business_new_product_subscribers</strong>
    #                       <p>From 2017-09-15 to present: Available daily by 24:00 UTC.</p>
    #                   </li>
    #                   <li>
    #                       <strong>daily_business_canceled_product_subscribers</strong>
    #                       <p>From 2017-09-15 to present: Available daily by 24:00 UTC.</p>
    #                   </li>
    #                   <li>
    #                       <strong>monthly_revenue_billing_and_revenue_data</strong>
    #                       <p>From 2017-09-15 to present: Available monthly on the 15th day of the month by 24:00 UTC. Data includes metered transactions (e.g. hourly) from one month prior.</p>
    #                   </li>
    #                   <li>
    #                       <strong>monthly_revenue_annual_subscriptions</strong>
    #                       <p>From 2017-09-15 to present: Available monthly on the 15th day of the month by 24:00 UTC. Data includes up-front software charges (e.g. annual) from one month prior.</p>
    #                   </li>
    #                   <li>
    #                       <strong>monthly_revenue_field_demonstration_usage</strong>
    #                       <p>From 2018-03-15 to present: Available monthly on the 15th day of the month by 24:00 UTC.</p>
    #                   </li>
    #                   <li>
    #                       <strong>monthly_revenue_flexible_payment_schedule</strong>
    #                       <p>From 2018-11-15 to present: Available monthly on the 15th day of the month by 24:00 UTC.</p>
    #                   </li>
    #                   <li>
    #                       <strong>disbursed_amount_by_product</strong>
    #                       <p>From 2017-09-15 to present: Available every 30 days by 24:00 UTC.</p>
    #                   </li>
    #                   <li>
    #                       <strong>disbursed_amount_by_instance_hours</strong>
    #                       <p>From 2017-09-15 to present: Available every 30 days by 24:00 UTC.</p>
    #                   </li>
    #                   <li>
    #                       <strong>disbursed_amount_by_customer_geo</strong>
    #                       <p>From 2017-09-15 to present: Available every 30 days by 24:00 UTC.</p>
    #                   </li>
    #                   <li>
    #                       <strong>disbursed_amount_by_age_of_uncollected_funds</strong>
    #                       <p>From 2017-09-15 to present: Available every 30 days by 24:00 UTC.</p>
    #                   </li>
    #                   <li>
    #                       <strong>disbursed_amount_by_age_of_disbursed_funds</strong>
    #                       <p>From 2017-09-15 to present: Available every 30 days by 24:00 UTC.</p>
    #                   </li>
    #                   <li>
    #                       <strong>disbursed_amount_by_age_of_past_due_funds</strong>
    #                       <p>From 2018-04-07 to present: Available every 30 days by 24:00 UTC.</p>
    #                   </li>
    #                   <li>
    #                       <strong>disbursed_amount_by_uncollected_funds_breakdown</strong>
    #                       <p>From 2019-10-04 to present: Available every 30 days by 24:00 UTC.</p>
    #                   </li>
    #                   <li>
    #                       <strong>sales_compensation_billed_revenue</strong>
    #                       <p>From 2017-09-15 to present: Available monthly on the 15th day of the month by 24:00 UTC. Data includes metered transactions (e.g. hourly) from one month prior, and up-front software charges (e.g. annual) from one month prior.</p>
    #                   </li>
    #                   <li>
    #                       <strong>us_sales_and_use_tax_records</strong>
    #                       <p>From 2017-09-15 to present: Available monthly on the 15th day of the month by 24:00 UTC.</p>
    #                   </li>
    #                   <li>
    #                       <strong>disbursed_amount_by_product_with_uncollected_funds</strong>
    #                       <p>This data set is deprecated. Download related reports from AMMP instead!</p>
    #                   </li>
    #                   <li>
    #                       <strong>customer_profile_by_industry</strong>
    #                       <p>This data set is deprecated. Download related reports from AMMP instead!</p>
    #                   </li>
    #                   <li>
    #                       <strong>customer_profile_by_revenue</strong>
    #                       <p>This data set is deprecated. Download related reports from AMMP instead!</p>
    #                   </li>
    #                   <li>
    #                       <strong>customer_profile_by_geography</strong>
    #                       <p>This data set is deprecated. Download related reports from AMMP instead!</p>
    #                   </li>
    #               </ul>
    #           </p>
    #
    # @option params [Time] :data_set_publication_date
    #   The date a data set was published.
    #           For daily data sets, provide a date with day-level granularity for the desired day.
    #           For monthly data sets except those with prefix disbursed_amount, provide a date with month-level granularity for the desired month (the day value will be ignored).
    #           For data sets with prefix disbursed_amount, provide a date with day-level granularity for the desired day. For these data sets we will look backwards in time over the range of 31 days until the first data set is found (the latest one).
    #
    # @option params [String] :role_name_arn
    #   The Amazon Resource Name (ARN) of the Role with an attached permissions policy to interact with the provided
    #           AWS services.
    #
    # @option params [String] :destination_s3_bucket_name
    #   The name (friendly name, not ARN) of the destination S3 bucket.
    #
    # @option params [String] :destination_s3_prefix
    #   (Optional) The desired S3 prefix for the published data set, similar to a directory path in standard file systems.
    #           For example, if given the bucket name "mybucket" and the prefix "myprefix/mydatasets", the output file
    #           "outputfile" would be published to "s3://mybucket/myprefix/mydatasets/outputfile".
    #           If the prefix directory structure does not exist, it will be created.
    #           If no prefix is provided, the data set will be published to the S3 bucket root.
    #
    # @option params [String] :sns_topic_arn
    #   Amazon Resource Name (ARN) for the SNS Topic that will be notified when the data set has been published or if an
    #           error has occurred.
    #
    # @option params [Hash<String, String>] :customer_defined_values
    #   (Optional) Key-value pairs which will be returned, unmodified, in the
    #           Amazon SNS notification message and the data set metadata file. These
    #           key-value pairs can be used to correlated responses with tracking
    #           information from other systems.
    #
    # @return [Types::GenerateDataSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.generate_data_set(
    #     data_set_type: 'customer_subscriber_hourly_monthly_subscriptions', # required - accepts ["customer_subscriber_hourly_monthly_subscriptions", "customer_subscriber_annual_subscriptions", "daily_business_usage_by_instance_type", "daily_business_fees", "daily_business_free_trial_conversions", "daily_business_new_instances", "daily_business_new_product_subscribers", "daily_business_canceled_product_subscribers", "monthly_revenue_billing_and_revenue_data", "monthly_revenue_annual_subscriptions", "monthly_revenue_field_demonstration_usage", "monthly_revenue_flexible_payment_schedule", "disbursed_amount_by_product", "disbursed_amount_by_product_with_uncollected_funds", "disbursed_amount_by_instance_hours", "disbursed_amount_by_customer_geo", "disbursed_amount_by_age_of_uncollected_funds", "disbursed_amount_by_age_of_disbursed_funds", "disbursed_amount_by_age_of_past_due_funds", "disbursed_amount_by_uncollected_funds_breakdown", "customer_profile_by_industry", "customer_profile_by_revenue", "customer_profile_by_geography", "sales_compensation_billed_revenue", "us_sales_and_use_tax_records"]
    #     data_set_publication_date: Time.now, # required
    #     role_name_arn: 'roleNameArn', # required
    #     destination_s3_bucket_name: 'destinationS3BucketName', # required
    #     destination_s3_prefix: 'destinationS3Prefix',
    #     sns_topic_arn: 'snsTopicArn', # required
    #     customer_defined_values: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GenerateDataSetOutput
    #   resp.data.data_set_request_id #=> String
    #
    def generate_data_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GenerateDataSetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GenerateDataSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GenerateDataSet
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::MarketplaceCommerceAnalyticsException]),
        data_parser: Parsers::GenerateDataSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GenerateDataSet,
        stubs: @stubs,
        params_class: Params::GenerateDataSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :generate_data_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Given a data set type and a from date, asynchronously publishes the requested customer support data
    #         to the specified S3 bucket and notifies the specified SNS topic once the data is available. Returns a unique request
    #         identifier that can be used to correlate requests with notifications from the SNS topic.
    #         Data sets will be published in comma-separated values (CSV) format with the file name {data_set_type}_YYYY-MM-DD'T'HH-mm-ss'Z'.csv.
    #         If a file with the same name already exists (e.g. if the same data set is requested twice), the original file will
    #         be overwritten by the new file.
    #         Requires a Role with an attached permissions policy providing Allow permissions for the following actions:
    #         s3:PutObject, s3:GetBucketLocation, sns:GetTopicAttributes, sns:Publish, iam:GetRolePolicy.
    #
    # @param [Hash] params
    #   See {Types::StartSupportDataExportInput}.
    #
    # @option params [String] :data_set_type
    #   <p>
    #              Specifies the data set type to be written to the output csv file. The data set types customer_support_contacts_data and
    #              test_customer_support_contacts_data both result in a csv file containing the following fields: Product Id, Product Code, Customer Guid,
    #              Subscription Guid, Subscription Start Date, Organization, AWS Account Id, Given Name, Surname, Telephone Number, Email, Title,
    #              Country Code, ZIP Code, Operation Type, and Operation Time.
    #           </p>
    #           <p>
    #               <ul>
    #                   <li><i>customer_support_contacts_data</i> Customer support contact data. The data set will contain all changes (Creates, Updates, and Deletes) to customer support contact data from the date specified in the from_date parameter.</li>
    #                   <li><i>test_customer_support_contacts_data</i> An example data set containing static test data in the same format as customer_support_contacts_data</li>
    #               </ul>
    #           </p>
    #
    # @option params [Time] :from_date
    #   The start date from which to retrieve the data set in UTC.  This parameter only affects the customer_support_contacts_data data set type.
    #
    # @option params [String] :role_name_arn
    #   The Amazon Resource Name (ARN) of the Role with an attached permissions policy to interact with the provided
    #           AWS services.
    #
    # @option params [String] :destination_s3_bucket_name
    #   The name (friendly name, not ARN) of the destination S3 bucket.
    #
    # @option params [String] :destination_s3_prefix
    #   (Optional) The desired S3 prefix for the published data set, similar to a directory path in standard file systems.
    #           For example, if given the bucket name "mybucket" and the prefix "myprefix/mydatasets", the output file
    #           "outputfile" would be published to "s3://mybucket/myprefix/mydatasets/outputfile".
    #           If the prefix directory structure does not exist, it will be created.
    #           If no prefix is provided, the data set will be published to the S3 bucket root.
    #
    # @option params [String] :sns_topic_arn
    #   Amazon Resource Name (ARN) for the SNS Topic that will be notified when the data set has been published or if an
    #           error has occurred.
    #
    # @option params [Hash<String, String>] :customer_defined_values
    #   (Optional) Key-value pairs which will be returned, unmodified, in the
    #           Amazon SNS notification message and the data set metadata file.
    #
    # @return [Types::StartSupportDataExportOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_support_data_export(
    #     data_set_type: 'customer_support_contacts_data', # required - accepts ["customer_support_contacts_data", "test_customer_support_contacts_data"]
    #     from_date: Time.now, # required
    #     role_name_arn: 'roleNameArn', # required
    #     destination_s3_bucket_name: 'destinationS3BucketName', # required
    #     destination_s3_prefix: 'destinationS3Prefix',
    #     sns_topic_arn: 'snsTopicArn', # required
    #     customer_defined_values: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartSupportDataExportOutput
    #   resp.data.data_set_request_id #=> String
    #
    def start_support_data_export(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartSupportDataExportInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartSupportDataExportInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartSupportDataExport
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::MarketplaceCommerceAnalyticsException]),
        data_parser: Parsers::StartSupportDataExport
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartSupportDataExport,
        stubs: @stubs,
        params_class: Params::StartSupportDataExportOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_support_data_export
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
