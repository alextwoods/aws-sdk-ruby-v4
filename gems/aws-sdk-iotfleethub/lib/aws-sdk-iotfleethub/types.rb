# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::IoTFleetHub
  module Types

    # Includes enum constants for ApplicationState
    #
    module ApplicationState
      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      CREATE_FAILED = "CREATE_FAILED"

      # No documentation available.
      #
      DELETE_FAILED = "DELETE_FAILED"
    end

    # <p>A summary of information about a AWS IoT Device Management web application.</p>
    #          <note>
    #             <p>Fleet Hub for AWS IoT Device Management is in public preview and is subject to change.</p>
    #          </note>
    #
    # @!attribute application_id
    #   <p>The unique Id of the web application.</p>
    #
    #   @return [String]
    #
    # @!attribute application_name
    #   <p>The name of the web application.</p>
    #
    #   @return [String]
    #
    # @!attribute application_description
    #   <p>An optional description of the web application.</p>
    #
    #   @return [String]
    #
    # @!attribute application_url
    #   <p>The URL of the web application.</p>
    #
    #   @return [String]
    #
    # @!attribute application_creation_date
    #   <p>The date (in Unix epoch time) when the web application was created.</p>
    #
    #   @return [Integer]
    #
    # @!attribute application_last_update_date
    #   <p>The date (in Unix epoch time) when the web application was last updated.</p>
    #
    #   @return [Integer]
    #
    # @!attribute application_state
    #   <p>The current state of the web application.</p>
    #
    #   Enum, one of: ["CREATING", "DELETING", "ACTIVE", "CREATE_FAILED", "DELETE_FAILED"]
    #
    #   @return [String]
    #
    ApplicationSummary = ::Struct.new(
      :application_id,
      :application_name,
      :application_description,
      :application_url,
      :application_creation_date,
      :application_last_update_date,
      :application_state,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.application_creation_date ||= 0
        self.application_last_update_date ||= 0
      end
    end

    # <p>The request conflicts with the current state of the resource.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_name
    #   <p>The name of the web application.</p>
    #
    #   @return [String]
    #
    # @!attribute application_description
    #   <p>An optional description of the web application.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request.
    #         Don't reuse this client token if a new idempotent request is required.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The ARN of the role that the web application assumes when it interacts with AWS IoT Core.</p>
    #            <note>
    #               <p>The name of the role must be in the form <code>AWSIotFleetHub_<i>random_string</i>
    #                  </code>.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A set of key/value pairs that you can use to manage the web application resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateApplicationInput = ::Struct.new(
      :application_name,
      :application_description,
      :client_token,
      :role_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique Id of the web application.</p>
    #
    #   @return [String]
    #
    # @!attribute application_arn
    #   <p>The ARN of the web application.</p>
    #
    #   @return [String]
    #
    CreateApplicationOutput = ::Struct.new(
      :application_id,
      :application_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique Id of the web application.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request.
    #         Don't reuse this client token if a new idempotent request is required.</p>
    #
    #   @return [String]
    #
    DeleteApplicationInput = ::Struct.new(
      :application_id,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteApplicationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique Id of the web application.</p>
    #
    #   @return [String]
    #
    DescribeApplicationInput = ::Struct.new(
      :application_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique Id of the web application.</p>
    #
    #   @return [String]
    #
    # @!attribute application_arn
    #   <p>The ARN of the web application.</p>
    #
    #   @return [String]
    #
    # @!attribute application_name
    #   <p>The name of the web application.</p>
    #
    #   @return [String]
    #
    # @!attribute application_description
    #   <p>An optional description of the web application.</p>
    #
    #   @return [String]
    #
    # @!attribute application_url
    #   <p>The URL of the web application.</p>
    #
    #   @return [String]
    #
    # @!attribute application_state
    #   <p>The current state of the web application.</p>
    #
    #   Enum, one of: ["CREATING", "DELETING", "ACTIVE", "CREATE_FAILED", "DELETE_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute application_creation_date
    #   <p>The date (in Unix epoch time) when the application was created.</p>
    #
    #   @return [Integer]
    #
    # @!attribute application_last_update_date
    #   <p>The date (in Unix epoch time) when the application was last updated.</p>
    #
    #   @return [Integer]
    #
    # @!attribute role_arn
    #   <p>The ARN of the role that the web application assumes when it interacts with AWS IoT Core.</p>
    #
    #   @return [String]
    #
    # @!attribute sso_client_id
    #   <p>The Id of the single sign-on client that you use to authenticate and authorize users on the web application.</p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>A message indicating why the <code>DescribeApplication</code> API failed.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A set of key/value pairs that you can use to manage the web application resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    DescribeApplicationOutput = ::Struct.new(
      :application_id,
      :application_arn,
      :application_name,
      :application_description,
      :application_url,
      :application_state,
      :application_creation_date,
      :application_last_update_date,
      :role_arn,
      :sso_client_id,
      :error_message,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.application_creation_date ||= 0
        self.application_last_update_date ||= 0
      end
    end

    # <p>An unexpected error has occurred.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalFailureException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request is not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidRequestException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A limit has been exceeded.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    LimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A token used to get the next set of results.</p>
    #
    #   @return [String]
    #
    ListApplicationsInput = ::Struct.new(
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_summaries
    #   <p>An array of objects that provide summaries of information about the web applications in the list.</p>
    #
    #   @return [Array<ApplicationSummary>]
    #
    # @!attribute next_token
    #   <p>A token used to get the next set of results.</p>
    #
    #   @return [String]
    #
    ListApplicationsOutput = ::Struct.new(
      :application_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #
    #   @return [String]
    #
    ListTagsForResourceInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tags
    #   <p>The list of tags assigned to the resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified resource does not exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The new or modified tags for the resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    TagResourceInput = ::Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    TagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The rate exceeds the limit.</p>
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

    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>A list of the keys of the tags to be removed from the resource.</p>
    #
    #   @return [Array<String>]
    #
    UntagResourceInput = ::Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UntagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique Id of the web application.</p>
    #
    #   @return [String]
    #
    # @!attribute application_name
    #   <p>The name of the web application.</p>
    #
    #   @return [String]
    #
    # @!attribute application_description
    #   <p>An optional description of the web application.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request.
    #         Don't reuse this client token if a new idempotent request is required.</p>
    #
    #   @return [String]
    #
    UpdateApplicationInput = ::Struct.new(
      :application_id,
      :application_name,
      :application_description,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateApplicationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
