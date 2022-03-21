# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::Sts
  # An API client for AWSSecurityTokenServiceV20110615
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Security Token Service</fullname>
  #          <p>Security Token Service (STS) enables you to request temporary, limited-privilege
  #       credentials for Identity and Access Management (IAM) users or for users that you
  #       authenticate (federated users). This guide provides descriptions of the STS API. For
  #       more information about using this service, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp.html">Temporary Security Credentials</a>.</p>
  #
  class Client
    include Hearth::ClientStubs

    @middleware = Hearth::MiddlewareBuilder.new

    def self.middleware
      @middleware
    end

    # @overload initialize(options)
    # @param [Hash] options
    # @option options [Boolean] :disable_host_prefix (false)
    #   When `true`, does not perform host prefix injection using @endpoint's hostPrefix property.
    #
    # @option options [string] :endpoint
    #   Endpoint of the service
    #
    # @option options [bool] :http_wire_trace (false)
    #   Enable debug wire trace on http requests.
    #
    # @option options [symbol] :log_level (:info)
    #   Default log level to use
    #
    # @option options [Logger] :logger (stdout)
    #   Logger to use for output
    #
    # @option options [MiddlewareBuilder] :middleware
    #   Additional Middleware to be applied for every operation
    #
    # @option options [Bool] :stub_responses (false)
    #   Enable response stubbing. See documentation for {#stub_responses}
    #
    # @option options [Boolean] :validate_input (true)
    #   When `true`, request parameters are validated using the modeled shapes.
    #
    def initialize(options = {})
      @disable_host_prefix = options.fetch(:disable_host_prefix, false)
      @endpoint = options[:endpoint]
      @http_wire_trace = options.fetch(:http_wire_trace, false)
      @log_level = options.fetch(:log_level, :info)
      @logger = options.fetch(:logger, Logger.new($stdout, level: @log_level))
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stub_responses = options.fetch(:stub_responses, false)
      @stubs = Hearth::Stubbing::Stubs.new
      @validate_input = options.fetch(:validate_input, true)

    end

    # <p>Returns a set of temporary security credentials that you can use to access Amazon Web Services
    #          resources that you might not normally have access to. These temporary credentials consist
    #          of an access key ID, a secret access key, and a security token. Typically, you use
    #             <code>AssumeRole</code> within your account or for cross-account access. For a
    #          comparison of <code>AssumeRole</code> with other API operations that produce temporary
    #          credentials, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html">Requesting Temporary Security
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
    #          policy. You can also specify up to 10 managed policies to use as managed session policies.
    #          The plaintext that you use for both inline and managed session policies can't exceed 2,048
    #          characters. Passing policies to this operation returns new
    #          temporary credentials. The resulting session's permissions are the intersection of the
    #          role's identity-based policy and the session policies. You can use the role's temporary
    #          credentials in subsequent Amazon Web Services API calls to access resources in the account that owns
    #          the role. You cannot use session policies to grant more permissions than those allowed
    #          by the identity-based policy of the role that is being assumed. For more information, see
    #             <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">Session
    #             Policies</a> in the <i>IAM User Guide</i>.</p>
    #          <p>When you create a role, you create two policies: A role trust policy that specifies
    #          <i>who</i> can assume the role and a permissions policy that specifies
    #          <i>what</i> can be done with the role. You specify the trusted principal
    #          who is allowed to assume the role in the role trust policy.</p>
    #          <p>To assume a role from a different account, your Amazon Web Services account must be trusted by the
    #          role. The trust relationship is defined in the role's trust policy when the role is
    #          created. That trust policy states which accounts are allowed to delegate that access to
    #          users in the account. </p>
    #          <p>A user who wants to access a role in a different account must also have permissions that
    #          are delegated from the user account administrator. The administrator must attach a policy
    #          that allows the user to call <code>AssumeRole</code> for the ARN of the role in the other
    #          account.</p>
    #          <p>To allow a user to assume a role in the same account, you can do either of the
    #          following:</p>
    #          <ul>
    #             <li>
    #                <p>Attach a policy to the user that allows the user to call
    #                <code>AssumeRole</code> (as long as the role's trust policy trusts the account).</p>
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
    #
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
    #
    # @param [Hash] params
    #   See {Types::AssumeRoleInput}.
    #
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the role to assume.</p>
    #
    # @option params [String] :role_session_name
    #   <p>An identifier for the assumed role session.</p>
    #            <p>Use the role session name to uniquely identify a session when the same role is assumed
    #            by different principals or for different reasons. In cross-account scenarios, the role
    #            session name is visible to, and can be logged by the account that owns the role. The role
    #            session name is also used in the ARN of the assumed role principal. This means that
    #            subsequent cross-account API requests that use the temporary security credentials will
    #            expose the role session name to the external account in their CloudTrail logs.</p>
    #            <p>The regex used to validate this parameter is a string of characters
    #       consisting of upper- and lower-case alphanumeric characters with no spaces. You can
    #       also include underscores or any of the following characters: =,.@-</p>
    #
    # @option params [Array<PolicyDescriptorType>] :policy_arns
    #   <p>The Amazon Resource Names (ARNs) of the IAM managed policies that you want to use as
    #            managed session policies. The policies must exist in the same account as the role.</p>
    #            <p>This parameter is optional. You can provide up to 10 managed policy ARNs. However, the
    #            plaintext that you use for both inline and managed session policies can't exceed 2,048
    #            characters. For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and Amazon Web Services
    #               Service Namespaces</a> in the Amazon Web Services General Reference.</p>
    #
    #            <note>
    #               <p>An Amazon Web Services conversion compresses the passed session policies and session tags into a
    #               packed binary format that has a separate limit. Your request can fail for this limit
    #               even if your plaintext meets the other requirements. The <code>PackedPolicySize</code>
    #               response element indicates by percentage how close the policies and tags for your
    #               request are to the upper size limit.
    #               </p>
    #            </note>
    #
    #            <p>Passing policies to this operation returns new
    #            temporary credentials. The resulting session's permissions are the intersection of the
    #            role's identity-based policy and the session policies. You can use the role's temporary
    #            credentials in subsequent Amazon Web Services API calls to access resources in the account that owns
    #            the role. You cannot use session policies to grant more permissions than those allowed
    #            by the identity-based policy of the role that is being assumed. For more information, see
    #               <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">Session
    #               Policies</a> in the <i>IAM User Guide</i>.</p>
    #
    # @option params [String] :policy
    #   <p>An IAM policy in JSON format that you want to use as an inline session policy.</p>
    #            <p>This parameter is optional. Passing policies to this operation returns new
    #            temporary credentials. The resulting session's permissions are the intersection of the
    #            role's identity-based policy and the session policies. You can use the role's temporary
    #            credentials in subsequent Amazon Web Services API calls to access resources in the account that owns
    #            the role. You cannot use session policies to grant more permissions than those allowed
    #            by the identity-based policy of the role that is being assumed. For more information, see
    #               <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">Session
    #               Policies</a> in the <i>IAM User Guide</i>.</p>
    #            <p>The plaintext that you use for both inline and managed session policies can't exceed
    #            2,048 characters. The JSON policy characters can be any ASCII character from the space
    #            character to the end of the valid character list (\u0020 through \u00FF). It can also
    #            include the tab (\u0009), linefeed (\u000A), and carriage return (\u000D)
    #            characters.</p>
    #
    #            <note>
    #               <p>An Amazon Web Services conversion compresses the passed session policies and session tags into a
    #               packed binary format that has a separate limit. Your request can fail for this limit
    #               even if your plaintext meets the other requirements. The <code>PackedPolicySize</code>
    #               response element indicates by percentage how close the policies and tags for your
    #               request are to the upper size limit.
    #               </p>
    #            </note>
    #
    # @option params [Integer] :duration_seconds
    #   <p>The duration, in seconds, of the role session. The value specified can range from 900
    #            seconds (15 minutes) up to the maximum session duration set for the role. The maximum
    #            session duration setting can have a value from 1 hour to 12 hours. If you specify a value
    #            higher than this setting or the administrator setting (whichever is lower), the operation
    #            fails. For example, if you specify a session duration of 12 hours, but your administrator
    #            set the maximum session duration to 6 hours, your operation fails. </p>
    #            <p>Role chaining limits your Amazon Web Services CLI or Amazon Web Services API role session to a maximum of one hour.
    #            When you use the <code>AssumeRole</code> API operation to assume a role, you can specify
    #            the duration of your role session with the <code>DurationSeconds</code> parameter. You can
    #            specify a parameter value of up to 43200 seconds (12 hours), depending on the maximum
    #            session duration setting for your role. However, if you assume a role using role chaining
    #            and provide a <code>DurationSeconds</code> parameter value greater than one hour, the
    #            operation fails. To learn how to view the maximum value for your role, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html#id_roles_use_view-role-max-session">View the
    #               Maximum Session Duration Setting for a Role</a> in the
    #               <i>IAM User Guide</i>.</p>
    #            <p>By default, the value is set to <code>3600</code> seconds. </p>
    #            <note>
    #               <p>The <code>DurationSeconds</code> parameter is separate from the duration of a console
    #               session that you might request using the returned credentials. The request to the
    #               federation endpoint for a console sign-in token takes a <code>SessionDuration</code>
    #               parameter that specifies the maximum length of the console session. For more
    #               information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_enable-console-custom-url.html">Creating a URL
    #                  that Enables Federated Users to Access the Amazon Web Services Management Console</a> in the
    #                  <i>IAM User Guide</i>.</p>
    #            </note>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of session tags that you want to pass. Each session tag consists of a key name
    #            and an associated value. For more information about session tags, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html">Tagging Amazon Web Services STS
    #               Sessions</a> in the <i>IAM User Guide</i>.</p>
    #            <p>This parameter is optional. You can pass up to 50 session tags. The plaintext session
    #            tag keys can’t exceed 128 characters, and the values can’t exceed 256 characters. For these
    #            and additional limits, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-limits.html#reference_iam-limits-entity-length">IAM
    #               and STS Character Limits</a> in the <i>IAM User Guide</i>.</p>
    #
    #            <note>
    #               <p>An Amazon Web Services conversion compresses the passed session policies and session tags into a
    #               packed binary format that has a separate limit. Your request can fail for this limit
    #               even if your plaintext meets the other requirements. The <code>PackedPolicySize</code>
    #               response element indicates by percentage how close the policies and tags for your
    #               request are to the upper size limit.
    #               </p>
    #            </note>
    #
    #            <p>You can pass a session tag with the same key as a tag that is already attached to the
    #            role. When you do, session tags override a role tag with the same key. </p>
    #            <p>Tag key–value pairs are not case sensitive, but case is preserved. This means that you
    #            cannot have separate <code>Department</code> and <code>department</code> tag keys. Assume
    #            that the role has the <code>Department</code>=<code>Marketing</code> tag and you pass the
    #               <code>department</code>=<code>engineering</code> session tag. <code>Department</code>
    #            and <code>department</code> are not saved as separate tags, and the session tag passed in
    #            the request takes precedence over the role tag.</p>
    #            <p>Additionally, if you used temporary credentials to perform this operation, the new
    #            session inherits any transitive session tags from the calling session. If you pass a
    #            session tag with the same key as an inherited tag, the operation fails. To view the
    #            inherited tags for a session, see the CloudTrail logs. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/session-tags.html#id_session-tags_ctlogs">Viewing Session Tags in CloudTrail</a> in the
    #            <i>IAM User Guide</i>.</p>
    #
    # @option params [Array<String>] :transitive_tag_keys
    #   <p>A list of keys for session tags that you want to set as transitive. If you set a tag key
    #            as transitive, the corresponding key and value passes to subsequent sessions in a role
    #            chain. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html#id_session-tags_role-chaining">Chaining Roles
    #               with Session Tags</a> in the <i>IAM User Guide</i>.</p>
    #            <p>This parameter is optional. When you set session tags as transitive, the session policy
    #            and session tags packed binary limit is not affected.</p>
    #            <p>If you choose not to specify a transitive tag key, then no tags are passed from this
    #            session to any subsequent sessions.</p>
    #
    # @option params [String] :external_id
    #   <p>A unique identifier that might be required when you assume a role in another account. If
    #            the administrator of the account to which the role belongs provided you with an external
    #            ID, then provide that value in the <code>ExternalId</code> parameter. This value can be any
    #            string, such as a passphrase or account number. A cross-account role is usually set up to
    #            trust everyone in an account. Therefore, the administrator of the trusting account might
    #            send an external ID to the administrator of the trusted account. That way, only someone
    #            with the ID can assume the role, rather than everyone in the account. For more information
    #            about the external ID, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_create_for-user_externalid.html">How to Use an External ID
    #               When Granting Access to Your Amazon Web Services Resources to a Third Party</a> in the
    #               <i>IAM User Guide</i>.</p>
    #            <p>The regex used to validate this parameter is a string of
    #       characters consisting of upper- and lower-case alphanumeric characters with no spaces.
    #       You can also include underscores or any of the following characters: =,.@:/-</p>
    #
    # @option params [String] :serial_number
    #   <p>The identification number of the MFA device that is associated with the user who is
    #            making the <code>AssumeRole</code> call. Specify this value if the trust policy of the role
    #            being assumed includes a condition that requires MFA authentication. The value is either
    #            the serial number for a hardware device (such as <code>GAHT12345678</code>) or an Amazon
    #            Resource Name (ARN) for a virtual device (such as
    #               <code>arn:aws:iam::123456789012:mfa/user</code>).</p>
    #            <p>The regex used to validate this parameter is a string of characters
    #       consisting of upper- and lower-case alphanumeric characters with no spaces. You can
    #       also include underscores or any of the following characters: =,.@-</p>
    #
    # @option params [String] :token_code
    #   <p>The value provided by the MFA device, if the trust policy of the role being assumed
    #            requires MFA. (In other words, if the policy includes a condition that tests for MFA). If
    #            the role being assumed requires MFA and if the <code>TokenCode</code> value is missing or
    #            expired, the <code>AssumeRole</code> call returns an "access denied" error.</p>
    #            <p>The format for this parameter, as described by its regex pattern, is a sequence of six
    #            numeric digits.</p>
    #
    # @option params [String] :source_identity
    #   <p>The source identity specified by the principal that is calling the
    #               <code>AssumeRole</code> operation.</p>
    #            <p>You can require users to specify a source identity when they assume a role. You do this
    #            by using the <code>sts:SourceIdentity</code> condition key in a role trust policy. You can
    #            use source identity information in CloudTrail logs to determine who took actions with a role.
    #            You can use the <code>aws:SourceIdentity</code> condition key to further control access to
    #            Amazon Web Services resources based on the value of source identity. For more information about using
    #            source identity, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_control-access_monitor.html">Monitor and control
    #               actions taken with assumed roles</a> in the
    #            <i>IAM User Guide</i>.</p>
    #            <p>The regex used to validate this parameter is a string of characters consisting of upper-
    #            and lower-case alphanumeric characters with no spaces. You can also include underscores or
    #            any of the following characters: =,.@-. You cannot use a value that begins with the text
    #               <code>aws:</code>. This prefix is reserved for Amazon Web Services internal use.</p>
    #
    # @return [Types::AssumeRoleOutput]
    #
    # @example Request syntax with placeholder values
    #
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
    #     source_identity: 'SourceIdentity'
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::AssumeRoleOutput
    #   resp.credentials #=> Types::Credentials
    #   resp.credentials.access_key_id #=> String
    #   resp.credentials.secret_access_key #=> String
    #   resp.credentials.session_token #=> String
    #   resp.credentials.expiration #=> Time
    #   resp.assumed_role_user #=> Types::AssumedRoleUser
    #   resp.assumed_role_user.assumed_role_id #=> String
    #   resp.assumed_role_user.arn #=> String
    #   resp.packed_policy_size #=> Integer
    #   resp.source_identity #=> String
    #
    def assume_role(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssumeRoleInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssumeRoleInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssumeRole,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::MalformedPolicyDocumentException, Errors::ExpiredTokenException, Errors::RegionDisabledException, Errors::PackedPolicyTooLargeException]),
        data_parser: Parsers::AssumeRole
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::AssumeRole,
        params_class: Params::AssumeRoleOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :assume_role
        )
      )
      raise resp.error if resp.error
      resp.data
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
    #          policy. You can also specify up to 10 managed policies to use as managed session policies.
    #          The plaintext that you use for both inline and managed session policies can't exceed 2,048
    #          characters. Passing policies to this operation returns new
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
    #
    #          <note>
    #             <p>An Amazon Web Services conversion compresses the passed session policies and session tags into a
    #             packed binary format that has a separate limit. Your request can fail for this limit
    #             even if your plaintext meets the other requirements. The <code>PackedPolicySize</code>
    #             response element indicates by percentage how close the policies and tags for your
    #             request are to the upper size limit.
    #             </p>
    #          </note>
    #
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
    #
    # @param [Hash] params
    #   See {Types::AssumeRoleWithSAMLInput}.
    #
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the role that the caller is assuming.</p>
    #
    # @option params [String] :principal_arn
    #   <p>The Amazon Resource Name (ARN) of the SAML provider in IAM that describes the
    #            IdP.</p>
    #
    # @option params [String] :saml_assertion
    #   <p>The base64 encoded SAML authentication response provided by the IdP.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/create-role-saml-IdP-tasks.html">Configuring a Relying Party and
    #               Adding Claims</a> in the <i>IAM User Guide</i>. </p>
    #
    # @option params [Array<PolicyDescriptorType>] :policy_arns
    #   <p>The Amazon Resource Names (ARNs) of the IAM managed policies that you want to use as
    #            managed session policies. The policies must exist in the same account as the role.</p>
    #            <p>This parameter is optional. You can provide up to 10 managed policy ARNs. However, the
    #            plaintext that you use for both inline and managed session policies can't exceed 2,048
    #            characters. For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and Amazon Web Services
    #               Service Namespaces</a> in the Amazon Web Services General Reference.</p>
    #
    #            <note>
    #               <p>An Amazon Web Services conversion compresses the passed session policies and session tags into a
    #               packed binary format that has a separate limit. Your request can fail for this limit
    #               even if your plaintext meets the other requirements. The <code>PackedPolicySize</code>
    #               response element indicates by percentage how close the policies and tags for your
    #               request are to the upper size limit.
    #               </p>
    #            </note>
    #
    #            <p>Passing policies to this operation returns new
    #            temporary credentials. The resulting session's permissions are the intersection of the
    #            role's identity-based policy and the session policies. You can use the role's temporary
    #            credentials in subsequent Amazon Web Services API calls to access resources in the account that owns
    #            the role. You cannot use session policies to grant more permissions than those allowed
    #            by the identity-based policy of the role that is being assumed. For more information, see
    #               <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">Session
    #               Policies</a> in the <i>IAM User Guide</i>.</p>
    #
    # @option params [String] :policy
    #   <p>An IAM policy in JSON format that you want to use as an inline session policy.</p>
    #            <p>This parameter is optional. Passing policies to this operation returns new
    #            temporary credentials. The resulting session's permissions are the intersection of the
    #            role's identity-based policy and the session policies. You can use the role's temporary
    #            credentials in subsequent Amazon Web Services API calls to access resources in the account that owns
    #            the role. You cannot use session policies to grant more permissions than those allowed
    #            by the identity-based policy of the role that is being assumed. For more information, see
    #               <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">Session
    #               Policies</a> in the <i>IAM User Guide</i>. </p>
    #            <p>The plaintext that you use for both inline and managed session policies can't exceed
    #            2,048 characters. The JSON policy characters can be any ASCII character from the space
    #            character to the end of the valid character list (\u0020 through \u00FF). It can also
    #            include the tab (\u0009), linefeed (\u000A), and carriage return (\u000D)
    #            characters.</p>
    #
    #            <note>
    #               <p>An Amazon Web Services conversion compresses the passed session policies and session tags into a
    #               packed binary format that has a separate limit. Your request can fail for this limit
    #               even if your plaintext meets the other requirements. The <code>PackedPolicySize</code>
    #               response element indicates by percentage how close the policies and tags for your
    #               request are to the upper size limit.
    #               </p>
    #            </note>
    #
    # @option params [Integer] :duration_seconds
    #   <p>The duration, in seconds, of the role session. Your role session lasts for the duration
    #            that you specify for the <code>DurationSeconds</code> parameter, or until the time
    #            specified in the SAML authentication response's <code>SessionNotOnOrAfter</code> value,
    #            whichever is shorter. You can provide a <code>DurationSeconds</code> value from 900 seconds
    #            (15 minutes) up to the maximum session duration setting for the role. This setting can have
    #            a value from 1 hour to 12 hours. If you specify a value higher than this setting, the
    #            operation fails. For example, if you specify a session duration of 12 hours, but your
    #            administrator set the maximum session duration to 6 hours, your operation fails. To learn
    #            how to view the maximum value for your role, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html#id_roles_use_view-role-max-session">View the
    #               Maximum Session Duration Setting for a Role</a> in the
    #               <i>IAM User Guide</i>.</p>
    #            <p>By default, the value is set to <code>3600</code> seconds. </p>
    #            <note>
    #               <p>The <code>DurationSeconds</code> parameter is separate from the duration of a console
    #               session that you might request using the returned credentials. The request to the
    #               federation endpoint for a console sign-in token takes a <code>SessionDuration</code>
    #               parameter that specifies the maximum length of the console session. For more
    #               information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_enable-console-custom-url.html">Creating a URL
    #                  that Enables Federated Users to Access the Amazon Web Services Management Console</a> in the
    #                  <i>IAM User Guide</i>.</p>
    #            </note>
    #
    # @return [Types::AssumeRoleWithSAMLOutput]
    #
    # @example Request syntax with placeholder values
    #
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
    #
    # @example Response structure
    #
    #   resp #=> Types::AssumeRoleWithSAMLOutput
    #   resp.credentials #=> Types::Credentials
    #   resp.credentials.access_key_id #=> String
    #   resp.credentials.secret_access_key #=> String
    #   resp.credentials.session_token #=> String
    #   resp.credentials.expiration #=> Time
    #   resp.assumed_role_user #=> Types::AssumedRoleUser
    #   resp.assumed_role_user.assumed_role_id #=> String
    #   resp.assumed_role_user.arn #=> String
    #   resp.packed_policy_size #=> Integer
    #   resp.subject #=> String
    #   resp.subject_type #=> String
    #   resp.issuer #=> String
    #   resp.audience #=> String
    #   resp.name_qualifier #=> String
    #   resp.source_identity #=> String
    #
    def assume_role_with_saml(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssumeRoleWithSAMLInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssumeRoleWithSAMLInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssumeRoleWithSAML,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::IDPRejectedClaimException, Errors::MalformedPolicyDocumentException, Errors::ExpiredTokenException, Errors::InvalidIdentityTokenException, Errors::RegionDisabledException, Errors::PackedPolicyTooLargeException]),
        data_parser: Parsers::AssumeRoleWithSAML
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::AssumeRoleWithSAML,
        params_class: Params::AssumeRoleWithSAMLOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :assume_role_with_saml
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Returns a set of temporary security credentials for users who have been authenticated in
    #          a mobile or web application with a web identity provider. Example providers include Amazon Cognito,
    #          Login with Amazon, Facebook, Google, or any OpenID Connect-compatible identity
    #          provider.</p>
    #          <note>
    #             <p>For mobile applications, we recommend that you use Amazon Cognito. You can use Amazon Cognito with the
    #                <a href="http://aws.amazon.com/sdkforios/">Amazon Web Services SDK for iOS Developer Guide</a> and the <a href="http://aws.amazon.com/sdkforandroid/">Amazon Web Services SDK for Android Developer Guide</a> to uniquely
    #             identify a user. You can also supply the user with a consistent identity throughout the
    #             lifetime of an application.</p>
    #             <p>To learn more about Amazon Cognito, see <a href="https://docs.aws.amazon.com/mobile/sdkforandroid/developerguide/cognito-auth.html#d0e840">Amazon Cognito Overview</a> in
    #                <i>Amazon Web Services SDK for Android Developer Guide</i> and <a href="https://docs.aws.amazon.com/mobile/sdkforios/developerguide/cognito-auth.html#d0e664">Amazon Cognito Overview</a> in the
    #                <i>Amazon Web Services SDK for iOS Developer Guide</i>.</p>
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
    #          policy. You can also specify up to 10 managed policies to use as managed session policies.
    #          The plaintext that you use for both inline and managed session policies can't exceed 2,048
    #          characters. Passing policies to this operation returns new
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
    #
    #          <note>
    #             <p>An Amazon Web Services conversion compresses the passed session policies and session tags into a
    #             packed binary format that has a separate limit. Your request can fail for this limit
    #             even if your plaintext meets the other requirements. The <code>PackedPolicySize</code>
    #             response element indicates by percentage how close the policies and tags for your
    #             request are to the upper size limit.
    #             </p>
    #          </note>
    #
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
    #
    # @param [Hash] params
    #   See {Types::AssumeRoleWithWebIdentityInput}.
    #
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the role that the caller is assuming.</p>
    #
    # @option params [String] :role_session_name
    #   <p>An identifier for the assumed role session. Typically, you pass the name or identifier
    #            that is associated with the user who is using your application. That way, the temporary
    #            security credentials that your application will use are associated with that user. This
    #            session name is included as part of the ARN and assumed role ID in the
    #               <code>AssumedRoleUser</code> response element.</p>
    #            <p>The regex used to validate this parameter is a string of characters
    #       consisting of upper- and lower-case alphanumeric characters with no spaces. You can
    #       also include underscores or any of the following characters: =,.@-</p>
    #
    # @option params [String] :web_identity_token
    #   <p>The OAuth 2.0 access token or OpenID Connect ID token that is provided by the identity
    #            provider. Your application must get this token by authenticating the user who is using your
    #            application with a web identity provider before the application makes an
    #               <code>AssumeRoleWithWebIdentity</code> call. </p>
    #
    # @option params [String] :provider_id
    #   <p>The fully qualified host component of the domain name of the identity provider.</p>
    #            <p>Specify this value only for OAuth 2.0 access tokens. Currently
    #               <code>www.amazon.com</code> and <code>graph.facebook.com</code> are the only supported
    #            identity providers for OAuth 2.0 access tokens. Do not include URL schemes and port
    #            numbers.</p>
    #            <p>Do not specify this value for OpenID Connect ID tokens.</p>
    #
    # @option params [Array<PolicyDescriptorType>] :policy_arns
    #   <p>The Amazon Resource Names (ARNs) of the IAM managed policies that you want to use as
    #            managed session policies. The policies must exist in the same account as the role.</p>
    #            <p>This parameter is optional. You can provide up to 10 managed policy ARNs. However, the
    #            plaintext that you use for both inline and managed session policies can't exceed 2,048
    #            characters. For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and Amazon Web Services
    #               Service Namespaces</a> in the Amazon Web Services General Reference.</p>
    #
    #            <note>
    #               <p>An Amazon Web Services conversion compresses the passed session policies and session tags into a
    #               packed binary format that has a separate limit. Your request can fail for this limit
    #               even if your plaintext meets the other requirements. The <code>PackedPolicySize</code>
    #               response element indicates by percentage how close the policies and tags for your
    #               request are to the upper size limit.
    #               </p>
    #            </note>
    #
    #            <p>Passing policies to this operation returns new
    #            temporary credentials. The resulting session's permissions are the intersection of the
    #            role's identity-based policy and the session policies. You can use the role's temporary
    #            credentials in subsequent Amazon Web Services API calls to access resources in the account that owns
    #            the role. You cannot use session policies to grant more permissions than those allowed
    #            by the identity-based policy of the role that is being assumed. For more information, see
    #               <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">Session
    #               Policies</a> in the <i>IAM User Guide</i>.</p>
    #
    # @option params [String] :policy
    #   <p>An IAM policy in JSON format that you want to use as an inline session policy.</p>
    #            <p>This parameter is optional. Passing policies to this operation returns new
    #            temporary credentials. The resulting session's permissions are the intersection of the
    #            role's identity-based policy and the session policies. You can use the role's temporary
    #            credentials in subsequent Amazon Web Services API calls to access resources in the account that owns
    #            the role. You cannot use session policies to grant more permissions than those allowed
    #            by the identity-based policy of the role that is being assumed. For more information, see
    #               <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">Session
    #               Policies</a> in the <i>IAM User Guide</i>.</p>
    #            <p>The plaintext that you use for both inline and managed session policies can't exceed
    #            2,048 characters. The JSON policy characters can be any ASCII character from the space
    #            character to the end of the valid character list (\u0020 through \u00FF). It can also
    #            include the tab (\u0009), linefeed (\u000A), and carriage return (\u000D)
    #            characters.</p>
    #
    #            <note>
    #               <p>An Amazon Web Services conversion compresses the passed session policies and session tags into a
    #               packed binary format that has a separate limit. Your request can fail for this limit
    #               even if your plaintext meets the other requirements. The <code>PackedPolicySize</code>
    #               response element indicates by percentage how close the policies and tags for your
    #               request are to the upper size limit.
    #               </p>
    #            </note>
    #
    # @option params [Integer] :duration_seconds
    #   <p>The duration, in seconds, of the role session. The value can range from 900 seconds (15
    #            minutes) up to the maximum session duration setting for the role. This setting can have a
    #            value from 1 hour to 12 hours. If you specify a value higher than this setting, the
    #            operation fails. For example, if you specify a session duration of 12 hours, but your
    #            administrator set the maximum session duration to 6 hours, your operation fails. To learn
    #            how to view the maximum value for your role, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html#id_roles_use_view-role-max-session">View the
    #               Maximum Session Duration Setting for a Role</a> in the
    #               <i>IAM User Guide</i>.</p>
    #            <p>By default, the value is set to <code>3600</code> seconds. </p>
    #            <note>
    #               <p>The <code>DurationSeconds</code> parameter is separate from the duration of a console
    #               session that you might request using the returned credentials. The request to the
    #               federation endpoint for a console sign-in token takes a <code>SessionDuration</code>
    #               parameter that specifies the maximum length of the console session. For more
    #               information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_enable-console-custom-url.html">Creating a URL
    #                  that Enables Federated Users to Access the Amazon Web Services Management Console</a> in the
    #                  <i>IAM User Guide</i>.</p>
    #            </note>
    #
    # @return [Types::AssumeRoleWithWebIdentityOutput]
    #
    # @example Request syntax with placeholder values
    #
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
    #
    # @example Response structure
    #
    #   resp #=> Types::AssumeRoleWithWebIdentityOutput
    #   resp.credentials #=> Types::Credentials
    #   resp.credentials.access_key_id #=> String
    #   resp.credentials.secret_access_key #=> String
    #   resp.credentials.session_token #=> String
    #   resp.credentials.expiration #=> Time
    #   resp.subject_from_web_identity_token #=> String
    #   resp.assumed_role_user #=> Types::AssumedRoleUser
    #   resp.assumed_role_user.assumed_role_id #=> String
    #   resp.assumed_role_user.arn #=> String
    #   resp.packed_policy_size #=> Integer
    #   resp.provider #=> String
    #   resp.audience #=> String
    #   resp.source_identity #=> String
    #
    def assume_role_with_web_identity(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssumeRoleWithWebIdentityInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssumeRoleWithWebIdentityInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssumeRoleWithWebIdentity,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::IDPRejectedClaimException, Errors::MalformedPolicyDocumentException, Errors::ExpiredTokenException, Errors::InvalidIdentityTokenException, Errors::RegionDisabledException, Errors::PackedPolicyTooLargeException, Errors::IDPCommunicationErrorException]),
        data_parser: Parsers::AssumeRoleWithWebIdentity
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::AssumeRoleWithWebIdentity,
        params_class: Params::AssumeRoleWithWebIdentityOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :assume_role_with_web_identity
        )
      )
      raise resp.error if resp.error
      resp.data
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
    #
    # @param [Hash] params
    #   See {Types::DecodeAuthorizationMessageInput}.
    #
    # @option params [String] :encoded_message
    #   <p>The encoded message that was returned with the response.</p>
    #
    # @return [Types::DecodeAuthorizationMessageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.decode_authorization_message(
    #     encoded_message: 'EncodedMessage' # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::DecodeAuthorizationMessageOutput
    #   resp.decoded_message #=> String
    #
    def decode_authorization_message(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DecodeAuthorizationMessageInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DecodeAuthorizationMessageInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DecodeAuthorizationMessage,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::InvalidAuthorizationMessageException]),
        data_parser: Parsers::DecodeAuthorizationMessage
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::DecodeAuthorizationMessage,
        params_class: Params::DecodeAuthorizationMessageOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :decode_authorization_message
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Returns the account identifier for the specified access key ID.</p>
    #          <p>Access keys consist of two parts: an access key ID (for example,
    #             <code>AKIAIOSFODNN7EXAMPLE</code>) and a secret access key (for example,
    #             <code>wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY</code>). For more information about
    #          access keys, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_access-keys.html">Managing Access Keys for IAM
    #             Users</a> in the <i>IAM User Guide</i>.</p>
    #          <p>When you pass an access key ID to this operation, it returns the ID of the Amazon Web Services account
    #          to which the keys belong. Access key IDs beginning with <code>AKIA</code> are long-term
    #          credentials for an IAM user or the Amazon Web Services account root user. Access key IDs beginning with
    #             <code>ASIA</code> are temporary credentials that are created using STS operations. If
    #          the account in the response belongs to you, you can sign in as the root user and review
    #          your root user access keys. Then, you can pull a <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_getting-report.html">credentials report</a> to
    #          learn which IAM user owns the keys. To learn who requested the temporary credentials for
    #          an <code>ASIA</code> access key, view the STS events in your <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/cloudtrail-integration.html">CloudTrail logs</a> in the
    #             <i>IAM User Guide</i>.</p>
    #          <p>This operation does not indicate the state of the access key. The key might be active,
    #          inactive, or deleted. Active keys might not have permissions to perform an operation.
    #          Providing a deleted access key might return an error that the key doesn't exist.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAccessKeyInfoInput}.
    #
    # @option params [String] :access_key_id
    #   <p>The identifier of an access key.</p>
    #            <p>This parameter allows (through its regex pattern) a string of characters that can
    #            consist of any upper- or lowercase letter or digit.</p>
    #
    # @return [Types::GetAccessKeyInfoOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_access_key_info(
    #     access_key_id: 'AccessKeyId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::GetAccessKeyInfoOutput
    #   resp.account #=> String
    #
    def get_access_key_info(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAccessKeyInfoInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAccessKeyInfoInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAccessKeyInfo,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: []),
        data_parser: Parsers::GetAccessKeyInfo
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::GetAccessKeyInfo,
        params_class: Params::GetAccessKeyInfoOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :get_access_key_info
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Returns details about the IAM user or role whose credentials are used to call the
    #          operation.</p>
    #          <note>
    #             <p>No permissions are required to perform this operation. If an administrator adds a
    #             policy to your IAM user or role that explicitly denies access to the
    #                <code>sts:GetCallerIdentity</code> action, you can still perform this operation.
    #             Permissions are not required because the same information is returned when an IAM user
    #             or role is denied access. To view an example response, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/troubleshoot_general.html#troubleshoot_general_access-denied-delete-mfa">I Am Not Authorized to Perform: iam:DeleteVirtualMFADevice</a> in the
    #                <i>IAM User Guide</i>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::GetCallerIdentityInput}.
    #
    # @return [Types::GetCallerIdentityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_caller_identity()
    #
    # @example Response structure
    #
    #   resp #=> Types::GetCallerIdentityOutput
    #   resp.user_id #=> String
    #   resp.account #=> String
    #   resp.arn #=> String
    #
    def get_caller_identity(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetCallerIdentityInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetCallerIdentityInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetCallerIdentity,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: []),
        data_parser: Parsers::GetCallerIdentity
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::GetCallerIdentity,
        params_class: Params::GetCallerIdentityOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :get_caller_identity
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Returns a set of temporary security credentials (consisting of an access key ID, a
    #          secret access key, and a security token) for a federated user. A typical use is in a proxy
    #          application that gets temporary security credentials on behalf of distributed applications
    #          inside a corporate network. You must call the <code>GetFederationToken</code> operation
    #          using the long-term security credentials of an IAM user. As a result, this call is
    #          appropriate in contexts where those credentials can be safely stored, usually in a
    #          server-based application. For a comparison of <code>GetFederationToken</code> with the
    #          other API operations that produce temporary credentials, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html">Requesting Temporary Security
    #             Credentials</a> and <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#stsapi_comparison">Comparing the
    #             Amazon Web Services STS API operations</a> in the <i>IAM User Guide</i>.</p>
    #          <note>
    #             <p>You can create a mobile-based or browser-based app that can authenticate users using
    #             a web identity provider like Login with Amazon, Facebook, Google, or an OpenID
    #             Connect-compatible identity provider. In this case, we recommend that you use <a href="http://aws.amazon.com/cognito/">Amazon Cognito</a> or
    #                <code>AssumeRoleWithWebIdentity</code>. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_assumerolewithwebidentity">Federation Through a Web-based Identity Provider</a> in the
    #                <i>IAM User Guide</i>.</p>
    #          </note>
    #          <p>You can also call <code>GetFederationToken</code> using the security credentials of an
    #          Amazon Web Services account root user, but we do not recommend it. Instead, we recommend that you create
    #          an IAM user for the purpose of the proxy application. Then attach a policy to the IAM
    #          user that limits federated users to only the actions and resources that they need to
    #          access. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html">IAM Best Practices</a> in the
    #             <i>IAM User Guide</i>. </p>
    #          <p>
    #             <b>Session duration</b>
    #          </p>
    #          <p>The temporary credentials are valid for the specified duration, from 900 seconds (15
    #          minutes) up to a maximum of 129,600 seconds (36 hours). The default session duration is
    #          43,200 seconds (12 hours). Temporary credentials obtained by using the Amazon Web Services account root
    #          user credentials have a maximum duration of 3,600 seconds (1 hour).</p>
    #          <p>
    #             <b>Permissions</b>
    #          </p>
    #          <p>You can use the temporary credentials created by <code>GetFederationToken</code> in any
    #          Amazon Web Services service except the following:</p>
    #          <ul>
    #             <li>
    #                <p>You cannot call any IAM operations using the CLI or the Amazon Web Services API. </p>
    #             </li>
    #             <li>
    #                <p>You cannot call any STS operations except <code>GetCallerIdentity</code>.</p>
    #             </li>
    #          </ul>
    #          <p>You must pass an inline or managed <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">session policy</a> to
    #          this operation. You can pass a single JSON policy document to use as an inline session
    #          policy. You can also specify up to 10 managed policies to use as managed session policies.
    #          The plaintext that you use for both inline and managed session policies can't exceed 2,048
    #          characters.</p>
    #          <p>Though the session policy parameters are optional, if you do not pass a policy, then the
    #          resulting federated user session has no permissions. When you pass session policies, the
    #          session permissions are the intersection of the IAM user policies and the session
    #          policies that you pass. This gives you a way to further restrict the permissions for a
    #          federated user. You cannot use session policies to grant more permissions than those that
    #          are defined in the permissions policy of the IAM user. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">Session
    #             Policies</a> in the <i>IAM User Guide</i>. For information about
    #          using <code>GetFederationToken</code> to create temporary security credentials, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_getfederationtoken">GetFederationToken—Federation Through a Custom Identity Broker</a>. </p>
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
    #
    # @param [Hash] params
    #   See {Types::GetFederationTokenInput}.
    #
    # @option params [String] :member_name
    #   <p>The name of the federated user. The name is used as an identifier for the temporary
    #            security credentials (such as <code>Bob</code>). For example, you can reference the
    #            federated user name in a resource-based policy, such as in an Amazon S3 bucket policy.</p>
    #            <p>The regex used to validate this parameter is a string of characters
    #       consisting of upper- and lower-case alphanumeric characters with no spaces. You can
    #       also include underscores or any of the following characters: =,.@-</p>
    #
    # @option params [String] :policy
    #   <p>An IAM policy in JSON format that you want to use as an inline session policy.</p>
    #            <p>You must pass an inline or managed <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">session policy</a> to
    #            this operation. You can pass a single JSON policy document to use as an inline session
    #            policy. You can also specify up to 10 managed policies to use as managed session
    #            policies.</p>
    #            <p>This parameter is optional. However, if you do not pass any session policies, then the
    #            resulting federated user session has no permissions.</p>
    #            <p>When you pass session policies, the session permissions are the intersection of the
    #            IAM user policies and the session policies that you pass. This gives you a way to further
    #            restrict the permissions for a federated user. You cannot use session policies to grant
    #            more permissions than those that are defined in the permissions policy of the IAM user.
    #            For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">Session Policies</a> in
    #            the <i>IAM User Guide</i>.</p>
    #            <p>The resulting credentials can be used to access a resource that has a resource-based
    #            policy. If that policy specifically references the federated user session in the
    #               <code>Principal</code> element of the policy, the session has the permissions allowed by
    #            the policy. These permissions are granted in addition to the permissions that are granted
    #            by the session policies.</p>
    #            <p>The plaintext that you use for both inline and managed session policies can't exceed
    #            2,048 characters. The JSON policy characters can be any ASCII character from the space
    #            character to the end of the valid character list (\u0020 through \u00FF). It can also
    #            include the tab (\u0009), linefeed (\u000A), and carriage return (\u000D)
    #            characters.</p>
    #
    #            <note>
    #               <p>An Amazon Web Services conversion compresses the passed session policies and session tags into a
    #               packed binary format that has a separate limit. Your request can fail for this limit
    #               even if your plaintext meets the other requirements. The <code>PackedPolicySize</code>
    #               response element indicates by percentage how close the policies and tags for your
    #               request are to the upper size limit.
    #               </p>
    #            </note>
    #
    # @option params [Array<PolicyDescriptorType>] :policy_arns
    #   <p>The Amazon Resource Names (ARNs) of the IAM managed policies that you want to use as a
    #            managed session policy. The policies must exist in the same account as the IAM user that
    #            is requesting federated access.</p>
    #            <p>You must pass an inline or managed <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">session policy</a> to
    #            this operation. You can pass a single JSON policy document to use as an inline session
    #            policy. You can also specify up to 10 managed policies to use as managed session policies.
    #            The plaintext that you use for both inline and managed session policies can't exceed 2,048
    #            characters. You can provide up to 10 managed policy ARNs. For more information about ARNs,
    #            see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon
    #               Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the
    #            Amazon Web Services General Reference.</p>
    #            <p>This parameter is optional. However, if you do not pass any session policies, then the
    #            resulting federated user session has no permissions.</p>
    #            <p>When you pass session policies, the session permissions are the intersection of the
    #            IAM user policies and the session policies that you pass. This gives you a way to further
    #            restrict the permissions for a federated user. You cannot use session policies to grant
    #            more permissions than those that are defined in the permissions policy of the IAM user.
    #            For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">Session Policies</a> in
    #            the <i>IAM User Guide</i>.</p>
    #            <p>The resulting credentials can be used to access a resource that has a resource-based
    #            policy. If that policy specifically references the federated user session in the
    #               <code>Principal</code> element of the policy, the session has the permissions allowed by
    #            the policy. These permissions are granted in addition to the permissions that are granted
    #            by the session policies.</p>
    #
    #            <note>
    #               <p>An Amazon Web Services conversion compresses the passed session policies and session tags into a
    #               packed binary format that has a separate limit. Your request can fail for this limit
    #               even if your plaintext meets the other requirements. The <code>PackedPolicySize</code>
    #               response element indicates by percentage how close the policies and tags for your
    #               request are to the upper size limit.
    #               </p>
    #            </note>
    #
    # @option params [Integer] :duration_seconds
    #   <p>The duration, in seconds, that the session should last. Acceptable durations for
    #            federation sessions range from 900 seconds (15 minutes) to 129,600 seconds (36 hours), with
    #            43,200 seconds (12 hours) as the default. Sessions obtained using Amazon Web Services account root user
    #            credentials are restricted to a maximum of 3,600 seconds (one hour). If the specified
    #            duration is longer than one hour, the session obtained by using root user credentials
    #            defaults to one hour.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of session tags. Each session tag consists of a key name and an associated value.
    #            For more information about session tags, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html">Passing Session Tags in STS</a> in the
    #               <i>IAM User Guide</i>.</p>
    #            <p>This parameter is optional. You can pass up to 50 session tags. The plaintext session
    #            tag keys can’t exceed 128 characters and the values can’t exceed 256 characters. For these
    #            and additional limits, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-limits.html#reference_iam-limits-entity-length">IAM
    #               and STS Character Limits</a> in the <i>IAM User Guide</i>.</p>
    #
    #            <note>
    #               <p>An Amazon Web Services conversion compresses the passed session policies and session tags into a
    #               packed binary format that has a separate limit. Your request can fail for this limit
    #               even if your plaintext meets the other requirements. The <code>PackedPolicySize</code>
    #               response element indicates by percentage how close the policies and tags for your
    #               request are to the upper size limit.
    #               </p>
    #            </note>
    #
    #            <p>You can pass a session tag with the same key as a tag that is already attached to the
    #            user you are federating. When you do, session tags override a user tag with the same key. </p>
    #            <p>Tag key–value pairs are not case sensitive, but case is preserved. This means that you
    #            cannot have separate <code>Department</code> and <code>department</code> tag keys. Assume
    #            that the role has the <code>Department</code>=<code>Marketing</code> tag and you pass the
    #               <code>department</code>=<code>engineering</code> session tag. <code>Department</code>
    #            and <code>department</code> are not saved as separate tags, and the session tag passed in
    #            the request takes precedence over the role tag.</p>
    #
    # @return [Types::GetFederationTokenOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_federation_token(
    #     member_name: 'Name', # required
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
    #
    # @example Response structure
    #
    #   resp #=> Types::GetFederationTokenOutput
    #   resp.credentials #=> Types::Credentials
    #   resp.credentials.access_key_id #=> String
    #   resp.credentials.secret_access_key #=> String
    #   resp.credentials.session_token #=> String
    #   resp.credentials.expiration #=> Time
    #   resp.federated_user #=> Types::FederatedUser
    #   resp.federated_user.federated_user_id #=> String
    #   resp.federated_user.arn #=> String
    #   resp.packed_policy_size #=> Integer
    #
    def get_federation_token(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetFederationTokenInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetFederationTokenInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetFederationToken,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::MalformedPolicyDocumentException, Errors::RegionDisabledException, Errors::PackedPolicyTooLargeException]),
        data_parser: Parsers::GetFederationToken
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::GetFederationToken,
        params_class: Params::GetFederationTokenOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :get_federation_token
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Returns a set of temporary credentials for an Amazon Web Services account or IAM user. The
    #          credentials consist of an access key ID, a secret access key, and a security token.
    #          Typically, you use <code>GetSessionToken</code> if you want to use MFA to protect
    #          programmatic calls to specific Amazon Web Services API operations like Amazon EC2 <code>StopInstances</code>.
    #          MFA-enabled IAM users would need to call <code>GetSessionToken</code> and submit an MFA
    #          code that is associated with their MFA device. Using the temporary security credentials
    #          that are returned from the call, IAM users can then make programmatic calls to API
    #          operations that require MFA authentication. If you do not supply a correct MFA code, then
    #          the API returns an access denied error. For a comparison of <code>GetSessionToken</code>
    #          with the other API operations that produce temporary credentials, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html">Requesting
    #             Temporary Security Credentials</a> and <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#stsapi_comparison">Comparing the
    #             Amazon Web Services STS API operations</a> in the <i>IAM User Guide</i>.</p>
    #          <p>
    #             <b>Session Duration</b>
    #          </p>
    #          <p>The <code>GetSessionToken</code> operation must be called by using the long-term Amazon Web Services
    #          security credentials of the Amazon Web Services account root user or an IAM user. Credentials that are
    #          created by IAM users are valid for the duration that you specify. This duration can range
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
    #          <note>
    #             <p>We recommend that you do not call <code>GetSessionToken</code> with Amazon Web Services account
    #             root user credentials. Instead, follow our <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html#create-iam-users">best practices</a> by
    #             creating one or more IAM users, giving them the necessary permissions, and using IAM
    #             users for everyday interaction with Amazon Web Services. </p>
    #          </note>
    #          <p>The credentials that are returned by <code>GetSessionToken</code> are based on
    #          permissions associated with the user whose credentials were used to call the operation. If
    #             <code>GetSessionToken</code> is called using Amazon Web Services account root user credentials, the
    #          temporary credentials have root user permissions. Similarly, if
    #             <code>GetSessionToken</code> is called using the credentials of an IAM user, the
    #          temporary credentials have the same permissions as the IAM user. </p>
    #          <p>For more information about using <code>GetSessionToken</code> to create temporary
    #          credentials, go to <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_getsessiontoken">Temporary
    #             Credentials for Users in Untrusted Environments</a> in the
    #             <i>IAM User Guide</i>. </p>
    #
    # @param [Hash] params
    #   See {Types::GetSessionTokenInput}.
    #
    # @option params [Integer] :duration_seconds
    #   <p>The duration, in seconds, that the credentials should remain valid. Acceptable durations
    #            for IAM user sessions range from 900 seconds (15 minutes) to 129,600 seconds (36 hours),
    #            with 43,200 seconds (12 hours) as the default. Sessions for Amazon Web Services account owners are
    #            restricted to a maximum of 3,600 seconds (one hour). If the duration is longer than one
    #            hour, the session for Amazon Web Services account owners defaults to one hour.</p>
    #
    # @option params [String] :serial_number
    #   <p>The identification number of the MFA device that is associated with the IAM user who
    #            is making the <code>GetSessionToken</code> call. Specify this value if the IAM user has a
    #            policy that requires MFA authentication. The value is either the serial number for a
    #            hardware device (such as <code>GAHT12345678</code>) or an Amazon Resource Name (ARN) for a
    #            virtual device (such as <code>arn:aws:iam::123456789012:mfa/user</code>). You can find the
    #            device for an IAM user by going to the Amazon Web Services Management Console and viewing the user's security
    #            credentials. </p>
    #            <p>The regex used to validate this parameter is a string of
    #       characters consisting of upper- and lower-case alphanumeric characters with no spaces.
    #       You can also include underscores or any of the following characters: =,.@:/-</p>
    #
    # @option params [String] :token_code
    #   <p>The value provided by the MFA device, if MFA is required. If any policy requires the
    #            IAM user to submit an MFA code, specify this value. If MFA authentication is required,
    #            the user must provide a code when requesting a set of temporary security credentials. A
    #            user who fails to provide the code receives an "access denied" response when requesting
    #            resources that require MFA authentication.</p>
    #            <p>The format for this parameter, as described by its regex pattern, is a sequence of six
    #            numeric digits.</p>
    #
    # @return [Types::GetSessionTokenOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_session_token(
    #     duration_seconds: 1,
    #     serial_number: 'SerialNumber',
    #     token_code: 'TokenCode'
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::GetSessionTokenOutput
    #   resp.credentials #=> Types::Credentials
    #   resp.credentials.access_key_id #=> String
    #   resp.credentials.secret_access_key #=> String
    #   resp.credentials.session_token #=> String
    #   resp.credentials.expiration #=> Time
    #
    def get_session_token(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSessionTokenInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSessionTokenInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSessionToken,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::RegionDisabledException]),
        data_parser: Parsers::GetSessionToken
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::GetSessionToken,
        params_class: Params::GetSessionTokenOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :get_session_token
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    private

    def apply_middleware(middleware_stack, middleware)
      Client.middleware.apply(middleware_stack)
      @middleware.apply(middleware_stack)
      Hearth::MiddlewareBuilder.new(middleware).apply(middleware_stack)
    end

    def output_stream(options = {}, &block)
      return options[:output_stream] if options[:output_stream]
      return Hearth::BlockIO.new(block) if block

      StringIO.new
    end
  end
end
