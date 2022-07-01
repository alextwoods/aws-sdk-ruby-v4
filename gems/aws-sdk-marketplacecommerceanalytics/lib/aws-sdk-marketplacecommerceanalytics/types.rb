# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MarketplaceCommerceAnalytics
  module Types

    # Includes enum constants for DataSetType
    #
    module DataSetType
      # No documentation available.
      #
      CUSTOMER_SUBSCRIBER_HOURLY_MONTHLY_SUBSCRIPTIONS = "customer_subscriber_hourly_monthly_subscriptions"

      # No documentation available.
      #
      CUSTOMER_SUBSCRIBER_ANNUAL_SUBSCRIPTIONS = "customer_subscriber_annual_subscriptions"

      # No documentation available.
      #
      DAILY_BUSINESS_USAGE_BY_INSTANCE_TYPE = "daily_business_usage_by_instance_type"

      # No documentation available.
      #
      DAILY_BUSINESS_FEES = "daily_business_fees"

      # No documentation available.
      #
      DAILY_BUSINESS_FREE_TRIAL_CONVERSIONS = "daily_business_free_trial_conversions"

      # No documentation available.
      #
      DAILY_BUSINESS_NEW_INSTANCES = "daily_business_new_instances"

      # No documentation available.
      #
      DAILY_BUSINESS_NEW_PRODUCT_SUBSCRIBERS = "daily_business_new_product_subscribers"

      # No documentation available.
      #
      DAILY_BUSINESS_CANCELED_PRODUCT_SUBSCRIBERS = "daily_business_canceled_product_subscribers"

      # No documentation available.
      #
      MONTHLY_REVENUE_BILLING_AND_REVENUE_DATA = "monthly_revenue_billing_and_revenue_data"

      # No documentation available.
      #
      MONTHLY_REVENUE_ANNUAL_SUBSCRIPTIONS = "monthly_revenue_annual_subscriptions"

      # No documentation available.
      #
      MONTHLY_REVENUE_FIELD_DEMONSTRATION_USAGE = "monthly_revenue_field_demonstration_usage"

      # No documentation available.
      #
      MONTHLY_REVENUE_FLEXIBLE_PAYMENT_SCHEDULE = "monthly_revenue_flexible_payment_schedule"

      # No documentation available.
      #
      DISBURSED_AMOUNT_BY_PRODUCT = "disbursed_amount_by_product"

      # No documentation available.
      #
      DISBURSED_AMOUNT_BY_PRODUCT_WITH_UNCOLLECTED_FUNDS = "disbursed_amount_by_product_with_uncollected_funds"

      # No documentation available.
      #
      DISBURSED_AMOUNT_BY_INSTANCE_HOURS = "disbursed_amount_by_instance_hours"

      # No documentation available.
      #
      DISBURSED_AMOUNT_BY_CUSTOMER_GEO = "disbursed_amount_by_customer_geo"

      # No documentation available.
      #
      DISBURSED_AMOUNT_BY_AGE_OF_UNCOLLECTED_FUNDS = "disbursed_amount_by_age_of_uncollected_funds"

      # No documentation available.
      #
      DISBURSED_AMOUNT_BY_AGE_OF_DISBURSED_FUNDS = "disbursed_amount_by_age_of_disbursed_funds"

      # No documentation available.
      #
      DISBURSED_AMOUNT_BY_AGE_OF_PAST_DUE_FUNDS = "disbursed_amount_by_age_of_past_due_funds"

      # No documentation available.
      #
      DISBURSED_AMOUNT_BY_UNCOLLECTED_FUNDS_BREAKDOWN = "disbursed_amount_by_uncollected_funds_breakdown"

      # No documentation available.
      #
      CUSTOMER_PROFILE_BY_INDUSTRY = "customer_profile_by_industry"

      # No documentation available.
      #
      CUSTOMER_PROFILE_BY_REVENUE = "customer_profile_by_revenue"

      # No documentation available.
      #
      CUSTOMER_PROFILE_BY_GEOGRAPHY = "customer_profile_by_geography"

      # No documentation available.
      #
      SALES_COMPENSATION_BILLED_REVENUE = "sales_compensation_billed_revenue"

      # No documentation available.
      #
      US_SALES_AND_USE_TAX_RECORDS = "us_sales_and_use_tax_records"
    end

    # Container for the parameters to the GenerateDataSet operation.
    #
    # @!attribute data_set_type
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
    #   Enum, one of: ["customer_subscriber_hourly_monthly_subscriptions", "customer_subscriber_annual_subscriptions", "daily_business_usage_by_instance_type", "daily_business_fees", "daily_business_free_trial_conversions", "daily_business_new_instances", "daily_business_new_product_subscribers", "daily_business_canceled_product_subscribers", "monthly_revenue_billing_and_revenue_data", "monthly_revenue_annual_subscriptions", "monthly_revenue_field_demonstration_usage", "monthly_revenue_flexible_payment_schedule", "disbursed_amount_by_product", "disbursed_amount_by_product_with_uncollected_funds", "disbursed_amount_by_instance_hours", "disbursed_amount_by_customer_geo", "disbursed_amount_by_age_of_uncollected_funds", "disbursed_amount_by_age_of_disbursed_funds", "disbursed_amount_by_age_of_past_due_funds", "disbursed_amount_by_uncollected_funds_breakdown", "customer_profile_by_industry", "customer_profile_by_revenue", "customer_profile_by_geography", "sales_compensation_billed_revenue", "us_sales_and_use_tax_records"]
    #
    #   @return [String]
    #
    # @!attribute data_set_publication_date
    #   The date a data set was published.
    #           For daily data sets, provide a date with day-level granularity for the desired day.
    #           For monthly data sets except those with prefix disbursed_amount, provide a date with month-level granularity for the desired month (the day value will be ignored).
    #           For data sets with prefix disbursed_amount, provide a date with day-level granularity for the desired day. For these data sets we will look backwards in time over the range of 31 days until the first data set is found (the latest one).
    #
    #   @return [Time]
    #
    # @!attribute role_name_arn
    #   The Amazon Resource Name (ARN) of the Role with an attached permissions policy to interact with the provided
    #           AWS services.
    #
    #   @return [String]
    #
    # @!attribute destination_s3_bucket_name
    #   The name (friendly name, not ARN) of the destination S3 bucket.
    #
    #   @return [String]
    #
    # @!attribute destination_s3_prefix
    #   (Optional) The desired S3 prefix for the published data set, similar to a directory path in standard file systems.
    #           For example, if given the bucket name "mybucket" and the prefix "myprefix/mydatasets", the output file
    #           "outputfile" would be published to "s3://mybucket/myprefix/mydatasets/outputfile".
    #           If the prefix directory structure does not exist, it will be created.
    #           If no prefix is provided, the data set will be published to the S3 bucket root.
    #
    #   @return [String]
    #
    # @!attribute sns_topic_arn
    #   Amazon Resource Name (ARN) for the SNS Topic that will be notified when the data set has been published or if an
    #           error has occurred.
    #
    #   @return [String]
    #
    # @!attribute customer_defined_values
    #   (Optional) Key-value pairs which will be returned, unmodified, in the
    #           Amazon SNS notification message and the data set metadata file. These
    #           key-value pairs can be used to correlated responses with tracking
    #           information from other systems.
    #
    #   @return [Hash<String, String>]
    #
    GenerateDataSetInput = ::Struct.new(
      :data_set_type,
      :data_set_publication_date,
      :role_name_arn,
      :destination_s3_bucket_name,
      :destination_s3_prefix,
      :sns_topic_arn,
      :customer_defined_values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Container for the result of the GenerateDataSet operation.
    #
    # @!attribute data_set_request_id
    #   A unique identifier representing a specific request to the GenerateDataSet operation. This identifier can be
    #           used to correlate a request with notifications from the SNS topic.
    #
    #   @return [String]
    #
    GenerateDataSetOutput = ::Struct.new(
      :data_set_request_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # This exception is thrown when an internal service error occurs.
    #
    # @!attribute message
    #   This message describes details of the error.
    #
    #   @return [String]
    #
    MarketplaceCommerceAnalyticsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Container for the parameters to the StartSupportDataExport operation.
    #
    # @!attribute data_set_type
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
    #   Enum, one of: ["customer_support_contacts_data", "test_customer_support_contacts_data"]
    #
    #   @return [String]
    #
    # @!attribute from_date
    #   The start date from which to retrieve the data set in UTC.  This parameter only affects the customer_support_contacts_data data set type.
    #
    #   @return [Time]
    #
    # @!attribute role_name_arn
    #   The Amazon Resource Name (ARN) of the Role with an attached permissions policy to interact with the provided
    #           AWS services.
    #
    #   @return [String]
    #
    # @!attribute destination_s3_bucket_name
    #   The name (friendly name, not ARN) of the destination S3 bucket.
    #
    #   @return [String]
    #
    # @!attribute destination_s3_prefix
    #   (Optional) The desired S3 prefix for the published data set, similar to a directory path in standard file systems.
    #           For example, if given the bucket name "mybucket" and the prefix "myprefix/mydatasets", the output file
    #           "outputfile" would be published to "s3://mybucket/myprefix/mydatasets/outputfile".
    #           If the prefix directory structure does not exist, it will be created.
    #           If no prefix is provided, the data set will be published to the S3 bucket root.
    #
    #   @return [String]
    #
    # @!attribute sns_topic_arn
    #   Amazon Resource Name (ARN) for the SNS Topic that will be notified when the data set has been published or if an
    #           error has occurred.
    #
    #   @return [String]
    #
    # @!attribute customer_defined_values
    #   (Optional) Key-value pairs which will be returned, unmodified, in the
    #           Amazon SNS notification message and the data set metadata file.
    #
    #   @return [Hash<String, String>]
    #
    StartSupportDataExportInput = ::Struct.new(
      :data_set_type,
      :from_date,
      :role_name_arn,
      :destination_s3_bucket_name,
      :destination_s3_prefix,
      :sns_topic_arn,
      :customer_defined_values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Container for the result of the StartSupportDataExport operation.
    #
    # @!attribute data_set_request_id
    #   A unique identifier representing a specific request to the StartSupportDataExport operation. This identifier can be
    #           used to correlate a request with notifications from the SNS topic.
    #
    #   @return [String]
    #
    StartSupportDataExportOutput = ::Struct.new(
      :data_set_request_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SupportDataSetType
    #
    module SupportDataSetType
      # No documentation available.
      #
      customer_support_contacts_data = "customer_support_contacts_data"

      # No documentation available.
      #
      test_customer_support_contacts_data = "test_customer_support_contacts_data"
    end

  end
end
