# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CostAndUsageReportService
  module Types

    # Includes enum constants for AWSRegion
    #
    module AWSRegion
      # No documentation available.
      #
      CAPE_TOWN = "af-south-1"

      # No documentation available.
      #
      HONG_KONG = "ap-east-1"

      # No documentation available.
      #
      MUMBAI = "ap-south-1"

      # No documentation available.
      #
      SINGAPORE = "ap-southeast-1"

      # No documentation available.
      #
      SYDNEY = "ap-southeast-2"

      # No documentation available.
      #
      TOKYO = "ap-northeast-1"

      # No documentation available.
      #
      SEOUL = "ap-northeast-2"

      # No documentation available.
      #
      OSAKA = "ap-northeast-3"

      # No documentation available.
      #
      CANADA_CENTRAL = "ca-central-1"

      # No documentation available.
      #
      FRANKFURT = "eu-central-1"

      # No documentation available.
      #
      IRELAND = "eu-west-1"

      # No documentation available.
      #
      LONDON = "eu-west-2"

      # No documentation available.
      #
      PARIS = "eu-west-3"

      # No documentation available.
      #
      STOCKHOLM = "eu-north-1"

      # No documentation available.
      #
      MILANO = "eu-south-1"

      # No documentation available.
      #
      BAHRAIN = "me-south-1"

      # No documentation available.
      #
      SAO_PAULO = "sa-east-1"

      # No documentation available.
      #
      US_STANDARD = "us-east-1"

      # No documentation available.
      #
      OHIO = "us-east-2"

      # No documentation available.
      #
      NORTHERN_CALIFORNIA = "us-west-1"

      # No documentation available.
      #
      OREGON = "us-west-2"

      # No documentation available.
      #
      BEIJING = "cn-north-1"

      # No documentation available.
      #
      NINGXIA = "cn-northwest-1"
    end

    # Includes enum constants for AdditionalArtifact
    #
    module AdditionalArtifact
      # No documentation available.
      #
      REDSHIFT = "REDSHIFT"

      # No documentation available.
      #
      QUICKSIGHT = "QUICKSIGHT"

      # No documentation available.
      #
      ATHENA = "ATHENA"
    end

    # Includes enum constants for CompressionFormat
    #
    module CompressionFormat
      # No documentation available.
      #
      ZIP = "ZIP"

      # No documentation available.
      #
      GZIP = "GZIP"

      # No documentation available.
      #
      Parquet = "Parquet"
    end

    # <p>Deletes the specified report.</p>
    #
    # @!attribute report_name
    #   <p>The name of the report that you want to delete. The name must be unique, is case sensitive, and can't include spaces.</p>
    #
    #   @return [String]
    #
    DeleteReportDefinitionInput = ::Struct.new(
      :report_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>If the action is successful, the service sends back an HTTP 200 response.</p>
    #
    # @!attribute response_message
    #   <p>Whether the deletion was successful or not.</p>
    #
    #   @return [String]
    #
    DeleteReportDefinitionOutput = ::Struct.new(
      :response_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Requests a list of AWS Cost and Usage reports owned by the account.</p>
    #
    # @!attribute max_results
    #   <p>The maximum number of results that AWS returns for the operation.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A generic string.</p>
    #
    #   @return [String]
    #
    DescribeReportDefinitionsInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>If the action is successful, the service sends back an HTTP 200 response.</p>
    #
    # @!attribute report_definitions
    #   <p>A list of AWS Cost and Usage reports owned by the account.</p>
    #
    #   @return [Array<ReportDefinition>]
    #
    # @!attribute next_token
    #   <p>A generic string.</p>
    #
    #   @return [String]
    #
    DescribeReportDefinitionsOutput = ::Struct.new(
      :report_definitions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A report with the specified name already exists in the account. Specify a different report name.</p>
    #
    # @!attribute message
    #   <p>A message to show the detail of the exception.</p>
    #
    #   @return [String]
    #
    DuplicateReportNameException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An error on the server occurred during the processing of your request. Try again later.</p>
    #
    # @!attribute message
    #   <p>A message to show the detail of the exception.</p>
    #
    #   @return [String]
    #
    InternalErrorException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute report_name
    #   <p>The name of the report that you want to create. The name must be unique,
    #           is case sensitive, and can't include spaces. </p>
    #
    #   @return [String]
    #
    # @!attribute report_definition
    #   <p>The definition of AWS Cost and Usage Report. You can specify the report name,
    #            time unit, report format, compression format, S3 bucket, additional artifacts, and schema
    #            elements in the definition.
    #       </p>
    #
    #   @return [ReportDefinition]
    #
    ModifyReportDefinitionInput = ::Struct.new(
      :report_name,
      :report_definition,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    ModifyReportDefinitionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Creates a Cost and Usage Report.</p>
    #
    # @!attribute report_definition
    #   <p>Represents the output of the PutReportDefinition operation. The content consists of the detailed
    #         metadata and data file information. </p>
    #
    #   @return [ReportDefinition]
    #
    PutReportDefinitionInput = ::Struct.new(
      :report_definition,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>If the action is successful, the service sends back an HTTP 200 response with an empty HTTP body.</p>
    #
    PutReportDefinitionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The definition of AWS Cost and Usage Report. You can specify the report name,
    #          time unit, report format, compression format, S3 bucket, additional artifacts, and schema
    #          elements in the definition.
    #     </p>
    #
    # @!attribute report_name
    #   <p>The name of the report that you want to create. The name must be unique,
    #           is case sensitive, and can't include spaces. </p>
    #
    #   @return [String]
    #
    # @!attribute time_unit
    #   <p>The length of time covered by the report. </p>
    #
    #   Enum, one of: ["HOURLY", "DAILY", "MONTHLY"]
    #
    #   @return [String]
    #
    # @!attribute format
    #   <p>The format that AWS saves the report in.</p>
    #
    #   Enum, one of: ["textORcsv", "Parquet"]
    #
    #   @return [String]
    #
    # @!attribute compression
    #   <p>The compression format that AWS uses for the report.</p>
    #
    #   Enum, one of: ["ZIP", "GZIP", "Parquet"]
    #
    #   @return [String]
    #
    # @!attribute additional_schema_elements
    #   <p>A list of strings that indicate additional content that Amazon Web Services includes in the report, such as individual resource IDs. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute s3_bucket
    #   <p>The S3 bucket where AWS delivers the report.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_prefix
    #   <p>The prefix that AWS adds to the report name when AWS delivers the report. Your prefix
    #           can't include spaces.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_region
    #   <p>The region of the S3 bucket that AWS delivers the report into.</p>
    #
    #   Enum, one of: ["af-south-1", "ap-east-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ca-central-1", "eu-central-1", "eu-west-1", "eu-west-2", "eu-west-3", "eu-north-1", "eu-south-1", "me-south-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2", "cn-north-1", "cn-northwest-1"]
    #
    #   @return [String]
    #
    # @!attribute additional_artifacts
    #   <p>A list of manifests that you want Amazon Web Services to create for this report.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute refresh_closed_reports
    #   <p>Whether you want Amazon Web Services to update your reports after they have been finalized if Amazon Web Services detects charges related to
    #         previous months. These charges can include refunds, credits, or support fees.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute report_versioning
    #   <p>Whether you want Amazon Web Services to overwrite the previous version of each report or
    #            to deliver the report in addition to the previous versions.</p>
    #
    #   Enum, one of: ["CREATE_NEW_REPORT", "OVERWRITE_REPORT"]
    #
    #   @return [String]
    #
    # @!attribute billing_view_arn
    #   <p>
    #         The Amazon resource name of the billing view. You can get this value by using the billing view service public APIs.
    #       </p>
    #
    #   @return [String]
    #
    ReportDefinition = ::Struct.new(
      :report_name,
      :time_unit,
      :format,
      :compression,
      :additional_schema_elements,
      :s3_bucket,
      :s3_prefix,
      :s3_region,
      :additional_artifacts,
      :refresh_closed_reports,
      :report_versioning,
      :billing_view_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ReportFormat
    #
    module ReportFormat
      # No documentation available.
      #
      CSV = "textORcsv"

      # No documentation available.
      #
      Parquet = "Parquet"
    end

    # <p>This account already has five reports defined. To define a new report, you must delete an existing report.</p>
    #
    # @!attribute message
    #   <p>A message to show the detail of the exception.</p>
    #
    #   @return [String]
    #
    ReportLimitReachedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ReportVersioning
    #
    module ReportVersioning
      # No documentation available.
      #
      CREATE_NEW_REPORT = "CREATE_NEW_REPORT"

      # No documentation available.
      #
      OVERWRITE_REPORT = "OVERWRITE_REPORT"
    end

    # Includes enum constants for SchemaElement
    #
    module SchemaElement
      # No documentation available.
      #
      RESOURCES = "RESOURCES"
    end

    # Includes enum constants for TimeUnit
    #
    module TimeUnit
      # No documentation available.
      #
      HOURLY = "HOURLY"

      # No documentation available.
      #
      DAILY = "DAILY"

      # No documentation available.
      #
      MONTHLY = "MONTHLY"
    end

    # <p>The input fails to satisfy the constraints specified by an AWS service.</p>
    #
    # @!attribute message
    #   <p>A message to show the detail of the exception.</p>
    #
    #   @return [String]
    #
    ValidationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
