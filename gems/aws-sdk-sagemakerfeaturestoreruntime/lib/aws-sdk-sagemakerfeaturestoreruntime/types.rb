# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SageMakerFeatureStoreRuntime
  module Types

    # <p>You do not have permission to perform an action.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AccessForbidden = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The error that has occurred when attempting to retrieve a batch of Records.</p>
    #
    # @!attribute feature_group_name
    #   <p>The name of the feature group that the record belongs to.</p>
    #
    #   @return [String]
    #
    # @!attribute record_identifier_value_as_string
    #   <p>The value for the <code>RecordIdentifier</code> in string format of a Record from a <code>FeatureGroup</code> that is causing
    #         an error when attempting to be retrieved.</p>
    #
    #   @return [String]
    #
    # @!attribute error_code
    #   <p>The error code of an error that has occured when attempting to retrieve a batch of Records. For more information on errors, see <a href="https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_feature_store_GetRecord.html API_feature_store_GetRecord_Errors"> Errors</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>The error message of an error that has occured when attempting to retrieve a record in the batch.</p>
    #
    #   @return [String]
    #
    BatchGetRecordError = ::Struct.new(
      :feature_group_name,
      :record_identifier_value_as_string,
      :error_code,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The identifier that identifies the batch of Records you are retrieving in a batch.</p>
    #
    # @!attribute feature_group_name
    #   <p>A <code>FeatureGroupName</code> containing Records you are retrieving in a batch.</p>
    #
    #   @return [String]
    #
    # @!attribute record_identifiers_value_as_string
    #   <p>The value for a list of record identifiers in string format.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute feature_names
    #   <p>List of names of Features to be retrieved. If not specified, the latest value for all
    #            the Features are returned.</p>
    #
    #   @return [Array<String>]
    #
    BatchGetRecordIdentifier = ::Struct.new(
      :feature_group_name,
      :record_identifiers_value_as_string,
      :feature_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute identifiers
    #   <p>A list of <code>FeatureGroup</code> names, with their corresponding <code>RecordIdentifier</code> value, and Feature name
    #         that have been requested to be retrieved in batch.</p>
    #
    #   @return [Array<BatchGetRecordIdentifier>]
    #
    BatchGetRecordInput = ::Struct.new(
      :identifiers,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute records
    #   <p>A list of Records you requested to be retrieved in batch.</p>
    #
    #   @return [Array<BatchGetRecordResultDetail>]
    #
    # @!attribute errors
    #   <p>A list of errors that have occured when retrieving a batch of Records.</p>
    #
    #   @return [Array<BatchGetRecordError>]
    #
    # @!attribute unprocessed_identifiers
    #   <p>A unprocessed list of <code>FeatureGroup</code> names, with their corresponding <code>RecordIdentifier</code> value,
    #          and Feature name.</p>
    #
    #   @return [Array<BatchGetRecordIdentifier>]
    #
    BatchGetRecordOutput = ::Struct.new(
      :records,
      :errors,
      :unprocessed_identifiers,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The output of Records that have been retrieved in a batch.</p>
    #
    # @!attribute feature_group_name
    #   <p>The <code>FeatureGroupName</code> containing Records you retrieved in a batch.</p>
    #
    #   @return [String]
    #
    # @!attribute record_identifier_value_as_string
    #   <p>The value of the record identifer in string format.</p>
    #
    #   @return [String]
    #
    # @!attribute record
    #   <p>The <code>Record</code> retrieved.</p>
    #
    #   @return [Array<FeatureValue>]
    #
    BatchGetRecordResultDetail = ::Struct.new(
      :feature_group_name,
      :record_identifier_value_as_string,
      :record,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute feature_group_name
    #   <p>The name of the feature group to delete the record from. </p>
    #
    #   @return [String]
    #
    # @!attribute record_identifier_value_as_string
    #   <p>The value for the <code>RecordIdentifier</code> that uniquely identifies the record, in
    #            string format. </p>
    #
    #   @return [String]
    #
    # @!attribute event_time
    #   <p>Timestamp indicating when the deletion event occurred. <code>EventTime</code> can be
    #            used to query data at a certain point in time.</p>
    #
    #   @return [String]
    #
    DeleteRecordInput = ::Struct.new(
      :feature_group_name,
      :record_identifier_value_as_string,
      :event_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteRecordOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The value associated with a feature.</p>
    #
    # @!attribute feature_name
    #   <p>The name of a feature that a feature value corresponds to.</p>
    #
    #   @return [String]
    #
    # @!attribute value_as_string
    #   <p>The value associated with a feature, in string format. Note that features types can be
    #            String, Integral, or Fractional. This value represents all three types as a string.</p>
    #
    #   @return [String]
    #
    FeatureValue = ::Struct.new(
      :feature_name,
      :value_as_string,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute feature_group_name
    #   <p>The name of the feature group in which you want to put the records.</p>
    #
    #   @return [String]
    #
    # @!attribute record_identifier_value_as_string
    #   <p>The value that corresponds to <code>RecordIdentifier</code> type and uniquely identifies
    #            the record in the <code>FeatureGroup</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute feature_names
    #   <p>List of names of Features to be retrieved. If not specified, the latest value for all
    #            the Features are returned.</p>
    #
    #   @return [Array<String>]
    #
    GetRecordInput = ::Struct.new(
      :feature_group_name,
      :record_identifier_value_as_string,
      :feature_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute record
    #   <p>The record you requested. A list of <code>FeatureValues</code>.</p>
    #
    #   @return [Array<FeatureValue>]
    #
    GetRecordOutput = ::Struct.new(
      :record,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An internal failure occurred. Try your request again. If the problem
    #       persists, contact AWS customer support.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalFailure = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute feature_group_name
    #   <p>The name of the feature group that you want to insert the record into.</p>
    #
    #   @return [String]
    #
    # @!attribute record
    #   <p>List of FeatureValues to be inserted. This will be a full over-write. If you only want
    #            to update few of the feature values, do the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Use <code>GetRecord</code> to retrieve the latest record.</p>
    #               </li>
    #               <li>
    #                  <p>Update the record returned from <code>GetRecord</code>. </p>
    #               </li>
    #               <li>
    #                  <p>Use <code>PutRecord</code> to update feature values.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<FeatureValue>]
    #
    PutRecordInput = ::Struct.new(
      :feature_group_name,
      :record,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutRecordOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A resource that is required to perform an action was not found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceNotFound = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The service is currently unavailable.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ServiceUnavailable = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>There was an error validating your request.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ValidationError = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
