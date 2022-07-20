# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SSOOIDC
  module Types

    # <p>You do not have sufficient access to perform this action.</p>
    #
    # @!attribute error
    #
    #   @return [String]
    #
    # @!attribute error_description
    #
    #   @return [String]
    #
    AccessDeniedException = ::Struct.new(
      :error,
      :error_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that a request to authorize a client with an access user session token is pending.</p>
    #
    # @!attribute error
    #
    #   @return [String]
    #
    # @!attribute error_description
    #
    #   @return [String]
    #
    AuthorizationPendingException = ::Struct.new(
      :error,
      :error_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_id
    #   <p>The unique identifier string for each client. This value should come from the persisted result of the <a>RegisterClient</a> API.</p>
    #
    #   @return [String]
    #
    # @!attribute client_secret
    #   <p>A secret string generated for the client. This value should come from the persisted result of the <a>RegisterClient</a> API.</p>
    #
    #   @return [String]
    #
    # @!attribute grant_type
    #   <p>Supports grant types for authorization code, refresh token, and device code request.</p>
    #
    #   @return [String]
    #
    # @!attribute device_code
    #   <p>Used only when calling this API for the device code grant type. This short-term code is
    #         used to identify this authentication attempt. This should come from an in-memory reference to
    #         the result of the <a>StartDeviceAuthorization</a> API.</p>
    #
    #   @return [String]
    #
    # @!attribute code
    #   <p>The authorization code received from the authorization service. This parameter is required to perform an authorization grant request to get access to a token.</p>
    #
    #   @return [String]
    #
    # @!attribute refresh_token
    #   <p>The token used to obtain an access token in the event that the access token is invalid or expired. This token is not issued by the service.</p>
    #
    #   @return [String]
    #
    # @!attribute scope
    #   <p>The list of scopes that is defined by the client. Upon authorization, this list is used to
    #         restrict permissions when granting an access token.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute redirect_uri
    #   <p>The location of the application that will receive the authorization code. Users authorize
    #         the service to send the request to this location.</p>
    #
    #   @return [String]
    #
    CreateTokenInput = ::Struct.new(
      :client_id,
      :client_secret,
      :grant_type,
      :device_code,
      :code,
      :refresh_token,
      :scope,
      :redirect_uri,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute access_token
    #   <p>An opaque token to access AWS SSO resources assigned to a user.</p>
    #
    #   @return [String]
    #
    # @!attribute token_type
    #   <p>Used to notify the client that the returned token is an access token. The supported type
    #         is <code>BearerToken</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute expires_in
    #   <p>Indicates the time in seconds when an access token will expire.</p>
    #
    #   @return [Integer]
    #
    # @!attribute refresh_token
    #   <p>A token that, if present, can be used to refresh a previously issued access token that
    #         might have expired.</p>
    #
    #   @return [String]
    #
    # @!attribute id_token
    #   <p>The identifier of the user that associated with the access token, if present.</p>
    #
    #   @return [String]
    #
    CreateTokenOutput = ::Struct.new(
      :access_token,
      :token_type,
      :expires_in,
      :refresh_token,
      :id_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.expires_in ||= 0
      end
    end

    # <p>Indicates that the token issued by the service is expired and is no longer valid.</p>
    #
    # @!attribute error
    #
    #   @return [String]
    #
    # @!attribute error_description
    #
    #   @return [String]
    #
    ExpiredTokenException = ::Struct.new(
      :error,
      :error_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that an error from the service occurred while trying to process a request.</p>
    #
    # @!attribute error
    #
    #   @return [String]
    #
    # @!attribute error_description
    #
    #   @return [String]
    #
    InternalServerException = ::Struct.new(
      :error,
      :error_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that the <code>clientId</code> or <code>clientSecret</code> in the request is
    #       invalid. For example, this can occur when a client sends an incorrect <code>clientId</code> or
    #       an expired <code>clientSecret</code>.</p>
    #
    # @!attribute error
    #
    #   @return [String]
    #
    # @!attribute error_description
    #
    #   @return [String]
    #
    InvalidClientException = ::Struct.new(
      :error,
      :error_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that the client information sent in the request during registration is invalid.</p>
    #
    # @!attribute error
    #
    #   @return [String]
    #
    # @!attribute error_description
    #
    #   @return [String]
    #
    InvalidClientMetadataException = ::Struct.new(
      :error,
      :error_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that a request contains an invalid grant. This can occur if a client makes a <a>CreateToken</a> request with an invalid grant type.</p>
    #
    # @!attribute error
    #
    #   @return [String]
    #
    # @!attribute error_description
    #
    #   @return [String]
    #
    InvalidGrantException = ::Struct.new(
      :error,
      :error_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that something is wrong with the input to the request. For example, a required
    #       parameter might be missing or out of range.</p>
    #
    # @!attribute error
    #
    #   @return [String]
    #
    # @!attribute error_description
    #
    #   @return [String]
    #
    InvalidRequestException = ::Struct.new(
      :error,
      :error_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that the scope provided in the request is invalid.</p>
    #
    # @!attribute error
    #
    #   @return [String]
    #
    # @!attribute error_description
    #
    #   @return [String]
    #
    InvalidScopeException = ::Struct.new(
      :error,
      :error_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_name
    #   <p>The friendly name of the client.</p>
    #
    #   @return [String]
    #
    # @!attribute client_type
    #   <p>The type of client. The service supports only <code>public</code> as a client type. Anything other than public will be rejected by the service.</p>
    #
    #   @return [String]
    #
    # @!attribute scopes
    #   <p>The list of scopes that are defined by the client. Upon authorization, this list is used
    #         to restrict permissions when granting an access token.</p>
    #
    #   @return [Array<String>]
    #
    RegisterClientInput = ::Struct.new(
      :client_name,
      :client_type,
      :scopes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_id
    #   <p>The unique identifier string for each client. This client uses this identifier to get
    #         authenticated by the service in subsequent calls.</p>
    #
    #   @return [String]
    #
    # @!attribute client_secret
    #   <p>A secret string generated for the client. The client will use this string to get
    #         authenticated by the service in subsequent calls.</p>
    #
    #   @return [String]
    #
    # @!attribute client_id_issued_at
    #   <p>Indicates the time at which the <code>clientId</code> and <code>clientSecret</code> were issued.</p>
    #
    #   @return [Integer]
    #
    # @!attribute client_secret_expires_at
    #   <p>Indicates the time at which the <code>clientId</code> and <code>clientSecret</code> will become invalid.</p>
    #
    #   @return [Integer]
    #
    # @!attribute authorization_endpoint
    #   <p>The endpoint where the client can request authorization.</p>
    #
    #   @return [String]
    #
    # @!attribute token_endpoint
    #   <p>The endpoint where the client can get an access token.</p>
    #
    #   @return [String]
    #
    RegisterClientOutput = ::Struct.new(
      :client_id,
      :client_secret,
      :client_id_issued_at,
      :client_secret_expires_at,
      :authorization_endpoint,
      :token_endpoint,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.client_id_issued_at ||= 0
        self.client_secret_expires_at ||= 0
      end
    end

    # <p>Indicates that the client is making the request too frequently and is more than the service can handle. </p>
    #
    # @!attribute error
    #
    #   @return [String]
    #
    # @!attribute error_description
    #
    #   @return [String]
    #
    SlowDownException = ::Struct.new(
      :error,
      :error_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_id
    #   <p>The unique identifier string for the client that is registered with AWS SSO. This value
    #         should come from the persisted result of the <a>RegisterClient</a> API
    #         operation.</p>
    #
    #   @return [String]
    #
    # @!attribute client_secret
    #   <p>A secret string that is generated for the client. This value should come from the
    #         persisted result of the <a>RegisterClient</a> API operation.</p>
    #
    #   @return [String]
    #
    # @!attribute start_url
    #   <p>The URL for the AWS SSO user portal. For more information, see <a href="https://docs.aws.amazon.com/singlesignon/latest/userguide/using-the-portal.html">Using
    #           the User Portal</a> in the <i>AWS Single Sign-On User Guide</i>.</p>
    #
    #   @return [String]
    #
    StartDeviceAuthorizationInput = ::Struct.new(
      :client_id,
      :client_secret,
      :start_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute device_code
    #   <p>The short-lived code that is used by the device when polling for a session token.</p>
    #
    #   @return [String]
    #
    # @!attribute user_code
    #   <p>A one-time user verification code. This is needed to authorize an in-use device.</p>
    #
    #   @return [String]
    #
    # @!attribute verification_uri
    #   <p>The URI of the verification page that takes the <code>userCode</code> to authorize the device.</p>
    #
    #   @return [String]
    #
    # @!attribute verification_uri_complete
    #   <p>An alternate URL that the client can use to automatically launch a browser. This process
    #         skips the manual step in which the user visits the verification page and enters their
    #         code.</p>
    #
    #   @return [String]
    #
    # @!attribute expires_in
    #   <p>Indicates the number of seconds in which the verification code will become invalid.</p>
    #
    #   @return [Integer]
    #
    # @!attribute interval
    #   <p>Indicates the number of seconds the client must wait between attempts when polling for a session.</p>
    #
    #   @return [Integer]
    #
    StartDeviceAuthorizationOutput = ::Struct.new(
      :device_code,
      :user_code,
      :verification_uri,
      :verification_uri_complete,
      :expires_in,
      :interval,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.expires_in ||= 0
        self.interval ||= 0
      end
    end

    # <p>Indicates that the client is not currently authorized to make the request. This can happen
    #       when a <code>clientId</code> is not issued for a public client.</p>
    #
    # @!attribute error
    #
    #   @return [String]
    #
    # @!attribute error_description
    #
    #   @return [String]
    #
    UnauthorizedClientException = ::Struct.new(
      :error,
      :error_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that the grant type in the request is not supported by the service.</p>
    #
    # @!attribute error
    #
    #   @return [String]
    #
    # @!attribute error_description
    #
    #   @return [String]
    #
    UnsupportedGrantTypeException = ::Struct.new(
      :error,
      :error_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
