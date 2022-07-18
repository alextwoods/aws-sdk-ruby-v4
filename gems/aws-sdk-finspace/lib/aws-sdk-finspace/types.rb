# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Finspace
  module Types

    # <p>You do not have sufficient access to perform this action.</p>
    #
    AccessDeniedException = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the FinSpace environment to be created.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the FinSpace environment to be created.</p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_id
    #   <p>The KMS key id to encrypt your data in the FinSpace environment.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Add tags to your FinSpace environment.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute federation_mode
    #   <p>Authentication mode for the environment.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>FEDERATED</code> - Users access FinSpace through Single Sign On (SSO) via your Identity provider.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LOCAL</code> - Users access FinSpace via email and password managed within the FinSpace environment.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["FEDERATED", "LOCAL"]
    #
    #   @return [String]
    #
    # @!attribute federation_parameters
    #   <p>Configuration information when authentication mode is FEDERATED.</p>
    #
    #   @return [FederationParameters]
    #
    # @!attribute superuser_parameters
    #   <p>Configuration information for the superuser.</p>
    #
    #   @return [SuperuserParameters]
    #
    # @!attribute data_bundles
    #   <p>The list of Amazon Resource Names (ARN) of the data bundles to install. Currently supported data bundle ARNs:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:finspace:${Region}::data-bundle/capital-markets-sample</code> - Contains sample Capital Markets datasets, categories and controlled vocabularies.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:finspace:${Region}::data-bundle/taq</code> (default) - Contains trades and quotes data in addition to sample Capital Markets data.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    CreateEnvironmentInput = ::Struct.new(
      :name,
      :description,
      :kms_key_id,
      :tags,
      :federation_mode,
      :federation_parameters,
      :superuser_parameters,
      :data_bundles,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute environment_id
    #   <p>The unique identifier for FinSpace environment that you created.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_arn
    #   <p>The Amazon Resource Name (ARN) of the FinSpace environment that you created.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_url
    #   <p>The sign-in url for the web application of the FinSpace environment you created.</p>
    #
    #   @return [String]
    #
    CreateEnvironmentOutput = ::Struct.new(
      :environment_id,
      :environment_arn,
      :environment_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute environment_id
    #   <p>The identifier for the FinSpace environment.</p>
    #
    #   @return [String]
    #
    DeleteEnvironmentInput = ::Struct.new(
      :environment_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteEnvironmentOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents an FinSpace environment.</p>
    #
    # @!attribute name
    #   <p>The name of the FinSpace environment.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_id
    #   <p>The identifier of the FinSpace environment.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_account_id
    #   <p>The ID of the AWS account in which the FinSpace environment is created.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of creation of the FinSpace environment.</p>
    #
    #   Enum, one of: ["CREATE_REQUESTED", "CREATING", "CREATED", "DELETE_REQUESTED", "DELETING", "DELETED", "FAILED_CREATION", "RETRY_DELETION", "FAILED_DELETION", "SUSPENDED"]
    #
    #   @return [String]
    #
    # @!attribute environment_url
    #   <p>The sign-in url for the web application of your FinSpace environment.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the FinSpace environment.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_arn
    #   <p>The Amazon Resource Name (ARN) of your FinSpace environment.</p>
    #
    #   @return [String]
    #
    # @!attribute sage_maker_studio_domain_url
    #   <p>The url of the integrated FinSpace notebook environment in your web application.</p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_id
    #   <p>The KMS key id used to encrypt in the FinSpace environment.</p>
    #
    #   @return [String]
    #
    # @!attribute dedicated_service_account_id
    #   <p>The AWS account ID of the dedicated service account associated with your FinSpace
    #            environment.</p>
    #
    #   @return [String]
    #
    # @!attribute federation_mode
    #   <p>The authentication mode for the environment.</p>
    #
    #   Enum, one of: ["FEDERATED", "LOCAL"]
    #
    #   @return [String]
    #
    # @!attribute federation_parameters
    #   <p>Configuration information when authentication mode is FEDERATED.</p>
    #
    #   @return [FederationParameters]
    #
    Environment = ::Struct.new(
      :name,
      :environment_id,
      :aws_account_id,
      :status,
      :environment_url,
      :description,
      :environment_arn,
      :sage_maker_studio_domain_url,
      :kms_key_id,
      :dedicated_service_account_id,
      :federation_mode,
      :federation_parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EnvironmentStatus
    #
    module EnvironmentStatus
      # No documentation available.
      #
      CREATE_REQUESTED = "CREATE_REQUESTED"

      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      CREATED = "CREATED"

      # No documentation available.
      #
      DELETE_REQUESTED = "DELETE_REQUESTED"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      DELETED = "DELETED"

      # No documentation available.
      #
      FAILED_CREATION = "FAILED_CREATION"

      # No documentation available.
      #
      RETRY_DELETION = "RETRY_DELETION"

      # No documentation available.
      #
      FAILED_DELETION = "FAILED_DELETION"

      # No documentation available.
      #
      SUSPENDED = "SUSPENDED"
    end

    # Includes enum constants for FederationMode
    #
    module FederationMode
      # No documentation available.
      #
      FEDERATED = "FEDERATED"

      # No documentation available.
      #
      LOCAL = "LOCAL"
    end

    # <p>Configuration information when authentication mode is FEDERATED.</p>
    #
    # @!attribute saml_metadata_document
    #   <p>SAML 2.0 Metadata document from identity provider (IdP).</p>
    #
    #   @return [String]
    #
    # @!attribute saml_metadata_url
    #   <p>Provide the metadata URL from your SAML 2.0 compliant identity provider (IdP).</p>
    #
    #   @return [String]
    #
    # @!attribute application_call_back_url
    #   <p>The redirect or sign-in URL that should be entered into the SAML 2.0 compliant identity provider configuration
    #          (IdP).</p>
    #
    #   @return [String]
    #
    # @!attribute federation_urn
    #   <p>The Uniform Resource Name (URN). Also referred as Service Provider URN or Audience URI or Service Provider Entity ID.</p>
    #
    #   @return [String]
    #
    # @!attribute federation_provider_name
    #   <p>Name of the identity provider (IdP).</p>
    #
    #   @return [String]
    #
    # @!attribute attribute_map
    #   <p>SAML attribute name and value. The name must always be <code>Email</code> and the value should be set to
    #            the attribute definition in which user email is set. For example, name would be <code>Email</code> and
    #            value <code>http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress</code>.
    #            Please check your SAML 2.0 compliant identity provider (IdP) documentation for details.</p>
    #
    #   @return [Hash<String, String>]
    #
    FederationParameters = ::Struct.new(
      :saml_metadata_document,
      :saml_metadata_url,
      :application_call_back_url,
      :federation_urn,
      :federation_provider_name,
      :attribute_map,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute environment_id
    #   <p>The identifier of the FinSpace environment.</p>
    #
    #   @return [String]
    #
    GetEnvironmentInput = ::Struct.new(
      :environment_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute environment
    #   <p>The name of the FinSpace environment.</p>
    #
    #   @return [Environment]
    #
    GetEnvironmentOutput = ::Struct.new(
      :environment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request processing has failed because of an unknown error, exception or
    #          failure.</p>
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

    # <p>The request is invalid. Something is wrong with the input to the request.</p>
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

    # <p>A service limit or quota is exceeded.</p>
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
    #   <p>A token generated by FinSpace that specifies where to continue pagination if a previous
    #            request was truncated. To get the next set of pages, pass in the nextToken value from the
    #            response object of the previous page call.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in this request.</p>
    #
    #   @return [Integer]
    #
    ListEnvironmentsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute environments
    #   <p>A list of all of your FinSpace environments.</p>
    #
    #   @return [Array<Environment>]
    #
    # @!attribute next_token
    #   <p>A token that you can use in a subsequent call to retrieve the next set of
    #            results.</p>
    #
    #   @return [String]
    #
    ListEnvironmentsOutput = ::Struct.new(
      :environments,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name of the resource.</p>
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
    #   <p>A list of all tags for a resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>One or more resources can't be found.</p>
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

    # <p> You have exceeded your service quota. To perform the requested action,
    #          remove some of the relevant resources, or use Service Quotas to request a service quota increase.</p>
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

    # <p>Configuration information for the superuser.</p>
    #
    # @!attribute email_address
    #   <p>The email address of the superuser.</p>
    #
    #   @return [String]
    #
    # @!attribute first_name
    #   <p>The first name of the superuser.</p>
    #
    #   @return [String]
    #
    # @!attribute last_name
    #   <p>The last name of the superuser.</p>
    #
    #   @return [String]
    #
    SuperuserParameters = ::Struct.new(
      :email_address,
      :first_name,
      :last_name,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Finspace::Types::SuperuserParameters "\
          "email_address=\"[SENSITIVE]\", "\
          "first_name=#{first_name || 'nil'}, "\
          "last_name=#{last_name || 'nil'}>"
      end
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>One or more tags to be assigned to the resource.</p>
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

    # <p>The request was denied due to request throttling.</p>
    #
    ThrottlingException = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>A FinSpace resource from which you want to remove a tag or tags. The value for this
    #            parameter is an Amazon Resource Name (ARN).</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The tag keys (names) of one or more tags to be removed.</p>
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

    # @!attribute environment_id
    #   <p>The identifier of the FinSpace environment.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the environment.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the environment.</p>
    #
    #   @return [String]
    #
    # @!attribute federation_mode
    #   <p>Authentication mode for the environment.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>FEDERATED</code> - Users access FinSpace through Single Sign On (SSO) via your Identity provider.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LOCAL</code> - Users access FinSpace via email and password managed within the FinSpace environment.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["FEDERATED", "LOCAL"]
    #
    #   @return [String]
    #
    # @!attribute federation_parameters
    #   <p>Configuration information when authentication mode is FEDERATED.</p>
    #
    #   @return [FederationParameters]
    #
    UpdateEnvironmentInput = ::Struct.new(
      :environment_id,
      :name,
      :description,
      :federation_mode,
      :federation_parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute environment
    #   <p>Returns the FinSpace environment object.</p>
    #
    #   @return [Environment]
    #
    UpdateEnvironmentOutput = ::Struct.new(
      :environment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input fails to satisfy the constraints specified by an AWS service.</p>
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
