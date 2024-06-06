# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::SSOOIDC
  # <p>IAM Identity Center OpenID Connect (OIDC) is a web service that enables a client (such as CLI
  #       or a native application) to register with IAM Identity Center. The service also enables the client to
  #       fetch the user’s access token upon successful authentication and authorization with
  #       IAM Identity Center.</p>
  #          <note>
  #             <p>IAM Identity Center uses the <code>sso</code> and <code>identitystore</code> API namespaces.</p>
  #          </note>
  #          <p>
  #             <b>Considerations for Using This Guide</b>
  #          </p>
  #          <p>Before you begin using this guide, we recommend that you first review the following
  #       important information about how the IAM Identity Center OIDC service works.</p>
  #          <ul>
  #             <li>
  #                <p>The IAM Identity Center OIDC service currently implements only the portions of the OAuth 2.0 Device
  #           Authorization Grant standard (<a href="https://tools.ietf.org/html/rfc8628">https://tools.ietf.org/html/rfc8628</a>) that are necessary to enable single
  #           sign-on authentication with the CLI. </p>
  #             </li>
  #             <li>
  #                <p>With older versions of the CLI, the service only emits OIDC access tokens, so to
  #           obtain a new token, users must explicitly re-authenticate. To access the OIDC flow that
  #           supports token refresh and doesn’t require re-authentication, update to the latest CLI
  #           version (1.27.10 for CLI V1 and 2.9.0 for CLI V2) with support for OIDC token refresh and
  #           configurable IAM Identity Center session durations. For more information, see <a href="https://docs.aws.amazon.com/singlesignon/latest/userguide/configure-user-session.html">Configure Amazon Web Services access portal session duration </a>. </p>
  #             </li>
  #             <li>
  #                <p>The access tokens provided by this service grant access to all Amazon Web Services account
  #           entitlements assigned to an IAM Identity Center user, not just a particular application.</p>
  #             </li>
  #             <li>
  #                <p>The documentation in this guide does not describe the mechanism to convert the access
  #           token into Amazon Web Services Auth (“sigv4”) credentials for use with IAM-protected Amazon Web Services service
  #           endpoints. For more information, see <a href="https://docs.aws.amazon.com/singlesignon/latest/PortalAPIReference/API_GetRoleCredentials.html">GetRoleCredentials</a> in the <i>IAM Identity Center Portal API Reference
  #             Guide</i>.</p>
  #             </li>
  #          </ul>
  #          <p>For general information about IAM Identity Center, see <a href="https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html">What is
  #         IAM Identity Center?</a> in the <i>IAM Identity Center User Guide</i>.</p>
  class Client < Hearth::Client

    # @api private
    @plugins = Hearth::PluginList.new

    # @param [Hash] options
    #   Options used to construct an instance of {Config}
    def initialize(options = {})
      super(options, Config)
    end

    # @return [Config] config
    attr_reader :config

    # <p>Creates and returns access and refresh tokens for clients that are authenticated using
    #       client secrets. The access token can be used to fetch short-term credentials for the assigned
    #       AWS accounts or to access application APIs using <code>bearer</code> authentication.</p>
    # @param [Hash | Types::CreateTokenInput] params
    #   Request parameters for this operation.
    #   See {Types::CreateTokenInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.create_token(
    #     client_id: 'clientId', # required
    #     client_secret: 'clientSecret', # required
    #     grant_type: 'grantType', # required
    #     device_code: 'deviceCode',
    #     code: 'code',
    #     refresh_token: 'refreshToken',
    #     scope: [
    #       'member'
    #     ],
    #     redirect_uri: 'redirectUri',
    #     code_verifier: 'codeVerifier'
    #   )
    # @example Response structure
    #   resp.data #=> Types::CreateTokenOutput
    #   resp.data.access_token #=> String
    #   resp.data.token_type #=> String
    #   resp.data.expires_in #=> Integer
    #   resp.data.refresh_token #=> String
    #   resp.data.id_token #=> String
    # @example Call OAuth/OIDC /token endpoint for Device Code grant with Secret authentication
    #   #
    #   resp = client.create_token({
    #     client_id: "_yzkThXVzLWVhc3QtMQEXAMPLECLIENTID",
    #     client_secret: "VERYLONGSECRETeyJraWQiOiJrZXktMTU2NDAyODA5OSIsImFsZyI6IkhTMzg0In0",
    #     grant_type: "urn:ietf:params:oauth:grant-type:device-code",
    #     device_code: "yJraWQiOiJrZXktMTU2Njk2ODA4OCIsImFsZyI6IkhTMzIn0EXAMPLEDEVICECODE"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     access_token: "aoal-YigITUDiNX1xZwOMXM5MxOWDL0E0jg9P6_C_jKQPxS_SKCP6f0kh1Up4g7TtvQqkMnD-GJiU_S1gvug6SrggAkc0:MGYCMQD3IatVjV7jAJU91kK3PkS/SfA2wtgWzOgZWDOR7sDGN9t0phCZz5It/aes/3C1Zj0CMQCKWOgRaiz6AIhza3DSXQNMLjRKXC8F8ceCsHlgYLMZ7hZidEXAMPLEACCESSTOKEN",
    #     token_type: "Bearer",
    #     expires_in: 1579729529,
    #     refresh_token: "aorvJYubGpU6i91YnH7Mfo-AT2fIVa1zCfA_Rvq9yjVKIP3onFmmykuQ7E93y2I-9Nyj-A_sVvMufaLNL0bqnDRtgAkc0:MGUCMFrRsktMRVlWaOR70XGMFGLL0SlcCw4DiYveIiOVx1uK9BbD0gvAddsW3UTLozXKMgIxAJ3qxUvjpnlLIOaaKOoa/FuNgqJVvr9GMwDtnAtlh9iZzAkEXAMPLEREFRESHTOKEN"
    #   }
    # @example Call OAuth/OIDC /token endpoint for Refresh Token grant with Secret authentication
    #   #
    #   resp = client.create_token({
    #     client_id: "_yzkThXVzLWVhc3QtMQEXAMPLECLIENTID",
    #     client_secret: "VERYLONGSECRETeyJraWQiOiJrZXktMTU2NDAyODA5OSIsImFsZyI6IkhTMzg0In0",
    #     grant_type: "refresh_token",
    #     refresh_token: "aorvJYubGpU6i91YnH7Mfo-AT2fIVa1zCfA_Rvq9yjVKIP3onFmmykuQ7E93y2I-9Nyj-A_sVvMufaLNL0bqnDRtgAkc0:MGUCMFrRsktMRVlWaOR70XGMFGLL0SlcCw4DiYveIiOVx1uK9BbD0gvAddsW3UTLozXKMgIxAJ3qxUvjpnlLIOaaKOoa/FuNgqJVvr9GMwDtnAtlh9iZzAkEXAMPLEREFRESHTOKEN",
    #     scope: [
    #       "codewhisperer:completions"
    #     ]
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     access_token: "aoal-YigITUDiNX1xZwOMXM5MxOWDL0E0jg9P6_C_jKQPxS_SKCP6f0kh1Up4g7TtvQqkMnD-GJiU_S1gvug6SrggAkc0:MGYCMQD3IatVjV7jAJU91kK3PkS/SfA2wtgWzOgZWDOR7sDGN9t0phCZz5It/aes/3C1Zj0CMQCKWOgRaiz6AIhza3DSXQNMLjRKXC8F8ceCsHlgYLMZ7hZidEXAMPLEACCESSTOKEN",
    #     token_type: "Bearer",
    #     expires_in: 1579729529,
    #     refresh_token: "aorvJYubGpU6i91YnH7Mfo-AT2fIVa1zCfA_Rvq9yjVKIP3onFmmykuQ7E93y2I-9Nyj-A_sVvMufaLNL0bqnDRtgAkc0:MGUCMFrRsktMRVlWaOR70XGMFGLL0SlcCw4DiYveIiOVx1uK9BbD0gvAddsW3UTLozXKMgIxAJ3qxUvjpnlLIOaaKOoa/FuNgqJVvr9GMwDtnAtlh9iZzAkEXAMPLEREFRESHTOKEN"
    #   }
    def create_token(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      input = Params::CreateTokenInput.build(params, context: 'params')
      stack = AWS::SDK::SSOOIDC::Middleware::CreateToken.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :create_token,
      )
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#create_token] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.config.logger.error("[#{context.invocation_id}] [#{self.class}#create_token] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#create_token] #{output.data}")
      output
    end

    # <p>Creates and returns access and refresh tokens for clients and applications that are
    #       authenticated using IAM entities. The access token can be used to fetch short-term credentials
    #       for the assigned Amazon Web Services accounts or to access application APIs using <code>bearer</code>
    #       authentication.</p>
    # @param [Hash | Types::CreateTokenWithIAMInput] params
    #   Request parameters for this operation.
    #   See {Types::CreateTokenWithIAMInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.create_token_with_iam(
    #     client_id: 'clientId', # required
    #     grant_type: 'grantType', # required
    #     code: 'code',
    #     refresh_token: 'refreshToken',
    #     assertion: 'assertion',
    #     scope: [
    #       'member'
    #     ],
    #     redirect_uri: 'redirectUri',
    #     subject_token: 'subjectToken',
    #     subject_token_type: 'subjectTokenType',
    #     requested_token_type: 'requestedTokenType',
    #     code_verifier: 'codeVerifier'
    #   )
    # @example Response structure
    #   resp.data #=> Types::CreateTokenWithIAMOutput
    #   resp.data.access_token #=> String
    #   resp.data.token_type #=> String
    #   resp.data.expires_in #=> Integer
    #   resp.data.refresh_token #=> String
    #   resp.data.id_token #=> String
    #   resp.data.issued_token_type #=> String
    #   resp.data.scope #=> Array<String>
    #   resp.data.scope[0] #=> String
    # @example Call OAuth/OIDC /token endpoint for Authorization Code grant with IAM authentication
    #   #
    #   resp = client.create_token_with_iam({
    #     client_id: "arn:aws:sso::123456789012:application/ssoins-111111111111/apl-222222222222",
    #     grant_type: "authorization_code",
    #     code: "yJraWQiOiJrZXktMTU2Njk2ODA4OCIsImFsZyI6IkhTMzg0In0EXAMPLEAUTHCODE",
    #     redirect_uri: "https://mywebapp.example/redirect",
    #     scope: [
    #       "openid",
    #       "aws",
    #       "sts:identity_context"
    #     ]
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     access_token: "aoal-YigITUDiNX1xZwOMXM5MxOWDL0E0jg9P6_C_jKQPxS_SKCP6f0kh1Up4g7TtvQqkMnD-GJiU_S1gvug6SrggAkc0:MGYCMQD3IatVjV7jAJU91kK3PkS/SfA2wtgWzOgZWDOR7sDGN9t0phCZz5It/aes/3C1Zj0CMQCKWOgRaiz6AIhza3DSXQNMLjRKXC8F8ceCsHlgYLMZ7hZidEXAMPLEACCESSTOKEN",
    #     token_type: "Bearer",
    #     expires_in: 1579729529,
    #     refresh_token: "aorvJYubGpU6i91YnH7Mfo-AT2fIVa1zCfA_Rvq9yjVKIP3onFmmykuQ7E93y2I-9Nyj-A_sVvMufaLNL0bqnDRtgAkc0:MGUCMFrRsktMRVlWaOR70XGMFGLL0SlcCw4DiYveIiOVx1uK9BbD0gvAddsW3UTLozXKMgIxAJ3qxUvjpnlLIOaaKOoa/FuNgqJVvr9GMwDtnAtlh9iZzAkEXAMPLEREFRESHTOKEN",
    #     id_token: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhd3M6aWRlbnRpdHlfc3RvcmVfaWQiOiJkLTMzMzMzMzMzMzMiLCJzdWIiOiI3MzA0NDhmMi1lMGExLTcwYTctYzk1NC0wMDAwMDAwMDAwMDAiLCJhd3M6aW5zdGFuY2VfYWNjb3VudCI6IjExMTExMTExMTExMSIsInN0czppZGVudGl0eV9jb250ZXh0IjoiRVhBTVBMRUlERU5USVRZQ09OVEVYVCIsInN0czphdWRpdF9jb250ZXh0IjoiRVhBTVBMRUFVRElUQ09OVEVYVCIsImlzcyI6Imh0dHBzOi8vaWRlbnRpdHljZW50ZXIuYW1hem9uYXdzLmNvbS9zc29pbnMtMTExMTExMTExMTExIiwiYXdzOmlkZW50aXR5X3N0b3JlX2FybiI6ImFybjphd3M6aWRlbnRpdHlzdG9yZTo6MTExMTExMTExMTExOmlkZW50aXR5c3RvcmUvZC0zMzMzMzMzMzMzIiwiYXVkIjoiYXJuOmF3czpzc286OjEyMzQ1Njc4OTAxMjphcHBsaWNhdGlvbi9zc29pbnMtMTExMTExMTExMTExL2FwbC0yMjIyMjIyMjIyMjIiLCJhd3M6aW5zdGFuY2VfYXJuIjoiYXJuOmF3czpzc286OjppbnN0YW5jZS9zc29pbnMtMTExMTExMTExMTExIiwiYXdzOmNyZWRlbnRpYWxfaWQiOiJfWlIyTjZhVkJqMjdGUEtheWpfcEtwVjc3QVBERl80MXB4ZXRfWWpJdUpONlVJR2RBdkpFWEFNUExFQ1JFRElEIiwiYXV0aF90aW1lIjoiMjAyMC0wMS0yMlQxMjo0NToyOVoiLCJleHAiOjE1Nzk3Mjk1MjksImlhdCI6MTU3OTcyNTkyOX0.Xyah6qbk78qThzJ41iFU2yfGuRqqtKXHrJYwQ8L9Ip0",
    #     issued_token_type: "urn:ietf:params:oauth:token-type:refresh_token",
    #     scope: [
    #       "openid",
    #       "aws",
    #       "sts:identity_context"
    #     ]
    #   }
    # @example Call OAuth/OIDC /token endpoint for Refresh Token grant with IAM authentication
    #   #
    #   resp = client.create_token_with_iam({
    #     client_id: "arn:aws:sso::123456789012:application/ssoins-111111111111/apl-222222222222",
    #     grant_type: "refresh_token",
    #     refresh_token: "aorvJYubGpU6i91YnH7Mfo-AT2fIVa1zCfA_Rvq9yjVKIP3onFmmykuQ7E93y2I-9Nyj-A_sVvMufaLNL0bqnDRtgAkc0:MGUCMFrRsktMRVlWaOR70XGMFGLL0SlcCw4DiYveIiOVx1uK9BbD0gvAddsW3UTLozXKMgIxAJ3qxUvjpnlLIOaaKOoa/FuNgqJVvr9GMwDtnAtlh9iZzAkEXAMPLEREFRESHTOKEN"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     access_token: "aoal-YigITUDiNX1xZwOMXM5MxOWDL0E0jg9P6_C_jKQPxS_SKCP6f0kh1Up4g7TtvQqkMnD-GJiU_S1gvug6SrggAkc0:MGYCMQD3IatVjV7jAJU91kK3PkS/SfA2wtgWzOgZWDOR7sDGN9t0phCZz5It/aes/3C1Zj0CMQCKWOgRaiz6AIhza3DSXQNMLjRKXC8F8ceCsHlgYLMZ7hZidEXAMPLEACCESSTOKEN",
    #     token_type: "Bearer",
    #     expires_in: 1579729529,
    #     refresh_token: "aorvJYubGpU6i91YnH7Mfo-AT2fIVa1zCfA_Rvq9yjVKIP3onFmmykuQ7E93y2I-9Nyj-A_sVvMufaLNL0bqnDRtgAkc0:MGUCMFrRsktMRVlWaOR70XGMFGLL0SlcCw4DiYveIiOVx1uK9BbD0gvAddsW3UTLozXKMgIxAJ3qxUvjpnlLIOaaKOoa/FuNgqJVvr9GMwDtnAtlh9iZzAkEXAMPLEREFRESHTOKEN",
    #     issued_token_type: "urn:ietf:params:oauth:token-type:refresh_token",
    #     scope: [
    #       "openid",
    #       "aws",
    #       "sts:identity_context"
    #     ]
    #   }
    # @example Call OAuth/OIDC /token endpoint for JWT Bearer grant with IAM authentication
    #   #
    #   resp = client.create_token_with_iam({
    #     client_id: "arn:aws:sso::123456789012:application/ssoins-111111111111/apl-222222222222",
    #     grant_type: "urn:ietf:params:oauth:grant-type:jwt-bearer",
    #     assertion: "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImtpZCI6IjFMVE16YWtpaGlSbGFfOHoyQkVKVlhlV01xbyJ9.eyJ2ZXIiOiIyLjAiLCJpc3MiOiJodHRwczovL2xvZ2luLm1pY3Jvc29mdG9ubGluZS5jb20vOTEyMjA0MGQtNmM2Ny00YzViLWIxMTItMzZhMzA0YjY2ZGFkL3YyLjAiLCJzdWIiOiJBQUFBQUFBQUFBQUFBQUFBQUFBQUFJa3pxRlZyU2FTYUZIeTc4MmJidGFRIiwiYXVkIjoiNmNiMDQwMTgtYTNmNS00NmE3LWI5OTUtOTQwYzc4ZjVhZWYzIiwiZXhwIjoxNTM2MzYxNDExLCJpYXQiOjE1MzYyNzQ3MTEsIm5iZiI6MTUzNjI3NDcxMSwibmFtZSI6IkFiZSBMaW5jb2xuIiwicHJlZmVycmVkX3VzZXJuYW1lIjoiQWJlTGlAbWljcm9zb2Z0LmNvbSIsIm9pZCI6IjAwMDAwMDAwLTAwMDAtMDAwMC02NmYzLTMzMzJlY2E3ZWE4MSIsInRpZCI6IjkxMjIwNDBkLTZjNjctNGM1Yi1iMTEyLTM2YTMwNGI2NmRhZCIsIm5vbmNlIjoiMTIzNTIzIiwiYWlvIjoiRGYyVVZYTDFpeCFsTUNXTVNPSkJjRmF0emNHZnZGR2hqS3Y4cTVnMHg3MzJkUjVNQjVCaXN2R1FPN1lXQnlqZDhpUURMcSFlR2JJRGFreXA1bW5PcmNkcUhlWVNubHRlcFFtUnA2QUlaOGpZIn0.1AFWW-Ck5nROwSlltm7GzZvDwUkqvhSQpm55TQsmVo9Y59cLhRXpvB8n-55HCr9Z6G_31_UbeUkoz612I2j_Sm9FFShSDDjoaLQr54CreGIJvjtmS3EkK9a7SJBbcpL1MpUtlfygow39tFjY7EVNW9plWUvRrTgVk7lYLprvfzw-CIqw3gHC-T7IK_m_xkr08INERBtaecwhTeN4chPC4W3jdmw_lIxzC48YoQ0dB1L9-ImX98Egypfrlbm0IBL5spFzL6JDZIRRJOu8vecJvj1mq-IUhGt0MacxX8jdxYLP-KUu2d9MbNKpCKJuZ7p8gwTL5B7NlUdh_dmSviPWrw"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     access_token: "aoal-YigITUDiNX1xZwOMXM5MxOWDL0E0jg9P6_C_jKQPxS_SKCP6f0kh1Up4g7TtvQqkMnD-GJiU_S1gvug6SrggAkc0:MGYCMQD3IatVjV7jAJU91kK3PkS/SfA2wtgWzOgZWDOR7sDGN9t0phCZz5It/aes/3C1Zj0CMQCKWOgRaiz6AIhza3DSXQNMLjRKXC8F8ceCsHlgYLMZ7hZidEXAMPLEACCESSTOKEN",
    #     token_type: "Bearer",
    #     expires_in: 1579729529,
    #     refresh_token: "aorvJYubGpU6i91YnH7Mfo-AT2fIVa1zCfA_Rvq9yjVKIP3onFmmykuQ7E93y2I-9Nyj-A_sVvMufaLNL0bqnDRtgAkc0:MGUCMFrRsktMRVlWaOR70XGMFGLL0SlcCw4DiYveIiOVx1uK9BbD0gvAddsW3UTLozXKMgIxAJ3qxUvjpnlLIOaaKOoa/FuNgqJVvr9GMwDtnAtlh9iZzAkEXAMPLEREFRESHTOKEN",
    #     id_token: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhd3M6aWRlbnRpdHlfc3RvcmVfaWQiOiJkLTMzMzMzMzMzMzMiLCJzdWIiOiI3MzA0NDhmMi1lMGExLTcwYTctYzk1NC0wMDAwMDAwMDAwMDAiLCJhd3M6aW5zdGFuY2VfYWNjb3VudCI6IjExMTExMTExMTExMSIsInN0czppZGVudGl0eV9jb250ZXh0IjoiRVhBTVBMRUlERU5USVRZQ09OVEVYVCIsInN0czphdWRpdF9jb250ZXh0IjoiRVhBTVBMRUFVRElUQ09OVEVYVCIsImlzcyI6Imh0dHBzOi8vaWRlbnRpdHljZW50ZXIuYW1hem9uYXdzLmNvbS9zc29pbnMtMTExMTExMTExMTExIiwiYXdzOmlkZW50aXR5X3N0b3JlX2FybiI6ImFybjphd3M6aWRlbnRpdHlzdG9yZTo6MTExMTExMTExMTExOmlkZW50aXR5c3RvcmUvZC0zMzMzMzMzMzMzIiwiYXVkIjoiYXJuOmF3czpzc286OjEyMzQ1Njc4OTAxMjphcHBsaWNhdGlvbi9zc29pbnMtMTExMTExMTExMTExL2FwbC0yMjIyMjIyMjIyMjIiLCJhd3M6aW5zdGFuY2VfYXJuIjoiYXJuOmF3czpzc286OjppbnN0YW5jZS9zc29pbnMtMTExMTExMTExMTExIiwiYXdzOmNyZWRlbnRpYWxfaWQiOiJfWlIyTjZhVkJqMjdGUEtheWpfcEtwVjc3QVBERl80MXB4ZXRfWWpJdUpONlVJR2RBdkpFWEFNUExFQ1JFRElEIiwiYXV0aF90aW1lIjoiMjAyMC0wMS0yMlQxMjo0NToyOVoiLCJleHAiOjE1Nzk3Mjk1MjksImlhdCI6MTU3OTcyNTkyOX0.Xyah6qbk78qThzJ41iFU2yfGuRqqtKXHrJYwQ8L9Ip0",
    #     issued_token_type: "urn:ietf:params:oauth:token-type:refresh_token",
    #     scope: [
    #       "openid",
    #       "aws",
    #       "sts:identity_context"
    #     ]
    #   }
    # @example Call OAuth/OIDC /token endpoint for Token Exchange grant with IAM authentication
    #   #
    #   resp = client.create_token_with_iam({
    #     client_id: "arn:aws:sso::123456789012:application/ssoins-111111111111/apl-222222222222",
    #     grant_type: "urn:ietf:params:oauth:grant-type:token-exchange",
    #     subject_token: "aoak-Hig8TUDPNX1xZwOMXM5MxOWDL0E0jg9P6_C_jKQPxS_SKCP6f0kh1Up4g7TtvQqkMnD-GJiU_S1gvug6SrggAkc0:MGYCMQD3IatVjV7jAJU91kK3PkS/SfA2wtgWzOgZWDOR7sDGN9t0phCZz5It/aes/3C1Zj0CMQCKWOgRaiz6AIhza3DSXQNMLjRKXC8F8ceCsHlgYLMZ7hZDIFFERENTACCESSTOKEN",
    #     subject_token_type: "urn:ietf:params:oauth:token-type:access_token",
    #     requested_token_type: "urn:ietf:params:oauth:token-type:access_token"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     access_token: "aoal-YigITUDiNX1xZwOMXM5MxOWDL0E0jg9P6_C_jKQPxS_SKCP6f0kh1Up4g7TtvQqkMnD-GJiU_S1gvug6SrggAkc0:MGYCMQD3IatVjV7jAJU91kK3PkS/SfA2wtgWzOgZWDOR7sDGN9t0phCZz5It/aes/3C1Zj0CMQCKWOgRaiz6AIhza3DSXQNMLjRKXC8F8ceCsHlgYLMZ7hZidEXAMPLEACCESSTOKEN",
    #     token_type: "Bearer",
    #     expires_in: 1579729529,
    #     id_token: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhd3M6aWRlbnRpdHlfc3RvcmVfaWQiOiJkLTMzMzMzMzMzMzMiLCJzdWIiOiI3MzA0NDhmMi1lMGExLTcwYTctYzk1NC0wMDAwMDAwMDAwMDAiLCJhd3M6aW5zdGFuY2VfYWNjb3VudCI6IjExMTExMTExMTExMSIsInN0czppZGVudGl0eV9jb250ZXh0IjoiRVhBTVBMRUlERU5USVRZQ09OVEVYVCIsImlzcyI6Imh0dHBzOi8vaWRlbnRpdHljZW50ZXIuYW1hem9uYXdzLmNvbS9zc29pbnMtMTExMTExMTExMTExIiwiYXdzOmlkZW50aXR5X3N0b3JlX2FybiI6ImFybjphd3M6aWRlbnRpdHlzdG9yZTo6MTExMTExMTExMTExOmlkZW50aXR5c3RvcmUvZC0zMzMzMzMzMzMzIiwiYXVkIjoiYXJuOmF3czpzc286OjEyMzQ1Njc4OTAxMjphcHBsaWNhdGlvbi9zc29pbnMtMTExMTExMTExMTExL2FwbC0yMjIyMjIyMjIyMjIiLCJhd3M6aW5zdGFuY2VfYXJuIjoiYXJuOmF3czpzc286OjppbnN0YW5jZS9zc29pbnMtMTExMTExMTExMTExIiwiYXdzOmNyZWRlbnRpYWxfaWQiOiJfWlIyTjZhVkJqMjdGUEtheWpfcEtwVjc3QVBERl80MXB4ZXRfWWpJdUpONlVJR2RBdkpFWEFNUExFQ1JFRElEIiwiYXV0aF90aW1lIjoiMjAyMC0wMS0yMlQxMjo0NToyOVoiLCJleHAiOjE1Nzk3Mjk1MjksImlhdCI6MTU3OTcyNTkyOX0.5SYiW1kMsuUr7nna-l5tlakM0GNbMHvIM2_n0QD23jM",
    #     issued_token_type: "urn:ietf:params:oauth:token-type:access_token",
    #     scope: [
    #       "openid",
    #       "aws",
    #       "sts:identity_context"
    #     ]
    #   }
    def create_token_with_iam(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      input = Params::CreateTokenWithIAMInput.build(params, context: 'params')
      stack = AWS::SDK::SSOOIDC::Middleware::CreateTokenWithIAM.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :create_token_with_iam,
      )
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#create_token_with_iam] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.config.logger.error("[#{context.invocation_id}] [#{self.class}#create_token_with_iam] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#create_token_with_iam] #{output.data}")
      output
    end

    # <p>Registers a client with IAM Identity Center. This allows clients to initiate device authorization.
    #       The output should be persisted for reuse through many authentication requests.</p>
    # @param [Hash | Types::RegisterClientInput] params
    #   Request parameters for this operation.
    #   See {Types::RegisterClientInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.register_client(
    #     client_name: 'clientName', # required
    #     client_type: 'clientType', # required
    #     scopes: [
    #       'member'
    #     ],
    #     redirect_uris: [
    #       'member'
    #     ],
    #     grant_types: [
    #       'member'
    #     ],
    #     issuer_url: 'issuerUrl',
    #     entitled_application_arn: 'entitledApplicationArn'
    #   )
    # @example Response structure
    #   resp.data #=> Types::RegisterClientOutput
    #   resp.data.client_id #=> String
    #   resp.data.client_secret #=> String
    #   resp.data.client_id_issued_at #=> Integer
    #   resp.data.client_secret_expires_at #=> Integer
    #   resp.data.authorization_endpoint #=> String
    #   resp.data.token_endpoint #=> String
    # @example Call OAuth/OIDC /register-client endpoint
    #   #
    #   resp = client.register_client({
    #     client_name: "My IDE Plugin",
    #     client_type: "public",
    #     scopes: [
    #       "sso:account:access",
    #       "codewhisperer:completions"
    #     ],
    #     redirect_uris: [
    #       "127.0.0.1:PORT/oauth/callback"
    #     ],
    #     grant_types: [
    #       "authorization_code",
    #       "refresh_token"
    #     ],
    #     issuer_url: "https://identitycenter.amazonaws.com/ssoins-1111111111111111",
    #     entitled_application_arn: "arn:aws:sso::ACCOUNTID:application/ssoins-1111111111111111/apl-1111111111111111"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     client_id: "_yzkThXVzLWVhc3QtMQEXAMPLECLIENTID",
    #     client_secret: "VERYLONGSECRETeyJraWQiOiJrZXktMTU2NDAyODA5OSIsImFsZyI6IkhTMzg0In0",
    #     client_id_issued_at: 1579725929,
    #     client_secret_expires_at: 1587584729
    #   }
    def register_client(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      input = Params::RegisterClientInput.build(params, context: 'params')
      stack = AWS::SDK::SSOOIDC::Middleware::RegisterClient.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :register_client,
      )
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#register_client] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.config.logger.error("[#{context.invocation_id}] [#{self.class}#register_client] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#register_client] #{output.data}")
      output
    end

    # <p>Initiates device authorization by requesting a pair of verification codes from the
    #       authorization service.</p>
    # @param [Hash | Types::StartDeviceAuthorizationInput] params
    #   Request parameters for this operation.
    #   See {Types::StartDeviceAuthorizationInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.start_device_authorization(
    #     client_id: 'clientId', # required
    #     client_secret: 'clientSecret', # required
    #     start_url: 'startUrl' # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::StartDeviceAuthorizationOutput
    #   resp.data.device_code #=> String
    #   resp.data.user_code #=> String
    #   resp.data.verification_uri #=> String
    #   resp.data.verification_uri_complete #=> String
    #   resp.data.expires_in #=> Integer
    #   resp.data.interval #=> Integer
    # @example Call OAuth/OIDC /start-device-authorization endpoint
    #   #
    #   resp = client.start_device_authorization({
    #     client_id: "_yzkThXVzLWVhc3QtMQEXAMPLECLIENTID",
    #     client_secret: "VERYLONGSECRETeyJraWQiOiJrZXktMTU2NDAyODA5OSIsImFsZyI6IkhTMzg0In0",
    #     start_url: "https://identitycenter.amazonaws.com/ssoins-111111111111"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     device_code: "yJraWQiOiJrZXktMTU2Njk2ODA4OCIsImFsZyI6IkhTMzIn0EXAMPLEDEVICECODE",
    #     user_code: "makdfsk83yJraWQiOiJrZXktMTU2Njk2sImFsZyI6IkhTMzIn0EXAMPLEUSERCODE",
    #     verification_uri: "https://device.sso.us-west-2.amazonaws.com",
    #     verification_uri_complete: "https://device.sso.us-west-2.amazonaws.com?user_code=makdfsk83yJraWQiOiJrZXktMTU2Njk2sImFsZyI6IkhTMzIn0EXAMPLEUSERCODE",
    #     expires_in: 1579729529,
    #     interval: 1
    #   }
    def start_device_authorization(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      input = Params::StartDeviceAuthorizationInput.build(params, context: 'params')
      stack = AWS::SDK::SSOOIDC::Middleware::StartDeviceAuthorization.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :start_device_authorization,
      )
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#start_device_authorization] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.config.logger.error("[#{context.invocation_id}] [#{self.class}#start_device_authorization] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#start_device_authorization] #{output.data}")
      output
    end
  end
end
