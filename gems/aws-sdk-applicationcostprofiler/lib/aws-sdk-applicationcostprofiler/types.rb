# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ApplicationCostProfiler
  module Types

    # <p>You do not have permission to perform this action.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AccessDeniedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute report_id
    #   <p>Required. ID of the report to delete.</p>
    #
    #   @return [String]
    #
    DeleteReportDefinitionInput = ::Struct.new(
      :report_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute report_id
    #   <p>ID of the report that was deleted.</p>
    #
    #   @return [String]
    #
    DeleteReportDefinitionOutput = ::Struct.new(
      :report_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Format
    #
    module Format
      # No documentation available.
      #
      CSV = "CSV"

      # No documentation available.
      #
      PARQUET = "PARQUET"
    end

    # @!attribute report_id
    #   <p>ID of the report to retrieve.</p>
    #
    #   @return [String]
    #
    GetReportDefinitionInput = ::Struct.new(
      :report_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute report_id
    #   <p>ID of the report retrieved.</p>
    #
    #   @return [String]
    #
    # @!attribute report_description
    #   <p>Description of the report.</p>
    #
    #   @return [String]
    #
    # @!attribute report_frequency
    #   <p>Cadence used to generate the report.</p>
    #
    #   Enum, one of: ["MONTHLY", "DAILY", "ALL"]
    #
    #   @return [String]
    #
    # @!attribute format
    #   <p>Format of the generated report.</p>
    #
    #   Enum, one of: ["CSV", "PARQUET"]
    #
    #   @return [String]
    #
    # @!attribute destination_s3_location
    #   <p>Amazon Simple Storage Service (Amazon S3) location where the report is uploaded.</p>
    #
    #   @return [S3Location]
    #
    # @!attribute created_at
    #   <p>Timestamp (milliseconds) when this report definition was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated
    #   <p>Timestamp (milliseconds) when this report definition was last updated.</p>
    #
    #   @return [Time]
    #
    GetReportDefinitionOutput = ::Struct.new(
      :report_id,
      :report_description,
      :report_frequency,
      :format,
      :destination_s3_location,
      :created_at,
      :last_updated,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute source_s3_location
    #   <p>Amazon S3 location to import application usage data from.</p>
    #
    #   @return [SourceS3Location]
    #
    ImportApplicationUsageInput = ::Struct.new(
      :source_s3_location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute import_id
    #   <p>ID of the import request.</p>
    #
    #   @return [String]
    #
    ImportApplicationUsageOutput = ::Struct.new(
      :import_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An internal server error occurred. Retry your request.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalServerException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token value from a previous call to access the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #
    #   @return [Integer]
    #
    ListReportDefinitionsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute report_definitions
    #   <p>The retrieved reports.</p>
    #
    #   @return [Array<ReportDefinition>]
    #
    # @!attribute next_token
    #   <p>The value of the next token, if it exists. Null if there are no more results.</p>
    #
    #   @return [String]
    #
    ListReportDefinitionsOutput = ::Struct.new(
      :report_definitions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute report_id
    #   <p>Required. ID of the report. You can choose any valid string matching the pattern for the
    #         ID.</p>
    #
    #   @return [String]
    #
    # @!attribute report_description
    #   <p>Required. Description of the report.</p>
    #
    #   @return [String]
    #
    # @!attribute report_frequency
    #   <p>Required. The cadence to generate the report.</p>
    #
    #   Enum, one of: ["MONTHLY", "DAILY", "ALL"]
    #
    #   @return [String]
    #
    # @!attribute format
    #   <p>Required. The format to use for the generated report.</p>
    #
    #   Enum, one of: ["CSV", "PARQUET"]
    #
    #   @return [String]
    #
    # @!attribute destination_s3_location
    #   <p>Required. Amazon Simple Storage Service (Amazon S3) location where Application Cost Profiler uploads the
    #         report.</p>
    #
    #   @return [S3Location]
    #
    PutReportDefinitionInput = ::Struct.new(
      :report_id,
      :report_description,
      :report_frequency,
      :format,
      :destination_s3_location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute report_id
    #   <p>ID of the report.</p>
    #
    #   @return [String]
    #
    PutReportDefinitionOutput = ::Struct.new(
      :report_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration of a report in AWS Application Cost Profiler.</p>
    #
    # @!attribute report_id
    #   <p>The ID of the report.</p>
    #
    #   @return [String]
    #
    # @!attribute report_description
    #   <p>Description of the report</p>
    #
    #   @return [String]
    #
    # @!attribute report_frequency
    #   <p>The cadence at which the report is generated.</p>
    #
    #   Enum, one of: ["MONTHLY", "DAILY", "ALL"]
    #
    #   @return [String]
    #
    # @!attribute format
    #   <p>The format used for the generated reports.</p>
    #
    #   Enum, one of: ["CSV", "PARQUET"]
    #
    #   @return [String]
    #
    # @!attribute destination_s3_location
    #   <p>The location in Amazon Simple Storage Service (Amazon S3) the reports should be saved to.</p>
    #
    #   @return [S3Location]
    #
    # @!attribute created_at
    #   <p>Timestamp (milliseconds) when this report definition was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_at
    #   <p>Timestamp (milliseconds) when this report definition was last updated.</p>
    #
    #   @return [Time]
    #
    ReportDefinition = ::Struct.new(
      :report_id,
      :report_description,
      :report_frequency,
      :format,
      :destination_s3_location,
      :created_at,
      :last_updated_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ReportFrequency
    #
    module ReportFrequency
      # No documentation available.
      #
      MONTHLY = "MONTHLY"

      # No documentation available.
      #
      DAILY = "DAILY"

      # No documentation available.
      #
      ALL = "ALL"
    end

    # Includes enum constants for S3BucketRegion
    #
    module S3BucketRegion
      # No documentation available.
      #
      AP_EAST_1 = "ap-east-1"

      # No documentation available.
      #
      ME_SOUTH_1 = "me-south-1"

      # No documentation available.
      #
      EU_SOUTH_1 = "eu-south-1"

      # No documentation available.
      #
      AF_SOUTH_1 = "af-south-1"
    end

    # <p>Represents the Amazon Simple Storage Service (Amazon S3) location where AWS Application Cost Profiler
    #       reports are generated and then written to.</p>
    #
    # @!attribute bucket
    #   <p>Name of the S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute prefix
    #   <p>Prefix for the location to write to.</p>
    #
    #   @return [String]
    #
    S3Location = ::Struct.new(
      :bucket,
      :prefix,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Your request exceeds one or more of the service quotas.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ServiceQuotaExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the Amazon Simple Storage Service (Amazon S3) location where usage data is read
    #       from.</p>
    #
    # @!attribute bucket
    #   <p>Name of the bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>Key of the object.</p>
    #
    #   @return [String]
    #
    # @!attribute region
    #   <p>Region of the bucket. Only required for Regions that are disabled by default.
    #           For more infomration about Regions that are disabled by default, see <a href="https://docs.aws.amazon.com/general/latest/gr/rande-manage.html rande-manage-enable">
    #             Enabling a Region</a> in the <i>AWS General Reference guide</i>.</p>
    #
    #   Enum, one of: ["ap-east-1", "me-south-1", "eu-south-1", "af-south-1"]
    #
    #   @return [String]
    #
    SourceS3Location = ::Struct.new(
      :bucket,
      :key,
      :region,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The calls to AWS Application Cost Profiler API are throttled. The request was denied.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ThrottlingException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute report_id
    #   <p>Required. ID of the report to update.</p>
    #
    #   @return [String]
    #
    # @!attribute report_description
    #   <p>Required. Description of the report.</p>
    #
    #   @return [String]
    #
    # @!attribute report_frequency
    #   <p>Required. The cadence to generate the report.</p>
    #
    #   Enum, one of: ["MONTHLY", "DAILY", "ALL"]
    #
    #   @return [String]
    #
    # @!attribute format
    #   <p>Required. The format to use for the generated report.</p>
    #
    #   Enum, one of: ["CSV", "PARQUET"]
    #
    #   @return [String]
    #
    # @!attribute destination_s3_location
    #   <p>Required. Amazon Simple Storage Service (Amazon S3) location where Application Cost Profiler uploads the
    #         report.</p>
    #
    #   @return [S3Location]
    #
    UpdateReportDefinitionInput = ::Struct.new(
      :report_id,
      :report_description,
      :report_frequency,
      :format,
      :destination_s3_location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute report_id
    #   <p>ID of the report.</p>
    #
    #   @return [String]
    #
    UpdateReportDefinitionOutput = ::Struct.new(
      :report_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input fails to satisfy the constraints for the API.</p>
    #
    # @!attribute message
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
