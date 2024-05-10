# frozen_string_literal: true

module AWS::SDK::Core
  # A refreshing identity provider that provides HTTP Bearer Identities from
  # SSOOIDC. The SDK does not manage refreshing of
  # the token value, but this can be done by running `aws login` with the
  # correct profile.
  #
  #     # You must first run aws sso login --profile your-sso-profile
  #     provider = AWS::SDK::Core::SSOBearerProvider.new(
  #       sso_region: "us-east-1",
  #       sso_session: "your-sso-session"
  #     )
  #
  #     client = AWS::SDK::CodeCatalyst::Client.new(
  #       http_bearer_provider: provider)
  class SSOBearerProvider < Hearth::IdentityProvider
    include Hearth::RefreshingIdentityProvider

    # @api private
    SSO_LOGIN_GUIDANCE = 'The SSO session associated with this profile has '\
      'expired or is otherwise invalid. To refresh this SSO session run '\
      'aws sso login with the corresponding profile.'.freeze

    # @param[required, String] :sso_region The AWS region where the
    #   SSO directory for the given sso_start_url is hosted.
    #
    # @param [required, String] :sso_session The SSO Session used to
    #   for fetching this token.
    #
    # @param [SSOOIDC::Client] :client Optional `SSOOIDC::Client`.  If not
    #   provided, a client will be constructed.
    #
    def initialize(sso_region:, sso_session:, client:)
      super()

      unless AWS::SDK::Core.ssoidc_loaded?
        raise 'aws-sdk-ssooidc is required to create a SSOBearerProvider.'
      end

      @sso_region = sso_region
      @sso_session = sso_session

      options[:region] = @sso_region
      options[:credentials_provider] = nil # skip credential chain resolution
      @client = options[:client] || AWS::SDK::SSOOIDC::Client.new(options)
    end
  end
end