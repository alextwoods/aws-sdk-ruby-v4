# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SSO
  module Types

    # <p>Provides information about your AWS account.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :account_id
    #   @option params [String] :account_name
    #   @option params [String] :email_address
    # @!attribute account_id
    #   <p>The identifier of the AWS account that is assigned to the user.</p>
    #   @return [String]
    # @!attribute account_name
    #   <p>The display name of the AWS account that is assigned to the user.</p>
    #   @return [String]
    # @!attribute email_address
    #   <p>The email address of the AWS account that is assigned to the user.</p>
    #   @return [String]
    class AccountInfo
      include Hearth::Structure

      MEMBERS = %i[
        account_id
        account_name
        email_address
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :role_name
    #   @option params [String] :account_id
    #   @option params [String] :access_token
    # @!attribute role_name
    #   <p>The friendly name of the role that is assigned to the user.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The identifier for the AWS account that is assigned to the user.</p>
    #   @return [String]
    # @!attribute access_token
    #   <p>The token issued by the <code>CreateToken</code> API call. For more information, see
    #           <a href="https://docs.aws.amazon.com/singlesignon/latest/OIDCAPIReference/API_CreateToken.html">CreateToken</a> in the <i>IAM Identity Center OIDC API Reference Guide</i>.</p>
    #   @return [String]
    class GetRoleCredentialsInput
      include Hearth::Structure

      MEMBERS = %i[
        role_name
        account_id
        access_token
      ].freeze

      attr_accessor(*MEMBERS)

      def to_s
        "#<AWS::SDK::SSO::Types::GetRoleCredentialsInput "\
          "role_name=#{role_name || 'nil'}, "\
          "account_id=#{account_id || 'nil'}, "\
          "access_token=\"[SENSITIVE]\">"
      end
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [RoleCredentials] :role_credentials
    # @!attribute role_credentials
    #   <p>The credentials for the role that is assigned to the user.</p>
    #   @return [RoleCredentials]
    class GetRoleCredentialsOutput
      include Hearth::Structure

      MEMBERS = %i[
        role_credentials
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Indicates that a problem occurred with the input to the request. For example, a required
    #       parameter might be missing or out of range.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    class InvalidRequestException
      include Hearth::Structure

      MEMBERS = %i[
        message
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :next_token
    #   @option params [Integer] :max_results
    #   @option params [String] :access_token
    #   @option params [String] :account_id
    # @!attribute next_token
    #   <p>The page token from the previous response output when you request subsequent pages.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The number of items that clients can request per page.</p>
    #   @return [Integer]
    # @!attribute access_token
    #   <p>The token issued by the <code>CreateToken</code> API call. For more information, see
    #           <a href="https://docs.aws.amazon.com/singlesignon/latest/OIDCAPIReference/API_CreateToken.html">CreateToken</a> in the <i>IAM Identity Center OIDC API Reference Guide</i>.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The identifier for the AWS account that is assigned to the user.</p>
    #   @return [String]
    class ListAccountRolesInput
      include Hearth::Structure

      MEMBERS = %i[
        next_token
        max_results
        access_token
        account_id
      ].freeze

      attr_accessor(*MEMBERS)

      def to_s
        "#<AWS::SDK::SSO::Types::ListAccountRolesInput "\
          "next_token=#{next_token || 'nil'}, "\
          "max_results=#{max_results || 'nil'}, "\
          "access_token=\"[SENSITIVE]\", "\
          "account_id=#{account_id || 'nil'}>"
      end
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :next_token
    #   @option params [Array<RoleInfo>] :role_list
    # @!attribute next_token
    #   <p>The page token client that is used to retrieve the list of accounts.</p>
    #   @return [String]
    # @!attribute role_list
    #   <p>A paginated response with the list of roles and the next token if more results are
    #         available.</p>
    #   @return [Array<RoleInfo>]
    class ListAccountRolesOutput
      include Hearth::Structure

      MEMBERS = %i[
        next_token
        role_list
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :next_token
    #   @option params [Integer] :max_results
    #   @option params [String] :access_token
    # @!attribute next_token
    #   <p>(Optional) When requesting subsequent pages, this is the page token from the previous
    #         response output.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>This is the number of items clients can request per page.</p>
    #   @return [Integer]
    # @!attribute access_token
    #   <p>The token issued by the <code>CreateToken</code> API call. For more information, see
    #           <a href="https://docs.aws.amazon.com/singlesignon/latest/OIDCAPIReference/API_CreateToken.html">CreateToken</a> in the <i>IAM Identity Center OIDC API Reference Guide</i>.</p>
    #   @return [String]
    class ListAccountsInput
      include Hearth::Structure

      MEMBERS = %i[
        next_token
        max_results
        access_token
      ].freeze

      attr_accessor(*MEMBERS)

      def to_s
        "#<AWS::SDK::SSO::Types::ListAccountsInput "\
          "next_token=#{next_token || 'nil'}, "\
          "max_results=#{max_results || 'nil'}, "\
          "access_token=\"[SENSITIVE]\">"
      end
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :next_token
    #   @option params [Array<AccountInfo>] :account_list
    # @!attribute next_token
    #   <p>The page token client that is used to retrieve the list of accounts.</p>
    #   @return [String]
    # @!attribute account_list
    #   <p>A paginated response with the list of account information and the next token if more
    #         results are available.</p>
    #   @return [Array<AccountInfo>]
    class ListAccountsOutput
      include Hearth::Structure

      MEMBERS = %i[
        next_token
        account_list
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :access_token
    # @!attribute access_token
    #   <p>The token issued by the <code>CreateToken</code> API call. For more information, see
    #           <a href="https://docs.aws.amazon.com/singlesignon/latest/OIDCAPIReference/API_CreateToken.html">CreateToken</a> in the <i>IAM Identity Center OIDC API Reference Guide</i>.</p>
    #   @return [String]
    class LogoutInput
      include Hearth::Structure

      MEMBERS = %i[
        access_token
      ].freeze

      attr_accessor(*MEMBERS)

      def to_s
        "#<AWS::SDK::SSO::Types::LogoutInput "\
          "access_token=\"[SENSITIVE]\">"
      end
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    class LogoutOutput
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>The specified resource doesn't exist.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException
      include Hearth::Structure

      MEMBERS = %i[
        message
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Provides information about the role credentials that are assigned to the user.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :access_key_id
    #   @option params [String] :secret_access_key
    #   @option params [String] :session_token
    #   @option params [Integer] :expiration (0)
    # @!attribute access_key_id
    #   <p>The identifier used for the temporary security credentials. For more information, see
    #           <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_use-resources.html">Using Temporary Security Credentials to Request Access to AWS Resources</a> in the
    #           <i>AWS IAM User Guide</i>.</p>
    #   @return [String]
    # @!attribute secret_access_key
    #   <p>The key that is used to sign the request. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_use-resources.html">Using Temporary Security Credentials to Request Access to AWS Resources</a> in the
    #           <i>AWS IAM User Guide</i>.</p>
    #   @return [String]
    # @!attribute session_token
    #   <p>The token used for temporary credentials. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_use-resources.html">Using Temporary Security Credentials to Request Access to AWS Resources</a> in the
    #           <i>AWS IAM User Guide</i>.</p>
    #   @return [String]
    # @!attribute expiration
    #   <p>The date on which temporary security credentials expire.</p>
    #   @return [Integer]
    class RoleCredentials
      include Hearth::Structure

      MEMBERS = %i[
        access_key_id
        secret_access_key
        session_token
        expiration
      ].freeze

      attr_accessor(*MEMBERS)

      def to_s
        "#<AWS::SDK::SSO::Types::RoleCredentials "\
          "access_key_id=#{access_key_id || 'nil'}, "\
          "secret_access_key=\"[SENSITIVE]\", "\
          "session_token=\"[SENSITIVE]\", "\
          "expiration=#{expiration || 'nil'}>"
      end

      private

      def _defaults
        {
          expiration: 0
        }
      end
    end

    # <p>Provides information about the role that is assigned to the user.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :role_name
    #   @option params [String] :account_id
    # @!attribute role_name
    #   <p>The friendly name of the role that is assigned to the user.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The identifier of the AWS account assigned to the user.</p>
    #   @return [String]
    class RoleInfo
      include Hearth::Structure

      MEMBERS = %i[
        role_name
        account_id
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Indicates that the request is being made too frequently and is more than what the server
    #       can handle.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    class TooManyRequestsException
      include Hearth::Structure

      MEMBERS = %i[
        message
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Indicates that the request is not authorized. This can happen due to an invalid access
    #       token in the request.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    class UnauthorizedException
      include Hearth::Structure

      MEMBERS = %i[
        message
      ].freeze

      attr_accessor(*MEMBERS)
    end

  end
end
