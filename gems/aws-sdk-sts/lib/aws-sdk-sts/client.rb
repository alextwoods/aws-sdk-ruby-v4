# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'plugins/global_config'
require_relative 'plugins/telemetry'

module AWS::SDK::STS
  # <fullname>Security Token Service</fullname>
  #          <p>Security Token Service (STS) enables you to request temporary, limited-privilege
  #       credentials for users. This guide provides descriptions of the STS API. For
  #       more information about using this service, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp.html">Temporary Security Credentials</a>.</p>
  class Client < Hearth::Client

    # @api private
    @plugins = Hearth::PluginList.new([
      Plugins::GlobalConfig.new,
      Plugins::Telemetry.new
    ])

    # @param [Hash] options
    #   Options used to construct an instance of {Config}
    def initialize(options = {})
      super(options, Config)
    end

    # @return [Config] config
    attr_reader :config

    # <p>Returns a set of temporary security credentials that you can use to access Amazon Web Services
    #          resources. These temporary credentials consist of an access key ID, a secret access key,
    #          and a security token. Typically, you use <code>AssumeRole</code> within your account or for
    #          cross-account access. For a comparison of <code>AssumeRole</code> with other API operations
    #          that produce temporary credentials, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html">Requesting Temporary Security
    #             Credentials</a> and <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#stsapi_comparison">Comparing the
    #             Amazon Web Services STS API operations</a> in the <i>IAM User Guide</i>.</p>
    #          <p>
    #             <b>Permissions</b>
    #          </p>
    #          <p>The temporary security credentials created by <code>AssumeRole</code> can be used to
    #          make API calls to any Amazon Web Services service with the following exception: You cannot call the
    #          Amazon Web Services STS <code>GetFederationToken</code> or <code>GetSessionToken</code> API
    #          operations.</p>
    #          <p>(Optional) You can pass inline or managed <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">session policies</a> to
    #          this operation. You can pass a single JSON policy document to use as an inline session
    #          policy. You can also specify up to 10 managed policy Amazon Resource Names (ARNs) to use as
    #          managed session policies. The plaintext that you use for both inline and managed session
    #          policies can't exceed 2,048 characters. Passing policies to this operation returns new
    #          temporary credentials. The resulting session's permissions are the intersection of the
    #          role's identity-based policy and the session policies. You can use the role's temporary
    #          credentials in subsequent Amazon Web Services API calls to access resources in the account that owns
    #          the role. You cannot use session policies to grant more permissions than those allowed
    #          by the identity-based policy of the role that is being assumed. For more information, see
    #             <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">Session
    #             Policies</a> in the <i>IAM User Guide</i>.</p>
    #          <p>When you create a role, you create two policies: a role trust policy that specifies
    #             <i>who</i> can assume the role, and a permissions policy that specifies
    #             <i>what</i> can be done with the role. You specify the trusted principal
    #          that is allowed to assume the role in the role trust policy.</p>
    #          <p>To assume a role from a different account, your Amazon Web Services account must be trusted by the
    #          role. The trust relationship is defined in the role's trust policy when the role is
    #          created. That trust policy states which accounts are allowed to delegate that access to
    #          users in the account. </p>
    #          <p>A user who wants to access a role in a different account must also have permissions that
    #          are delegated from the account administrator. The administrator must attach a policy that
    #          allows the user to call <code>AssumeRole</code> for the ARN of the role in the other
    #          account.</p>
    #          <p>To allow a user to assume a role in the same account, you can do either of the
    #          following:</p>
    #          <ul>
    #             <li>
    #                <p>Attach a policy to the user that allows the user to call <code>AssumeRole</code>
    #                (as long as the role's trust policy trusts the account).</p>
    #             </li>
    #             <li>
    #                <p>Add the user as a principal directly in the role's trust policy.</p>
    #             </li>
    #          </ul>
    #          <p>You can do either because the role’s trust policy acts as an IAM resource-based
    #          policy. When a resource-based policy grants access to a principal in the same account, no
    #          additional identity-based policy is required. For more information about trust policies and
    #          resource-based policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html">IAM Policies</a> in the
    #             <i>IAM User Guide</i>.</p>
    #          <p>
    #             <b>Tags</b>
    #          </p>
    #          <p>(Optional) You can pass tag key-value pairs to your session. These tags are called
    #          session tags. For more information about session tags, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html">Passing Session Tags in STS</a> in the
    #             <i>IAM User Guide</i>.</p>
    #          <p>An administrator must grant you the permissions necessary to pass session tags. The
    #          administrator can also create granular permissions to allow you to pass only specific
    #          session tags. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_attribute-based-access-control.html">Tutorial: Using Tags
    #             for Attribute-Based Access Control</a> in the
    #          <i>IAM User Guide</i>.</p>
    #          <p>You can set the session tags as transitive. Transitive tags persist during role
    #          chaining. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html#id_session-tags_role-chaining">Chaining Roles
    #             with Session Tags</a> in the <i>IAM User Guide</i>.</p>
    #          <p>
    #             <b>Using MFA with AssumeRole</b>
    #          </p>
    #          <p>(Optional) You can include multi-factor authentication (MFA) information when you call
    #             <code>AssumeRole</code>. This is useful for cross-account scenarios to ensure that the
    #          user that assumes the role has been authenticated with an Amazon Web Services MFA device. In that
    #          scenario, the trust policy of the role being assumed includes a condition that tests for
    #          MFA authentication. If the caller does not include valid MFA information, the request to
    #          assume the role is denied. The condition in a trust policy that tests for MFA
    #          authentication might look like the following example.</p>
    #          <p>
    #             <code>"Condition": {"Bool": {"aws:MultiFactorAuthPresent": true}}</code>
    #          </p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/MFAProtectedAPI.html">Configuring MFA-Protected API Access</a>
    #          in the <i>IAM User Guide</i> guide.</p>
    #          <p>To use MFA with <code>AssumeRole</code>, you pass values for the
    #             <code>SerialNumber</code> and <code>TokenCode</code> parameters. The
    #             <code>SerialNumber</code> value identifies the user's hardware or virtual MFA device.
    #          The <code>TokenCode</code> is the time-based one-time password (TOTP) that the MFA device
    #          produces. </p>
    # @param [Hash | Types::AssumeRoleInput] params
    #   Request parameters for this operation.
    #   See {Types::AssumeRoleInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.assume_role(
    #     role_arn: 'RoleArn', # required
    #     role_session_name: 'RoleSessionName', # required
    #     policy_arns: [
    #       {
    #         arn: 'arn'
    #       }
    #     ],
    #     policy: 'Policy',
    #     duration_seconds: 1,
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     transitive_tag_keys: [
    #       'member'
    #     ],
    #     external_id: 'ExternalId',
    #     serial_number: 'SerialNumber',
    #     token_code: 'TokenCode',
    #     source_identity: 'SourceIdentity',
    #     provided_contexts: [
    #       {
    #         provider_arn: 'ProviderArn',
    #         context_assertion: 'ContextAssertion'
    #       }
    #     ]
    #   )
    # @example Response structure
    #   resp.data #=> Types::AssumeRoleOutput
    #   resp.data.credentials #=> Types::Credentials
    #   resp.data.credentials.access_key_id #=> String
    #   resp.data.credentials.secret_access_key #=> String
    #   resp.data.credentials.session_token #=> String
    #   resp.data.credentials.expiration #=> Time
    #   resp.data.assumed_role_user #=> Types::AssumedRoleUser
    #   resp.data.assumed_role_user.assumed_role_id #=> String
    #   resp.data.assumed_role_user.arn #=> String
    #   resp.data.packed_policy_size #=> Integer
    #   resp.data.source_identity #=> String
    # @example To assume a role
    #   #
    #   resp = client.assume_role({
    #     role_arn: "arn:aws:iam::123456789012:role/demo",
    #     role_session_name: "testAssumeRoleSession",
    #     policy: "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Sid\":\"Stmt1\",\"Effect\":\"Allow\",\"Action\":\"s3:ListAllMyBuckets\",\"Resource\":\"*\"}]}",
    #     tags: [
    #       {
    #         key: "Project",
    #         value: "Unicorn"
    #       },
    #       {
    #         key: "Team",
    #         value: "Automation"
    #       },
    #       {
    #         key: "Cost-Center",
    #         value: "12345"
    #       }
    #     ],
    #     transitive_tag_keys: [
    #       "Project",
    #       "Cost-Center"
    #     ],
    #     external_id: "123ABC"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     credentials: {
    #       session_token: "AQoDYXdzEPT//////////wEXAMPLEtc764bNrC9SAPBSM22wDOk4x4HIZ8j4FZTwdQWLWsKWHGBuFqwAeMicRXmxfpSPfIeoIYRqTflfKD8YUuwthAx7mSEI/qkPpKPi/kMcGdQrmGdeehM4IC1NtBmUpp2wUE8phUZampKsburEDy0KPkyQDYwT7WZ0wq5VSXDvp75YU9HFvlRd8Tx6q6fE8YQcHNVXAkiY9q6d+xo0rKwT38xVqr7ZD0u0iPPkUL64lIZbqBAz+scqKmlzm8FDrypNC9Yjc8fPOLn9FX9KSYvKTr4rvx3iSIlTJabIQwj2ICCR/oLxBA==",
    #       access_key_id: "AKIAIOSFODNN7EXAMPLE",
    #       secret_access_key: "wJalrXUtnFEMI/K7MDENG/bPxRfiCYzEXAMPLEKEY",
    #       expiration: Time.parse('2011-07-15T23:28:33.359Z')
    #     },
    #     assumed_role_user: {
    #       arn: "arn:aws:sts::123456789012:assumed-role/demo/Bob",
    #       assumed_role_id: "ARO123EXAMPLE123:Bob"
    #     },
    #     packed_policy_size: 8
    #   }
    def assume_role(params = {}, options = {})
      response_body = ::StringIO.new
      middleware_opts = {}
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.sts.client')
      input = Params::AssumeRoleInput.build(params, context: 'params')
      stack = AWS::SDK::STS::Middleware::AssumeRole.build(config, middleware_opts)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :assume_role,
        tracer: tracer
      )
      Telemetry::AssumeRole.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#assume_role] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#assume_role] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#assume_role] #{output.data}")
        output
      end
    end

    # <p>Returns a set of temporary security credentials for users who have been authenticated
    #          via a SAML authentication response. This operation provides a mechanism for tying an
    #          enterprise identity store or directory to role-based Amazon Web Services access without user-specific
    #          credentials or configuration. For a comparison of <code>AssumeRoleWithSAML</code> with the
    #          other API operations that produce temporary credentials, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html">Requesting Temporary Security
    #             Credentials</a> and <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#stsapi_comparison">Comparing the
    #             Amazon Web Services STS API operations</a> in the <i>IAM User Guide</i>.</p>
    #          <p>The temporary security credentials returned by this operation consist of an access key
    #          ID, a secret access key, and a security token. Applications can use these temporary
    #          security credentials to sign calls to Amazon Web Services services.</p>
    #          <p>
    #             <b>Session Duration</b>
    #          </p>
    #          <p>By default, the temporary security credentials created by
    #             <code>AssumeRoleWithSAML</code> last for one hour. However, you can use the optional
    #             <code>DurationSeconds</code> parameter to specify the duration of your session. Your
    #          role session lasts for the duration that you specify, or until the time specified in the
    #          SAML authentication response's <code>SessionNotOnOrAfter</code> value, whichever is
    #          shorter. You can provide a <code>DurationSeconds</code> value from 900 seconds (15 minutes)
    #          up to the maximum session duration setting for the role. This setting can have a value from
    #          1 hour to 12 hours. To learn how to view the maximum value for your role, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html#id_roles_use_view-role-max-session">View the
    #             Maximum Session Duration Setting for a Role</a> in the
    #             <i>IAM User Guide</i>. The maximum session duration limit applies when
    #          you use the <code>AssumeRole*</code> API operations or the <code>assume-role*</code> CLI
    #          commands. However the limit does not apply when you use those operations to create a
    #          console URL. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html">Using IAM Roles</a> in the
    #             <i>IAM User Guide</i>.</p>
    #          <note>
    #             <p>
    #                <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_terms-and-concepts.html#iam-term-role-chaining">Role chaining</a> limits your CLI or Amazon Web Services API role
    #             session to a maximum of one hour. When you use the <code>AssumeRole</code> API operation
    #             to assume a role, you can specify the duration of your role session with the
    #                <code>DurationSeconds</code> parameter. You can specify a parameter value of up to
    #             43200 seconds (12 hours), depending on the maximum session duration setting for your
    #             role. However, if you assume a role using role chaining and provide a
    #                <code>DurationSeconds</code> parameter value greater than one hour, the operation
    #             fails.</p>
    #          </note>
    #          <p>
    #             <b>Permissions</b>
    #          </p>
    #          <p>The temporary security credentials created by <code>AssumeRoleWithSAML</code> can be
    #          used to make API calls to any Amazon Web Services service with the following exception: you cannot call
    #          the STS <code>GetFederationToken</code> or <code>GetSessionToken</code> API
    #          operations.</p>
    #          <p>(Optional) You can pass inline or managed <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">session policies</a> to
    #          this operation. You can pass a single JSON policy document to use as an inline session
    #          policy. You can also specify up to 10 managed policy Amazon Resource Names (ARNs) to use as
    #          managed session policies. The plaintext that you use for both inline and managed session
    #          policies can't exceed 2,048 characters. Passing policies to this operation returns new
    #          temporary credentials. The resulting session's permissions are the intersection of the
    #          role's identity-based policy and the session policies. You can use the role's temporary
    #          credentials in subsequent Amazon Web Services API calls to access resources in the account that owns
    #          the role. You cannot use session policies to grant more permissions than those allowed
    #          by the identity-based policy of the role that is being assumed. For more information, see
    #             <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">Session
    #             Policies</a> in the <i>IAM User Guide</i>.</p>
    #          <p>Calling <code>AssumeRoleWithSAML</code> does not require the use of Amazon Web Services security
    #          credentials. The identity of the caller is validated by using keys in the metadata document
    #          that is uploaded for the SAML provider entity for your identity provider. </p>
    #          <important>
    #             <p>Calling <code>AssumeRoleWithSAML</code> can result in an entry in your CloudTrail logs.
    #             The entry includes the value in the <code>NameID</code> element of the SAML assertion.
    #             We recommend that you use a <code>NameIDType</code> that is not associated with any
    #             personally identifiable information (PII). For example, you could instead use the
    #             persistent identifier
    #             (<code>urn:oasis:names:tc:SAML:2.0:nameid-format:persistent</code>).</p>
    #          </important>
    #          <p>
    #             <b>Tags</b>
    #          </p>
    #          <p>(Optional) You can configure your IdP to pass attributes into your SAML assertion as
    #          session tags. Each session tag consists of a key name and an associated value. For more
    #          information about session tags, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html">Passing Session Tags in STS</a> in the
    #             <i>IAM User Guide</i>.</p>
    #          <p>You can pass up to 50 session tags. The plaintext session tag keys can’t exceed 128
    #          characters and the values can’t exceed 256 characters. For these and additional limits, see
    #             <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-limits.html#reference_iam-limits-entity-length">IAM
    #             and STS Character Limits</a> in the <i>IAM User Guide</i>.</p>
    #          <note>
    #             <p>An Amazon Web Services conversion compresses the passed inline session policy, managed policy ARNs,
    #             and session tags into a packed binary format that has a separate limit. Your request can
    #             fail for this limit even if your plaintext meets the other requirements. The
    #                <code>PackedPolicySize</code> response element indicates by percentage how close the
    #             policies and tags for your request are to the upper size limit.</p>
    #          </note>
    #          <p>You can pass a session tag with the same key as a tag that is attached to the role. When
    #          you do, session tags override the role's tags with the same key.</p>
    #          <p>An administrator must grant you the permissions necessary to pass session tags. The
    #          administrator can also create granular permissions to allow you to pass only specific
    #          session tags. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_attribute-based-access-control.html">Tutorial: Using Tags
    #             for Attribute-Based Access Control</a> in the
    #          <i>IAM User Guide</i>.</p>
    #          <p>You can set the session tags as transitive. Transitive tags persist during role
    #          chaining. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html#id_session-tags_role-chaining">Chaining Roles
    #             with Session Tags</a> in the <i>IAM User Guide</i>.</p>
    #          <p>
    #             <b>SAML Configuration</b>
    #          </p>
    #          <p>Before your application can call <code>AssumeRoleWithSAML</code>, you must configure
    #          your SAML identity provider (IdP) to issue the claims required by Amazon Web Services. Additionally, you
    #          must use Identity and Access Management (IAM) to create a SAML provider entity in your Amazon Web Services account that
    #          represents your identity provider. You must also create an IAM role that specifies this
    #          SAML provider in its trust policy. </p>
    #          <p>For more information, see the following resources:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html">About
    #                   SAML 2.0-based Federation</a> in the <i>IAM User Guide</i>.
    #             </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_create_saml.html">Creating SAML Identity Providers</a> in the
    #                   <i>IAM User Guide</i>. </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_create_saml_relying-party.html">Configuring
    #                   a Relying Party and Claims</a> in the <i>IAM User Guide</i>.
    #             </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_create_for-idp_saml.html">Creating a Role for SAML 2.0 Federation</a> in the
    #                   <i>IAM User Guide</i>. </p>
    #             </li>
    #          </ul>
    # @param [Hash | Types::AssumeRoleWithSAMLInput] params
    #   Request parameters for this operation.
    #   See {Types::AssumeRoleWithSAMLInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.assume_role_with_saml(
    #     role_arn: 'RoleArn', # required
    #     principal_arn: 'PrincipalArn', # required
    #     saml_assertion: 'SAMLAssertion', # required
    #     policy_arns: [
    #       {
    #         arn: 'arn'
    #       }
    #     ],
    #     policy: 'Policy',
    #     duration_seconds: 1
    #   )
    # @example Response structure
    #   resp.data #=> Types::AssumeRoleWithSAMLOutput
    #   resp.data.credentials #=> Types::Credentials
    #   resp.data.credentials.access_key_id #=> String
    #   resp.data.credentials.secret_access_key #=> String
    #   resp.data.credentials.session_token #=> String
    #   resp.data.credentials.expiration #=> Time
    #   resp.data.assumed_role_user #=> Types::AssumedRoleUser
    #   resp.data.assumed_role_user.assumed_role_id #=> String
    #   resp.data.assumed_role_user.arn #=> String
    #   resp.data.packed_policy_size #=> Integer
    #   resp.data.subject #=> String
    #   resp.data.subject_type #=> String
    #   resp.data.issuer #=> String
    #   resp.data.audience #=> String
    #   resp.data.name_qualifier #=> String
    #   resp.data.source_identity #=> String
    # @example To assume a role using a SAML assertion
    #   #
    #   resp = client.assume_role_with_saml({
    #     role_arn: "arn:aws:iam::123456789012:role/TestSaml",
    #     principal_arn: "arn:aws:iam::123456789012:saml-provider/SAML-test",
    #     saml_assertion: "VERYLONGENCODEDASSERTIONEXAMPLExzYW1sOkF1ZGllbmNlPmJsYW5rPC9zYW1sOkF1ZGllbmNlPjwvc2FtbDpBdWRpZW5jZVJlc3RyaWN0aW9uPjwvc2FtbDpDb25kaXRpb25zPjxzYW1sOlN1YmplY3Q+PHNhbWw6TmFtZUlEIEZvcm1hdD0idXJuOm9hc2lzOm5hbWVzOnRjOlNBTUw6Mi4wOm5hbWVpZC1mb3JtYXQ6dHJhbnNpZW50Ij5TYW1sRXhhbXBsZTwvc2FtbDpOYW1lSUQ+PHNhbWw6U3ViamVjdENvbmZpcm1hdGlvbiBNZXRob2Q9InVybjpvYXNpczpuYW1lczp0YzpTQU1MOjIuMDpjbTpiZWFyZXIiPjxzYW1sOlN1YmplY3RDb25maXJtYXRpb25EYXRhIE5vdE9uT3JBZnRlcj0iMjAxOS0xMS0wMVQyMDoyNTowNS4xNDVaIiBSZWNpcGllbnQ9Imh0dHBzOi8vc2lnbmluLmF3cy5hbWF6b24uY29tL3NhbWwiLz48L3NhbWw6U3ViamVjdENvbmZpcm1hdGlvbj48L3NhbWw6U3ViamVjdD48c2FtbDpBdXRoblN0YXRlbWVudCBBdXRoPD94bWwgdmpSZXNwb25zZT4=",
    #     duration_seconds: 3600
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     issuer: "https://integ.example.com/idp/shibboleth",
    #     assumed_role_user: {
    #       assumed_role_id: "ARO456EXAMPLE789:TestSaml",
    #       arn: "arn:aws:sts::123456789012:assumed-role/TestSaml"
    #     },
    #     credentials: {
    #       secret_access_key: "8P+SQvWIuLnKhh8d++jpw0nNmQRBZvNEXAMPLEKEY",
    #       access_key_id: "ASIAV3ZUEFP6EXAMPLE",
    #       session_token: "IQoJb3JpZ2luX2VjEOz////////////////////wEXAMPLEtMSJHMEUCIDoKK3JH9uGQE1z0sINr5M4jk+Na8KHDcCYRVjJCZEvOAiEA3OvJGtw1EcViOleS2vhs8VdCKFJQWPQrmGdeehM4IC1NtBmUpp2wUE8phUZampKsburEDy0KPkyQDYwT7WZ0wq5VSXDvp75YU9HFvlRd8Tx6q6fE8YQcHNVXAkiY9q6d+xo0rKwT38xVqr7ZD0u0iPPkUL64lIZbqBAz+scqKmlzm8FDrypNC9Yjc8fPOLn9FX9KSYvKTr4rvx3iSIlTJabIQwj2ICCR/oLxBA==",
    #       expiration: Time.parse('2019-11-01T20:26:47Z')
    #     },
    #     audience: "https://signin.aws.amazon.com/saml",
    #     subject_type: "transient",
    #     packed_policy_size: 6,
    #     name_qualifier: "SbdGOnUkh1i4+EXAMPLExL/jEvs=",
    #     subject: "SamlExample"
    #   }
    def assume_role_with_saml(params = {}, options = {})
      response_body = ::StringIO.new
      middleware_opts = {}
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.sts.client')
      input = Params::AssumeRoleWithSAMLInput.build(params, context: 'params')
      stack = AWS::SDK::STS::Middleware::AssumeRoleWithSAML.build(config, middleware_opts)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :assume_role_with_saml,
        tracer: tracer
      )
      Telemetry::AssumeRoleWithSAML.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#assume_role_with_saml] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#assume_role_with_saml] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#assume_role_with_saml] #{output.data}")
        output
      end
    end

    # <p>Returns a set of temporary security credentials for users who have been authenticated in
    #          a mobile or web application with a web identity provider. Example providers include the
    #          OAuth 2.0 providers Login with Amazon and Facebook, or any OpenID Connect-compatible
    #          identity provider such as Google or <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-identity.html">Amazon Cognito federated identities</a>.</p>
    #          <note>
    #             <p>For mobile applications, we recommend that you use Amazon Cognito. You can use Amazon Cognito with the
    #                <a href="http://aws.amazon.com/sdkforios/">Amazon Web Services SDK for iOS Developer Guide</a> and the <a href="http://aws.amazon.com/sdkforandroid/">Amazon Web Services SDK for Android Developer Guide</a> to uniquely
    #             identify a user. You can also supply the user with a consistent identity throughout the
    #             lifetime of an application.</p>
    #             <p>To learn more about Amazon Cognito, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-identity.html">Amazon Cognito identity
    #                pools</a> in <i>Amazon Cognito Developer Guide</i>.</p>
    #          </note>
    #          <p>Calling <code>AssumeRoleWithWebIdentity</code> does not require the use of Amazon Web Services
    #          security credentials. Therefore, you can distribute an application (for example, on mobile
    #          devices) that requests temporary security credentials without including long-term Amazon Web Services
    #          credentials in the application. You also don't need to deploy server-based proxy services
    #          that use long-term Amazon Web Services credentials. Instead, the identity of the caller is validated by
    #          using a token from the web identity provider. For a comparison of
    #             <code>AssumeRoleWithWebIdentity</code> with the other API operations that produce
    #          temporary credentials, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html">Requesting Temporary Security
    #             Credentials</a> and <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#stsapi_comparison">Comparing the
    #             Amazon Web Services STS API operations</a> in the <i>IAM User Guide</i>.</p>
    #          <p>The temporary security credentials returned by this API consist of an access key ID, a
    #          secret access key, and a security token. Applications can use these temporary security
    #          credentials to sign calls to Amazon Web Services service API operations.</p>
    #          <p>
    #             <b>Session Duration</b>
    #          </p>
    #          <p>By default, the temporary security credentials created by
    #             <code>AssumeRoleWithWebIdentity</code> last for one hour. However, you can use the
    #          optional <code>DurationSeconds</code> parameter to specify the duration of your session.
    #          You can provide a value from 900 seconds (15 minutes) up to the maximum session duration
    #          setting for the role. This setting can have a value from 1 hour to 12 hours. To learn how
    #          to view the maximum value for your role, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html#id_roles_use_view-role-max-session">View the
    #             Maximum Session Duration Setting for a Role</a> in the
    #             <i>IAM User Guide</i>. The maximum session duration limit applies when
    #          you use the <code>AssumeRole*</code> API operations or the <code>assume-role*</code> CLI
    #          commands. However the limit does not apply when you use those operations to create a
    #          console URL. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html">Using IAM Roles</a> in the
    #             <i>IAM User Guide</i>. </p>
    #          <p>
    #             <b>Permissions</b>
    #          </p>
    #          <p>The temporary security credentials created by <code>AssumeRoleWithWebIdentity</code> can
    #          be used to make API calls to any Amazon Web Services service with the following exception: you cannot
    #          call the STS <code>GetFederationToken</code> or <code>GetSessionToken</code> API
    #          operations.</p>
    #          <p>(Optional) You can pass inline or managed <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">session policies</a> to
    #          this operation. You can pass a single JSON policy document to use as an inline session
    #          policy. You can also specify up to 10 managed policy Amazon Resource Names (ARNs) to use as
    #          managed session policies. The plaintext that you use for both inline and managed session
    #          policies can't exceed 2,048 characters. Passing policies to this operation returns new
    #          temporary credentials. The resulting session's permissions are the intersection of the
    #          role's identity-based policy and the session policies. You can use the role's temporary
    #          credentials in subsequent Amazon Web Services API calls to access resources in the account that owns
    #          the role. You cannot use session policies to grant more permissions than those allowed
    #          by the identity-based policy of the role that is being assumed. For more information, see
    #             <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">Session
    #             Policies</a> in the <i>IAM User Guide</i>.</p>
    #          <p>
    #             <b>Tags</b>
    #          </p>
    #          <p>(Optional) You can configure your IdP to pass attributes into your web identity token as
    #          session tags. Each session tag consists of a key name and an associated value. For more
    #          information about session tags, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html">Passing Session Tags in STS</a> in the
    #             <i>IAM User Guide</i>.</p>
    #          <p>You can pass up to 50 session tags. The plaintext session tag keys can’t exceed 128
    #          characters and the values can’t exceed 256 characters. For these and additional limits, see
    #             <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-limits.html#reference_iam-limits-entity-length">IAM
    #             and STS Character Limits</a> in the <i>IAM User Guide</i>.</p>
    #          <note>
    #             <p>An Amazon Web Services conversion compresses the passed inline session policy, managed policy ARNs,
    #             and session tags into a packed binary format that has a separate limit. Your request can
    #             fail for this limit even if your plaintext meets the other requirements. The
    #                <code>PackedPolicySize</code> response element indicates by percentage how close the
    #             policies and tags for your request are to the upper size limit.</p>
    #          </note>
    #          <p>You can pass a session tag with the same key as a tag that is attached to the role. When
    #          you do, the session tag overrides the role tag with the same key.</p>
    #          <p>An administrator must grant you the permissions necessary to pass session tags. The
    #          administrator can also create granular permissions to allow you to pass only specific
    #          session tags. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_attribute-based-access-control.html">Tutorial: Using Tags
    #             for Attribute-Based Access Control</a> in the
    #          <i>IAM User Guide</i>.</p>
    #          <p>You can set the session tags as transitive. Transitive tags persist during role
    #          chaining. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html#id_session-tags_role-chaining">Chaining Roles
    #             with Session Tags</a> in the <i>IAM User Guide</i>.</p>
    #          <p>
    #             <b>Identities</b>
    #          </p>
    #          <p>Before your application can call <code>AssumeRoleWithWebIdentity</code>, you must have
    #          an identity token from a supported identity provider and create a role that the application
    #          can assume. The role that your application assumes must trust the identity provider that is
    #          associated with the identity token. In other words, the identity provider must be specified
    #          in the role's trust policy. </p>
    #          <important>
    #             <p>Calling <code>AssumeRoleWithWebIdentity</code> can result in an entry in your
    #             CloudTrail logs. The entry includes the <a href="http://openid.net/specs/openid-connect-core-1_0.html#Claims">Subject</a> of
    #             the provided web identity token. We recommend that you avoid using any personally
    #             identifiable information (PII) in this field. For example, you could instead use a GUID
    #             or a pairwise identifier, as <a href="http://openid.net/specs/openid-connect-core-1_0.html#SubjectIDTypes">suggested
    #                in the OIDC specification</a>.</p>
    #          </important>
    #          <p>For more information about how to use web identity federation and the
    #             <code>AssumeRoleWithWebIdentity</code> API, see the following resources: </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_oidc_manual.html">Using Web Identity Federation API Operations for Mobile Apps</a> and <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_assumerolewithwebidentity">Federation Through a Web-based Identity Provider</a>. </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://aws.amazon.com/blogs/aws/the-aws-web-identity-federation-playground/"> Web Identity Federation Playground</a>. Walk through the process of
    #                authenticating through Login with Amazon, Facebook, or Google, getting temporary
    #                security credentials, and then using those credentials to make a request to Amazon Web Services.
    #             </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="http://aws.amazon.com/sdkforios/">Amazon Web Services SDK for iOS Developer Guide</a> and <a href="http://aws.amazon.com/sdkforandroid/">Amazon Web Services SDK for Android Developer Guide</a>. These toolkits
    #                contain sample apps that show how to invoke the identity providers. The toolkits then
    #                show how to use the information from these providers to get and use temporary
    #                security credentials. </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="http://aws.amazon.com/articles/web-identity-federation-with-mobile-applications">Web Identity
    #                   Federation with Mobile Applications</a>. This article discusses web identity
    #                federation and shows an example of how to use web identity federation to get access
    #                to content in Amazon S3. </p>
    #             </li>
    #          </ul>
    # @param [Hash | Types::AssumeRoleWithWebIdentityInput] params
    #   Request parameters for this operation.
    #   See {Types::AssumeRoleWithWebIdentityInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.assume_role_with_web_identity(
    #     role_arn: 'RoleArn', # required
    #     role_session_name: 'RoleSessionName', # required
    #     web_identity_token: 'WebIdentityToken', # required
    #     provider_id: 'ProviderId',
    #     policy_arns: [
    #       {
    #         arn: 'arn'
    #       }
    #     ],
    #     policy: 'Policy',
    #     duration_seconds: 1
    #   )
    # @example Response structure
    #   resp.data #=> Types::AssumeRoleWithWebIdentityOutput
    #   resp.data.credentials #=> Types::Credentials
    #   resp.data.credentials.access_key_id #=> String
    #   resp.data.credentials.secret_access_key #=> String
    #   resp.data.credentials.session_token #=> String
    #   resp.data.credentials.expiration #=> Time
    #   resp.data.subject_from_web_identity_token #=> String
    #   resp.data.assumed_role_user #=> Types::AssumedRoleUser
    #   resp.data.assumed_role_user.assumed_role_id #=> String
    #   resp.data.assumed_role_user.arn #=> String
    #   resp.data.packed_policy_size #=> Integer
    #   resp.data.provider #=> String
    #   resp.data.audience #=> String
    #   resp.data.source_identity #=> String
    # @example To assume a role as an OpenID Connect-federated user
    #   #
    #   resp = client.assume_role_with_web_identity({
    #     role_arn: "arn:aws:iam::123456789012:role/FederatedWebIdentityRole",
    #     role_session_name: "app1",
    #     policy: "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Sid\":\"Stmt1\",\"Effect\":\"Allow\",\"Action\":\"s3:ListAllMyBuckets\",\"Resource\":\"*\"}]}",
    #     web_identity_token: "Atza%7CIQEBLjAsAhRFiXuWpUXuRvQ9PZL3GMFcYevydwIUFAHZwXZXXXXXXXXJnrulxKDHwy87oGKPznh0D6bEQZTSCzyoCtL_8S07pLpr0zMbn6w1lfVZKNTBdDansFBmtGnIsIapjI6xKR02Yc_2bQ8LZbUXSGm6Ry6_BG7PrtLZtj_dfCTj92xNGed-CrKqjG7nPBjNIL016GGvuS5gSvPRUxWES3VYfm1wl7WTI7jn-Pcb6M-buCgHhFOzTQxod27L9CqnOLio7N3gZAGpsp6n1-AJBOCJckcyXe2c6uD0srOJeZlKUm2eTDVMf8IehDVI0r1QOnTV6KzzAI3OY87Vd_cVMQ",
    #     provider_id: "www.amazon.com",
    #     duration_seconds: 3600
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     credentials: {
    #       session_token: "AQoDYXdzEE0a8ANXXXXXXXXNO1ewxE5TijQyp+IEXAMPLE",
    #       secret_access_key: "wJalrXUtnFEMI/K7MDENG/bPxRfiCYzEXAMPLEKEY",
    #       expiration: Time.parse('2014-10-24T23:00:23Z'),
    #       access_key_id: "AKIAIOSFODNN7EXAMPLE"
    #     },
    #     subject_from_web_identity_token: "amzn1.account.AF6RHO7KZU5XRVQJGXK6HEXAMPLE",
    #     assumed_role_user: {
    #       arn: "arn:aws:sts::123456789012:assumed-role/FederatedWebIdentityRole/app1",
    #       assumed_role_id: "AROACLKWSDQRAOEXAMPLE:app1"
    #     },
    #     packed_policy_size: 123,
    #     provider: "www.amazon.com",
    #     audience: "client.5498841531868486423.1548@apps.example.com"
    #   }
    def assume_role_with_web_identity(params = {}, options = {})
      response_body = ::StringIO.new
      middleware_opts = {}
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.sts.client')
      input = Params::AssumeRoleWithWebIdentityInput.build(params, context: 'params')
      stack = AWS::SDK::STS::Middleware::AssumeRoleWithWebIdentity.build(config, middleware_opts)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :assume_role_with_web_identity,
        tracer: tracer
      )
      Telemetry::AssumeRoleWithWebIdentity.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#assume_role_with_web_identity] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#assume_role_with_web_identity] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#assume_role_with_web_identity] #{output.data}")
        output
      end
    end

    # <p>Decodes additional information about the authorization status of a request from an
    #          encoded message returned in response to an Amazon Web Services request.</p>
    #          <p>For example, if a user is not authorized to perform an operation that he or she has
    #          requested, the request returns a <code>Client.UnauthorizedOperation</code> response (an
    #          HTTP 403 response). Some Amazon Web Services operations additionally return an encoded message that can
    #          provide details about this authorization failure. </p>
    #          <note>
    #             <p>Only certain Amazon Web Services operations return an encoded authorization message. The
    #             documentation for an individual operation indicates whether that operation returns an
    #             encoded message in addition to returning an HTTP code.</p>
    #          </note>
    #          <p>The message is encoded because the details of the authorization status can contain
    #          privileged information that the user who requested the operation should not see. To decode
    #          an authorization status message, a user must be granted permissions through an IAM <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html">policy</a> to
    #          request the <code>DecodeAuthorizationMessage</code>
    #             (<code>sts:DecodeAuthorizationMessage</code>) action. </p>
    #          <p>The decoded message includes the following type of information:</p>
    #          <ul>
    #             <li>
    #                <p>Whether the request was denied due to an explicit deny or due to the absence of an
    #                explicit allow. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html#policy-eval-denyallow">Determining Whether a Request is Allowed or Denied</a> in the
    #                   <i>IAM User Guide</i>. </p>
    #             </li>
    #             <li>
    #                <p>The principal who made the request.</p>
    #             </li>
    #             <li>
    #                <p>The requested action.</p>
    #             </li>
    #             <li>
    #                <p>The requested resource.</p>
    #             </li>
    #             <li>
    #                <p>The values of condition keys in the context of the user's request.</p>
    #             </li>
    #          </ul>
    # @param [Hash | Types::DecodeAuthorizationMessageInput] params
    #   Request parameters for this operation.
    #   See {Types::DecodeAuthorizationMessageInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.decode_authorization_message(
    #     encoded_message: 'EncodedMessage' # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::DecodeAuthorizationMessageOutput
    #   resp.data.decoded_message #=> String
    # @example To decode information about an authorization status of a request
    #   #
    #   resp = client.decode_authorization_message({
    #     encoded_message: "<encoded-message>"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     decoded_message: "{\"allowed\": \"false\",\"explicitDeny\": \"false\",\"matchedStatements\": \"\",\"failures\": \"\",\"context\": {\"principal\": {\"id\": \"AIDACKCEVSQ6C2EXAMPLE\",\"name\": \"Bob\",\"arn\": \"arn:aws:iam::123456789012:user/Bob\"},\"action\": \"ec2:StopInstances\",\"resource\": \"arn:aws:ec2:us-east-1:123456789012:instance/i-dd01c9bd\",\"conditions\": [{\"item\": {\"key\": \"ec2:Tenancy\",\"values\": [\"default\"]},{\"item\": {\"key\": \"ec2:ResourceTag/elasticbeanstalk:environment-name\",\"values\": [\"Default-Environment\"]}},(Additional items ...)]}}"
    #   }
    def decode_authorization_message(params = {}, options = {})
      response_body = ::StringIO.new
      middleware_opts = {}
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.sts.client')
      input = Params::DecodeAuthorizationMessageInput.build(params, context: 'params')
      stack = AWS::SDK::STS::Middleware::DecodeAuthorizationMessage.build(config, middleware_opts)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :decode_authorization_message,
        tracer: tracer
      )
      Telemetry::DecodeAuthorizationMessage.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#decode_authorization_message] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#decode_authorization_message] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#decode_authorization_message] #{output.data}")
        output
      end
    end

    # <p>Returns the account identifier for the specified access key ID.</p>
    #          <p>Access keys consist of two parts: an access key ID (for example,
    #             <code>AKIAIOSFODNN7EXAMPLE</code>) and a secret access key (for example,
    #             <code>wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY</code>). For more information about
    #          access keys, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_access-keys.html">Managing Access Keys for IAM
    #             Users</a> in the <i>IAM User Guide</i>.</p>
    #          <p>When you pass an access key ID to this operation, it returns the ID of the Amazon Web Services account
    #          to which the keys belong. Access key IDs beginning with <code>AKIA</code> are long-term
    #          credentials for an IAM user or the Amazon Web Services account root user. Access key IDs
    #          beginning with <code>ASIA</code> are temporary credentials that are created using STS
    #          operations. If the account in the response belongs to you, you can sign in as the root user and review your root user access keys. Then, you can pull a <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_getting-report.html">credentials
    #             report</a> to learn which IAM user owns the keys. To learn who
    #          requested the temporary credentials for an <code>ASIA</code> access key, view the STS
    #          events in your <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/cloudtrail-integration.html">CloudTrail logs</a> in the <i>IAM User Guide</i>.</p>
    #          <p>This operation does not indicate the state of the access key. The key might be active,
    #          inactive, or deleted. Active keys might not have permissions to perform an operation.
    #          Providing a deleted access key might return an error that the key doesn't exist.</p>
    # @param [Hash | Types::GetAccessKeyInfoInput] params
    #   Request parameters for this operation.
    #   See {Types::GetAccessKeyInfoInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.get_access_key_info(
    #     access_key_id: 'AccessKeyId' # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::GetAccessKeyInfoOutput
    #   resp.data.account #=> String
    def get_access_key_info(params = {}, options = {})
      response_body = ::StringIO.new
      middleware_opts = {}
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.sts.client')
      input = Params::GetAccessKeyInfoInput.build(params, context: 'params')
      stack = AWS::SDK::STS::Middleware::GetAccessKeyInfo.build(config, middleware_opts)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :get_access_key_info,
        tracer: tracer
      )
      Telemetry::GetAccessKeyInfo.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_access_key_info] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#get_access_key_info] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_access_key_info] #{output.data}")
        output
      end
    end

    # <p>Returns details about the IAM user or role whose credentials are used to
    #          call the operation.</p>
    #          <note>
    #             <p>No permissions are required to perform this operation. If an administrator attaches a
    #             policy to your identity that explicitly denies access to the
    #                <code>sts:GetCallerIdentity</code> action, you can still perform this operation.
    #             Permissions are not required because the same information is returned when access is
    #             denied. To view an example response, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/troubleshoot_general.html#troubleshoot_general_access-denied-delete-mfa">I Am Not Authorized to Perform: iam:DeleteVirtualMFADevice</a> in the
    #                <i>IAM User Guide</i>.</p>
    #          </note>
    # @param [Hash | Types::GetCallerIdentityInput] params
    #   Request parameters for this operation.
    #   See {Types::GetCallerIdentityInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.get_caller_identity()
    # @example Response structure
    #   resp.data #=> Types::GetCallerIdentityOutput
    #   resp.data.user_id #=> String
    #   resp.data.account #=> String
    #   resp.data.arn #=> String
    # @example To get details about a calling IAM user
    #   resp = client.get_caller_identity()
    #
    #   # resp.to_h outputs the following:
    #   {
    #     user_id: "AKIAI44QH8DHBEXAMPLE",
    #     account: "123456789012",
    #     arn: "arn:aws:iam::123456789012:user/Alice"
    #   }
    # @example To get details about a calling user federated with AssumeRole
    #   resp = client.get_caller_identity()
    #
    #   # resp.to_h outputs the following:
    #   {
    #     user_id: "AKIAI44QH8DHBEXAMPLE:my-role-session-name",
    #     account: "123456789012",
    #     arn: "arn:aws:sts::123456789012:assumed-role/my-role-name/my-role-session-name"
    #   }
    # @example To get details about a calling user federated with GetFederationToken
    #   resp = client.get_caller_identity()
    #
    #   # resp.to_h outputs the following:
    #   {
    #     user_id: "123456789012:my-federated-user-name",
    #     account: "123456789012",
    #     arn: "arn:aws:sts::123456789012:federated-user/my-federated-user-name"
    #   }
    def get_caller_identity(params = {}, options = {})
      response_body = ::StringIO.new
      middleware_opts = {}
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.sts.client')
      input = Params::GetCallerIdentityInput.build(params, context: 'params')
      stack = AWS::SDK::STS::Middleware::GetCallerIdentity.build(config, middleware_opts)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :get_caller_identity,
        tracer: tracer
      )
      Telemetry::GetCallerIdentity.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_caller_identity] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#get_caller_identity] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_caller_identity] #{output.data}")
        output
      end
    end

    # <p>Returns a set of temporary security credentials (consisting of an access key ID, a
    #          secret access key, and a security token) for a user. A typical use is in a proxy
    #          application that gets temporary security credentials on behalf of distributed applications
    #          inside a corporate network.</p>
    #          <p>You must call the <code>GetFederationToken</code> operation using the long-term security
    #          credentials of an IAM user. As a result, this call is appropriate in
    #          contexts where those credentials can be safeguarded, usually in a server-based application.
    #          For a comparison of <code>GetFederationToken</code> with the other API operations that
    #          produce temporary credentials, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html">Requesting Temporary Security
    #             Credentials</a> and <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#stsapi_comparison">Comparing the
    #             Amazon Web Services STS API operations</a> in the <i>IAM User Guide</i>.</p>
    #          <p>Although it is possible to call <code>GetFederationToken</code> using the security
    #          credentials of an Amazon Web Services account root user rather than an IAM user that you
    #          create for the purpose of a proxy application, we do not recommend it. For more
    #          information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html#lock-away-credentials">Safeguard your root user credentials and don't use them for everyday tasks</a> in the
    #             <i>IAM User Guide</i>. </p>
    #          <note>
    #             <p>You can create a mobile-based or browser-based app that can authenticate users using
    #             a web identity provider like Login with Amazon, Facebook, Google, or an OpenID
    #             Connect-compatible identity provider. In this case, we recommend that you use <a href="http://aws.amazon.com/cognito/">Amazon Cognito</a> or
    #                <code>AssumeRoleWithWebIdentity</code>. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_assumerolewithwebidentity">Federation Through a Web-based Identity Provider</a> in the
    #                <i>IAM User Guide</i>.</p>
    #          </note>
    #          <p>
    #             <b>Session duration</b>
    #          </p>
    #          <p>The temporary credentials are valid for the specified duration, from 900 seconds (15
    #          minutes) up to a maximum of 129,600 seconds (36 hours). The default session duration is
    #          43,200 seconds (12 hours). Temporary credentials obtained by using the root user
    #          credentials have a maximum duration of 3,600 seconds (1 hour).</p>
    #          <p>
    #             <b>Permissions</b>
    #          </p>
    #          <p>You can use the temporary credentials created by <code>GetFederationToken</code> in any
    #          Amazon Web Services service with the following exceptions:</p>
    #          <ul>
    #             <li>
    #                <p>You cannot call any IAM operations using the CLI or the Amazon Web Services API. This
    #                limitation does not apply to console sessions.</p>
    #             </li>
    #             <li>
    #                <p>You cannot call any STS operations except <code>GetCallerIdentity</code>.</p>
    #             </li>
    #          </ul>
    #          <p>You can use temporary credentials for single sign-on (SSO) to the console.</p>
    #          <p>You must pass an inline or managed <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">session policy</a> to
    #          this operation. You can pass a single JSON policy document to use as an inline session
    #          policy. You can also specify up to 10 managed policy Amazon Resource Names (ARNs) to use as
    #          managed session policies. The plaintext that you use for both inline and managed session
    #          policies can't exceed 2,048 characters.</p>
    #          <p>Though the session policy parameters are optional, if you do not pass a policy, then the
    #          resulting federated user session has no permissions. When you pass session policies, the
    #          session permissions are the intersection of the IAM user policies and the
    #          session policies that you pass. This gives you a way to further restrict the permissions
    #          for a federated user. You cannot use session policies to grant more permissions than those
    #          that are defined in the permissions policy of the IAM user. For more
    #          information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">Session Policies</a> in
    #          the <i>IAM User Guide</i>. For information about using
    #             <code>GetFederationToken</code> to create temporary security credentials, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_getfederationtoken">GetFederationToken—Federation Through a Custom Identity Broker</a>. </p>
    #          <p>You can use the credentials to access a resource that has a resource-based policy. If
    #          that policy specifically references the federated user session in the
    #             <code>Principal</code> element of the policy, the session has the permissions allowed by
    #          the policy. These permissions are granted in addition to the permissions granted by the
    #          session policies.</p>
    #          <p>
    #             <b>Tags</b>
    #          </p>
    #          <p>(Optional) You can pass tag key-value pairs to your session. These are called session
    #          tags. For more information about session tags, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html">Passing Session Tags in STS</a> in the
    #             <i>IAM User Guide</i>.</p>
    #          <note>
    #             <p>You can create a mobile-based or browser-based app that can authenticate users using
    #             a web identity provider like Login with Amazon, Facebook, Google, or an OpenID
    #             Connect-compatible identity provider. In this case, we recommend that you use <a href="http://aws.amazon.com/cognito/">Amazon Cognito</a> or
    #                <code>AssumeRoleWithWebIdentity</code>. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_assumerolewithwebidentity">Federation Through a Web-based Identity Provider</a> in the
    #                <i>IAM User Guide</i>.</p>
    #          </note>
    #          <p>An administrator must grant you the permissions necessary to pass session tags. The
    #          administrator can also create granular permissions to allow you to pass only specific
    #          session tags. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_attribute-based-access-control.html">Tutorial: Using Tags
    #             for Attribute-Based Access Control</a> in the
    #          <i>IAM User Guide</i>.</p>
    #          <p>Tag key–value pairs are not case sensitive, but case is preserved. This means that you
    #          cannot have separate <code>Department</code> and <code>department</code> tag keys. Assume
    #          that the user that you are federating has the
    #             <code>Department</code>=<code>Marketing</code> tag and you pass the
    #             <code>department</code>=<code>engineering</code> session tag. <code>Department</code>
    #          and <code>department</code> are not saved as separate tags, and the session tag passed in
    #          the request takes precedence over the user tag.</p>
    # @param [Hash | Types::GetFederationTokenInput] params
    #   Request parameters for this operation.
    #   See {Types::GetFederationTokenInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.get_federation_token(
    #     name: 'Name', # required
    #     policy: 'Policy',
    #     policy_arns: [
    #       {
    #         arn: 'arn'
    #       }
    #     ],
    #     duration_seconds: 1,
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    # @example Response structure
    #   resp.data #=> Types::GetFederationTokenOutput
    #   resp.data.credentials #=> Types::Credentials
    #   resp.data.credentials.access_key_id #=> String
    #   resp.data.credentials.secret_access_key #=> String
    #   resp.data.credentials.session_token #=> String
    #   resp.data.credentials.expiration #=> Time
    #   resp.data.federated_user #=> Types::FederatedUser
    #   resp.data.federated_user.federated_user_id #=> String
    #   resp.data.federated_user.arn #=> String
    #   resp.data.packed_policy_size #=> Integer
    # @example To get temporary credentials for a role by using GetFederationToken
    #   #
    #   resp = client.get_federation_token({
    #     name: "testFedUserSession",
    #     policy: "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Sid\":\"Stmt1\",\"Effect\":\"Allow\",\"Action\":\"s3:ListAllMyBuckets\",\"Resource\":\"*\"}]}",
    #     duration_seconds: 3600,
    #     tags: [
    #       {
    #         key: "Project",
    #         value: "Pegasus"
    #       },
    #       {
    #         key: "Cost-Center",
    #         value: "98765"
    #       }
    #     ]
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     credentials: {
    #       session_token: "AQoDYXdzEPT//////////wEXAMPLEtc764bNrC9SAPBSM22wDOk4x4HIZ8j4FZTwdQWLWsKWHGBuFqwAeMicRXmxfpSPfIeoIYRqTflfKD8YUuwthAx7mSEI/qkPpKPi/kMcGdQrmGdeehM4IC1NtBmUpp2wUE8phUZampKsburEDy0KPkyQDYwT7WZ0wq5VSXDvp75YU9HFvlRd8Tx6q6fE8YQcHNVXAkiY9q6d+xo0rKwT38xVqr7ZD0u0iPPkUL64lIZbqBAz+scqKmlzm8FDrypNC9Yjc8fPOLn9FX9KSYvKTr4rvx3iSIlTJabIQwj2ICCR/oLxBA==",
    #       secret_access_key: "wJalrXUtnFEMI/K7MDENG/bPxRfiCYzEXAMPLEKEY",
    #       expiration: Time.parse('2011-07-15T23:28:33.359Z'),
    #       access_key_id: "AKIAIOSFODNN7EXAMPLE"
    #     },
    #     federated_user: {
    #       arn: "arn:aws:sts::123456789012:federated-user/Bob",
    #       federated_user_id: "123456789012:Bob"
    #     },
    #     packed_policy_size: 8
    #   }
    def get_federation_token(params = {}, options = {})
      response_body = ::StringIO.new
      middleware_opts = {}
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.sts.client')
      input = Params::GetFederationTokenInput.build(params, context: 'params')
      stack = AWS::SDK::STS::Middleware::GetFederationToken.build(config, middleware_opts)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :get_federation_token,
        tracer: tracer
      )
      Telemetry::GetFederationToken.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_federation_token] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#get_federation_token] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_federation_token] #{output.data}")
        output
      end
    end

    # <p>Returns a set of temporary credentials for an Amazon Web Services account or IAM user.
    #          The credentials consist of an access key ID, a secret access key, and a security token.
    #          Typically, you use <code>GetSessionToken</code> if you want to use MFA to protect
    #          programmatic calls to specific Amazon Web Services API operations like Amazon EC2
    #          <code>StopInstances</code>.</p>
    #          <p>MFA-enabled IAM users must call <code>GetSessionToken</code> and submit
    #          an MFA code that is associated with their MFA device. Using the temporary security
    #          credentials that the call returns, IAM users can then make programmatic
    #          calls to API operations that require MFA authentication. An incorrect MFA code causes the
    #          API to return an access denied error. For a comparison of <code>GetSessionToken</code> with
    #          the other API operations that produce temporary credentials, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html">Requesting
    #             Temporary Security Credentials</a> and <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#stsapi_comparison">Comparing the
    #             Amazon Web Services STS API operations</a> in the <i>IAM User Guide</i>.</p>
    #          <note>
    #             <p>No permissions are required for users to perform this operation. The purpose of the
    #                <code>sts:GetSessionToken</code> operation is to authenticate the user using MFA. You
    #             cannot use policies to control authentication operations. For more information, see
    #                <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_control-access_getsessiontoken.html">Permissions for GetSessionToken</a> in the
    #             <i>IAM User Guide</i>.</p>
    #          </note>
    #          <p>
    #             <b>Session Duration</b>
    #          </p>
    #          <p>The <code>GetSessionToken</code> operation must be called by using the long-term Amazon Web Services
    #          security credentials of an IAM user. Credentials that are created by IAM users are valid for the duration that you specify. This duration can range
    #          from 900 seconds (15 minutes) up to a maximum of 129,600 seconds (36 hours), with a default
    #          of 43,200 seconds (12 hours). Credentials based on account credentials can range from 900
    #          seconds (15 minutes) up to 3,600 seconds (1 hour), with a default of 1 hour. </p>
    #          <p>
    #             <b>Permissions</b>
    #          </p>
    #          <p>The temporary security credentials created by <code>GetSessionToken</code> can be used
    #          to make API calls to any Amazon Web Services service with the following exceptions:</p>
    #          <ul>
    #             <li>
    #                <p>You cannot call any IAM API operations unless MFA authentication information is
    #                included in the request.</p>
    #             </li>
    #             <li>
    #                <p>You cannot call any STS API <i>except</i>
    #                   <code>AssumeRole</code> or <code>GetCallerIdentity</code>.</p>
    #             </li>
    #          </ul>
    #          <p>The credentials that <code>GetSessionToken</code> returns are based on permissions
    #          associated with the IAM user whose credentials were used to call the
    #          operation. The temporary credentials have the same permissions as the IAM user.</p>
    #          <note>
    #             <p>Although it is possible to call <code>GetSessionToken</code> using the security
    #             credentials of an Amazon Web Services account root user rather than an IAM user, we do
    #             not recommend it. If <code>GetSessionToken</code> is called using root user
    #             credentials, the temporary credentials have root user permissions. For more
    #             information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html#lock-away-credentials">Safeguard your root user credentials and don't use them for everyday tasks</a> in the
    #                <i>IAM User Guide</i>
    #             </p>
    #          </note>
    #          <p>For more information about using <code>GetSessionToken</code> to create temporary
    #          credentials, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_getsessiontoken">Temporary
    #             Credentials for Users in Untrusted Environments</a> in the
    #             <i>IAM User Guide</i>. </p>
    # @param [Hash | Types::GetSessionTokenInput] params
    #   Request parameters for this operation.
    #   See {Types::GetSessionTokenInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.get_session_token(
    #     duration_seconds: 1,
    #     serial_number: 'SerialNumber',
    #     token_code: 'TokenCode'
    #   )
    # @example Response structure
    #   resp.data #=> Types::GetSessionTokenOutput
    #   resp.data.credentials #=> Types::Credentials
    #   resp.data.credentials.access_key_id #=> String
    #   resp.data.credentials.secret_access_key #=> String
    #   resp.data.credentials.session_token #=> String
    #   resp.data.credentials.expiration #=> Time
    # @example To get temporary credentials for an IAM user or an AWS account
    #   #
    #   resp = client.get_session_token({
    #     duration_seconds: 3600,
    #     serial_number: "YourMFASerialNumber",
    #     token_code: "123456"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     credentials: {
    #       session_token: "AQoEXAMPLEH4aoAH0gNCAPyJxz4BlCFFxWNE1OPTgk5TthT+FvwqnKwRcOIfrRh3c/LTo6UDdyJwOOvEVPvLXCrrrUtdnniCEXAMPLE/IvU1dYUg2RVAJBanLiHb4IgRmpRV3zrkuWJOgQs8IZZaIv2BXIa2R4OlgkBN9bkUDNCJiBeb/AXlzBBko7b15fjrBs2+cTQtpZ3CYWFXG8C5zqx37wnOE49mRl/+OtkIKGO7fAE",
    #       secret_access_key: "wJalrXUtnFEMI/K7MDENG/bPxRfiCYzEXAMPLEKEY",
    #       expiration: Time.parse('2011-07-11T19:55:29.611Z'),
    #       access_key_id: "AKIAIOSFODNN7EXAMPLE"
    #     }
    #   }
    def get_session_token(params = {}, options = {})
      response_body = ::StringIO.new
      middleware_opts = {}
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.sts.client')
      input = Params::GetSessionTokenInput.build(params, context: 'params')
      stack = AWS::SDK::STS::Middleware::GetSessionToken.build(config, middleware_opts)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :get_session_token,
        tracer: tracer
      )
      Telemetry::GetSessionToken.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_session_token] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#get_session_token] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_session_token] #{output.data}")
        output
      end
    end
  end
end
