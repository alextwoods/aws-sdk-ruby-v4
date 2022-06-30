# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Account
  module Types

    # <p>The operation failed because the calling identity doesn't have the minimum required
    #             permissions.</p>
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

    # <p>A structure that contains the details of an alternate contact associated with an Amazon Web Services
    #             account</p>
    #
    # @!attribute name
    #   <p>The name associated with this alternate contact.</p>
    #
    #   @return [String]
    #
    # @!attribute title
    #   <p>The title associated with this alternate contact.</p>
    #
    #   @return [String]
    #
    # @!attribute email_address
    #   <p>The email address associated with this alternate contact.</p>
    #
    #   @return [String]
    #
    # @!attribute phone_number
    #   <p>The phone number associated with this alternate contact.</p>
    #
    #   @return [String]
    #
    # @!attribute alternate_contact_type
    #   <p>The type of alternate contact.</p>
    #
    #   Enum, one of: ["BILLING", "OPERATIONS", "SECURITY"]
    #
    #   @return [String]
    #
    AlternateContact = ::Struct.new(
      :name,
      :title,
      :email_address,
      :phone_number,
      :alternate_contact_type,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Account::Types::AlternateContact "\
          "name=\"[SENSITIVE]\", "\
          "title=\"[SENSITIVE]\", "\
          "email_address=\"[SENSITIVE]\", "\
          "phone_number=\"[SENSITIVE]\", "\
          "alternate_contact_type=#{alternate_contact_type || 'nil'}>"
      end
    end

    # Includes enum constants for AlternateContactType
    #
    module AlternateContactType
      # No documentation available.
      #
      BILLING = "BILLING"

      # No documentation available.
      #
      OPERATIONS = "OPERATIONS"

      # No documentation available.
      #
      SECURITY = "SECURITY"
    end

    # @!attribute alternate_contact_type
    #   <p>Specifies which of the alternate contacts to delete. </p>
    #
    #   Enum, one of: ["BILLING", "OPERATIONS", "SECURITY"]
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>Specifies the 12 digit account ID number of the Amazon Web Services account that
    #           you want to access or modify with this operation.</p>
    #            <p>If you do not specify this parameter, it defaults to the Amazon Web Services account of the
    #           identity used to call the operation.</p>
    #            <p>To use this parameter, the caller must be an identity in the <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html account">organization's management account</a> or a delegated administrator account, and
    #           the specified account ID must be a member account in the same organization. The
    #           organization must have <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html">all features
    #           enabled</a>, and the organization must have <a href="https://docs.aws.amazon.com/organizations/latest/userguide/using-orgs-trusted-access.html">trusted access</a> enabled for the
    #           Account Management service, and optionally a <a href="https://docs.aws.amazon.com/organizations/latest/userguide/using-orgs-delegated-admin.html">delegated admin</a> account
    #           assigned.</p>
    #            <note>
    #               <p>The management account can't specify its own <code>AccountId</code>; it must call
    #               the operation in standalone context by not including the <code>AccountId</code>
    #               parameter.</p>
    #            </note>
    #            <p>To call this operation on an account that is not a member of an organization, then
    #           don't specify this parameter, and call the operation using an identity belonging to
    #           the account whose contacts you wish to retrieve or modify.</p>
    #
    #   @return [String]
    #
    DeleteAlternateContactInput = ::Struct.new(
      :alternate_contact_type,
      :account_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteAlternateContactOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute alternate_contact_type
    #   <p>Specifies which alternate contact you want to retrieve.</p>
    #
    #   Enum, one of: ["BILLING", "OPERATIONS", "SECURITY"]
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>Specifies the 12 digit account ID number of the Amazon Web Services account that
    #           you want to access or modify with this operation.</p>
    #            <p>If you do not specify this parameter, it defaults to the Amazon Web Services account of the
    #           identity used to call the operation.</p>
    #            <p>To use this parameter, the caller must be an identity in the <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html account">organization's management account</a> or a delegated administrator account, and
    #           the specified account ID must be a member account in the same organization. The
    #           organization must have <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html">all features
    #           enabled</a>, and the organization must have <a href="https://docs.aws.amazon.com/organizations/latest/userguide/using-orgs-trusted-access.html">trusted access</a> enabled for the
    #           Account Management service, and optionally a <a href="https://docs.aws.amazon.com/organizations/latest/userguide/using-orgs-delegated-admin.html">delegated admin</a> account
    #           assigned.</p>
    #            <note>
    #               <p>The management account can't specify its own <code>AccountId</code>; it must call
    #               the operation in standalone context by not including the <code>AccountId</code>
    #               parameter.</p>
    #            </note>
    #            <p>To call this operation on an account that is not a member of an organization, then
    #           don't specify this parameter, and call the operation using an identity belonging to
    #           the account whose contacts you wish to retrieve or modify.</p>
    #
    #   @return [String]
    #
    GetAlternateContactInput = ::Struct.new(
      :alternate_contact_type,
      :account_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute alternate_contact
    #   <p>A structure that contains the details for the specified alternate contact.</p>
    #
    #   @return [AlternateContact]
    #
    GetAlternateContactOutput = ::Struct.new(
      :alternate_contact,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The operation failed because of an error internal to Amazon Web Services. Try your operation again
    #             later.</p>
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

    # @!attribute name
    #   <p>Specifies a name for the alternate contact.</p>
    #
    #   @return [String]
    #
    # @!attribute title
    #   <p>Specifies a title for the alternate contact.</p>
    #
    #   @return [String]
    #
    # @!attribute email_address
    #   <p>Specifies an email address for the alternate contact. </p>
    #
    #   @return [String]
    #
    # @!attribute phone_number
    #   <p>Specifies a phone number for the alternate contact.</p>
    #
    #   @return [String]
    #
    # @!attribute alternate_contact_type
    #   <p>Specifies which alternate contact you want to create or update.</p>
    #
    #   Enum, one of: ["BILLING", "OPERATIONS", "SECURITY"]
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>Specifies the 12 digit account ID number of the Amazon Web Services account that
    #           you want to access or modify with this operation.</p>
    #            <p>If you do not specify this parameter, it defaults to the Amazon Web Services account of the
    #           identity used to call the operation.</p>
    #            <p>To use this parameter, the caller must be an identity in the <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html account">organization's management account</a> or a delegated administrator account, and
    #           the specified account ID must be a member account in the same organization. The
    #           organization must have <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html">all features
    #           enabled</a>, and the organization must have <a href="https://docs.aws.amazon.com/organizations/latest/userguide/using-orgs-trusted-access.html">trusted access</a> enabled for the
    #           Account Management service, and optionally a <a href="https://docs.aws.amazon.com/organizations/latest/userguide/using-orgs-delegated-admin.html">delegated admin</a> account
    #           assigned.</p>
    #            <note>
    #               <p>The management account can't specify its own <code>AccountId</code>; it must call
    #               the operation in standalone context by not including the <code>AccountId</code>
    #               parameter.</p>
    #            </note>
    #            <p>To call this operation on an account that is not a member of an organization, then
    #           don't specify this parameter, and call the operation using an identity belonging to
    #           the account whose contacts you wish to retrieve or modify.</p>
    #
    #   @return [String]
    #
    PutAlternateContactInput = ::Struct.new(
      :name,
      :title,
      :email_address,
      :phone_number,
      :alternate_contact_type,
      :account_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Account::Types::PutAlternateContactInput "\
          "name=\"[SENSITIVE]\", "\
          "title=\"[SENSITIVE]\", "\
          "email_address=\"[SENSITIVE]\", "\
          "phone_number=\"[SENSITIVE]\", "\
          "alternate_contact_type=#{alternate_contact_type || 'nil'}, "\
          "account_id=#{account_id || 'nil'}>"
      end
    end

    PutAlternateContactOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The operation failed because it specified a resource that can't be found.</p>
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

    # <p>The operation failed because it was called too frequently and exceeded a throttle
    #             limit.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyRequestsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The operation failed because one of the input parameters was invalid.</p>
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
