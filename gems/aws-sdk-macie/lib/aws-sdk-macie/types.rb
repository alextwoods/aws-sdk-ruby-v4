# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Macie
  module Types

    # <p>(Discontinued) You do not have required permissions to access the requested resource.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   Resource type that caused the exception
    #
    #   @return [String]
    #
    AccessDeniedException = ::Struct.new(
      :message,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute member_account_id
    #   <p>(Discontinued) The ID of the Amazon Web Services account that you want to associate with Amazon Macie
    #         Classic as a member account.</p>
    #
    #   @return [String]
    #
    AssociateMemberAccountInput = ::Struct.new(
      :member_account_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AssociateMemberAccountOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute member_account_id
    #   <p>(Discontinued) The ID of the Amazon Macie Classic member account whose resources you
    #         want to associate with Macie Classic.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_resources
    #   <p>(Discontinued) The S3 resources that you want to associate with Amazon Macie Classic
    #         for monitoring and data classification.</p>
    #
    #   @return [Array<S3ResourceClassification>]
    #
    AssociateS3ResourcesInput = ::Struct.new(
      :member_account_id,
      :s3_resources,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute failed_s3_resources
    #   <p>(Discontinued) S3 resources that couldn't be associated with Amazon Macie Classic. An
    #         error code and an error message are provided for each failed item.</p>
    #
    #   @return [Array<FailedS3Resource>]
    #
    AssociateS3ResourcesOutput = ::Struct.new(
      :failed_s3_resources,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>(Discontinued) The classification type that Amazon Macie Classic applies to the
    #       associated S3 resources.</p>
    #
    # @!attribute one_time
    #   <p>(Discontinued) A one-time classification of all of the existing objects in a specified
    #         S3 bucket. </p>
    #
    #   Enum, one of: ["FULL", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute continuous
    #   <p>(Discontinued) A continuous classification of the objects that are added to a specified
    #         S3 bucket. Amazon Macie Classic begins performing continuous classification after a bucket is
    #         successfully associated with Macie Classic.</p>
    #
    #   Enum, one of: ["FULL"]
    #
    #   @return [String]
    #
    ClassificationType = ::Struct.new(
      :one_time,
      :continuous,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>(Discontinued) The classification type that Amazon Macie Classic applies to the
    #       associated S3 resources. At least one of the classification types (<code>oneTime</code> or <code>continuous</code>) must
    #       be specified. </p>
    #
    # @!attribute one_time
    #   <p>(Discontinued) A one-time classification of all of the existing objects in a specified
    #         S3 bucket. </p>
    #
    #   Enum, one of: ["FULL", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute continuous
    #   <p>(Discontinued) A continuous classification of the objects that are added to a specified
    #         S3 bucket. Amazon Macie Classic begins performing continuous classification after a bucket is
    #         successfully associated with Macie Classic. </p>
    #
    #   Enum, one of: ["FULL"]
    #
    #   @return [String]
    #
    ClassificationTypeUpdate = ::Struct.new(
      :one_time,
      :continuous,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute member_account_id
    #   <p>(Discontinued) The ID of the member account that you want to remove from Amazon Macie
    #         Classic.</p>
    #
    #   @return [String]
    #
    DisassociateMemberAccountInput = ::Struct.new(
      :member_account_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateMemberAccountOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute member_account_id
    #   <p>(Discontinued) The ID of the Amazon Macie Classic member account whose resources you
    #         want to remove from being monitored by Macie Classic.</p>
    #
    #   @return [String]
    #
    # @!attribute associated_s3_resources
    #   <p>(Discontinued) The S3 resources (buckets or prefixes) that you want to remove from
    #         being monitored and classified by Amazon Macie Classic.</p>
    #
    #   @return [Array<S3Resource>]
    #
    DisassociateS3ResourcesInput = ::Struct.new(
      :member_account_id,
      :associated_s3_resources,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute failed_s3_resources
    #   <p>(Discontinued) S3 resources that couldn't be removed from being monitored and
    #         classified by Amazon Macie Classic. An error code and an error message are provided for each
    #         failed item. </p>
    #
    #   @return [Array<FailedS3Resource>]
    #
    DisassociateS3ResourcesOutput = ::Struct.new(
      :failed_s3_resources,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>(Discontinued) Includes details about the failed S3 resources.</p>
    #
    # @!attribute failed_item
    #   <p>(Discontinued) The failed S3 resources.</p>
    #
    #   @return [S3Resource]
    #
    # @!attribute error_code
    #   <p>(Discontinued) The status code of a failed item.</p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>(Discontinued) The error message of a failed item.</p>
    #
    #   @return [String]
    #
    FailedS3Resource = ::Struct.new(
      :failed_item,
      :error_code,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>(Discontinued) Internal server error.</p>
    #
    # @!attribute error_code
    #   Error code for the exception
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalException = ::Struct.new(
      :error_code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>(Discontinued) The request was rejected because an invalid or out-of-range value was supplied for an
    #       input parameter.</p>
    #
    # @!attribute error_code
    #   Error code for the exception
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute field_name
    #   Field that has invalid input
    #
    #   @return [String]
    #
    InvalidInputException = ::Struct.new(
      :error_code,
      :message,
      :field_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>(Discontinued) The request was rejected because it attempted to create resources beyond the current
    #       Amazon Web Services account quotas. The error code describes the quota exceeded.</p>
    #
    # @!attribute error_code
    #   Error code for the exception
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   Resource type that caused the exception
    #
    #   @return [String]
    #
    LimitExceededException = ::Struct.new(
      :error_code,
      :message,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>(Discontinued) Use this parameter when paginating results. Set the value of this
    #         parameter to null on your first call to the <code>ListMemberAccounts</code> action. Subsequent calls to the
    #         action fill <code>nextToken</code> in the request with the value of <code>nextToken</code> from the previous response to
    #         continue listing data.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>(Discontinued) Use this parameter to indicate the maximum number of items that you want
    #         in the response. The default value is 250.</p>
    #
    #   @return [Integer]
    #
    ListMemberAccountsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute member_accounts
    #   <p>(Discontinued) A list of the Amazon Macie Classic member accounts returned by the
    #         action. The current Macie Classic administrator account is also included in this
    #         list.</p>
    #
    #   @return [Array<MemberAccount>]
    #
    # @!attribute next_token
    #   <p>(Discontinued) When a response is generated, if there is more data to be listed, this
    #         parameter is present in the response and contains the value to use for the <code>nextToken</code> parameter
    #         in a subsequent pagination request. If there is no more data to be listed, this parameter is
    #         set to null. </p>
    #
    #   @return [String]
    #
    ListMemberAccountsOutput = ::Struct.new(
      :member_accounts,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute member_account_id
    #   <p>(Discontinued) The Amazon Macie Classic member account ID whose associated S3 resources
    #         you want to list. </p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>(Discontinued) Use this parameter when paginating results. Set its value to null on
    #         your first call to the <code>ListS3Resources</code> action. Subsequent calls to the action fill <code>nextToken</code>
    #         in the request with the value of <code>nextToken</code> from the previous response to continue listing
    #         data. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>(Discontinued) Use this parameter to indicate the maximum number of items that you want
    #         in the response. The default value is 250. </p>
    #
    #   @return [Integer]
    #
    ListS3ResourcesInput = ::Struct.new(
      :member_account_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute s3_resources
    #   <p>(Discontinued) A list of the associated S3 resources returned by the action.</p>
    #
    #   @return [Array<S3ResourceClassification>]
    #
    # @!attribute next_token
    #   <p>(Discontinued) When a response is generated, if there is more data to be listed, this
    #         parameter is present in the response and contains the value to use for the <code>nextToken</code> parameter
    #         in a subsequent pagination request. If there is no more data to be listed, this parameter is
    #         set to null. </p>
    #
    #   @return [String]
    #
    ListS3ResourcesOutput = ::Struct.new(
      :s3_resources,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>(Discontinued) Contains information about the Amazon Macie Classic member
    #       account.</p>
    #
    # @!attribute account_id
    #   <p>(Discontinued) The Amazon Web Services account ID of the Amazon Macie Classic member account.</p>
    #
    #   @return [String]
    #
    MemberAccount = ::Struct.new(
      :account_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for S3ContinuousClassificationType
    #
    module S3ContinuousClassificationType
      # No documentation available.
      #
      FULL = "FULL"
    end

    # Includes enum constants for S3OneTimeClassificationType
    #
    module S3OneTimeClassificationType
      # No documentation available.
      #
      FULL = "FULL"

      # No documentation available.
      #
      NONE = "NONE"
    end

    # <p>(Discontinued) Contains information about the S3 resource. This data type is used as a
    #       request parameter in the <code>DisassociateS3Resources</code> action and can be used as a response
    #       parameter in the <code>AssociateS3Resources</code> and <code>UpdateS3Resources</code> actions. </p>
    #
    # @!attribute bucket_name
    #   <p>(Discontinued) The name of the S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute prefix
    #   <p>(Discontinued) The prefix of the S3 bucket.</p>
    #
    #   @return [String]
    #
    S3Resource = ::Struct.new(
      :bucket_name,
      :prefix,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>(Discontinued) The S3 resources that you want to associate with Amazon Macie Classic
    #       for monitoring and data classification. This data type is used as a request parameter in the
    #       <code>AssociateS3Resources</code> action and a response parameter in the <code>ListS3Resources</code> action. </p>
    #
    # @!attribute bucket_name
    #   <p>(Discontinued) The name of the S3 bucket that you want to associate with Amazon Macie
    #         Classic.</p>
    #
    #   @return [String]
    #
    # @!attribute prefix
    #   <p>(Discontinued) The prefix of the S3 bucket that you want to associate with Amazon Macie
    #         Classic.</p>
    #
    #   @return [String]
    #
    # @!attribute classification_type
    #   <p>(Discontinued) The classification type that you want to specify for the resource
    #         associated with Amazon Macie Classic. </p>
    #
    #   @return [ClassificationType]
    #
    S3ResourceClassification = ::Struct.new(
      :bucket_name,
      :prefix,
      :classification_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>(Discontinued) The S3 resources whose classification types you want to update. This
    #       data type is used as a request parameter in the <code>UpdateS3Resources</code> action. </p>
    #
    # @!attribute bucket_name
    #   <p>(Discontinued) The name of the S3 bucket whose classification types you want to
    #         update.</p>
    #
    #   @return [String]
    #
    # @!attribute prefix
    #   <p>(Discontinued) The prefix of the S3 bucket whose classification types you want to
    #         update.</p>
    #
    #   @return [String]
    #
    # @!attribute classification_type_update
    #   <p>(Discontinued) The classification type that you want to update for the resource
    #         associated with Amazon Macie Classic. </p>
    #
    #   @return [ClassificationTypeUpdate]
    #
    S3ResourceClassificationUpdate = ::Struct.new(
      :bucket_name,
      :prefix,
      :classification_type_update,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute member_account_id
    #   <p>(Discontinued) The Amazon Web Services account ID of the Amazon Macie Classic member account whose S3
    #         resources' classification types you want to update.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_resources_update
    #   <p>(Discontinued) The S3 resources whose classification types you want to
    #         update.</p>
    #
    #   @return [Array<S3ResourceClassificationUpdate>]
    #
    UpdateS3ResourcesInput = ::Struct.new(
      :member_account_id,
      :s3_resources_update,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute failed_s3_resources
    #   <p>(Discontinued) The S3 resources whose classification types can't be updated. An error
    #         code and an error message are provided for each failed item.</p>
    #
    #   @return [Array<FailedS3Resource>]
    #
    UpdateS3ResourcesOutput = ::Struct.new(
      :failed_s3_resources,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
