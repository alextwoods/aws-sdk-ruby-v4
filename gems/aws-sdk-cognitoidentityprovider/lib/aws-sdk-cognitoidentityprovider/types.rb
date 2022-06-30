# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CognitoIdentityProvider
  module Types

    # <p>The data type for <code>AccountRecoverySetting</code>.</p>
    #
    # @!attribute recovery_mechanisms
    #   <p>The list of <code>RecoveryOptionTypes</code>.</p>
    #
    #   @return [Array<RecoveryOptionType>]
    #
    AccountRecoverySettingType = ::Struct.new(
      :recovery_mechanisms,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Account takeover action type.</p>
    #
    # @!attribute notify
    #   <p>Flag specifying whether to send a notification.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute event_action
    #   <p>The action to take in response to the account takeover action. Valid values are as
    #               follows:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>BLOCK</code> Choosing this action will block the request.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>MFA_IF_CONFIGURED</code> Present an MFA challenge if user has configured
    #                       it, else allow the request.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>MFA_REQUIRED</code> Present an MFA challenge if user has configured it,
    #                       else block the request.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>NO_ACTION</code> Allow the user to sign in.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["BLOCK", "MFA_IF_CONFIGURED", "MFA_REQUIRED", "NO_ACTION"]
    #
    #   @return [String]
    #
    AccountTakeoverActionType = ::Struct.new(
      :notify,
      :event_action,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.notify ||= false
      end

    end

    # <p>Account takeover actions type.</p>
    #
    # @!attribute low_action
    #   <p>Action to take for a low risk.</p>
    #
    #   @return [AccountTakeoverActionType]
    #
    # @!attribute medium_action
    #   <p>Action to take for a medium risk.</p>
    #
    #   @return [AccountTakeoverActionType]
    #
    # @!attribute high_action
    #   <p>Action to take for a high risk.</p>
    #
    #   @return [AccountTakeoverActionType]
    #
    AccountTakeoverActionsType = ::Struct.new(
      :low_action,
      :medium_action,
      :high_action,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AccountTakeoverEventActionType
    #
    module AccountTakeoverEventActionType
      # No documentation available.
      #
      BLOCK = "BLOCK"

      # No documentation available.
      #
      MFA_IF_CONFIGURED = "MFA_IF_CONFIGURED"

      # No documentation available.
      #
      MFA_REQUIRED = "MFA_REQUIRED"

      # No documentation available.
      #
      NO_ACTION = "NO_ACTION"
    end

    # <p>Configuration for mitigation actions and notification for different levels of risk
    #             detected for a potential account takeover.</p>
    #
    # @!attribute notify_configuration
    #   <p>The notify configuration used to construct email notifications.</p>
    #
    #   @return [NotifyConfigurationType]
    #
    # @!attribute actions
    #   <p>Account takeover risk configuration actions.</p>
    #
    #   @return [AccountTakeoverActionsType]
    #
    AccountTakeoverRiskConfigurationType = ::Struct.new(
      :notify_configuration,
      :actions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the request to add custom attributes.</p>
    #
    # @!attribute user_pool_id
    #   <p>The user pool ID for the user pool where you want to add custom attributes.</p>
    #
    #   @return [String]
    #
    # @!attribute custom_attributes
    #   <p>An array of custom attributes, such as Mutable and Name.</p>
    #
    #   @return [Array<SchemaAttributeType>]
    #
    AddCustomAttributesInput = ::Struct.new(
      :user_pool_id,
      :custom_attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the response from the server for the request to add custom
    #             attributes.</p>
    #
    AddCustomAttributesOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_pool_id
    #   <p>The user pool ID for the user pool.</p>
    #
    #   @return [String]
    #
    # @!attribute username
    #   <p>The username for the user.</p>
    #
    #   @return [String]
    #
    # @!attribute group_name
    #   <p>The group name.</p>
    #
    #   @return [String]
    #
    AdminAddUserToGroupInput = ::Struct.new(
      :user_pool_id,
      :username,
      :group_name,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::AdminAddUserToGroupInput "\
          "user_pool_id=#{user_pool_id || 'nil'}, "\
          "username=\"[SENSITIVE]\", "\
          "group_name=#{group_name || 'nil'}>"
      end
    end

    AdminAddUserToGroupOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the request to confirm user registration.</p>
    #
    # @!attribute user_pool_id
    #   <p>The user pool ID for which you want to confirm user registration.</p>
    #
    #   @return [String]
    #
    # @!attribute username
    #   <p>The user name for which you want to confirm user registration.</p>
    #
    #   @return [String]
    #
    # @!attribute client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for any custom workflows
    #               that this action triggers.</p>
    #           <p>If your user pool configuration includes triggers, the AdminConfirmSignUp API action
    #               invokes the Lambda function that is specified for the <i>post
    #                   confirmation</i> trigger. When Amazon Cognito invokes this function, it passes a JSON
    #               payload, which the function receives as input. In this payload, the
    #                   <code>clientMetadata</code> attribute provides the data that you assigned to the
    #               ClientMetadata parameter in your AdminConfirmSignUp request. In your function code in
    #               Lambda, you can process the ClientMetadata value to enhance your workflow for your
    #               specific needs.</p>
    #
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html">
    #   Customizing user pool Workflows with Lambda Triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #
    #           <note>
    #               <p>When you use the ClientMetadata parameter, remember that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                       <p>Store the ClientMetadata value. This data is available only to Lambda
    #                           triggers that are assigned to a user pool to support custom workflows. If
    #                           your user pool configuration doesn't include triggers, the ClientMetadata
    #                           parameter serves no purpose.</p>
    #                   </li>
    #                  <li>
    #                       <p>Validate the ClientMetadata value.</p>
    #                   </li>
    #                  <li>
    #                       <p>Encrypt the ClientMetadata value. Don't use Amazon Cognito to provide sensitive
    #                           information.</p>
    #                   </li>
    #               </ul>
    #           </note>
    #
    #   @return [Hash<String, String>]
    #
    AdminConfirmSignUpInput = ::Struct.new(
      :user_pool_id,
      :username,
      :client_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::AdminConfirmSignUpInput "\
          "user_pool_id=#{user_pool_id || 'nil'}, "\
          "username=\"[SENSITIVE]\", "\
          "client_metadata=#{client_metadata || 'nil'}>"
      end
    end

    # <p>Represents the response from the server for the request to confirm
    #             registration.</p>
    #
    AdminConfirmSignUpOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration for creating a new user profile.</p>
    #
    # @!attribute allow_admin_create_user_only
    #   <p>Set to <code>True</code> if only the administrator is allowed to create user profiles.
    #               Set to <code>False</code> if users can sign themselves up via an app.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute unused_account_validity_days
    #   <p>The user account expiration limit, in days, after which a new account that hasn't
    #               signed in is no longer usable. To reset the account after that time limit, you must call
    #                   <code>AdminCreateUser</code> again, specifying <code>"RESEND"</code> for the
    #                   <code>MessageAction</code> parameter. The default value for this parameter is 7. </p>
    #           <note>
    #               <p>If you set a value for <code>TemporaryPasswordValidityDays</code> in
    #                       <code>PasswordPolicy</code>, that value will be used, and
    #                       <code>UnusedAccountValidityDays</code> will be no longer be an available
    #                   parameter for that user pool.</p>
    #           </note>
    #
    #   @return [Integer]
    #
    # @!attribute invite_message_template
    #   <p>The message template to be used for the welcome message to new users.</p>
    #           <p>See also <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-message-customizations.html cognito-user-pool-settings-user-invitation-message-customization">Customizing User Invitation Messages</a>.</p>
    #
    #   @return [MessageTemplateType]
    #
    AdminCreateUserConfigType = ::Struct.new(
      :allow_admin_create_user_only,
      :unused_account_validity_days,
      :invite_message_template,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.allow_admin_create_user_only ||= false
        self.unused_account_validity_days ||= 0
      end

    end

    # <p>Represents the request to create a user in the specified user pool.</p>
    #
    # @!attribute user_pool_id
    #   <p>The user pool ID for the user pool where the user will be created.</p>
    #
    #   @return [String]
    #
    # @!attribute username
    #   <p>The username for the user. Must be unique within the user pool. Must be a UTF-8 string
    #               between 1 and 128 characters. After the user is created, the username can't be
    #               changed.</p>
    #
    #   @return [String]
    #
    # @!attribute user_attributes
    #   <p>An array of name-value pairs that contain user attributes and attribute values to be
    #               set for the user to be created. You can create a user without specifying any attributes
    #               other than <code>Username</code>. However, any attributes that you specify as required
    #               (when creating a user pool or in the <b>Attributes</b> tab of
    #               the console) either you should supply (in your call to <code>AdminCreateUser</code>) or
    #               the user should supply (when they sign up in response to your welcome message).</p>
    #           <p>For custom attributes, you must prepend the <code>custom:</code> prefix to the
    #               attribute name.</p>
    #           <p>To send a message inviting the user to sign up, you must specify the user's email
    #               address or phone number. You can do this in your call to AdminCreateUser or in the
    #                   <b>Users</b> tab of the Amazon Cognito console for managing your
    #               user pools.</p>
    #           <p>In your call to <code>AdminCreateUser</code>, you can set the
    #                   <code>email_verified</code> attribute to <code>True</code>, and you can set the
    #                   <code>phone_number_verified</code> attribute to <code>True</code>. You can also do
    #               this by calling <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AdminUpdateUserAttributes.html">AdminUpdateUserAttributes</a>.</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <b>email</b>: The email address of the user to whom
    #                       the message that contains the code and username will be sent. Required if the
    #                           <code>email_verified</code> attribute is set to <code>True</code>, or if
    #                           <code>"EMAIL"</code> is specified in the <code>DesiredDeliveryMediums</code>
    #                       parameter.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>phone_number</b>: The phone number of the user to
    #                       whom the message that contains the code and username will be sent. Required if
    #                       the <code>phone_number_verified</code> attribute is set to <code>True</code>, or
    #                       if <code>"SMS"</code> is specified in the <code>DesiredDeliveryMediums</code>
    #                       parameter.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<AttributeType>]
    #
    # @!attribute validation_data
    #   <p>The user's validation data. This is an array of name-value pairs that contain user
    #               attributes and attribute values that you can use for custom validation, such as
    #               restricting the types of user accounts that can be registered. For example, you might
    #               choose to allow or disallow user sign-up based on the user's domain.</p>
    #           <p>To configure custom validation, you must create a Pre Sign-up Lambda trigger for
    #               the user pool as described in the Amazon Cognito Developer Guide. The Lambda trigger receives the
    #               validation data and uses it in the validation process.</p>
    #           <p>The user's validation data isn't persisted.</p>
    #
    #   @return [Array<AttributeType>]
    #
    # @!attribute temporary_password
    #   <p>The user's temporary password. This password must conform to the password policy that
    #               you specified when you created the user pool.</p>
    #           <p>The temporary password is valid only once. To complete the Admin Create User flow, the
    #               user must enter the temporary password in the sign-in page, along with a new password to
    #               be used in all future sign-ins.</p>
    #           <p>This parameter isn't required. If you don't specify a value, Amazon Cognito generates one for
    #               you.</p>
    #           <p>The temporary password can only be used until the user account expiration limit that
    #               you specified when you created the user pool. To reset the account after that time
    #               limit, you must call <code>AdminCreateUser</code> again, specifying
    #                   <code>"RESEND"</code> for the <code>MessageAction</code> parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute force_alias_creation
    #   <p>This parameter is used only if the <code>phone_number_verified</code> or
    #                   <code>email_verified</code> attribute is set to <code>True</code>. Otherwise, it is
    #               ignored.</p>
    #           <p>If this parameter is set to <code>True</code> and the phone number or email address
    #               specified in the UserAttributes parameter already exists as an alias with a different
    #               user, the API call will migrate the alias from the previous user to the newly created
    #               user. The previous user will no longer be able to log in using that alias.</p>
    #           <p>If this parameter is set to <code>False</code>, the API throws an
    #                   <code>AliasExistsException</code> error if the alias already exists. The default
    #               value is <code>False</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute message_action
    #   <p>Set to <code>RESEND</code> to resend the invitation message to a user that already
    #               exists and reset the expiration limit on the user's account. Set to
    #                   <code>SUPPRESS</code> to suppress sending the message. You can specify only one
    #               value.</p>
    #
    #   Enum, one of: ["RESEND", "SUPPRESS"]
    #
    #   @return [String]
    #
    # @!attribute desired_delivery_mediums
    #   <p>Specify <code>"EMAIL"</code> if email will be used to send the welcome message.
    #               Specify <code>"SMS"</code> if the phone number will be used. The default value is
    #                   <code>"SMS"</code>. You can specify more than one value.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for any custom workflows
    #               that this action triggers.</p>
    #           <p>You create custom workflows by assigning Lambda functions to user pool triggers.
    #               When you use the AdminCreateUser API action, Amazon Cognito invokes the function that is assigned
    #               to the <i>pre sign-up</i> trigger. When Amazon Cognito invokes this function, it
    #               passes a JSON payload, which the function receives as input. This payload contains a
    #                   <code>clientMetadata</code> attribute, which provides the data that you assigned to
    #               the ClientMetadata parameter in your AdminCreateUser request. In your function code in
    #               Lambda, you can process the <code>clientMetadata</code> value to enhance your
    #               workflow for your specific needs.</p>
    #
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html">
    #   Customizing user pool Workflows with Lambda Triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #
    #           <note>
    #               <p>When you use the ClientMetadata parameter, remember that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                       <p>Store the ClientMetadata value. This data is available only to Lambda
    #                           triggers that are assigned to a user pool to support custom workflows. If
    #                           your user pool configuration doesn't include triggers, the ClientMetadata
    #                           parameter serves no purpose.</p>
    #                   </li>
    #                  <li>
    #                       <p>Validate the ClientMetadata value.</p>
    #                   </li>
    #                  <li>
    #                       <p>Encrypt the ClientMetadata value. Don't use Amazon Cognito to provide sensitive
    #                           information.</p>
    #                   </li>
    #               </ul>
    #           </note>
    #
    #   @return [Hash<String, String>]
    #
    AdminCreateUserInput = ::Struct.new(
      :user_pool_id,
      :username,
      :user_attributes,
      :validation_data,
      :temporary_password,
      :force_alias_creation,
      :message_action,
      :desired_delivery_mediums,
      :client_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.force_alias_creation ||= false
      end

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::AdminCreateUserInput "\
          "user_pool_id=#{user_pool_id || 'nil'}, "\
          "username=\"[SENSITIVE]\", "\
          "user_attributes=#{user_attributes || 'nil'}, "\
          "validation_data=#{validation_data || 'nil'}, "\
          "temporary_password=\"[SENSITIVE]\", "\
          "force_alias_creation=#{force_alias_creation || 'nil'}, "\
          "message_action=#{message_action || 'nil'}, "\
          "desired_delivery_mediums=#{desired_delivery_mediums || 'nil'}, "\
          "client_metadata=#{client_metadata || 'nil'}>"
      end
    end

    # <p>Represents the response from the server to the request to create the user.</p>
    #
    # @!attribute user
    #   <p>The newly created user.</p>
    #
    #   @return [UserType]
    #
    AdminCreateUserOutput = ::Struct.new(
      :user,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the request to delete user attributes as an administrator.</p>
    #
    # @!attribute user_pool_id
    #   <p>The user pool ID for the user pool where you want to delete user attributes.</p>
    #
    #   @return [String]
    #
    # @!attribute username
    #   <p>The user name of the user from which you would like to delete attributes.</p>
    #
    #   @return [String]
    #
    # @!attribute user_attribute_names
    #   <p>An array of strings representing the user attribute names you want to delete.</p>
    #           <p>For custom attributes, you must prepend the <code>custom:</code> prefix to the
    #               attribute name.</p>
    #
    #   @return [Array<String>]
    #
    AdminDeleteUserAttributesInput = ::Struct.new(
      :user_pool_id,
      :username,
      :user_attribute_names,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::AdminDeleteUserAttributesInput "\
          "user_pool_id=#{user_pool_id || 'nil'}, "\
          "username=\"[SENSITIVE]\", "\
          "user_attribute_names=#{user_attribute_names || 'nil'}>"
      end
    end

    # <p>Represents the response received from the server for a request to delete user
    #             attributes.</p>
    #
    AdminDeleteUserAttributesOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the request to delete a user as an administrator.</p>
    #
    # @!attribute user_pool_id
    #   <p>The user pool ID for the user pool where you want to delete the user.</p>
    #
    #   @return [String]
    #
    # @!attribute username
    #   <p>The user name of the user you want to delete.</p>
    #
    #   @return [String]
    #
    AdminDeleteUserInput = ::Struct.new(
      :user_pool_id,
      :username,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::AdminDeleteUserInput "\
          "user_pool_id=#{user_pool_id || 'nil'}, "\
          "username=\"[SENSITIVE]\">"
      end
    end

    AdminDeleteUserOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_pool_id
    #   <p>The user pool ID for the user pool.</p>
    #
    #   @return [String]
    #
    # @!attribute user
    #   <p>The user to be disabled.</p>
    #
    #   @return [ProviderUserIdentifierType]
    #
    AdminDisableProviderForUserInput = ::Struct.new(
      :user_pool_id,
      :user,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AdminDisableProviderForUserOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the request to disable the user as an administrator.</p>
    #
    # @!attribute user_pool_id
    #   <p>The user pool ID for the user pool where you want to disable the user.</p>
    #
    #   @return [String]
    #
    # @!attribute username
    #   <p>The user name of the user you want to disable.</p>
    #
    #   @return [String]
    #
    AdminDisableUserInput = ::Struct.new(
      :user_pool_id,
      :username,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::AdminDisableUserInput "\
          "user_pool_id=#{user_pool_id || 'nil'}, "\
          "username=\"[SENSITIVE]\">"
      end
    end

    # <p>Represents the response received from the server to disable the user as an
    #             administrator.</p>
    #
    AdminDisableUserOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the request that enables the user as an administrator.</p>
    #
    # @!attribute user_pool_id
    #   <p>The user pool ID for the user pool where you want to enable the user.</p>
    #
    #   @return [String]
    #
    # @!attribute username
    #   <p>The user name of the user you want to enable.</p>
    #
    #   @return [String]
    #
    AdminEnableUserInput = ::Struct.new(
      :user_pool_id,
      :username,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::AdminEnableUserInput "\
          "user_pool_id=#{user_pool_id || 'nil'}, "\
          "username=\"[SENSITIVE]\">"
      end
    end

    # <p>Represents the response from the server for the request to enable a user as an
    #             administrator.</p>
    #
    AdminEnableUserOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Sends the forgot device request, as an administrator.</p>
    #
    # @!attribute user_pool_id
    #   <p>The user pool ID.</p>
    #
    #   @return [String]
    #
    # @!attribute username
    #   <p>The user name.</p>
    #
    #   @return [String]
    #
    # @!attribute device_key
    #   <p>The device key.</p>
    #
    #   @return [String]
    #
    AdminForgetDeviceInput = ::Struct.new(
      :user_pool_id,
      :username,
      :device_key,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::AdminForgetDeviceInput "\
          "user_pool_id=#{user_pool_id || 'nil'}, "\
          "username=\"[SENSITIVE]\", "\
          "device_key=#{device_key || 'nil'}>"
      end
    end

    AdminForgetDeviceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the request to get the device, as an administrator.</p>
    #
    # @!attribute device_key
    #   <p>The device key.</p>
    #
    #   @return [String]
    #
    # @!attribute user_pool_id
    #   <p>The user pool ID.</p>
    #
    #   @return [String]
    #
    # @!attribute username
    #   <p>The user name.</p>
    #
    #   @return [String]
    #
    AdminGetDeviceInput = ::Struct.new(
      :device_key,
      :user_pool_id,
      :username,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::AdminGetDeviceInput "\
          "device_key=#{device_key || 'nil'}, "\
          "user_pool_id=#{user_pool_id || 'nil'}, "\
          "username=\"[SENSITIVE]\">"
      end
    end

    # <p>Gets the device response, as an administrator.</p>
    #
    # @!attribute device
    #   <p>The device.</p>
    #
    #   @return [DeviceType]
    #
    AdminGetDeviceOutput = ::Struct.new(
      :device,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the request to get the specified user as an administrator.</p>
    #
    # @!attribute user_pool_id
    #   <p>The user pool ID for the user pool where you want to get information about the
    #               user.</p>
    #
    #   @return [String]
    #
    # @!attribute username
    #   <p>The user name of the user you want to retrieve.</p>
    #
    #   @return [String]
    #
    AdminGetUserInput = ::Struct.new(
      :user_pool_id,
      :username,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::AdminGetUserInput "\
          "user_pool_id=#{user_pool_id || 'nil'}, "\
          "username=\"[SENSITIVE]\">"
      end
    end

    # <p>Represents the response from the server from the request to get the specified user as
    #             an administrator.</p>
    #
    # @!attribute username
    #   <p>The user name of the user about whom you're receiving information.</p>
    #
    #   @return [String]
    #
    # @!attribute user_attributes
    #   <p>An array of name-value pairs representing user attributes.</p>
    #
    #   @return [Array<AttributeType>]
    #
    # @!attribute user_create_date
    #   <p>The date the user was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute user_last_modified_date
    #   <p>The date the user was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute enabled
    #   <p>Indicates that the status is <code>enabled</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute user_status
    #   <p>The user status. Can be one of the following:</p>
    #           <ul>
    #               <li>
    #                   <p>UNCONFIRMED - User has been created but not confirmed.</p>
    #               </li>
    #               <li>
    #                   <p>CONFIRMED - User has been confirmed.</p>
    #               </li>
    #               <li>
    #                   <p>ARCHIVED - User is no longer active.</p>
    #               </li>
    #               <li>
    #                   <p>UNKNOWN - User status isn't known.</p>
    #               </li>
    #               <li>
    #                   <p>RESET_REQUIRED - User is confirmed, but the user must request a code and reset
    #                       their password before they can sign in.</p>
    #               </li>
    #               <li>
    #                   <p>FORCE_CHANGE_PASSWORD - The user is confirmed and the user can sign in using a
    #                       temporary password, but on first sign-in, the user must change their password to
    #                       a new value before doing anything else. </p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["UNCONFIRMED", "CONFIRMED", "ARCHIVED", "COMPROMISED", "UNKNOWN", "RESET_REQUIRED", "FORCE_CHANGE_PASSWORD"]
    #
    #   @return [String]
    #
    # @!attribute mfa_options
    #   <p>
    #               <i>This response parameter is no longer supported.</i> It provides
    #               information only about SMS MFA configurations. It doesn't provide information about
    #               time-based one-time password (TOTP) software token MFA configurations. To look up
    #               information about either type of MFA configuration, use UserMFASettingList
    #               instead.</p>
    #
    #   @return [Array<MFAOptionType>]
    #
    # @!attribute preferred_mfa_setting
    #   <p>The user's preferred MFA setting.</p>
    #
    #   @return [String]
    #
    # @!attribute user_mfa_setting_list
    #   <p>The MFA options that are activated for the user. The possible values in this list are
    #                   <code>SMS_MFA</code> and <code>SOFTWARE_TOKEN_MFA</code>.</p>
    #
    #   @return [Array<String>]
    #
    AdminGetUserOutput = ::Struct.new(
      :username,
      :user_attributes,
      :user_create_date,
      :user_last_modified_date,
      :enabled,
      :user_status,
      :mfa_options,
      :preferred_mfa_setting,
      :user_mfa_setting_list,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.enabled ||= false
      end

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::AdminGetUserOutput "\
          "username=\"[SENSITIVE]\", "\
          "user_attributes=#{user_attributes || 'nil'}, "\
          "user_create_date=#{user_create_date || 'nil'}, "\
          "user_last_modified_date=#{user_last_modified_date || 'nil'}, "\
          "enabled=#{enabled || 'nil'}, "\
          "user_status=#{user_status || 'nil'}, "\
          "mfa_options=#{mfa_options || 'nil'}, "\
          "preferred_mfa_setting=#{preferred_mfa_setting || 'nil'}, "\
          "user_mfa_setting_list=#{user_mfa_setting_list || 'nil'}>"
      end
    end

    # <p>Initiates the authorization request, as an administrator.</p>
    #
    # @!attribute user_pool_id
    #   <p>The ID of the Amazon Cognito user pool.</p>
    #
    #   @return [String]
    #
    # @!attribute client_id
    #   <p>The app client ID.</p>
    #
    #   @return [String]
    #
    # @!attribute auth_flow
    #   <p>The authentication flow for this call to run. The API action will depend on this
    #               value. For example:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>REFRESH_TOKEN_AUTH</code> will take in a valid refresh token and return
    #                       new tokens.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>USER_SRP_AUTH</code> will take in <code>USERNAME</code> and
    #                           <code>SRP_A</code> and return the Secure Remote Password (SRP) protocol
    #                       variables to be used for next challenge execution.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ADMIN_USER_PASSWORD_AUTH</code> will take in <code>USERNAME</code> and
    #                           <code>PASSWORD</code> and return the next challenge or tokens.</p>
    #               </li>
    #            </ul>
    #           <p>Valid values include:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>USER_SRP_AUTH</code>: Authentication flow for the Secure Remote Password
    #                       (SRP) protocol.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>REFRESH_TOKEN_AUTH</code>/<code>REFRESH_TOKEN</code>: Authentication
    #                       flow for refreshing the access token and ID token by supplying a valid refresh
    #                       token.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>CUSTOM_AUTH</code>: Custom authentication flow.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ADMIN_NO_SRP_AUTH</code>: Non-SRP authentication flow; you can pass in
    #                       the USERNAME and PASSWORD directly if the flow is enabled for calling the app
    #                       client.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ADMIN_USER_PASSWORD_AUTH</code>: Admin-based user password
    #                       authentication. This replaces the <code>ADMIN_NO_SRP_AUTH</code> authentication
    #                       flow. In this flow, Amazon Cognito receives the password in the request instead of using
    #                       the SRP process to verify passwords.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["USER_SRP_AUTH", "REFRESH_TOKEN_AUTH", "REFRESH_TOKEN", "CUSTOM_AUTH", "ADMIN_NO_SRP_AUTH", "USER_PASSWORD_AUTH", "ADMIN_USER_PASSWORD_AUTH"]
    #
    #   @return [String]
    #
    # @!attribute auth_parameters
    #   <p>The authentication parameters. These are inputs corresponding to the
    #                   <code>AuthFlow</code> that you're invoking. The required values depend on the value
    #               of <code>AuthFlow</code>:</p>
    #           <ul>
    #               <li>
    #                   <p>For <code>USER_SRP_AUTH</code>: <code>USERNAME</code> (required),
    #                           <code>SRP_A</code> (required), <code>SECRET_HASH</code> (required if the app
    #                       client is configured with a client secret), <code>DEVICE_KEY</code>.</p>
    #               </li>
    #               <li>
    #                   <p>For <code>REFRESH_TOKEN_AUTH/REFRESH_TOKEN</code>: <code>REFRESH_TOKEN</code>
    #                       (required), <code>SECRET_HASH</code> (required if the app client is configured
    #                       with a client secret), <code>DEVICE_KEY</code>.</p>
    #               </li>
    #               <li>
    #                   <p>For <code>ADMIN_NO_SRP_AUTH</code>: <code>USERNAME</code> (required),
    #                           <code>SECRET_HASH</code> (if app client is configured with client secret),
    #                           <code>PASSWORD</code> (required), <code>DEVICE_KEY</code>.</p>
    #               </li>
    #               <li>
    #                   <p>For <code>CUSTOM_AUTH</code>: <code>USERNAME</code> (required),
    #                           <code>SECRET_HASH</code> (if app client is configured with client secret),
    #                           <code>DEVICE_KEY</code>. To start the authentication flow with password
    #                       verification, include <code>ChallengeName: SRP_A</code> and <code>SRP_A: (The
    #                           SRP_A Value)</code>.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for certain custom
    #               workflows that this action triggers.</p>
    #           <p>You create custom workflows by assigning Lambda functions to user pool triggers.
    #               When you use the AdminInitiateAuth API action, Amazon Cognito invokes the Lambda functions that
    #               are specified for various triggers. The ClientMetadata value is passed as input to the
    #               functions for only the following triggers:</p>
    #           <ul>
    #               <li>
    #                   <p>Pre signup</p>
    #               </li>
    #               <li>
    #                   <p>Pre authentication</p>
    #               </li>
    #               <li>
    #                   <p>User migration</p>
    #               </li>
    #            </ul>
    #           <p>When Amazon Cognito invokes the functions for these triggers, it passes a JSON payload, which
    #               the function receives as input. This payload contains a <code>validationData</code>
    #               attribute, which provides the data that you assigned to the ClientMetadata parameter in
    #               your AdminInitiateAuth request. In your function code in Lambda, you can process the
    #                   <code>validationData</code> value to enhance your workflow for your specific
    #               needs.</p>
    #           <p>When you use the AdminInitiateAuth API action, Amazon Cognito also invokes the functions for
    #               the following triggers, but it doesn't provide the ClientMetadata value as input:</p>
    #           <ul>
    #               <li>
    #                   <p>Post authentication</p>
    #               </li>
    #               <li>
    #                   <p>Custom message</p>
    #               </li>
    #               <li>
    #                   <p>Pre token generation</p>
    #               </li>
    #               <li>
    #                   <p>Create auth challenge</p>
    #               </li>
    #               <li>
    #                   <p>Define auth challenge</p>
    #               </li>
    #               <li>
    #                   <p>Verify auth challenge</p>
    #               </li>
    #            </ul>
    #
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html">
    #   Customizing user pool Workflows with Lambda Triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #
    #           <note>
    #               <p>When you use the ClientMetadata parameter, remember that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                       <p>Store the ClientMetadata value. This data is available only to Lambda
    #                           triggers that are assigned to a user pool to support custom workflows. If
    #                           your user pool configuration doesn't include triggers, the ClientMetadata
    #                           parameter serves no purpose.</p>
    #                   </li>
    #                  <li>
    #                       <p>Validate the ClientMetadata value.</p>
    #                   </li>
    #                  <li>
    #                       <p>Encrypt the ClientMetadata value. Don't use Amazon Cognito to provide sensitive
    #                           information.</p>
    #                   </li>
    #               </ul>
    #           </note>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute analytics_metadata
    #   <p>The analytics metadata for collecting Amazon Pinpoint metrics for
    #                   <code>AdminInitiateAuth</code> calls.</p>
    #
    #   @return [AnalyticsMetadataType]
    #
    # @!attribute context_data
    #   <p>Contextual data about your user session, such as the device fingerprint, IP address, or location. Amazon Cognito advanced
    #   security evaluates the risk of an authentication event based on the context that your app generates and passes to Amazon Cognito
    #   when it makes API requests.</p>
    #
    #   @return [ContextDataType]
    #
    AdminInitiateAuthInput = ::Struct.new(
      :user_pool_id,
      :client_id,
      :auth_flow,
      :auth_parameters,
      :client_metadata,
      :analytics_metadata,
      :context_data,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::AdminInitiateAuthInput "\
          "user_pool_id=#{user_pool_id || 'nil'}, "\
          "client_id=\"[SENSITIVE]\", "\
          "auth_flow=#{auth_flow || 'nil'}, "\
          "auth_parameters=\"[SENSITIVE]\", "\
          "client_metadata=#{client_metadata || 'nil'}, "\
          "analytics_metadata=#{analytics_metadata || 'nil'}, "\
          "context_data=#{context_data || 'nil'}>"
      end
    end

    # <p>Initiates the authentication response, as an administrator.</p>
    #
    # @!attribute challenge_name
    #   <p>The name of the challenge that you're responding to with this call. This is returned
    #               in the <code>AdminInitiateAuth</code> response if you must pass another
    #               challenge.</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>MFA_SETUP</code>: If MFA is required, users who don't have at least one
    #                       of the MFA methods set up are presented with an <code>MFA_SETUP</code>
    #                       challenge. The user must set up at least one MFA type to continue to
    #                       authenticate.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>SELECT_MFA_TYPE</code>: Selects the MFA type. Valid MFA options are
    #                           <code>SMS_MFA</code> for text SMS MFA, and <code>SOFTWARE_TOKEN_MFA</code>
    #                       for time-based one-time password (TOTP) software token MFA.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>SMS_MFA</code>: Next challenge is to supply an
    #                       <code>SMS_MFA_CODE</code>, delivered via SMS.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>PASSWORD_VERIFIER</code>: Next challenge is to supply
    #                           <code>PASSWORD_CLAIM_SIGNATURE</code>,
    #                           <code>PASSWORD_CLAIM_SECRET_BLOCK</code>, and <code>TIMESTAMP</code> after
    #                       the client-side SRP calculations.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>CUSTOM_CHALLENGE</code>: This is returned if your custom authentication
    #                       flow determines that the user should pass another challenge before tokens are
    #                       issued.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>DEVICE_SRP_AUTH</code>: If device tracking was activated in your user
    #                       pool and the previous challenges were passed, this challenge is returned so that
    #                       Amazon Cognito can start tracking this device.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>DEVICE_PASSWORD_VERIFIER</code>: Similar to
    #                           <code>PASSWORD_VERIFIER</code>, but for devices only.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ADMIN_NO_SRP_AUTH</code>: This is returned if you must authenticate with
    #                           <code>USERNAME</code> and <code>PASSWORD</code> directly. An app client must
    #                       be enabled to use this flow.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>NEW_PASSWORD_REQUIRED</code>: For users who are required to change their
    #                       passwords after successful first login. Respond to this challenge with
    #                           <code>NEW_PASSWORD</code> and any required attributes that Amazon Cognito returned in
    #                       the <code>requiredAttributes</code> parameter. You can also set values for
    #                       attributes that aren't required by your user pool and that your app client can
    #                       write. For more information, see <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AdminRespondToAuthChallenge.html">AdminRespondToAuthChallenge</a>.</p>
    #
    #                  <note>
    #                     <p>In a <code>NEW_PASSWORD_REQUIRED</code> challenge response, you can't modify a required attribute that already has a value.
    #   In <code>AdminRespondToAuthChallenge</code>, set a value for any keys that Amazon Cognito returned in the <code>requiredAttributes</code> parameter,
    #   then use the <code>AdminUpdateUserAttributes</code> API operation to modify the value of any additional attributes.</p>
    #                  </note>
    #
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>MFA_SETUP</code>: For users who are required to set up an MFA factor
    #                       before they can sign in. The MFA types activated for the user pool will be
    #                       listed in the challenge parameters <code>MFA_CAN_SETUP</code> value. </p>
    #                   <p> To set up software token MFA, use the session returned here from
    #                           <code>InitiateAuth</code> as an input to
    #                       <code>AssociateSoftwareToken</code>, and use the session returned by
    #                           <code>VerifySoftwareToken</code> as an input to
    #                           <code>RespondToAuthChallenge</code> with challenge name
    #                           <code>MFA_SETUP</code> to complete sign-in. To set up SMS MFA, users will
    #                       need help from an administrator to add a phone number to their account and then
    #                       call <code>InitiateAuth</code> again to restart sign-in.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SMS_MFA", "SOFTWARE_TOKEN_MFA", "SELECT_MFA_TYPE", "MFA_SETUP", "PASSWORD_VERIFIER", "CUSTOM_CHALLENGE", "DEVICE_SRP_AUTH", "DEVICE_PASSWORD_VERIFIER", "ADMIN_NO_SRP_AUTH", "NEW_PASSWORD_REQUIRED"]
    #
    #   @return [String]
    #
    # @!attribute session
    #   <p>The session that should be passed both ways in challenge-response calls to the
    #               service. If <code>AdminInitiateAuth</code> or <code>AdminRespondToAuthChallenge</code>
    #               API call determines that the caller must pass another challenge, they return a session
    #               with other challenge parameters. This session should be passed as it is to the next
    #                   <code>AdminRespondToAuthChallenge</code> API call.</p>
    #
    #   @return [String]
    #
    # @!attribute challenge_parameters
    #   <p>The challenge parameters. These are returned to you in the
    #                   <code>AdminInitiateAuth</code> response if you must pass another challenge. The
    #               responses in this parameter should be used to compute inputs to the next call
    #                   (<code>AdminRespondToAuthChallenge</code>).</p>
    #           <p>All challenges require <code>USERNAME</code> and <code>SECRET_HASH</code> (if
    #               applicable).</p>
    #           <p>The value of the <code>USER_ID_FOR_SRP</code> attribute is the user's actual username,
    #               not an alias (such as email address or phone number), even if you specified an alias in
    #               your call to <code>AdminInitiateAuth</code>. This happens because, in the
    #                   <code>AdminRespondToAuthChallenge</code> API <code>ChallengeResponses</code>, the
    #                   <code>USERNAME</code> attribute can't be an alias.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute authentication_result
    #   <p>The result of the authentication response. This is only returned if the caller doesn't
    #               need to pass another challenge. If the caller does need to pass another challenge before
    #               it gets tokens, <code>ChallengeName</code>, <code>ChallengeParameters</code>, and
    #                   <code>Session</code> are returned.</p>
    #
    #   @return [AuthenticationResultType]
    #
    AdminInitiateAuthOutput = ::Struct.new(
      :challenge_name,
      :session,
      :challenge_parameters,
      :authentication_result,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_pool_id
    #   <p>The user pool ID for the user pool.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_user
    #   <p>The existing user in the user pool that you want to assign to the external IdP user
    #               account. This user can be a native (Username + Password) Amazon Cognito user pools user or a
    #               federated user (for example, a SAML or Facebook user). If the user doesn't exist, Amazon Cognito
    #               generates an exception. Amazon Cognito returns this user when the new user (with the linked IdP
    #               attribute) signs in.</p>
    #           <p>For a native username + password user, the <code>ProviderAttributeValue</code> for the
    #                   <code>DestinationUser</code> should be the username in the user pool. For a
    #               federated user, it should be the provider-specific <code>user_id</code>.</p>
    #           <p>The <code>ProviderAttributeName</code> of the <code>DestinationUser</code> is
    #               ignored.</p>
    #           <p>The <code>ProviderName</code> should be set to <code>Cognito</code> for users in
    #               Cognito user pools.</p>
    #           <important>
    #               <p>All attributes in the DestinationUser profile must be mutable. If you have
    #                   assigned the user any immutable custom attributes, the operation won't
    #                   succeed.</p>
    #           </important>
    #
    #   @return [ProviderUserIdentifierType]
    #
    # @!attribute source_user
    #   <p>An external IdP account for a user who doesn't exist yet in the user pool. This user
    #               must be a federated user (for example, a SAML or Facebook user), not another native
    #               user.</p>
    #           <p>If the <code>SourceUser</code> is using a federated social IdP, such as Facebook,
    #               Google, or Login with Amazon, you must set the <code>ProviderAttributeName</code> to
    #                   <code>Cognito_Subject</code>. For social IdPs, the <code>ProviderName</code> will be
    #                   <code>Facebook</code>, <code>Google</code>, or <code>LoginWithAmazon</code>, and
    #               Amazon Cognito will automatically parse the Facebook, Google, and Login with Amazon tokens for
    #                   <code>id</code>, <code>sub</code>, and <code>user_id</code>, respectively. The
    #                   <code>ProviderAttributeValue</code> for the user must be the same value as the
    #                   <code>id</code>, <code>sub</code>, or <code>user_id</code> value found in the social
    #               IdP token.</p>
    #           <p></p>
    #           <p>For SAML, the <code>ProviderAttributeName</code> can be any value that matches a claim
    #               in the SAML assertion. If you want to link SAML users based on the subject of the SAML
    #               assertion, you should map the subject to a claim through the SAML IdP and submit that
    #               claim name as the <code>ProviderAttributeName</code>. If you set
    #                   <code>ProviderAttributeName</code> to <code>Cognito_Subject</code>, Amazon Cognito will
    #               automatically parse the default unique identifier found in the subject from the SAML
    #               token.</p>
    #
    #   @return [ProviderUserIdentifierType]
    #
    AdminLinkProviderForUserInput = ::Struct.new(
      :user_pool_id,
      :destination_user,
      :source_user,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AdminLinkProviderForUserOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the request to list devices, as an administrator.</p>
    #
    # @!attribute user_pool_id
    #   <p>The user pool ID.</p>
    #
    #   @return [String]
    #
    # @!attribute username
    #   <p>The user name.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The limit of the devices request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute pagination_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    AdminListDevicesInput = ::Struct.new(
      :user_pool_id,
      :username,
      :limit,
      :pagination_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::AdminListDevicesInput "\
          "user_pool_id=#{user_pool_id || 'nil'}, "\
          "username=\"[SENSITIVE]\", "\
          "limit=#{limit || 'nil'}, "\
          "pagination_token=#{pagination_token || 'nil'}>"
      end
    end

    # <p>Lists the device's response, as an administrator.</p>
    #
    # @!attribute devices
    #   <p>The devices in the list of devices response.</p>
    #
    #   @return [Array<DeviceType>]
    #
    # @!attribute pagination_token
    #   <p>The pagination token.</p>
    #
    #   @return [String]
    #
    AdminListDevicesOutput = ::Struct.new(
      :devices,
      :pagination_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute username
    #   <p>The username for the user.</p>
    #
    #   @return [String]
    #
    # @!attribute user_pool_id
    #   <p>The user pool ID for the user pool.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The limit of the request to list groups.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can be
    #               used to return the next set of items in the list.</p>
    #
    #   @return [String]
    #
    AdminListGroupsForUserInput = ::Struct.new(
      :username,
      :user_pool_id,
      :limit,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::AdminListGroupsForUserInput "\
          "username=\"[SENSITIVE]\", "\
          "user_pool_id=#{user_pool_id || 'nil'}, "\
          "limit=#{limit || 'nil'}, "\
          "next_token=#{next_token || 'nil'}>"
      end
    end

    # @!attribute groups
    #   <p>The groups that the user belongs to.</p>
    #
    #   @return [Array<GroupType>]
    #
    # @!attribute next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can be
    #               used to return the next set of items in the list.</p>
    #
    #   @return [String]
    #
    AdminListGroupsForUserOutput = ::Struct.new(
      :groups,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_pool_id
    #   <p>The user pool ID.</p>
    #
    #   @return [String]
    #
    # @!attribute username
    #   <p>The user pool username or an alias.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of authentication events to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A pagination token.</p>
    #
    #   @return [String]
    #
    AdminListUserAuthEventsInput = ::Struct.new(
      :user_pool_id,
      :username,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::AdminListUserAuthEventsInput "\
          "user_pool_id=#{user_pool_id || 'nil'}, "\
          "username=\"[SENSITIVE]\", "\
          "max_results=#{max_results || 'nil'}, "\
          "next_token=#{next_token || 'nil'}>"
      end
    end

    # @!attribute auth_events
    #   <p>The response object. It includes the <code>EventID</code>, <code>EventType</code>,
    #                   <code>CreationDate</code>, <code>EventRisk</code>, and
    #               <code>EventResponse</code>.</p>
    #
    #   @return [Array<AuthEventType>]
    #
    # @!attribute next_token
    #   <p>A pagination token.</p>
    #
    #   @return [String]
    #
    AdminListUserAuthEventsOutput = ::Struct.new(
      :auth_events,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_pool_id
    #   <p>The user pool ID for the user pool.</p>
    #
    #   @return [String]
    #
    # @!attribute username
    #   <p>The username for the user.</p>
    #
    #   @return [String]
    #
    # @!attribute group_name
    #   <p>The group name.</p>
    #
    #   @return [String]
    #
    AdminRemoveUserFromGroupInput = ::Struct.new(
      :user_pool_id,
      :username,
      :group_name,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::AdminRemoveUserFromGroupInput "\
          "user_pool_id=#{user_pool_id || 'nil'}, "\
          "username=\"[SENSITIVE]\", "\
          "group_name=#{group_name || 'nil'}>"
      end
    end

    AdminRemoveUserFromGroupOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the request to reset a user's password as an administrator.</p>
    #
    # @!attribute user_pool_id
    #   <p>The user pool ID for the user pool where you want to reset the user's password.</p>
    #
    #   @return [String]
    #
    # @!attribute username
    #   <p>The user name of the user whose password you want to reset.</p>
    #
    #   @return [String]
    #
    # @!attribute client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for any custom workflows
    #               that this action triggers.</p>
    #           <p>You create custom workflows by assigning Lambda functions to user pool
    #               triggers. When you use the AdminResetUserPassword API action, Amazon Cognito invokes the function
    #               that is assigned to the <i>custom message</i> trigger. When Amazon Cognito invokes
    #               this function, it passes a JSON payload, which the function receives as input. This
    #               payload contains a <code>clientMetadata</code> attribute, which provides the data that
    #               you assigned to the ClientMetadata parameter in your AdminResetUserPassword request. In
    #               your function code in Lambda, you can process the
    #                   <code>clientMetadata</code> value to enhance your workflow for your specific needs. </p>
    #
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html">
    #   Customizing user pool Workflows with Lambda Triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #
    #           <note>
    #               <p>When you use the ClientMetadata parameter, remember that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                       <p>Store the ClientMetadata value. This data is available only to Lambda
    #                           triggers that are assigned to a user pool to support custom workflows. If
    #                           your user pool configuration doesn't include triggers, the ClientMetadata
    #                           parameter serves no purpose.</p>
    #                   </li>
    #                  <li>
    #                       <p>Validate the ClientMetadata value.</p>
    #                   </li>
    #                  <li>
    #                       <p>Encrypt the ClientMetadata value. Don't use Amazon Cognito to provide sensitive
    #                           information.</p>
    #                   </li>
    #               </ul>
    #           </note>
    #
    #   @return [Hash<String, String>]
    #
    AdminResetUserPasswordInput = ::Struct.new(
      :user_pool_id,
      :username,
      :client_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::AdminResetUserPasswordInput "\
          "user_pool_id=#{user_pool_id || 'nil'}, "\
          "username=\"[SENSITIVE]\", "\
          "client_metadata=#{client_metadata || 'nil'}>"
      end
    end

    # <p>Represents the response from the server to reset a user password as an
    #             administrator.</p>
    #
    AdminResetUserPasswordOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request to respond to the authentication challenge, as an administrator.</p>
    #
    # @!attribute user_pool_id
    #   <p>The ID of the Amazon Cognito user pool.</p>
    #
    #   @return [String]
    #
    # @!attribute client_id
    #   <p>The app client ID.</p>
    #
    #   @return [String]
    #
    # @!attribute challenge_name
    #   <p>The challenge name. For more information, see <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AdminInitiateAuth.html">AdminInitiateAuth</a>.</p>
    #
    #   Enum, one of: ["SMS_MFA", "SOFTWARE_TOKEN_MFA", "SELECT_MFA_TYPE", "MFA_SETUP", "PASSWORD_VERIFIER", "CUSTOM_CHALLENGE", "DEVICE_SRP_AUTH", "DEVICE_PASSWORD_VERIFIER", "ADMIN_NO_SRP_AUTH", "NEW_PASSWORD_REQUIRED"]
    #
    #   @return [String]
    #
    # @!attribute challenge_responses
    #   <p>The challenge responses. These are inputs corresponding to the value of
    #                   <code>ChallengeName</code>, for example:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>SMS_MFA</code>: <code>SMS_MFA_CODE</code>, <code>USERNAME</code>,
    #                           <code>SECRET_HASH</code> (if app client is configured with client
    #                       secret).</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>PASSWORD_VERIFIER</code>: <code>PASSWORD_CLAIM_SIGNATURE</code>,
    #                           <code>PASSWORD_CLAIM_SECRET_BLOCK</code>, <code>TIMESTAMP</code>,
    #                           <code>USERNAME</code>, <code>SECRET_HASH</code> (if app client is configured
    #                       with client secret).</p>
    #                   <note>
    #                       <p>
    #                        <code>PASSWORD_VERIFIER</code> requires <code>DEVICE_KEY</code> when
    #                           signing in with a remembered device.</p>
    #                   </note>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>ADMIN_NO_SRP_AUTH</code>: <code>PASSWORD</code>, <code>USERNAME</code>,
    #                           <code>SECRET_HASH</code> (if app client is configured with client secret).
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>NEW_PASSWORD_REQUIRED</code>: <code>NEW_PASSWORD</code>,
    #                           <code>USERNAME</code>, <code>SECRET_HASH</code> (if app client is configured
    #                       with client secret). To set any required attributes that Amazon Cognito returned as
    #                           <code>requiredAttributes</code> in the <code>AdminInitiateAuth</code>
    #                       response, add a <code>userAttributes.<i>attributename</i>
    #                     </code>
    #                       parameter. This parameter can also set values for writable attributes that
    #                       aren't required by your user pool.</p>
    #
    #                  <note>
    #                     <p>In a <code>NEW_PASSWORD_REQUIRED</code> challenge response, you can't modify a required attribute that already has a value.
    #   In <code>AdminRespondToAuthChallenge</code>, set a value for any keys that Amazon Cognito returned in the <code>requiredAttributes</code> parameter,
    #   then use the <code>AdminUpdateUserAttributes</code> API operation to modify the value of any additional attributes.</p>
    #                  </note>
    #
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>MFA_SETUP</code> requires <code>USERNAME</code>, plus you must use the
    #                       session value returned by <code>VerifySoftwareToken</code> in the
    #                           <code>Session</code> parameter.</p>
    #               </li>
    #            </ul>
    #           <p>The value of the <code>USERNAME</code> attribute must be the user's actual username,
    #               not an alias (such as an email address or phone number). To make this simpler, the
    #                   <code>AdminInitiateAuth</code> response includes the actual username value in the
    #                   <code>USERNAMEUSER_ID_FOR_SRP</code> attribute. This happens even if you specified
    #               an alias in your call to <code>AdminInitiateAuth</code>.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute session
    #   <p>The session that should be passed both ways in challenge-response calls to the
    #               service. If an <code>InitiateAuth</code> or <code>RespondToAuthChallenge</code> API call
    #               determines that the caller must pass another challenge, it returns a session with other
    #               challenge parameters. This session should be passed as it is to the next
    #                   <code>RespondToAuthChallenge</code> API call.</p>
    #
    #   @return [String]
    #
    # @!attribute analytics_metadata
    #   <p>The analytics metadata for collecting Amazon Pinpoint metrics for
    #                   <code>AdminRespondToAuthChallenge</code> calls.</p>
    #
    #   @return [AnalyticsMetadataType]
    #
    # @!attribute context_data
    #   <p>Contextual data about your user session, such as the device fingerprint, IP address, or location. Amazon Cognito advanced
    #   security evaluates the risk of an authentication event based on the context that your app generates and passes to Amazon Cognito
    #   when it makes API requests.</p>
    #
    #   @return [ContextDataType]
    #
    # @!attribute client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for any custom workflows
    #               that this action triggers.</p>
    #           <p>You create custom workflows by assigning Lambda functions to user pool triggers.
    #               When you use the AdminRespondToAuthChallenge API action, Amazon Cognito invokes any functions
    #               that you have assigned to the following triggers: </p>
    #           <ul>
    #               <li>
    #                   <p>pre sign-up</p>
    #               </li>
    #               <li>
    #                   <p>custom message</p>
    #               </li>
    #               <li>
    #                   <p>post authentication</p>
    #               </li>
    #               <li>
    #                   <p>user migration</p>
    #               </li>
    #               <li>
    #                   <p>pre token generation</p>
    #               </li>
    #               <li>
    #                   <p>define auth challenge</p>
    #               </li>
    #               <li>
    #                   <p>create auth challenge</p>
    #               </li>
    #               <li>
    #                   <p>verify auth challenge response</p>
    #               </li>
    #            </ul>
    #           <p>When Amazon Cognito invokes any of these functions, it passes a JSON payload, which the
    #               function receives as input. This payload contains a <code>clientMetadata</code>
    #               attribute that provides the data that you assigned to the ClientMetadata parameter in
    #               your AdminRespondToAuthChallenge request. In your function code in Lambda, you can
    #               process the <code>clientMetadata</code> value to enhance your workflow for your specific
    #               needs.</p>
    #
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html">
    #   Customizing user pool Workflows with Lambda Triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #
    #           <note>
    #               <p>When you use the ClientMetadata parameter, remember that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                       <p>Store the ClientMetadata value. This data is available only to Lambda
    #                           triggers that are assigned to a user pool to support custom workflows. If
    #                           your user pool configuration doesn't include triggers, the ClientMetadata
    #                           parameter serves no purpose.</p>
    #                   </li>
    #                  <li>
    #                       <p>Validate the ClientMetadata value.</p>
    #                   </li>
    #                  <li>
    #                       <p>Encrypt the ClientMetadata value. Don't use Amazon Cognito to provide sensitive
    #                           information.</p>
    #                   </li>
    #               </ul>
    #           </note>
    #
    #   @return [Hash<String, String>]
    #
    AdminRespondToAuthChallengeInput = ::Struct.new(
      :user_pool_id,
      :client_id,
      :challenge_name,
      :challenge_responses,
      :session,
      :analytics_metadata,
      :context_data,
      :client_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::AdminRespondToAuthChallengeInput "\
          "user_pool_id=#{user_pool_id || 'nil'}, "\
          "client_id=\"[SENSITIVE]\", "\
          "challenge_name=#{challenge_name || 'nil'}, "\
          "challenge_responses=#{challenge_responses || 'nil'}, "\
          "session=#{session || 'nil'}, "\
          "analytics_metadata=#{analytics_metadata || 'nil'}, "\
          "context_data=#{context_data || 'nil'}, "\
          "client_metadata=#{client_metadata || 'nil'}>"
      end
    end

    # <p>Responds to the authentication challenge, as an administrator.</p>
    #
    # @!attribute challenge_name
    #   <p>The name of the challenge. For more information, see <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AdminInitiateAuth.html">AdminInitiateAuth</a>.</p>
    #
    #   Enum, one of: ["SMS_MFA", "SOFTWARE_TOKEN_MFA", "SELECT_MFA_TYPE", "MFA_SETUP", "PASSWORD_VERIFIER", "CUSTOM_CHALLENGE", "DEVICE_SRP_AUTH", "DEVICE_PASSWORD_VERIFIER", "ADMIN_NO_SRP_AUTH", "NEW_PASSWORD_REQUIRED"]
    #
    #   @return [String]
    #
    # @!attribute session
    #   <p>The session that should be passed both ways in challenge-response calls to the
    #               service. If the caller must pass another challenge, they return a session with other
    #               challenge parameters. This session should be passed as it is to the next
    #                   <code>RespondToAuthChallenge</code> API call.</p>
    #
    #   @return [String]
    #
    # @!attribute challenge_parameters
    #   <p>The challenge parameters. For more information, see <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AdminInitiateAuth.html">AdminInitiateAuth</a>.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute authentication_result
    #   <p>The result returned by the server in response to the authentication request.</p>
    #
    #   @return [AuthenticationResultType]
    #
    AdminRespondToAuthChallengeOutput = ::Struct.new(
      :challenge_name,
      :session,
      :challenge_parameters,
      :authentication_result,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute sms_mfa_settings
    #   <p>The SMS text message MFA settings.</p>
    #
    #   @return [SMSMfaSettingsType]
    #
    # @!attribute software_token_mfa_settings
    #   <p>The time-based one-time password software token MFA settings.</p>
    #
    #   @return [SoftwareTokenMfaSettingsType]
    #
    # @!attribute username
    #   <p>The user pool username or alias.</p>
    #
    #   @return [String]
    #
    # @!attribute user_pool_id
    #   <p>The user pool ID.</p>
    #
    #   @return [String]
    #
    AdminSetUserMFAPreferenceInput = ::Struct.new(
      :sms_mfa_settings,
      :software_token_mfa_settings,
      :username,
      :user_pool_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::AdminSetUserMFAPreferenceInput "\
          "sms_mfa_settings=#{sms_mfa_settings || 'nil'}, "\
          "software_token_mfa_settings=#{software_token_mfa_settings || 'nil'}, "\
          "username=\"[SENSITIVE]\", "\
          "user_pool_id=#{user_pool_id || 'nil'}>"
      end
    end

    AdminSetUserMFAPreferenceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_pool_id
    #   <p>The user pool ID for the user pool where you want to set the user's password.</p>
    #
    #   @return [String]
    #
    # @!attribute username
    #   <p>The user name of the user whose password you want to set.</p>
    #
    #   @return [String]
    #
    # @!attribute password
    #   <p>The password for the user.</p>
    #
    #   @return [String]
    #
    # @!attribute permanent
    #   <p>
    #               <code>True</code> if the password is permanent, <code>False</code> if it is
    #               temporary.</p>
    #
    #   @return [Boolean]
    #
    AdminSetUserPasswordInput = ::Struct.new(
      :user_pool_id,
      :username,
      :password,
      :permanent,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.permanent ||= false
      end

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::AdminSetUserPasswordInput "\
          "user_pool_id=#{user_pool_id || 'nil'}, "\
          "username=\"[SENSITIVE]\", "\
          "password=\"[SENSITIVE]\", "\
          "permanent=#{permanent || 'nil'}>"
      end
    end

    AdminSetUserPasswordOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You can use this parameter to set an MFA configuration that uses the SMS delivery
    #             medium.</p>
    #
    # @!attribute user_pool_id
    #   <p>The ID of the user pool that contains the user whose options you're setting.</p>
    #
    #   @return [String]
    #
    # @!attribute username
    #   <p>The user name of the user whose options you're setting.</p>
    #
    #   @return [String]
    #
    # @!attribute mfa_options
    #   <p>You can use this parameter only to set an SMS configuration that uses SMS for
    #               delivery.</p>
    #
    #   @return [Array<MFAOptionType>]
    #
    AdminSetUserSettingsInput = ::Struct.new(
      :user_pool_id,
      :username,
      :mfa_options,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::AdminSetUserSettingsInput "\
          "user_pool_id=#{user_pool_id || 'nil'}, "\
          "username=\"[SENSITIVE]\", "\
          "mfa_options=#{mfa_options || 'nil'}>"
      end
    end

    # <p>Represents the response from the server to set user settings as an
    #             administrator.</p>
    #
    AdminSetUserSettingsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_pool_id
    #   <p>The user pool ID.</p>
    #
    #   @return [String]
    #
    # @!attribute username
    #   <p>The user pool username.</p>
    #
    #   @return [String]
    #
    # @!attribute event_id
    #   <p>The authentication event ID.</p>
    #
    #   @return [String]
    #
    # @!attribute feedback_value
    #   <p>The authentication event feedback value.</p>
    #
    #   Enum, one of: ["Valid", "Invalid"]
    #
    #   @return [String]
    #
    AdminUpdateAuthEventFeedbackInput = ::Struct.new(
      :user_pool_id,
      :username,
      :event_id,
      :feedback_value,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::AdminUpdateAuthEventFeedbackInput "\
          "user_pool_id=#{user_pool_id || 'nil'}, "\
          "username=\"[SENSITIVE]\", "\
          "event_id=#{event_id || 'nil'}, "\
          "feedback_value=#{feedback_value || 'nil'}>"
      end
    end

    AdminUpdateAuthEventFeedbackOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request to update the device status, as an administrator.</p>
    #
    # @!attribute user_pool_id
    #   <p>The user pool ID.</p>
    #
    #   @return [String]
    #
    # @!attribute username
    #   <p>The user name.</p>
    #
    #   @return [String]
    #
    # @!attribute device_key
    #   <p>The device key.</p>
    #
    #   @return [String]
    #
    # @!attribute device_remembered_status
    #   <p>The status indicating whether a device has been remembered or not.</p>
    #
    #   Enum, one of: ["remembered", "not_remembered"]
    #
    #   @return [String]
    #
    AdminUpdateDeviceStatusInput = ::Struct.new(
      :user_pool_id,
      :username,
      :device_key,
      :device_remembered_status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::AdminUpdateDeviceStatusInput "\
          "user_pool_id=#{user_pool_id || 'nil'}, "\
          "username=\"[SENSITIVE]\", "\
          "device_key=#{device_key || 'nil'}, "\
          "device_remembered_status=#{device_remembered_status || 'nil'}>"
      end
    end

    # <p>The status response to the request to update the device, as an administrator.</p>
    #
    AdminUpdateDeviceStatusOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the request to update the user's attributes as an administrator.</p>
    #
    # @!attribute user_pool_id
    #   <p>The user pool ID for the user pool where you want to update user attributes.</p>
    #
    #   @return [String]
    #
    # @!attribute username
    #   <p>The user name of the user for whom you want to update user attributes.</p>
    #
    #   @return [String]
    #
    # @!attribute user_attributes
    #   <p>An array of name-value pairs representing user attributes.</p>
    #           <p>For custom attributes, you must prepend the <code>custom:</code> prefix to the
    #               attribute name.</p>
    #           <p>If your user pool requires verification before Amazon Cognito updates an attribute value that
    #               you specify in this request, Amazon Cognito doesn’t immediately update the value of that
    #               attribute. After your user receives and responds to a verification message to verify the
    #               new value, Amazon Cognito updates the attribute value. Your user can sign in and receive messages
    #               with the original attribute value until they verify the new value.</p>
    #           <p>To update the value of an attribute that requires verification in the same API
    #               request, include the <code>email_verified</code> or <code>phone_number_verified</code>
    #               attribute, with a value of <code>true</code>. If you set the <code>email_verified</code>
    #               or <code>phone_number_verified</code> value for an <code>email</code> or
    #                   <code>phone_number</code> attribute that requires verification to <code>true</code>,
    #               Amazon Cognito doesn’t send a verification message to your user.</p>
    #
    #   @return [Array<AttributeType>]
    #
    # @!attribute client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for any custom workflows
    #               that this action triggers.</p>
    #           <p>You create custom workflows by assigning Lambda functions to user pool
    #               triggers. When you use the AdminUpdateUserAttributes API action, Amazon Cognito invokes the
    #               function that is assigned to the <i>custom message</i> trigger. When Amazon Cognito
    #               invokes this function, it passes a JSON payload, which the function receives as input.
    #               This payload contains a <code>clientMetadata</code> attribute, which provides the data
    #               that you assigned to the ClientMetadata parameter in your AdminUpdateUserAttributes
    #               request. In your function code in Lambda, you can process the
    #                   <code>clientMetadata</code> value to enhance your workflow for your specific
    #               needs.</p>
    #
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html">
    #   Customizing user pool Workflows with Lambda Triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #
    #           <note>
    #               <p>When you use the ClientMetadata parameter, remember that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                       <p>Store the ClientMetadata value. This data is available only to Lambda
    #                           triggers that are assigned to a user pool to support custom workflows. If
    #                           your user pool configuration doesn't include triggers, the ClientMetadata
    #                           parameter serves no purpose.</p>
    #                   </li>
    #                  <li>
    #                       <p>Validate the ClientMetadata value.</p>
    #                   </li>
    #                  <li>
    #                       <p>Encrypt the ClientMetadata value. Don't use Amazon Cognito to provide sensitive
    #                           information.</p>
    #                   </li>
    #               </ul>
    #           </note>
    #
    #   @return [Hash<String, String>]
    #
    AdminUpdateUserAttributesInput = ::Struct.new(
      :user_pool_id,
      :username,
      :user_attributes,
      :client_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::AdminUpdateUserAttributesInput "\
          "user_pool_id=#{user_pool_id || 'nil'}, "\
          "username=\"[SENSITIVE]\", "\
          "user_attributes=#{user_attributes || 'nil'}, "\
          "client_metadata=#{client_metadata || 'nil'}>"
      end
    end

    # <p>Represents the response from the server for the request to update user attributes as
    #             an administrator.</p>
    #
    AdminUpdateUserAttributesOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request to sign out of all devices, as an administrator.</p>
    #
    # @!attribute user_pool_id
    #   <p>The user pool ID.</p>
    #
    #   @return [String]
    #
    # @!attribute username
    #   <p>The user name.</p>
    #
    #   @return [String]
    #
    AdminUserGlobalSignOutInput = ::Struct.new(
      :user_pool_id,
      :username,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::AdminUserGlobalSignOutInput "\
          "user_pool_id=#{user_pool_id || 'nil'}, "\
          "username=\"[SENSITIVE]\">"
      end
    end

    # <p>The global sign-out response, as an administrator.</p>
    #
    AdminUserGlobalSignOutOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AdvancedSecurityModeType
    #
    module AdvancedSecurityModeType
      # No documentation available.
      #
      OFF = "OFF"

      # No documentation available.
      #
      AUDIT = "AUDIT"

      # No documentation available.
      #
      ENFORCED = "ENFORCED"
    end

    # Includes enum constants for AliasAttributeType
    #
    module AliasAttributeType
      # No documentation available.
      #
      PHONE_NUMBER = "phone_number"

      # No documentation available.
      #
      EMAIL = "email"

      # No documentation available.
      #
      PREFERRED_USERNAME = "preferred_username"
    end

    # <p>This exception is thrown when a user tries to confirm the account with an email
    #             address or phone number that has already been supplied as an alias for a different
    #             user profile. This exception indicates that an account with this email address or phone
    #             already exists in a user pool that you've configured to use email address or phone
    #             number as a sign-in alias.</p>
    #
    # @!attribute message
    #   <p>The message sent to the user when an alias exists.</p>
    #
    #   @return [String]
    #
    AliasExistsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The Amazon Pinpoint analytics configuration necessary to collect metrics for a user
    #             pool.</p>
    #         <note>
    #             <p>In Regions where Amazon Pinpointisn't available, user pools only support sending events to
    #                 Amazon Pinpoint projects in us-east-1. In Regions where Amazon Pinpoint is available, user pools
    #                 support sending events to Amazon Pinpoint projects within that same Region.</p>
    #         </note>
    #
    # @!attribute application_id
    #   <p>The application ID for an Amazon Pinpoint application.</p>
    #
    #   @return [String]
    #
    # @!attribute application_arn
    #   <p>The Amazon Resource Name (ARN) of an Amazon Pinpoint project. You can use the Amazon Pinpoint project
    #               to integrate with the chosen user pool Client. Amazon Cognito publishes events to the Amazon Pinpoint
    #               project that the app ARN declares.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The ARN of an Identity and Access Management role that authorizes Amazon Cognito to publish events to Amazon Pinpoint
    #               analytics.</p>
    #
    #   @return [String]
    #
    # @!attribute external_id
    #   <p>The external ID.</p>
    #
    #   @return [String]
    #
    # @!attribute user_data_shared
    #   <p>If <code>UserDataShared</code> is <code>true</code>, Amazon Cognito includes user data in the
    #               events that it publishes to Amazon Pinpoint analytics.</p>
    #
    #   @return [Boolean]
    #
    AnalyticsConfigurationType = ::Struct.new(
      :application_id,
      :application_arn,
      :role_arn,
      :external_id,
      :user_data_shared,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.user_data_shared ||= false
      end

    end

    # <p>An Amazon Pinpoint analytics endpoint.</p>
    #         <p>An endpoint uniquely identifies a mobile device, email address, or phone number that
    #             can receive messages from Amazon Pinpoint analytics. For more information about Amazon Web Services Regions that
    #             can contain Amazon Pinpoint resources for use with Amazon Cognito user pools, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-pinpoint-integration.html">Using Amazon Pinpoint analytics with Amazon Cognito user pools</a>.</p>
    #
    # @!attribute analytics_endpoint_id
    #   <p>The endpoint ID.</p>
    #
    #   @return [String]
    #
    AnalyticsMetadataType = ::Struct.new(
      :analytics_endpoint_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute access_token
    #   <p>A valid access token that Amazon Cognito issued to the user whose software token you want to
    #               generate.</p>
    #
    #   @return [String]
    #
    # @!attribute session
    #   <p>The session that should be passed both ways in challenge-response calls to the
    #               service. This allows authentication of the user as part of the MFA setup process.</p>
    #
    #   @return [String]
    #
    AssociateSoftwareTokenInput = ::Struct.new(
      :access_token,
      :session,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::AssociateSoftwareTokenInput "\
          "access_token=\"[SENSITIVE]\", "\
          "session=#{session || 'nil'}>"
      end
    end

    # @!attribute secret_code
    #   <p>A unique generated shared secret code that is used in the time-based one-time password
    #               (TOTP) algorithm to generate a one-time code.</p>
    #
    #   @return [String]
    #
    # @!attribute session
    #   <p>The session that should be passed both ways in challenge-response calls to the
    #               service. This allows authentication of the user as part of the MFA setup process.</p>
    #
    #   @return [String]
    #
    AssociateSoftwareTokenOutput = ::Struct.new(
      :secret_code,
      :session,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::AssociateSoftwareTokenOutput "\
          "secret_code=\"[SENSITIVE]\", "\
          "session=#{session || 'nil'}>"
      end
    end

    # Includes enum constants for AttributeDataType
    #
    module AttributeDataType
      # No documentation available.
      #
      STRING = "String"

      # No documentation available.
      #
      NUMBER = "Number"

      # No documentation available.
      #
      DATETIME = "DateTime"

      # No documentation available.
      #
      BOOLEAN = "Boolean"
    end

    # <p>Specifies whether the attribute is standard or custom.</p>
    #
    # @!attribute name
    #   <p>The name of the attribute.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the attribute.</p>
    #
    #   @return [String]
    #
    AttributeType = ::Struct.new(
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::AttributeType "\
          "name=#{name || 'nil'}, "\
          "value=\"[SENSITIVE]\">"
      end
    end

    # <p>The authentication event type.</p>
    #
    # @!attribute event_id
    #   <p>The event ID.</p>
    #
    #   @return [String]
    #
    # @!attribute event_type
    #   <p>The event type.</p>
    #
    #   Enum, one of: ["SignIn", "SignUp", "ForgotPassword"]
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The creation date</p>
    #
    #   @return [Time]
    #
    # @!attribute event_response
    #   <p>The event response.</p>
    #
    #   Enum, one of: ["Success", "Failure"]
    #
    #   @return [String]
    #
    # @!attribute event_risk
    #   <p>The event risk.</p>
    #
    #   @return [EventRiskType]
    #
    # @!attribute challenge_responses
    #   <p>The challenge responses.</p>
    #
    #   @return [Array<ChallengeResponseType>]
    #
    # @!attribute event_context_data
    #   <p>The user context data captured at the time of an event request. This value provides
    #               additional information about the client from which event the request is received.</p>
    #
    #   @return [EventContextDataType]
    #
    # @!attribute event_feedback
    #   <p>A flag specifying the user feedback captured at the time of an event request is good
    #               or bad. </p>
    #
    #   @return [EventFeedbackType]
    #
    AuthEventType = ::Struct.new(
      :event_id,
      :event_type,
      :creation_date,
      :event_response,
      :event_risk,
      :challenge_responses,
      :event_context_data,
      :event_feedback,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AuthFlowType
    #
    module AuthFlowType
      # No documentation available.
      #
      USER_SRP_AUTH = "USER_SRP_AUTH"

      # No documentation available.
      #
      REFRESH_TOKEN_AUTH = "REFRESH_TOKEN_AUTH"

      # No documentation available.
      #
      REFRESH_TOKEN = "REFRESH_TOKEN"

      # No documentation available.
      #
      CUSTOM_AUTH = "CUSTOM_AUTH"

      # No documentation available.
      #
      ADMIN_NO_SRP_AUTH = "ADMIN_NO_SRP_AUTH"

      # No documentation available.
      #
      USER_PASSWORD_AUTH = "USER_PASSWORD_AUTH"

      # No documentation available.
      #
      ADMIN_USER_PASSWORD_AUTH = "ADMIN_USER_PASSWORD_AUTH"
    end

    # <p>The authentication result.</p>
    #
    # @!attribute access_token
    #   <p>A valid access token that Amazon Cognito issued to the user who you want to
    #               authenticate.</p>
    #
    #   @return [String]
    #
    # @!attribute expires_in
    #   <p>The expiration period of the authentication result in seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute token_type
    #   <p>The token type.</p>
    #
    #   @return [String]
    #
    # @!attribute refresh_token
    #   <p>The refresh token.</p>
    #
    #   @return [String]
    #
    # @!attribute id_token
    #   <p>The ID token.</p>
    #
    #   @return [String]
    #
    # @!attribute new_device_metadata
    #   <p>The new device metadata from an authentication result.</p>
    #
    #   @return [NewDeviceMetadataType]
    #
    AuthenticationResultType = ::Struct.new(
      :access_token,
      :expires_in,
      :token_type,
      :refresh_token,
      :id_token,
      :new_device_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.expires_in ||= 0
      end

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::AuthenticationResultType "\
          "access_token=\"[SENSITIVE]\", "\
          "expires_in=#{expires_in || 'nil'}, "\
          "token_type=#{token_type || 'nil'}, "\
          "refresh_token=\"[SENSITIVE]\", "\
          "id_token=\"[SENSITIVE]\", "\
          "new_device_metadata=#{new_device_metadata || 'nil'}>"
      end
    end

    # Includes enum constants for ChallengeName
    #
    module ChallengeName
      # No documentation available.
      #
      Password = "Password"

      # No documentation available.
      #
      Mfa = "Mfa"
    end

    # Includes enum constants for ChallengeNameType
    #
    module ChallengeNameType
      # No documentation available.
      #
      SMS_MFA = "SMS_MFA"

      # No documentation available.
      #
      SOFTWARE_TOKEN_MFA = "SOFTWARE_TOKEN_MFA"

      # No documentation available.
      #
      SELECT_MFA_TYPE = "SELECT_MFA_TYPE"

      # No documentation available.
      #
      MFA_SETUP = "MFA_SETUP"

      # No documentation available.
      #
      PASSWORD_VERIFIER = "PASSWORD_VERIFIER"

      # No documentation available.
      #
      CUSTOM_CHALLENGE = "CUSTOM_CHALLENGE"

      # No documentation available.
      #
      DEVICE_SRP_AUTH = "DEVICE_SRP_AUTH"

      # No documentation available.
      #
      DEVICE_PASSWORD_VERIFIER = "DEVICE_PASSWORD_VERIFIER"

      # No documentation available.
      #
      ADMIN_NO_SRP_AUTH = "ADMIN_NO_SRP_AUTH"

      # No documentation available.
      #
      NEW_PASSWORD_REQUIRED = "NEW_PASSWORD_REQUIRED"
    end

    # Includes enum constants for ChallengeResponse
    #
    module ChallengeResponse
      # No documentation available.
      #
      Success = "Success"

      # No documentation available.
      #
      Failure = "Failure"
    end

    # <p>The challenge response type.</p>
    #
    # @!attribute challenge_name
    #   <p>The challenge name.</p>
    #
    #   Enum, one of: ["Password", "Mfa"]
    #
    #   @return [String]
    #
    # @!attribute challenge_response
    #   <p>The challenge response.</p>
    #
    #   Enum, one of: ["Success", "Failure"]
    #
    #   @return [String]
    #
    ChallengeResponseType = ::Struct.new(
      :challenge_name,
      :challenge_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the request to change a user password.</p>
    #
    # @!attribute previous_password
    #   <p>The old password.</p>
    #
    #   @return [String]
    #
    # @!attribute proposed_password
    #   <p>The new password.</p>
    #
    #   @return [String]
    #
    # @!attribute access_token
    #   <p>A valid access token that Amazon Cognito issued to the user whose password you want to
    #               change.</p>
    #
    #   @return [String]
    #
    ChangePasswordInput = ::Struct.new(
      :previous_password,
      :proposed_password,
      :access_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::ChangePasswordInput "\
          "previous_password=\"[SENSITIVE]\", "\
          "proposed_password=\"[SENSITIVE]\", "\
          "access_token=\"[SENSITIVE]\">"
      end
    end

    # <p>The response from the server to the change password request.</p>
    #
    ChangePasswordOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The delivery details for an email or SMS message that Amazon Cognito sent for authentication or
    #             verification.</p>
    #
    # @!attribute destination
    #   <p>The email address or phone number destination where Amazon Cognito sent the code.</p>
    #
    #   @return [String]
    #
    # @!attribute delivery_medium
    #   <p>The method that Amazon Cognito used to send the code.</p>
    #
    #   Enum, one of: ["SMS", "EMAIL"]
    #
    #   @return [String]
    #
    # @!attribute attribute_name
    #   <p>The name of the attribute that Amazon Cognito verifies with the code.</p>
    #
    #   @return [String]
    #
    CodeDeliveryDetailsType = ::Struct.new(
      :destination,
      :delivery_medium,
      :attribute_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when a verification code fails to deliver
    #             successfully.</p>
    #
    # @!attribute message
    #   <p>The message sent when a verification code fails to deliver successfully.</p>
    #
    #   @return [String]
    #
    CodeDeliveryFailureException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown if the provided code doesn't match what the server was
    #             expecting.</p>
    #
    # @!attribute message
    #   <p>The message provided when the code mismatch exception is thrown.</p>
    #
    #   @return [String]
    #
    CodeMismatchException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The compromised credentials actions type.</p>
    #
    # @!attribute event_action
    #   <p>The event action.</p>
    #
    #   Enum, one of: ["BLOCK", "NO_ACTION"]
    #
    #   @return [String]
    #
    CompromisedCredentialsActionsType = ::Struct.new(
      :event_action,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CompromisedCredentialsEventActionType
    #
    module CompromisedCredentialsEventActionType
      # No documentation available.
      #
      BLOCK = "BLOCK"

      # No documentation available.
      #
      NO_ACTION = "NO_ACTION"
    end

    # <p>The compromised credentials risk configuration type.</p>
    #
    # @!attribute event_filter
    #   <p>Perform the action for these events. The default is to perform all events if no event
    #               filter is specified.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute actions
    #   <p>The compromised credentials risk configuration actions.</p>
    #
    #   @return [CompromisedCredentialsActionsType]
    #
    CompromisedCredentialsRiskConfigurationType = ::Struct.new(
      :event_filter,
      :actions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown if two or more modifications are happening
    #             concurrently.</p>
    #
    # @!attribute message
    #   <p>The message provided when the concurrent exception is thrown.</p>
    #
    #   @return [String]
    #
    ConcurrentModificationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Confirms the device request.</p>
    #
    # @!attribute access_token
    #   <p>A valid access token that Amazon Cognito issued to the user whose device you want to
    #               confirm.</p>
    #
    #   @return [String]
    #
    # @!attribute device_key
    #   <p>The device key.</p>
    #
    #   @return [String]
    #
    # @!attribute device_secret_verifier_config
    #   <p>The configuration of the device secret verifier.</p>
    #
    #   @return [DeviceSecretVerifierConfigType]
    #
    # @!attribute device_name
    #   <p>The device name.</p>
    #
    #   @return [String]
    #
    ConfirmDeviceInput = ::Struct.new(
      :access_token,
      :device_key,
      :device_secret_verifier_config,
      :device_name,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::ConfirmDeviceInput "\
          "access_token=\"[SENSITIVE]\", "\
          "device_key=#{device_key || 'nil'}, "\
          "device_secret_verifier_config=#{device_secret_verifier_config || 'nil'}, "\
          "device_name=#{device_name || 'nil'}>"
      end
    end

    # <p>Confirms the device response.</p>
    #
    # @!attribute user_confirmation_necessary
    #   <p>Indicates whether the user confirmation must confirm the device response.</p>
    #
    #   @return [Boolean]
    #
    ConfirmDeviceOutput = ::Struct.new(
      :user_confirmation_necessary,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.user_confirmation_necessary ||= false
      end

    end

    # <p>The request representing the confirmation for a password reset.</p>
    #
    # @!attribute client_id
    #   <p>The app client ID of the app associated with the user pool.</p>
    #
    #   @return [String]
    #
    # @!attribute secret_hash
    #   <p>A keyed-hash message authentication code (HMAC) calculated using the secret key of a
    #               user pool client and username plus the client ID in the message.</p>
    #
    #   @return [String]
    #
    # @!attribute username
    #   <p>The user name of the user for whom you want to enter a code to retrieve a forgotten
    #               password.</p>
    #
    #   @return [String]
    #
    # @!attribute confirmation_code
    #   <p>The confirmation code sent by a user's request to retrieve a forgotten password. For
    #               more information, see <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_ForgotPassword.html">ForgotPassword</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute password
    #   <p>The password sent by a user's request to retrieve a forgotten password.</p>
    #
    #   @return [String]
    #
    # @!attribute analytics_metadata
    #   <p>The Amazon Pinpoint analytics metadata for collecting metrics for
    #                   <code>ConfirmForgotPassword</code> calls.</p>
    #
    #   @return [AnalyticsMetadataType]
    #
    # @!attribute user_context_data
    #   <p>Contextual data about your user session, such as the device fingerprint, IP address, or location. Amazon Cognito advanced
    #   security evaluates the risk of an authentication event based on the context that your app generates and passes to Amazon Cognito
    #   when it makes API requests.</p>
    #
    #   @return [UserContextDataType]
    #
    # @!attribute client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for any custom workflows
    #               that this action triggers.</p>
    #           <p>You create custom workflows by assigning Lambda functions to user pool triggers.
    #               When you use the ConfirmForgotPassword API action, Amazon Cognito invokes the function that is
    #               assigned to the <i>post confirmation</i> trigger. When Amazon Cognito invokes this
    #               function, it passes a JSON payload, which the function receives as input. This payload
    #               contains a <code>clientMetadata</code> attribute, which provides the data that you
    #               assigned to the ClientMetadata parameter in your ConfirmForgotPassword request. In your
    #               function code in Lambda, you can process the <code>clientMetadata</code> value to
    #               enhance your workflow for your specific needs.</p>
    #
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html">
    #   Customizing user pool Workflows with Lambda Triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #
    #           <note>
    #               <p>When you use the ClientMetadata parameter, remember that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                       <p>Store the ClientMetadata value. This data is available only to Lambda
    #                           triggers that are assigned to a user pool to support custom workflows. If
    #                           your user pool configuration doesn't include triggers, the ClientMetadata
    #                           parameter serves no purpose.</p>
    #                   </li>
    #                  <li>
    #                       <p>Validate the ClientMetadata value.</p>
    #                   </li>
    #                  <li>
    #                       <p>Encrypt the ClientMetadata value. Don't use Amazon Cognito to provide sensitive
    #                           information.</p>
    #                   </li>
    #               </ul>
    #           </note>
    #
    #   @return [Hash<String, String>]
    #
    ConfirmForgotPasswordInput = ::Struct.new(
      :client_id,
      :secret_hash,
      :username,
      :confirmation_code,
      :password,
      :analytics_metadata,
      :user_context_data,
      :client_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::ConfirmForgotPasswordInput "\
          "client_id=\"[SENSITIVE]\", "\
          "secret_hash=\"[SENSITIVE]\", "\
          "username=\"[SENSITIVE]\", "\
          "confirmation_code=#{confirmation_code || 'nil'}, "\
          "password=\"[SENSITIVE]\", "\
          "analytics_metadata=#{analytics_metadata || 'nil'}, "\
          "user_context_data=#{user_context_data || 'nil'}, "\
          "client_metadata=#{client_metadata || 'nil'}>"
      end
    end

    # <p>The response from the server that results from a user's request to retrieve a
    #             forgotten password.</p>
    #
    ConfirmForgotPasswordOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the request to confirm registration of a user.</p>
    #
    # @!attribute client_id
    #   <p>The ID of the app client associated with the user pool.</p>
    #
    #   @return [String]
    #
    # @!attribute secret_hash
    #   <p>A keyed-hash message authentication code (HMAC) calculated using the secret key of a
    #               user pool client and username plus the client ID in the message.</p>
    #
    #   @return [String]
    #
    # @!attribute username
    #   <p>The user name of the user whose registration you want to confirm.</p>
    #
    #   @return [String]
    #
    # @!attribute confirmation_code
    #   <p>The confirmation code sent by a user's request to confirm registration.</p>
    #
    #   @return [String]
    #
    # @!attribute force_alias_creation
    #   <p>Boolean to be specified to force user confirmation irrespective of existing alias. By
    #               default set to <code>False</code>. If this parameter is set to <code>True</code> and the
    #               phone number/email used for sign up confirmation already exists as an alias with a
    #               different user, the API call will migrate the alias from the previous user to the newly
    #               created user being confirmed. If set to <code>False</code>, the API will throw an
    #                   <b>AliasExistsException</b> error.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute analytics_metadata
    #   <p>The Amazon Pinpoint analytics metadata for collecting metrics for <code>ConfirmSignUp</code>
    #               calls.</p>
    #
    #   @return [AnalyticsMetadataType]
    #
    # @!attribute user_context_data
    #   <p>Contextual data about your user session, such as the device fingerprint, IP address, or location. Amazon Cognito advanced
    #   security evaluates the risk of an authentication event based on the context that your app generates and passes to Amazon Cognito
    #   when it makes API requests.</p>
    #
    #   @return [UserContextDataType]
    #
    # @!attribute client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for any custom workflows
    #               that this action triggers.</p>
    #           <p>You create custom workflows by assigning Lambda functions to user pool
    #               triggers. When you use the ConfirmSignUp API action, Amazon Cognito invokes the function that is
    #               assigned to the <i>post confirmation</i> trigger. When Amazon Cognito invokes this
    #               function, it passes a JSON payload, which the function receives as input. This payload
    #               contains a <code>clientMetadata</code> attribute, which provides the data that you
    #               assigned to the ClientMetadata parameter in your ConfirmSignUp request. In your function
    #               code in Lambda, you can process the <code>clientMetadata</code> value to
    #               enhance your workflow for your specific needs.</p>
    #
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html">
    #   Customizing user pool Workflows with Lambda Triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #
    #           <note>
    #               <p>When you use the ClientMetadata parameter, remember that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                       <p>Store the ClientMetadata value. This data is available only to Lambda
    #                           triggers that are assigned to a user pool to support custom workflows. If
    #                           your user pool configuration doesn't include triggers, the ClientMetadata
    #                           parameter serves no purpose.</p>
    #                   </li>
    #                  <li>
    #                       <p>Validate the ClientMetadata value.</p>
    #                   </li>
    #                  <li>
    #                       <p>Encrypt the ClientMetadata value. Don't use Amazon Cognito to provide sensitive
    #                           information.</p>
    #                   </li>
    #               </ul>
    #           </note>
    #
    #   @return [Hash<String, String>]
    #
    ConfirmSignUpInput = ::Struct.new(
      :client_id,
      :secret_hash,
      :username,
      :confirmation_code,
      :force_alias_creation,
      :analytics_metadata,
      :user_context_data,
      :client_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.force_alias_creation ||= false
      end

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::ConfirmSignUpInput "\
          "client_id=\"[SENSITIVE]\", "\
          "secret_hash=\"[SENSITIVE]\", "\
          "username=\"[SENSITIVE]\", "\
          "confirmation_code=#{confirmation_code || 'nil'}, "\
          "force_alias_creation=#{force_alias_creation || 'nil'}, "\
          "analytics_metadata=#{analytics_metadata || 'nil'}, "\
          "user_context_data=#{user_context_data || 'nil'}, "\
          "client_metadata=#{client_metadata || 'nil'}>"
      end
    end

    # <p>Represents the response from the server for the registration confirmation.</p>
    #
    ConfirmSignUpOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contextual user data type used for evaluating the risk of an unexpected event by Amazon Cognito
    #             advanced security.</p>
    #
    # @!attribute ip_address
    #   <p>The source IP address of your user's device.</p>
    #
    #   @return [String]
    #
    # @!attribute server_name
    #   <p>Your server endpoint where this API is invoked.</p>
    #
    #   @return [String]
    #
    # @!attribute server_path
    #   <p>Your server path where this API is invoked.</p>
    #
    #   @return [String]
    #
    # @!attribute http_headers
    #   <p>HttpHeaders received on your server in same order.</p>
    #
    #   @return [Array<HttpHeader>]
    #
    # @!attribute encoded_data
    #   <p>Encoded device-fingerprint details that your app collected with the Amazon Cognito
    #               context data collection library. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-adaptive-authentication.html user-pool-settings-adaptive-authentication-device-fingerprint">Adding user device and session data to API requests</a>.</p>
    #
    #   @return [String]
    #
    ContextDataType = ::Struct.new(
      :ip_address,
      :server_name,
      :server_path,
      :http_headers,
      :encoded_data,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute group_name
    #   <p>The name of the group. Must be unique.</p>
    #
    #   @return [String]
    #
    # @!attribute user_pool_id
    #   <p>The user pool ID for the user pool.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A string containing the description of the group.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The role Amazon Resource Name (ARN) for the group.</p>
    #
    #   @return [String]
    #
    # @!attribute precedence
    #   <p>A non-negative integer value that specifies the precedence of this group relative to
    #               the other groups that a user can belong to in the user pool. Zero is the highest
    #               precedence value. Groups with lower <code>Precedence</code> values take precedence over
    #               groups with higher or null <code>Precedence</code> values. If a user belongs to two or
    #               more groups, it is the group with the lowest precedence value whose role ARN is given in
    #               the user's tokens for the <code>cognito:roles</code> and
    #                   <code>cognito:preferred_role</code> claims.</p>
    #           <p>Two groups can have the same <code>Precedence</code> value. If this happens, neither
    #               group takes precedence over the other. If two groups with the same
    #                   <code>Precedence</code> have the same role ARN, that role is used in the
    #                   <code>cognito:preferred_role</code> claim in tokens for users in each group. If the
    #               two groups have different role ARNs, the <code>cognito:preferred_role</code> claim isn't
    #               set in users' tokens.</p>
    #           <p>The default <code>Precedence</code> value is null. The maximum <code>Precedence</code>
    #               value is <code>2^31-1</code>.</p>
    #
    #   @return [Integer]
    #
    CreateGroupInput = ::Struct.new(
      :group_name,
      :user_pool_id,
      :description,
      :role_arn,
      :precedence,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute group
    #   <p>The group object for the group.</p>
    #
    #   @return [GroupType]
    #
    CreateGroupOutput = ::Struct.new(
      :group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_pool_id
    #   <p>The user pool ID.</p>
    #
    #   @return [String]
    #
    # @!attribute provider_name
    #   <p>The IdP name.</p>
    #
    #   @return [String]
    #
    # @!attribute provider_type
    #   <p>The IdP type.</p>
    #
    #   Enum, one of: ["SAML", "Facebook", "Google", "LoginWithAmazon", "SignInWithApple", "OIDC"]
    #
    #   @return [String]
    #
    # @!attribute provider_details
    #   <p>The IdP details. The following list describes the provider detail keys for each IdP
    #               type.</p>
    #           <ul>
    #               <li>
    #                   <p>For Google and Login with Amazon:</p>
    #                   <ul>
    #                     <li>
    #                           <p>client_id</p>
    #                       </li>
    #                     <li>
    #                           <p>client_secret</p>
    #                       </li>
    #                     <li>
    #                           <p>authorize_scopes</p>
    #                       </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                   <p>For Facebook:</p>
    #                   <ul>
    #                     <li>
    #                           <p>client_id</p>
    #                       </li>
    #                     <li>
    #                           <p>client_secret</p>
    #                       </li>
    #                     <li>
    #                           <p>authorize_scopes</p>
    #                       </li>
    #                     <li>
    #                           <p>api_version</p>
    #                       </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                   <p>For Sign in with Apple:</p>
    #                   <ul>
    #                     <li>
    #                           <p>client_id</p>
    #                       </li>
    #                     <li>
    #                           <p>team_id</p>
    #                       </li>
    #                     <li>
    #                           <p>key_id</p>
    #                       </li>
    #                     <li>
    #                           <p>private_key</p>
    #                       </li>
    #                     <li>
    #                           <p>authorize_scopes</p>
    #                       </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                   <p>For OpenID Connect (OIDC) providers:</p>
    #                   <ul>
    #                     <li>
    #                           <p>client_id</p>
    #                       </li>
    #                     <li>
    #                           <p>client_secret</p>
    #                       </li>
    #                     <li>
    #                           <p>attributes_request_method</p>
    #                       </li>
    #                     <li>
    #                           <p>oidc_issuer</p>
    #                       </li>
    #                     <li>
    #                           <p>authorize_scopes</p>
    #                       </li>
    #                     <li>
    #                           <p>The following keys are only present if Amazon Cognito didn't discover them at
    #                               the <code>oidc_issuer</code> URL.</p>
    #                           <ul>
    #                           <li>
    #                                   <p>authorize_url </p>
    #                               </li>
    #                           <li>
    #                                   <p>token_url </p>
    #                               </li>
    #                           <li>
    #                                   <p>attributes_url </p>
    #                               </li>
    #                           <li>
    #                                   <p>jwks_uri </p>
    #                               </li>
    #                        </ul>
    #                       </li>
    #                     <li>
    #                           <p>Amazon Cognito sets the value of the following keys automatically. They are
    #                               read-only.</p>
    #                           <ul>
    #                           <li>
    #                                   <p>attributes_url_add_attributes </p>
    #                               </li>
    #                        </ul>
    #                       </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                   <p>For SAML providers:</p>
    #                   <ul>
    #                     <li>
    #                           <p>MetadataFile or MetadataURL</p>
    #                       </li>
    #                     <li>
    #                           <p>IDPSignout <i>optional</i>
    #                        </p>
    #                       </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute attribute_mapping
    #   <p>A mapping of IdP attributes to standard and custom user pool attributes.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute idp_identifiers
    #   <p>A list of IdP identifiers.</p>
    #
    #   @return [Array<String>]
    #
    CreateIdentityProviderInput = ::Struct.new(
      :user_pool_id,
      :provider_name,
      :provider_type,
      :provider_details,
      :attribute_mapping,
      :idp_identifiers,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute identity_provider
    #   <p>The newly created IdP object.</p>
    #
    #   @return [IdentityProviderType]
    #
    CreateIdentityProviderOutput = ::Struct.new(
      :identity_provider,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_pool_id
    #   <p>The user pool ID for the user pool.</p>
    #
    #   @return [String]
    #
    # @!attribute identifier
    #   <p>A unique resource server identifier for the resource server. This could be an HTTPS
    #               endpoint where the resource server is located, such as
    #                   <code>https://my-weather-api.example.com</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A friendly name for the resource server.</p>
    #
    #   @return [String]
    #
    # @!attribute scopes
    #   <p>A list of scopes. Each scope is a key-value map with the keys <code>name</code> and
    #                   <code>description</code>.</p>
    #
    #   @return [Array<ResourceServerScopeType>]
    #
    CreateResourceServerInput = ::Struct.new(
      :user_pool_id,
      :identifier,
      :name,
      :scopes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_server
    #   <p>The newly created resource server.</p>
    #
    #   @return [ResourceServerType]
    #
    CreateResourceServerOutput = ::Struct.new(
      :resource_server,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the request to create the user import job.</p>
    #
    # @!attribute job_name
    #   <p>The job name for the user import job.</p>
    #
    #   @return [String]
    #
    # @!attribute user_pool_id
    #   <p>The user pool ID for the user pool that the users are being imported into.</p>
    #
    #   @return [String]
    #
    # @!attribute cloud_watch_logs_role_arn
    #   <p>The role ARN for the Amazon CloudWatch Logs Logging role for the user import job.</p>
    #
    #   @return [String]
    #
    CreateUserImportJobInput = ::Struct.new(
      :job_name,
      :user_pool_id,
      :cloud_watch_logs_role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the response from the server to the request to create the user import
    #             job.</p>
    #
    # @!attribute user_import_job
    #   <p>The job object that represents the user import job.</p>
    #
    #   @return [UserImportJobType]
    #
    CreateUserImportJobOutput = ::Struct.new(
      :user_import_job,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the request to create a user pool client.</p>
    #
    # @!attribute user_pool_id
    #   <p>The user pool ID for the user pool where you want to create a user pool client.</p>
    #
    #   @return [String]
    #
    # @!attribute client_name
    #   <p>The client name for the user pool client you would like to create.</p>
    #
    #   @return [String]
    #
    # @!attribute generate_secret
    #   <p>Boolean to specify whether you want to generate a secret for the user pool client
    #               being created.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute refresh_token_validity
    #   <p>The refresh token time limit. After this limit expires, your user can't use
    #           their refresh token. To specify the time unit for <code>RefreshTokenValidity</code> as
    #           <code>seconds</code>, <code>minutes</code>, <code>hours</code>, or <code>days</code>,
    #           set a <code>TokenValidityUnits</code> value in your API request.</p>
    #           <p>For example, when you set <code>RefreshTokenValidity</code> as <code>10</code> and
    #           <code>TokenValidityUnits</code> as <code>days</code>, your user can refresh their session
    #           and retrieve new access and ID tokens for 10 days.</p>
    #           <p>The default time unit for <code>RefreshTokenValidity</code> in an API request is days.
    #           You can't set <code>RefreshTokenValidity</code> to 0. If you do, Amazon Cognito overrides the
    #           value with the default value of 30 days. <i>Valid range</i> is displayed below
    #           in seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute access_token_validity
    #   <p>The access token time limit. After this limit expires, your user can't use
    #           their access token. To specify the time unit for <code>AccessTokenValidity</code> as
    #           <code>seconds</code>, <code>minutes</code>, <code>hours</code>, or <code>days</code>,
    #           set a <code>TokenValidityUnits</code> value in your API request.</p>
    #           <p>For example, when you set <code>AccessTokenValidity</code> to <code>10</code> and
    #           <code>TokenValidityUnits</code> to <code>hours</code>, your user can authorize access with
    #           their access token for 10 hours.</p>
    #           <p>The default time unit for <code>AccessTokenValidity</code> in an API request is hours.
    #           <i>Valid range</i> is displayed below in seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute id_token_validity
    #   <p>The ID token time limit. After this limit expires, your user can't use
    #           their ID token. To specify the time unit for <code>IdTokenValidity</code> as
    #           <code>seconds</code>, <code>minutes</code>, <code>hours</code>, or <code>days</code>,
    #           set a <code>TokenValidityUnits</code> value in your API request.</p>
    #           <p>For example, when you set <code>IdTokenValidity</code> as <code>10</code> and
    #           <code>TokenValidityUnits</code> as <code>hours</code>, your user can authenticate their
    #           session with their ID token for 10 hours.</p>
    #           <p>The default time unit for <code>AccessTokenValidity</code> in an API request is hours.
    #           <i>Valid range</i> is displayed below in seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute token_validity_units
    #   <p>The units in which the validity times are represented. The default unit for
    #               RefreshToken is days, and default for ID and access tokens are hours.</p>
    #
    #   @return [TokenValidityUnitsType]
    #
    # @!attribute read_attributes
    #   <p>The read attributes.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute write_attributes
    #   <p>The user pool attributes that the app client can write to.</p>
    #           <p>If your app client allows users to sign in through an IdP, this array must include all
    #               attributes that you have mapped to IdP attributes. Amazon Cognito updates mapped attributes when
    #               users sign in to your application through an IdP. If your app client does not have write
    #               access to a mapped attribute, Amazon Cognito throws an error when it tries to update the
    #               attribute. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-specifying-attribute-mapping.html">Specifying IdP Attribute Mappings for Your user
    #               pool</a>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute explicit_auth_flows
    #   <p>The authentication flows that are supported by the user pool clients. Flow names
    #               without the <code>ALLOW_</code> prefix are no longer supported, in favor of new names
    #               with the <code>ALLOW_</code> prefix.</p>
    #           <note>
    #               <p>Values with <code>ALLOW_</code> prefix must be used only along with the
    #                       <code>ALLOW_</code> prefix.</p>
    #           </note>
    #           <p>Valid values include:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>ALLOW_ADMIN_USER_PASSWORD_AUTH</code>: Enable admin based user password
    #                       authentication flow <code>ADMIN_USER_PASSWORD_AUTH</code>. This setting replaces
    #                       the <code>ADMIN_NO_SRP_AUTH</code> setting. With this authentication flow, Amazon Cognito
    #                       receives the password in the request instead of using the Secure Remote Password
    #                       (SRP) protocol to verify passwords.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ALLOW_CUSTOM_AUTH</code>: Enable Lambda trigger based
    #                       authentication.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ALLOW_USER_PASSWORD_AUTH</code>: Enable user password-based
    #                       authentication. In this flow, Amazon Cognito receives the password in the request instead
    #                       of using the SRP protocol to verify passwords.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ALLOW_USER_SRP_AUTH</code>: Enable SRP-based authentication.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ALLOW_REFRESH_TOKEN_AUTH</code>: Enable authflow to refresh
    #                       tokens.</p>
    #               </li>
    #            </ul>
    #           <p>If you don't specify a value for <code>ExplicitAuthFlows</code>, your app client
    #               activates the <code>ALLOW_USER_SRP_AUTH</code> and <code>ALLOW_CUSTOM_AUTH</code>
    #               authentication flows.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute supported_identity_providers
    #   <p>A list of provider names for the IdPs that this client supports. The following are
    #               supported: <code>COGNITO</code>, <code>Facebook</code>, <code>Google</code>
    #               <code>LoginWithAmazon</code>, and the names of your own SAML and OIDC providers.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute callback_ur_ls
    #   <p>A list of allowed redirect (callback) URLs for the IdPs.</p>
    #           <p>A redirect URI must:</p>
    #           <ul>
    #               <li>
    #                   <p>Be an absolute URI.</p>
    #               </li>
    #               <li>
    #                   <p>Be registered with the authorization server.</p>
    #               </li>
    #               <li>
    #                   <p>Not include a fragment component.</p>
    #               </li>
    #            </ul>
    #           <p>See <a href="https://tools.ietf.org/html/rfc6749 section-3.1.2">OAuth 2.0 -
    #                   Redirection Endpoint</a>.</p>
    #           <p>Amazon Cognito requires HTTPS over HTTP except for http://localhost for testing purposes
    #               only.</p>
    #           <p>App callback URLs such as myapp://example are also supported.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute logout_ur_ls
    #   <p>A list of allowed logout URLs for the IdPs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute default_redirect_uri
    #   <p>The default redirect URI. Must be in the <code>CallbackURLs</code> list.</p>
    #           <p>A redirect URI must:</p>
    #           <ul>
    #               <li>
    #                   <p>Be an absolute URI.</p>
    #               </li>
    #               <li>
    #                   <p>Be registered with the authorization server.</p>
    #               </li>
    #               <li>
    #                   <p>Not include a fragment component.</p>
    #               </li>
    #            </ul>
    #           <p>See <a href="https://tools.ietf.org/html/rfc6749 section-3.1.2">OAuth 2.0 -
    #                   Redirection Endpoint</a>.</p>
    #           <p>Amazon Cognito requires HTTPS over HTTP except for http://localhost for testing purposes
    #               only.</p>
    #           <p>App callback URLs such as myapp://example are also supported.</p>
    #
    #   @return [String]
    #
    # @!attribute allowed_o_auth_flows
    #   <p>The allowed OAuth flows.</p>
    #           <dl>
    #               <dt>code</dt>
    #               <dd>
    #                       <p>Use a code grant flow, which provides an authorization code as the
    #                           response. This code can be exchanged for access tokens with the
    #                               <code>/oauth2/token</code> endpoint.</p>
    #                   </dd>
    #               <dt>implicit</dt>
    #               <dd>
    #                       <p>Issue the access token (and, optionally, ID token, based on scopes)
    #                           directly to your user.</p>
    #                   </dd>
    #               <dt>client_credentials</dt>
    #               <dd>
    #                       <p>Issue the access token from the <code>/oauth2/token</code> endpoint
    #                           directly to a non-person user using a combination of the client ID and
    #                           client secret.</p>
    #                   </dd>
    #            </dl>
    #
    #   @return [Array<String>]
    #
    # @!attribute allowed_o_auth_scopes
    #   <p>The allowed OAuth scopes. Possible values provided by OAuth are <code>phone</code>,
    #                   <code>email</code>, <code>openid</code>, and <code>profile</code>. Possible values
    #               provided by Amazon Web Services are <code>aws.cognito.signin.user.admin</code>. Custom
    #               scopes created in Resource Servers are also supported.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute allowed_o_auth_flows_user_pool_client
    #   <p>Set to true if the client is allowed to follow the OAuth protocol when interacting
    #               with Amazon Cognito user pools.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute analytics_configuration
    #   <p>The user pool analytics configuration for collecting metrics and sending them to your
    #               Amazon Pinpoint campaign.</p>
    #           <note>
    #               <p>In Amazon Web Services Regions where Amazon Pinpoint isn't available, user pools only support sending
    #                   events to Amazon Pinpoint projects in Amazon Web Services Region us-east-1. In Regions where Amazon Pinpoint is
    #                   available, user pools support sending events to Amazon Pinpoint projects within that same
    #                   Region.</p>
    #           </note>
    #
    #   @return [AnalyticsConfigurationType]
    #
    # @!attribute prevent_user_existence_errors
    #   <p>Errors and responses that you want Amazon Cognito APIs to return during authentication, account
    #               confirmation, and password recovery when the user doesn't exist in the user pool. When
    #               set to <code>ENABLED</code> and the user doesn't exist, authentication returns an error
    #               indicating either the username or password was incorrect. Account confirmation and
    #               password recovery return a response indicating a code was sent to a simulated
    #               destination. When set to <code>LEGACY</code>, those APIs return a
    #                   <code>UserNotFoundException</code> exception if the user doesn't exist in the user
    #               pool.</p>
    #           <p>Valid values include:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>ENABLED</code> - This prevents user existence-related errors.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>LEGACY</code> - This represents the early behavior of Amazon Cognito where user
    #                       existence related errors aren't prevented.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["LEGACY", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute enable_token_revocation
    #   <p>Activates or deactivates token revocation. For more information about revoking tokens,
    #               see <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_RevokeToken.html">RevokeToken</a>.</p>
    #           <p>If you don't include this parameter, token revocation is automatically activated for
    #               the new user pool client.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute enable_propagate_additional_user_context_data
    #   <p>Activates the propagation of additional user context data. For more information about
    #               propagation of user context data, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-advanced-security.html"> Adding advanced security to a user pool</a>. If you don’t include this
    #               parameter, you can't send device fingerprint information, including source IP address,
    #               to Amazon Cognito advanced security. You can only activate
    #                   <code>EnablePropagateAdditionalUserContextData</code> in an app client that has a
    #               client secret.</p>
    #
    #   @return [Boolean]
    #
    CreateUserPoolClientInput = ::Struct.new(
      :user_pool_id,
      :client_name,
      :generate_secret,
      :refresh_token_validity,
      :access_token_validity,
      :id_token_validity,
      :token_validity_units,
      :read_attributes,
      :write_attributes,
      :explicit_auth_flows,
      :supported_identity_providers,
      :callback_ur_ls,
      :logout_ur_ls,
      :default_redirect_uri,
      :allowed_o_auth_flows,
      :allowed_o_auth_scopes,
      :allowed_o_auth_flows_user_pool_client,
      :analytics_configuration,
      :prevent_user_existence_errors,
      :enable_token_revocation,
      :enable_propagate_additional_user_context_data,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.generate_secret ||= false
        self.refresh_token_validity ||= 0
        self.allowed_o_auth_flows_user_pool_client ||= false
      end

    end

    # <p>Represents the response from the server to create a user pool client.</p>
    #
    # @!attribute user_pool_client
    #   <p>The user pool client that was just created.</p>
    #
    #   @return [UserPoolClientType]
    #
    CreateUserPoolClientOutput = ::Struct.new(
      :user_pool_client,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain
    #   <p>The domain string. For custom domains, this is the fully-qualified domain name, such
    #               as <code>auth.example.com</code>. For Amazon Cognito prefix domains, this is the prefix alone,
    #               such as <code>auth</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute user_pool_id
    #   <p>The user pool ID.</p>
    #
    #   @return [String]
    #
    # @!attribute custom_domain_config
    #   <p>The configuration for a custom domain that hosts the sign-up and sign-in webpages for
    #               your application.</p>
    #           <p>Provide this parameter only if you want to use a custom domain for your user pool.
    #               Otherwise, you can exclude this parameter and use the Amazon Cognito hosted domain
    #               instead.</p>
    #           <p>For more information about the hosted domain and custom domains, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-assign-domain.html">Configuring a User Pool Domain</a>.</p>
    #
    #   @return [CustomDomainConfigType]
    #
    CreateUserPoolDomainInput = ::Struct.new(
      :domain,
      :user_pool_id,
      :custom_domain_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cloud_front_domain
    #   <p>The Amazon CloudFront endpoint that you use as the target of the alias that you set up with
    #               your Domain Name Service (DNS) provider.</p>
    #
    #   @return [String]
    #
    CreateUserPoolDomainOutput = ::Struct.new(
      :cloud_front_domain,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the request to create a user pool.</p>
    #
    # @!attribute pool_name
    #   <p>A string used to name the user pool.</p>
    #
    #   @return [String]
    #
    # @!attribute policies
    #   <p>The policies associated with the new user pool.</p>
    #
    #   @return [UserPoolPolicyType]
    #
    # @!attribute lambda_config
    #   <p>The Lambda trigger configuration information for the new user pool.</p>
    #           <note>
    #               <p>In a push model, event sources (such as Amazon S3 and custom applications) need
    #                   permission to invoke a function. So you must make an extra call to add permission
    #                   for these event sources to invoke your Lambda function.</p>
    #               <p></p>
    #               <p>For more information on using the Lambda API to add permission, see<a href="https://docs.aws.amazon.com/lambda/latest/dg/API_AddPermission.html">
    #                       AddPermission </a>. </p>
    #               <p>For adding permission using the CLI, see<a href="https://docs.aws.amazon.com/cli/latest/reference/lambda/add-permission.html"> add-permission
    #                   </a>.</p>
    #           </note>
    #
    #   @return [LambdaConfigType]
    #
    # @!attribute auto_verified_attributes
    #   <p>The attributes to be auto-verified. Possible values: <b>email</b>, <b>phone_number</b>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute alias_attributes
    #   <p>Attributes supported as an alias for this user pool. Possible values: <b>phone_number</b>, <b>email</b>, or
    #                   <b>preferred_username</b>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute username_attributes
    #   <p>Specifies whether a user can use an email address or phone number as a username when
    #               they sign up.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute sms_verification_message
    #   <p>A string representing the SMS verification message.</p>
    #
    #   @return [String]
    #
    # @!attribute email_verification_message
    #   <p>A string representing the email verification message. EmailVerificationMessage is
    #               allowed only if <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_EmailConfigurationType.html CognitoUserPools-Type-EmailConfigurationType-EmailSendingAccount">EmailSendingAccount</a> is DEVELOPER. </p>
    #
    #   @return [String]
    #
    # @!attribute email_verification_subject
    #   <p>A string representing the email verification subject. EmailVerificationSubject is
    #               allowed only if <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_EmailConfigurationType.html CognitoUserPools-Type-EmailConfigurationType-EmailSendingAccount">EmailSendingAccount</a> is DEVELOPER. </p>
    #
    #   @return [String]
    #
    # @!attribute verification_message_template
    #   <p>The template for the verification message that the user sees when the app requests
    #               permission to access the user's information.</p>
    #
    #   @return [VerificationMessageTemplateType]
    #
    # @!attribute sms_authentication_message
    #   <p>A string representing the SMS authentication message.</p>
    #
    #   @return [String]
    #
    # @!attribute mfa_configuration
    #   <p>Specifies MFA configuration details.</p>
    #
    #   Enum, one of: ["OFF", "ON", "OPTIONAL"]
    #
    #   @return [String]
    #
    # @!attribute user_attribute_update_settings
    #   <p>The settings for updates to user attributes. These settings include the property <code>AttributesRequireVerificationBeforeUpdate</code>,
    #   a user-pool setting that tells Amazon Cognito how to handle changes to the value of your users' email address and phone number attributes. For
    #   more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-email-phone-verification.html user-pool-settings-verifications-verify-attribute-updates">
    #   Verifying updates to to email addresses and phone numbers</a>.</p>
    #
    #   @return [UserAttributeUpdateSettingsType]
    #
    # @!attribute device_configuration
    #   <p>The device configuration.</p>
    #
    #   @return [DeviceConfigurationType]
    #
    # @!attribute email_configuration
    #   <p>The email configuration of your user pool. The email configuration type sets your
    #               preferred sending method, Amazon Web Services Region, and sender for messages from your user
    #               pool.</p>
    #
    #   @return [EmailConfigurationType]
    #
    # @!attribute sms_configuration
    #   <p>The SMS configuration with the settings that your Amazon Cognito user pool must use to send an
    #               SMS message from your Amazon Web Services account through Amazon Simple Notification Service. To send SMS messages
    #               with Amazon SNS in the Amazon Web Services Region that you want, the Amazon Cognito user pool uses an Identity and Access Management
    #               (IAM) role in your Amazon Web Services account.</p>
    #
    #   @return [SmsConfigurationType]
    #
    # @!attribute user_pool_tags
    #   <p>The tag keys and values to assign to the user pool. A tag is a label that you can use
    #               to categorize and manage user pools in different ways, such as by purpose, owner,
    #               environment, or other criteria.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute admin_create_user_config
    #   <p>The configuration for <code>AdminCreateUser</code> requests.</p>
    #
    #   @return [AdminCreateUserConfigType]
    #
    # @!attribute schema
    #   <p>An array of schema attributes for the new user pool. These attributes can be standard
    #               or custom attributes.</p>
    #
    #   @return [Array<SchemaAttributeType>]
    #
    # @!attribute user_pool_add_ons
    #   <p>Enables advanced security risk detection. Set the key
    #                   <code>AdvancedSecurityMode</code> to the value "AUDIT".</p>
    #
    #   @return [UserPoolAddOnsType]
    #
    # @!attribute username_configuration
    #   <p>Case sensitivity on the username input for the selected sign-in option. For example,
    #               when case sensitivity is set to <code>False</code>, users can sign in using either
    #               "username" or "Username". This configuration is immutable once it has been set. For more
    #               information, see <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_UsernameConfigurationType.html">UsernameConfigurationType</a>.</p>
    #
    #   @return [UsernameConfigurationType]
    #
    # @!attribute account_recovery_setting
    #   <p>The available verified method a user can use to recover their password when they call
    #                   <code>ForgotPassword</code>. You can use this setting to define a preferred method
    #               when a user has more than one method available. With this setting, SMS doesn't qualify
    #               for a valid password recovery mechanism if the user also has SMS multi-factor
    #               authentication (MFA) activated. In the absence of this setting, Amazon Cognito uses the legacy
    #               behavior to determine the recovery method where SMS is preferred through email.</p>
    #
    #   @return [AccountRecoverySettingType]
    #
    CreateUserPoolInput = ::Struct.new(
      :pool_name,
      :policies,
      :lambda_config,
      :auto_verified_attributes,
      :alias_attributes,
      :username_attributes,
      :sms_verification_message,
      :email_verification_message,
      :email_verification_subject,
      :verification_message_template,
      :sms_authentication_message,
      :mfa_configuration,
      :user_attribute_update_settings,
      :device_configuration,
      :email_configuration,
      :sms_configuration,
      :user_pool_tags,
      :admin_create_user_config,
      :schema,
      :user_pool_add_ons,
      :username_configuration,
      :account_recovery_setting,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the response from the server for the request to create a user pool.</p>
    #
    # @!attribute user_pool
    #   <p>A container for the user pool details.</p>
    #
    #   @return [UserPoolType]
    #
    CreateUserPoolOutput = ::Struct.new(
      :user_pool,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration for a custom domain that hosts the sign-up and sign-in webpages for
    #             your application.</p>
    #
    # @!attribute certificate_arn
    #   <p>The Amazon Resource Name (ARN) of an Certificate Manager SSL certificate. You use
    #               this certificate for the subdomain of your custom domain.</p>
    #
    #   @return [String]
    #
    CustomDomainConfigType = ::Struct.new(
      :certificate_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A custom email sender Lambda configuration type.</p>
    #
    # @!attribute lambda_version
    #   <p>Signature of the "request" attribute in the "event" information Amazon Cognito passes to your
    #               custom email Lambda function. The only supported value is <code>V1_0</code>.</p>
    #
    #   Enum, one of: ["V1_0"]
    #
    #   @return [String]
    #
    # @!attribute lambda_arn
    #   <p>The Amazon Resource Name (ARN) of the Lambda function that Amazon Cognito activates to send
    #               email notifications to users.</p>
    #
    #   @return [String]
    #
    CustomEmailLambdaVersionConfigType = ::Struct.new(
      :lambda_version,
      :lambda_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CustomEmailSenderLambdaVersionType
    #
    module CustomEmailSenderLambdaVersionType
      # No documentation available.
      #
      V1_0 = "V1_0"
    end

    # <p>A custom SMS sender Lambda configuration type.</p>
    #
    # @!attribute lambda_version
    #   <p>Signature of the "request" attribute in the "event" information that Amazon Cognito passes to
    #               your custom SMS Lambda function. The only supported value is <code>V1_0</code>.</p>
    #
    #   Enum, one of: ["V1_0"]
    #
    #   @return [String]
    #
    # @!attribute lambda_arn
    #   <p>The Amazon Resource Name (ARN) of the Lambda function that Amazon Cognito activates to send SMS
    #               notifications to users.</p>
    #
    #   @return [String]
    #
    CustomSMSLambdaVersionConfigType = ::Struct.new(
      :lambda_version,
      :lambda_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CustomSMSSenderLambdaVersionType
    #
    module CustomSMSSenderLambdaVersionType
      # No documentation available.
      #
      V1_0 = "V1_0"
    end

    # Includes enum constants for DefaultEmailOptionType
    #
    module DefaultEmailOptionType
      # No documentation available.
      #
      CONFIRM_WITH_LINK = "CONFIRM_WITH_LINK"

      # No documentation available.
      #
      CONFIRM_WITH_CODE = "CONFIRM_WITH_CODE"
    end

    # @!attribute group_name
    #   <p>The name of the group.</p>
    #
    #   @return [String]
    #
    # @!attribute user_pool_id
    #   <p>The user pool ID for the user pool.</p>
    #
    #   @return [String]
    #
    DeleteGroupInput = ::Struct.new(
      :group_name,
      :user_pool_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteGroupOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_pool_id
    #   <p>The user pool ID.</p>
    #
    #   @return [String]
    #
    # @!attribute provider_name
    #   <p>The IdP name.</p>
    #
    #   @return [String]
    #
    DeleteIdentityProviderInput = ::Struct.new(
      :user_pool_id,
      :provider_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteIdentityProviderOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_pool_id
    #   <p>The user pool ID for the user pool that hosts the resource server.</p>
    #
    #   @return [String]
    #
    # @!attribute identifier
    #   <p>The identifier for the resource server.</p>
    #
    #   @return [String]
    #
    DeleteResourceServerInput = ::Struct.new(
      :user_pool_id,
      :identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteResourceServerOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the request to delete user attributes.</p>
    #
    # @!attribute user_attribute_names
    #   <p>An array of strings representing the user attribute names you want to delete.</p>
    #           <p>For custom attributes, you must prependattach the <code>custom:</code> prefix to the
    #               front of the attribute name.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute access_token
    #   <p>A valid access token that Amazon Cognito issued to the user whose attributes you want to
    #               delete.</p>
    #
    #   @return [String]
    #
    DeleteUserAttributesInput = ::Struct.new(
      :user_attribute_names,
      :access_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::DeleteUserAttributesInput "\
          "user_attribute_names=#{user_attribute_names || 'nil'}, "\
          "access_token=\"[SENSITIVE]\">"
      end
    end

    # <p>Represents the response from the server to delete user attributes.</p>
    #
    DeleteUserAttributesOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the request to delete a user.</p>
    #
    # @!attribute access_token
    #   <p>A valid access token that Amazon Cognito issued to the user whose user profile you want to
    #               delete.</p>
    #
    #   @return [String]
    #
    DeleteUserInput = ::Struct.new(
      :access_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::DeleteUserInput "\
          "access_token=\"[SENSITIVE]\">"
      end
    end

    DeleteUserOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the request to delete a user pool client.</p>
    #
    # @!attribute user_pool_id
    #   <p>The user pool ID for the user pool where you want to delete the client.</p>
    #
    #   @return [String]
    #
    # @!attribute client_id
    #   <p>The app client ID of the app associated with the user pool.</p>
    #
    #   @return [String]
    #
    DeleteUserPoolClientInput = ::Struct.new(
      :user_pool_id,
      :client_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::DeleteUserPoolClientInput "\
          "user_pool_id=#{user_pool_id || 'nil'}, "\
          "client_id=\"[SENSITIVE]\">"
      end
    end

    DeleteUserPoolClientOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain
    #   <p>The domain string. For custom domains, this is the fully-qualified domain name, such
    #               as <code>auth.example.com</code>. For Amazon Cognito prefix domains, this is the prefix alone,
    #               such as <code>auth</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute user_pool_id
    #   <p>The user pool ID.</p>
    #
    #   @return [String]
    #
    DeleteUserPoolDomainInput = ::Struct.new(
      :domain,
      :user_pool_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteUserPoolDomainOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the request to delete a user pool.</p>
    #
    # @!attribute user_pool_id
    #   <p>The user pool ID for the user pool you want to delete.</p>
    #
    #   @return [String]
    #
    DeleteUserPoolInput = ::Struct.new(
      :user_pool_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteUserPoolOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DeliveryMediumType
    #
    module DeliveryMediumType
      # No documentation available.
      #
      SMS = "SMS"

      # No documentation available.
      #
      EMAIL = "EMAIL"
    end

    # @!attribute user_pool_id
    #   <p>The user pool ID.</p>
    #
    #   @return [String]
    #
    # @!attribute provider_name
    #   <p>The IdP name.</p>
    #
    #   @return [String]
    #
    DescribeIdentityProviderInput = ::Struct.new(
      :user_pool_id,
      :provider_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute identity_provider
    #   <p>The IdP that was deleted.</p>
    #
    #   @return [IdentityProviderType]
    #
    DescribeIdentityProviderOutput = ::Struct.new(
      :identity_provider,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_pool_id
    #   <p>The user pool ID for the user pool that hosts the resource server.</p>
    #
    #   @return [String]
    #
    # @!attribute identifier
    #   <p>The identifier for the resource server</p>
    #
    #   @return [String]
    #
    DescribeResourceServerInput = ::Struct.new(
      :user_pool_id,
      :identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_server
    #   <p>The resource server.</p>
    #
    #   @return [ResourceServerType]
    #
    DescribeResourceServerOutput = ::Struct.new(
      :resource_server,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_pool_id
    #   <p>The user pool ID.</p>
    #
    #   @return [String]
    #
    # @!attribute client_id
    #   <p>The app client ID.</p>
    #
    #   @return [String]
    #
    DescribeRiskConfigurationInput = ::Struct.new(
      :user_pool_id,
      :client_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::DescribeRiskConfigurationInput "\
          "user_pool_id=#{user_pool_id || 'nil'}, "\
          "client_id=\"[SENSITIVE]\">"
      end
    end

    # @!attribute risk_configuration
    #   <p>The risk configuration.</p>
    #
    #   @return [RiskConfigurationType]
    #
    DescribeRiskConfigurationOutput = ::Struct.new(
      :risk_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the request to describe the user import job.</p>
    #
    # @!attribute user_pool_id
    #   <p>The user pool ID for the user pool that the users are being imported into.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The job ID for the user import job.</p>
    #
    #   @return [String]
    #
    DescribeUserImportJobInput = ::Struct.new(
      :user_pool_id,
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the response from the server to the request to describe the user import
    #             job.</p>
    #
    # @!attribute user_import_job
    #   <p>The job object that represents the user import job.</p>
    #
    #   @return [UserImportJobType]
    #
    DescribeUserImportJobOutput = ::Struct.new(
      :user_import_job,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the request to describe a user pool client.</p>
    #
    # @!attribute user_pool_id
    #   <p>The user pool ID for the user pool you want to describe.</p>
    #
    #   @return [String]
    #
    # @!attribute client_id
    #   <p>The app client ID of the app associated with the user pool.</p>
    #
    #   @return [String]
    #
    DescribeUserPoolClientInput = ::Struct.new(
      :user_pool_id,
      :client_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::DescribeUserPoolClientInput "\
          "user_pool_id=#{user_pool_id || 'nil'}, "\
          "client_id=\"[SENSITIVE]\">"
      end
    end

    # <p>Represents the response from the server from a request to describe the user pool
    #             client.</p>
    #
    # @!attribute user_pool_client
    #   <p>The user pool client from a server response to describe the user pool client.</p>
    #
    #   @return [UserPoolClientType]
    #
    DescribeUserPoolClientOutput = ::Struct.new(
      :user_pool_client,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain
    #   <p>The domain string. For custom domains, this is the fully-qualified domain name, such
    #               as <code>auth.example.com</code>. For Amazon Cognito prefix domains, this is the prefix alone,
    #               such as <code>auth</code>.</p>
    #
    #   @return [String]
    #
    DescribeUserPoolDomainInput = ::Struct.new(
      :domain,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_description
    #   <p>A domain description object containing information about the domain.</p>
    #
    #   @return [DomainDescriptionType]
    #
    DescribeUserPoolDomainOutput = ::Struct.new(
      :domain_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the request to describe the user pool.</p>
    #
    # @!attribute user_pool_id
    #   <p>The user pool ID for the user pool you want to describe.</p>
    #
    #   @return [String]
    #
    DescribeUserPoolInput = ::Struct.new(
      :user_pool_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the response to describe the user pool.</p>
    #
    # @!attribute user_pool
    #   <p>The container of metadata returned by the server to describe the pool.</p>
    #
    #   @return [UserPoolType]
    #
    DescribeUserPoolOutput = ::Struct.new(
      :user_pool,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The device tracking configuration for a user pool. A user pool with device tracking
    #             deactivated returns a null value.</p>
    #         <note>
    #             <p>When you provide values for any DeviceConfiguration field, you activate device
    #                 tracking.</p>
    #         </note>
    #
    # @!attribute challenge_required_on_new_device
    #   <p>When true, device authentication can replace SMS and time-based one-time password
    #               (TOTP) factors for multi-factor authentication (MFA).</p>
    #           <note>
    #               <p>Users that sign in with devices that have not been confirmed or remembered will
    #                   still have to provide a second factor, whether or not ChallengeRequiredOnNewDevice
    #                   is true, when your user pool requires MFA.</p>
    #           </note>
    #
    #   @return [Boolean]
    #
    # @!attribute device_only_remembered_on_user_prompt
    #   <p>When true, users can opt in to remembering their device. Your app code must use
    #               callback functions to return the user's choice.</p>
    #
    #   @return [Boolean]
    #
    DeviceConfigurationType = ::Struct.new(
      :challenge_required_on_new_device,
      :device_only_remembered_on_user_prompt,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.challenge_required_on_new_device ||= false
        self.device_only_remembered_on_user_prompt ||= false
      end

    end

    # Includes enum constants for DeviceRememberedStatusType
    #
    module DeviceRememberedStatusType
      # No documentation available.
      #
      REMEMBERED = "remembered"

      # No documentation available.
      #
      NOT_REMEMBERED = "not_remembered"
    end

    # <p>The device verifier against which it is authenticated.</p>
    #
    # @!attribute password_verifier
    #   <p>The password verifier.</p>
    #
    #   @return [String]
    #
    # @!attribute salt
    #   <p>The <a href="https://en.wikipedia.org/wiki/Salt_(cryptography)">salt</a>
    #            </p>
    #
    #   @return [String]
    #
    DeviceSecretVerifierConfigType = ::Struct.new(
      :password_verifier,
      :salt,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The device type.</p>
    #
    # @!attribute device_key
    #   <p>The device key.</p>
    #
    #   @return [String]
    #
    # @!attribute device_attributes
    #   <p>The device attributes.</p>
    #
    #   @return [Array<AttributeType>]
    #
    # @!attribute device_create_date
    #   <p>The creation date of the device.</p>
    #
    #   @return [Time]
    #
    # @!attribute device_last_modified_date
    #   <p>The last modified date of the device.</p>
    #
    #   @return [Time]
    #
    # @!attribute device_last_authenticated_date
    #   <p>The date when the device was last authenticated.</p>
    #
    #   @return [Time]
    #
    DeviceType = ::Struct.new(
      :device_key,
      :device_attributes,
      :device_create_date,
      :device_last_modified_date,
      :device_last_authenticated_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A container for information about a domain.</p>
    #
    # @!attribute user_pool_id
    #   <p>The user pool ID.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_account_id
    #   <p>The Amazon Web Services ID for the user pool owner.</p>
    #
    #   @return [String]
    #
    # @!attribute domain
    #   <p>The domain string. For custom domains, this is the fully-qualified domain name, such
    #               as <code>auth.example.com</code>. For Amazon Cognito prefix domains, this is the prefix alone,
    #               such as <code>auth</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_bucket
    #   <p>The Amazon S3 bucket where the static files for this domain are stored.</p>
    #
    #   @return [String]
    #
    # @!attribute cloud_front_distribution
    #   <p>The Amazon Resource Name (ARN) of the Amazon CloudFront distribution.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The app version.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The domain status.</p>
    #
    #   Enum, one of: ["CREATING", "DELETING", "UPDATING", "ACTIVE", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute custom_domain_config
    #   <p>The configuration for a custom domain that hosts the sign-up and sign-in webpages for
    #               your application.</p>
    #
    #   @return [CustomDomainConfigType]
    #
    DomainDescriptionType = ::Struct.new(
      :user_pool_id,
      :aws_account_id,
      :domain,
      :s3_bucket,
      :cloud_front_distribution,
      :version,
      :status,
      :custom_domain_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DomainStatusType
    #
    module DomainStatusType
      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      UPDATING = "UPDATING"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>This exception is thrown when the provider is already supported by the user
    #             pool.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DuplicateProviderException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The email configuration of your user pool. The email configuration type sets your
    #             preferred sending method, Amazon Web Services Region, and sender for messages from your user
    #             pool.</p>
    #         <note>
    #             <p>Amazon Cognito can send email messages with Amazon Simple Email Service resources in the Amazon Web Services Region where
    #                 you created your user pool, and in alternate Regions in some cases. For more
    #                 information on the supported Regions, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-email.html">Email settings for Amazon Cognito user pools</a>.</p>
    #         </note>
    #
    # @!attribute source_arn
    #   <p>The ARN of a verified email address in Amazon SES. Amazon Cognito uses this email address in one of
    #               the following ways, depending on the value that you specify for the
    #                   <code>EmailSendingAccount</code> parameter:</p>
    #           <ul>
    #               <li>
    #                   <p>If you specify <code>COGNITO_DEFAULT</code>, Amazon Cognito uses this address as the
    #                       custom FROM address when it emails your users using its built-in email
    #                       account.</p>
    #               </li>
    #               <li>
    #                   <p>If you specify <code>DEVELOPER</code>, Amazon Cognito emails your users with this
    #                       address by calling Amazon SES on your behalf.</p>
    #               </li>
    #            </ul>
    #           <p>The Region value of the <code>SourceArn</code> parameter must indicate a supported
    #               Amazon Web Services Region of your user pool. Typically, the Region in the <code>SourceArn</code> and
    #               the user pool Region are the same. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-email.html user-pool-email-developer-region-mapping">Amazon SES email configuration regions</a> in the <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools.html">Amazon Cognito Developer
    #                   Guide</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute reply_to_email_address
    #   <p>The destination to which the receiver of the email should reply.</p>
    #
    #   @return [String]
    #
    # @!attribute email_sending_account
    #   <p>Specifies whether Amazon Cognito uses its built-in functionality to send your users email
    #               messages, or uses your Amazon Simple Email Service email configuration. Specify one of the following
    #               values:</p>
    #           <dl>
    #               <dt>COGNITO_DEFAULT</dt>
    #               <dd>
    #                       <p>When Amazon Cognito emails your users, it uses its built-in email functionality.
    #                           When you use the default option, Amazon Cognito allows only a limited number of
    #                           emails each day for your user pool. For typical production environments, the
    #                           default email limit is less than the required delivery volume. To achieve a
    #                           higher delivery volume, specify DEVELOPER to use your Amazon SES email
    #                           configuration.</p>
    #                       <p>To look up the email delivery limit for the default option, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/limits.html">Limits in </a> in the <i> Developer Guide</i>.</p>
    #                       <p>The default FROM address is <code>no-reply@verificationemail.com</code>.
    #                           To customize the FROM address, provide the Amazon Resource Name (ARN) of an
    #                           Amazon SES verified email address for the <code>SourceArn</code>
    #                           parameter.</p>
    #
    #                   </dd>
    #               <dt>DEVELOPER</dt>
    #               <dd>
    #                       <p>When Amazon Cognito emails your users, it uses your Amazon SES configuration. Amazon Cognito
    #                           calls Amazon SES on your behalf to send email from your verified email address.
    #                           When you use this option, the email delivery limits are the same limits that
    #                           apply to your Amazon SES verified email address in your Amazon Web Services account.</p>
    #                       <p>If you use this option, provide the ARN of an Amazon SES verified email address
    #                           for the <code>SourceArn</code> parameter.</p>
    #                       <p>Before Amazon Cognito can email your users, it requires additional permissions to
    #                           call Amazon SES on your behalf. When you update your user pool with this option,
    #                           Amazon Cognito creates a <i>service-linked role</i>, which is a type of
    #                           role, in your Amazon Web Services account. This role contains the permissions
    #                           that allow to access Amazon SES and send email messages with your address. For
    #                           more information about the service-linked role that Amazon Cognito creates, see
    #                               <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/using-service-linked-roles.html">Using Service-Linked Roles for Amazon Cognito</a> in the
    #                               <i>Amazon Cognito Developer Guide</i>.</p>
    #                   </dd>
    #            </dl>
    #
    #   Enum, one of: ["COGNITO_DEFAULT", "DEVELOPER"]
    #
    #   @return [String]
    #
    # @!attribute from
    #   <p>Either the sender’s email address or the sender’s name with their email address. For
    #               example, <code>testuser@example.com</code> or <code>Test User
    #                   <testuser@example.com></code>. This address appears before the body of the
    #               email.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_set
    #   <p>The set of configuration rules that can be applied to emails sent using Amazon Simple Email Service. A
    #               configuration set is applied to an email by including a reference to the configuration
    #               set in the headers of the email. Once applied, all of the rules in that configuration
    #               set are applied to the email. Configuration sets can be used to apply the following
    #               types of rules to emails: </p>
    #           <dl>
    #               <dt>Event publishing</dt>
    #               <dd>
    #                       <p>Amazon Simple Email Service can track the number of send, delivery, open, click, bounce, and
    #                           complaint events for each email sent. Use event publishing to send
    #                           information about these events to other Amazon Web Services services such as and
    #                           Amazon CloudWatch</p>
    #                   </dd>
    #               <dt>IP pool management</dt>
    #               <dd>
    #                       <p>When leasing dedicated IP addresses with Amazon Simple Email Service, you can create groups
    #                           of IP addresses, called dedicated IP pools. You can then associate the
    #                           dedicated IP pools with configuration sets.</p>
    #                   </dd>
    #            </dl>
    #
    #   @return [String]
    #
    EmailConfigurationType = ::Struct.new(
      :source_arn,
      :reply_to_email_address,
      :email_sending_account,
      :from,
      :configuration_set,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EmailSendingAccountType
    #
    module EmailSendingAccountType
      # No documentation available.
      #
      COGNITO_DEFAULT = "COGNITO_DEFAULT"

      # No documentation available.
      #
      DEVELOPER = "DEVELOPER"
    end

    # <p>This exception is thrown when there is a code mismatch and the service fails to
    #             configure the software token TOTP multi-factor authentication (MFA).</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    EnableSoftwareTokenMFAException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the user context data captured at the time of an event request.</p>
    #
    # @!attribute ip_address
    #   <p>The source IP address of your user's device.</p>
    #
    #   @return [String]
    #
    # @!attribute device_name
    #   <p>The user's device name.</p>
    #
    #   @return [String]
    #
    # @!attribute timezone
    #   <p>The user's time zone.</p>
    #
    #   @return [String]
    #
    # @!attribute city
    #   <p>The user's city.</p>
    #
    #   @return [String]
    #
    # @!attribute country
    #   <p>The user's country.</p>
    #
    #   @return [String]
    #
    EventContextDataType = ::Struct.new(
      :ip_address,
      :device_name,
      :timezone,
      :city,
      :country,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the event feedback type.</p>
    #
    # @!attribute feedback_value
    #   <p>The event feedback value.</p>
    #
    #   Enum, one of: ["Valid", "Invalid"]
    #
    #   @return [String]
    #
    # @!attribute provider
    #   <p>The provider.</p>
    #
    #   @return [String]
    #
    # @!attribute feedback_date
    #   <p>The event feedback date.</p>
    #
    #   @return [Time]
    #
    EventFeedbackType = ::Struct.new(
      :feedback_value,
      :provider,
      :feedback_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EventFilterType
    #
    module EventFilterType
      # No documentation available.
      #
      SIGN_IN = "SIGN_IN"

      # No documentation available.
      #
      PASSWORD_CHANGE = "PASSWORD_CHANGE"

      # No documentation available.
      #
      SIGN_UP = "SIGN_UP"
    end

    # Includes enum constants for EventResponseType
    #
    module EventResponseType
      # No documentation available.
      #
      Success = "Success"

      # No documentation available.
      #
      Failure = "Failure"
    end

    # <p>The event risk type.</p>
    #
    # @!attribute risk_decision
    #   <p>The risk decision.</p>
    #
    #   Enum, one of: ["NoRisk", "AccountTakeover", "Block"]
    #
    #   @return [String]
    #
    # @!attribute risk_level
    #   <p>The risk level.</p>
    #
    #   Enum, one of: ["Low", "Medium", "High"]
    #
    #   @return [String]
    #
    # @!attribute compromised_credentials_detected
    #   <p>Indicates whether compromised credentials were detected during an authentication
    #               event.</p>
    #
    #   @return [Boolean]
    #
    EventRiskType = ::Struct.new(
      :risk_decision,
      :risk_level,
      :compromised_credentials_detected,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EventType
    #
    module EventType
      # No documentation available.
      #
      SignIn = "SignIn"

      # No documentation available.
      #
      SignUp = "SignUp"

      # No documentation available.
      #
      ForgotPassword = "ForgotPassword"
    end

    # <p>This exception is thrown if a code has expired.</p>
    #
    # @!attribute message
    #   <p>The message returned when the expired code exception is thrown.</p>
    #
    #   @return [String]
    #
    ExpiredCodeException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ExplicitAuthFlowsType
    #
    module ExplicitAuthFlowsType
      # No documentation available.
      #
      ADMIN_NO_SRP_AUTH = "ADMIN_NO_SRP_AUTH"

      # No documentation available.
      #
      CUSTOM_AUTH_FLOW_ONLY = "CUSTOM_AUTH_FLOW_ONLY"

      # No documentation available.
      #
      USER_PASSWORD_AUTH = "USER_PASSWORD_AUTH"

      # No documentation available.
      #
      ALLOW_ADMIN_USER_PASSWORD_AUTH = "ALLOW_ADMIN_USER_PASSWORD_AUTH"

      # No documentation available.
      #
      ALLOW_CUSTOM_AUTH = "ALLOW_CUSTOM_AUTH"

      # No documentation available.
      #
      ALLOW_USER_PASSWORD_AUTH = "ALLOW_USER_PASSWORD_AUTH"

      # No documentation available.
      #
      ALLOW_USER_SRP_AUTH = "ALLOW_USER_SRP_AUTH"

      # No documentation available.
      #
      ALLOW_REFRESH_TOKEN_AUTH = "ALLOW_REFRESH_TOKEN_AUTH"
    end

    # Includes enum constants for FeedbackValueType
    #
    module FeedbackValueType
      # No documentation available.
      #
      VALID = "Valid"

      # No documentation available.
      #
      INVALID = "Invalid"
    end

    # <p>Represents the request to forget the device.</p>
    #
    # @!attribute access_token
    #   <p>A valid access token that Amazon Cognito issued to the user whose registered device you want to
    #               forget.</p>
    #
    #   @return [String]
    #
    # @!attribute device_key
    #   <p>The device key.</p>
    #
    #   @return [String]
    #
    ForgetDeviceInput = ::Struct.new(
      :access_token,
      :device_key,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::ForgetDeviceInput "\
          "access_token=\"[SENSITIVE]\", "\
          "device_key=#{device_key || 'nil'}>"
      end
    end

    ForgetDeviceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the request to reset a user's password.</p>
    #
    # @!attribute client_id
    #   <p>The ID of the client associated with the user pool.</p>
    #
    #   @return [String]
    #
    # @!attribute secret_hash
    #   <p>A keyed-hash message authentication code (HMAC) calculated using the secret key of a
    #               user pool client and username plus the client ID in the message.</p>
    #
    #   @return [String]
    #
    # @!attribute user_context_data
    #   <p>Contextual data about your user session, such as the device fingerprint, IP address, or location. Amazon Cognito advanced
    #   security evaluates the risk of an authentication event based on the context that your app generates and passes to Amazon Cognito
    #   when it makes API requests.</p>
    #
    #   @return [UserContextDataType]
    #
    # @!attribute username
    #   <p>The user name of the user for whom you want to enter a code to reset a forgotten
    #               password.</p>
    #
    #   @return [String]
    #
    # @!attribute analytics_metadata
    #   <p>The Amazon Pinpoint analytics metadata that contributes to your metrics for
    #                   <code>ForgotPassword</code> calls.</p>
    #
    #   @return [AnalyticsMetadataType]
    #
    # @!attribute client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for any custom workflows
    #               that this action triggers.</p>
    #           <p>You create custom workflows by assigning Lambda functions to user pool
    #               triggers. When you use the ForgotPassword API action, Amazon Cognito invokes any
    #               functions that are assigned to the following triggers: <i>pre sign-up</i>,
    #                   <i>custom message</i>, and <i>user migration</i>. When
    #               Amazon Cognito invokes any of these functions, it passes a JSON payload, which the
    #               function receives as input. This payload contains a <code>clientMetadata</code>
    #               attribute, which provides the data that you assigned to the ClientMetadata parameter in
    #               your ForgotPassword request. In your function code in Lambda, you can
    #               process the <code>clientMetadata</code> value to enhance your workflow for your specific
    #               needs.</p>
    #
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html">
    #   Customizing user pool Workflows with Lambda Triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #
    #           <note>
    #               <p>When you use the ClientMetadata parameter, remember that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                       <p>Store the ClientMetadata value. This data is available only to Lambda
    #                           triggers that are assigned to a user pool to support custom workflows. If
    #                           your user pool configuration doesn't include triggers, the ClientMetadata
    #                           parameter serves no purpose.</p>
    #                   </li>
    #                  <li>
    #                       <p>Validate the ClientMetadata value.</p>
    #                   </li>
    #                  <li>
    #                       <p>Encrypt the ClientMetadata value. Don't use Amazon Cognito to provide sensitive
    #                           information.</p>
    #                   </li>
    #               </ul>
    #           </note>
    #
    #   @return [Hash<String, String>]
    #
    ForgotPasswordInput = ::Struct.new(
      :client_id,
      :secret_hash,
      :user_context_data,
      :username,
      :analytics_metadata,
      :client_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::ForgotPasswordInput "\
          "client_id=\"[SENSITIVE]\", "\
          "secret_hash=\"[SENSITIVE]\", "\
          "user_context_data=#{user_context_data || 'nil'}, "\
          "username=\"[SENSITIVE]\", "\
          "analytics_metadata=#{analytics_metadata || 'nil'}, "\
          "client_metadata=#{client_metadata || 'nil'}>"
      end
    end

    # <p>The response from Amazon Cognito to a request to reset a password.</p>
    #
    # @!attribute code_delivery_details
    #   <p>The code delivery details returned by the server in response to the request to reset a
    #               password.</p>
    #
    #   @return [CodeDeliveryDetailsType]
    #
    ForgotPasswordOutput = ::Struct.new(
      :code_delivery_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the request to get the header information of the CSV file for the user
    #             import job.</p>
    #
    # @!attribute user_pool_id
    #   <p>The user pool ID for the user pool that the users are to be imported into.</p>
    #
    #   @return [String]
    #
    GetCSVHeaderInput = ::Struct.new(
      :user_pool_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the response from the server to the request to get the header information
    #             of the CSV file for the user import job.</p>
    #
    # @!attribute user_pool_id
    #   <p>The user pool ID for the user pool that the users are to be imported into.</p>
    #
    #   @return [String]
    #
    # @!attribute csv_header
    #   <p>The header information of the CSV file for the user import job.</p>
    #
    #   @return [Array<String>]
    #
    GetCSVHeaderOutput = ::Struct.new(
      :user_pool_id,
      :csv_header,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the request to get the device.</p>
    #
    # @!attribute device_key
    #   <p>The device key.</p>
    #
    #   @return [String]
    #
    # @!attribute access_token
    #   <p>A valid access token that Amazon Cognito issued to the user whose device information you want
    #               to request.</p>
    #
    #   @return [String]
    #
    GetDeviceInput = ::Struct.new(
      :device_key,
      :access_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::GetDeviceInput "\
          "device_key=#{device_key || 'nil'}, "\
          "access_token=\"[SENSITIVE]\">"
      end
    end

    # <p>Gets the device response.</p>
    #
    # @!attribute device
    #   <p>The device.</p>
    #
    #   @return [DeviceType]
    #
    GetDeviceOutput = ::Struct.new(
      :device,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute group_name
    #   <p>The name of the group.</p>
    #
    #   @return [String]
    #
    # @!attribute user_pool_id
    #   <p>The user pool ID for the user pool.</p>
    #
    #   @return [String]
    #
    GetGroupInput = ::Struct.new(
      :group_name,
      :user_pool_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute group
    #   <p>The group object for the group.</p>
    #
    #   @return [GroupType]
    #
    GetGroupOutput = ::Struct.new(
      :group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_pool_id
    #   <p>The user pool ID.</p>
    #
    #   @return [String]
    #
    # @!attribute idp_identifier
    #   <p>The IdP identifier.</p>
    #
    #   @return [String]
    #
    GetIdentityProviderByIdentifierInput = ::Struct.new(
      :user_pool_id,
      :idp_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute identity_provider
    #   <p>The IdP object.</p>
    #
    #   @return [IdentityProviderType]
    #
    GetIdentityProviderByIdentifierOutput = ::Struct.new(
      :identity_provider,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Request to get a signing certificate from Amazon Cognito.</p>
    #
    # @!attribute user_pool_id
    #   <p>The user pool ID.</p>
    #
    #   @return [String]
    #
    GetSigningCertificateInput = ::Struct.new(
      :user_pool_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Response from Amazon Cognito for a signing certificate request.</p>
    #
    # @!attribute certificate
    #   <p>The signing certificate.</p>
    #
    #   @return [String]
    #
    GetSigningCertificateOutput = ::Struct.new(
      :certificate,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_pool_id
    #   <p>The user pool ID for the user pool.</p>
    #
    #   @return [String]
    #
    # @!attribute client_id
    #   <p>The client ID for the client app.</p>
    #
    #   @return [String]
    #
    GetUICustomizationInput = ::Struct.new(
      :user_pool_id,
      :client_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::GetUICustomizationInput "\
          "user_pool_id=#{user_pool_id || 'nil'}, "\
          "client_id=\"[SENSITIVE]\">"
      end
    end

    # @!attribute ui_customization
    #   <p>The UI customization information.</p>
    #
    #   @return [UICustomizationType]
    #
    GetUICustomizationOutput = ::Struct.new(
      :ui_customization,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the request to get user attribute verification.</p>
    #
    # @!attribute access_token
    #   <p>A non-expired access token for the user whose attribute verification code you want to
    #               generate.</p>
    #
    #   @return [String]
    #
    # @!attribute attribute_name
    #   <p>The attribute name returned by the server response to get the user attribute
    #               verification code.</p>
    #
    #   @return [String]
    #
    # @!attribute client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for any custom workflows
    #               that this action triggers.</p>
    #           <p>You create custom workflows by assigning Lambda functions to user pool
    #               triggers. When you use the GetUserAttributeVerificationCode API action, Amazon Cognito invokes
    #               the function that is assigned to the <i>custom message</i> trigger. When
    #               Amazon Cognito invokes this function, it passes a JSON payload, which the function receives as
    #               input. This payload contains a <code>clientMetadata</code> attribute, which provides the
    #               data that you assigned to the ClientMetadata parameter in your
    #               GetUserAttributeVerificationCode request. In your function code in Lambda, you can process the <code>clientMetadata</code> value to enhance your workflow for
    #               your specific needs.</p>
    #
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html">
    #   Customizing user pool Workflows with Lambda Triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #
    #           <note>
    #               <p>When you use the ClientMetadata parameter, remember that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                       <p>Store the ClientMetadata value. This data is available only to Lambda
    #                           triggers that are assigned to a user pool to support custom workflows. If
    #                           your user pool configuration doesn't include triggers, the ClientMetadata
    #                           parameter serves no purpose.</p>
    #                   </li>
    #                  <li>
    #                       <p>Validate the ClientMetadata value.</p>
    #                   </li>
    #                  <li>
    #                       <p>Encrypt the ClientMetadata value. Don't use Amazon Cognito to provide sensitive
    #                           information.</p>
    #                   </li>
    #               </ul>
    #           </note>
    #
    #   @return [Hash<String, String>]
    #
    GetUserAttributeVerificationCodeInput = ::Struct.new(
      :access_token,
      :attribute_name,
      :client_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::GetUserAttributeVerificationCodeInput "\
          "access_token=\"[SENSITIVE]\", "\
          "attribute_name=#{attribute_name || 'nil'}, "\
          "client_metadata=#{client_metadata || 'nil'}>"
      end
    end

    # <p>The verification code response returned by the server response to get the user
    #             attribute verification code.</p>
    #
    # @!attribute code_delivery_details
    #   <p>The code delivery details returned by the server in response to the request to get the
    #               user attribute verification code.</p>
    #
    #   @return [CodeDeliveryDetailsType]
    #
    GetUserAttributeVerificationCodeOutput = ::Struct.new(
      :code_delivery_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the request to get information about the user.</p>
    #
    # @!attribute access_token
    #   <p>A non-expired access token for the user whose information you want to query.</p>
    #
    #   @return [String]
    #
    GetUserInput = ::Struct.new(
      :access_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::GetUserInput "\
          "access_token=\"[SENSITIVE]\">"
      end
    end

    # <p>Represents the response from the server from the request to get information about the
    #             user.</p>
    #
    # @!attribute username
    #   <p>The user name of the user you want to retrieve from the get user request.</p>
    #
    #   @return [String]
    #
    # @!attribute user_attributes
    #   <p>An array of name-value pairs representing user attributes.</p>
    #           <p>For custom attributes, you must prepend the <code>custom:</code> prefix to the
    #               attribute name.</p>
    #
    #   @return [Array<AttributeType>]
    #
    # @!attribute mfa_options
    #   <p>
    #               <i>This response parameter is no longer supported.</i> It provides
    #               information only about SMS MFA configurations. It doesn't provide information about
    #               time-based one-time password (TOTP) software token MFA configurations. To look up
    #               information about either type of MFA configuration, use UserMFASettingList
    #               instead.</p>
    #
    #   @return [Array<MFAOptionType>]
    #
    # @!attribute preferred_mfa_setting
    #   <p>The user's preferred MFA setting.</p>
    #
    #   @return [String]
    #
    # @!attribute user_mfa_setting_list
    #   <p>The MFA options that are activated for the user. The possible values in this list are
    #                   <code>SMS_MFA</code> and <code>SOFTWARE_TOKEN_MFA</code>.</p>
    #
    #   @return [Array<String>]
    #
    GetUserOutput = ::Struct.new(
      :username,
      :user_attributes,
      :mfa_options,
      :preferred_mfa_setting,
      :user_mfa_setting_list,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::GetUserOutput "\
          "username=\"[SENSITIVE]\", "\
          "user_attributes=#{user_attributes || 'nil'}, "\
          "mfa_options=#{mfa_options || 'nil'}, "\
          "preferred_mfa_setting=#{preferred_mfa_setting || 'nil'}, "\
          "user_mfa_setting_list=#{user_mfa_setting_list || 'nil'}>"
      end
    end

    # @!attribute user_pool_id
    #   <p>The user pool ID.</p>
    #
    #   @return [String]
    #
    GetUserPoolMfaConfigInput = ::Struct.new(
      :user_pool_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute sms_mfa_configuration
    #   <p>The SMS text message multi-factor (MFA) configuration.</p>
    #
    #   @return [SmsMfaConfigType]
    #
    # @!attribute software_token_mfa_configuration
    #   <p>The software token multi-factor (MFA) configuration.</p>
    #
    #   @return [SoftwareTokenMfaConfigType]
    #
    # @!attribute mfa_configuration
    #   <p>The multi-factor (MFA) configuration. Valid values include:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>OFF</code> MFA won't be used for any users.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ON</code> MFA is required for all users to sign in.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>OPTIONAL</code> MFA will be required only for individual users who have
    #                       an MFA factor activated.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["OFF", "ON", "OPTIONAL"]
    #
    #   @return [String]
    #
    GetUserPoolMfaConfigOutput = ::Struct.new(
      :sms_mfa_configuration,
      :software_token_mfa_configuration,
      :mfa_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the request to sign out all devices.</p>
    #
    # @!attribute access_token
    #   <p>A valid access token that Amazon Cognito issued to the user who you want to sign out.</p>
    #
    #   @return [String]
    #
    GlobalSignOutInput = ::Struct.new(
      :access_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::GlobalSignOutInput "\
          "access_token=\"[SENSITIVE]\">"
      end
    end

    # <p>The response to the request to sign out all devices.</p>
    #
    GlobalSignOutOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when Amazon Cognito encounters a group that already exists in the user
    #             pool.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    GroupExistsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The group type.</p>
    #
    # @!attribute group_name
    #   <p>The name of the group.</p>
    #
    #   @return [String]
    #
    # @!attribute user_pool_id
    #   <p>The user pool ID for the user pool.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A string containing the description of the group.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The role Amazon Resource Name (ARN) for the group.</p>
    #
    #   @return [String]
    #
    # @!attribute precedence
    #   <p>A non-negative integer value that specifies the precedence of this group relative to
    #               the other groups that a user can belong to in the user pool. Zero is the highest
    #               precedence value. Groups with lower <code>Precedence</code> values take precedence over
    #               groups with higher ornull <code>Precedence</code> values. If a user belongs to two or
    #               more groups, it is the group with the lowest precedence value whose role ARN is given in
    #               the user's tokens for the <code>cognito:roles</code> and
    #                   <code>cognito:preferred_role</code> claims.</p>
    #           <p>Two groups can have the same <code>Precedence</code> value. If this happens, neither
    #               group takes precedence over the other. If two groups with the same
    #                   <code>Precedence</code> have the same role ARN, that role is used in the
    #                   <code>cognito:preferred_role</code> claim in tokens for users in each group. If the
    #               two groups have different role ARNs, the <code>cognito:preferred_role</code> claim isn't
    #               set in users' tokens.</p>
    #           <p>The default <code>Precedence</code> value is null.</p>
    #
    #   @return [Integer]
    #
    # @!attribute last_modified_date
    #   <p>The date the group was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute creation_date
    #   <p>The date the group was created.</p>
    #
    #   @return [Time]
    #
    GroupType = ::Struct.new(
      :group_name,
      :user_pool_id,
      :description,
      :role_arn,
      :precedence,
      :last_modified_date,
      :creation_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The HTTP header.</p>
    #
    # @!attribute header_name
    #   <p>The header name.</p>
    #
    #   @return [String]
    #
    # @!attribute header_value
    #   <p>The header value.</p>
    #
    #   @return [String]
    #
    HttpHeader = ::Struct.new(
      :header_name,
      :header_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A container for information about an IdP.</p>
    #
    # @!attribute user_pool_id
    #   <p>The user pool ID.</p>
    #
    #   @return [String]
    #
    # @!attribute provider_name
    #   <p>The IdP name.</p>
    #
    #   @return [String]
    #
    # @!attribute provider_type
    #   <p>The IdP type.</p>
    #
    #   Enum, one of: ["SAML", "Facebook", "Google", "LoginWithAmazon", "SignInWithApple", "OIDC"]
    #
    #   @return [String]
    #
    # @!attribute provider_details
    #   <p>The IdP details. The following list describes the provider detail keys for each IdP
    #               type.</p>
    #           <ul>
    #               <li>
    #                   <p>For Google and Login with Amazon:</p>
    #                   <ul>
    #                     <li>
    #                           <p>client_id</p>
    #                       </li>
    #                     <li>
    #                           <p>client_secret</p>
    #                       </li>
    #                     <li>
    #                           <p>authorize_scopes</p>
    #                       </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                   <p>For Facebook:</p>
    #                   <ul>
    #                     <li>
    #                           <p>client_id</p>
    #                       </li>
    #                     <li>
    #                           <p>client_secret</p>
    #                       </li>
    #                     <li>
    #                           <p>authorize_scopes</p>
    #                       </li>
    #                     <li>
    #                           <p>api_version</p>
    #                       </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                   <p>For Sign in with Apple:</p>
    #                   <ul>
    #                     <li>
    #                           <p>client_id</p>
    #                       </li>
    #                     <li>
    #                           <p>team_id</p>
    #                       </li>
    #                     <li>
    #                           <p>key_id</p>
    #                       </li>
    #                     <li>
    #                           <p>private_key</p>
    #                           <p>
    #                           <i>You can submit a private_key when you add or update an IdP.
    #                                   Describe operations don't return the private key.</i>
    #                        </p>
    #                       </li>
    #                     <li>
    #                           <p>authorize_scopes</p>
    #                       </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                   <p>For OIDC providers:</p>
    #                   <ul>
    #                     <li>
    #                           <p>client_id</p>
    #                       </li>
    #                     <li>
    #                           <p>client_secret</p>
    #                       </li>
    #                     <li>
    #                           <p>attributes_request_method</p>
    #                       </li>
    #                     <li>
    #                           <p>oidc_issuer</p>
    #                       </li>
    #                     <li>
    #                           <p>authorize_scopes</p>
    #                       </li>
    #                     <li>
    #                           <p>The following keys are only present if Amazon Cognito didn't discover them at
    #                               the <code>oidc_issuer</code> URL.</p>
    #                           <ul>
    #                           <li>
    #                                   <p>authorize_url </p>
    #                               </li>
    #                           <li>
    #                                   <p>token_url </p>
    #                               </li>
    #                           <li>
    #                                   <p>attributes_url </p>
    #                               </li>
    #                           <li>
    #                                   <p>jwks_uri </p>
    #                               </li>
    #                        </ul>
    #                       </li>
    #                     <li>
    #                           <p>Amazon Cognito sets the value of the following keys automatically. They are
    #                               read-only.</p>
    #                           <ul>
    #                           <li>
    #                                   <p>attributes_url_add_attributes </p>
    #                               </li>
    #                        </ul>
    #                       </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                   <p>For SAML providers:</p>
    #                   <ul>
    #                     <li>
    #                           <p>MetadataFile or MetadataURL</p>
    #                       </li>
    #                     <li>
    #                           <p>IDPSignout <i>optional</i>
    #                        </p>
    #                       </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute attribute_mapping
    #   <p>A mapping of IdP attributes to standard and custom user pool attributes.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute idp_identifiers
    #   <p>A list of IdP identifiers.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute last_modified_date
    #   <p>The date the IdP was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute creation_date
    #   <p>The date the IdP was created.</p>
    #
    #   @return [Time]
    #
    IdentityProviderType = ::Struct.new(
      :user_pool_id,
      :provider_name,
      :provider_type,
      :provider_details,
      :attribute_mapping,
      :idp_identifiers,
      :last_modified_date,
      :creation_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for IdentityProviderTypeType
    #
    module IdentityProviderTypeType
      # No documentation available.
      #
      SAML = "SAML"

      # No documentation available.
      #
      Facebook = "Facebook"

      # No documentation available.
      #
      Google = "Google"

      # No documentation available.
      #
      LoginWithAmazon = "LoginWithAmazon"

      # No documentation available.
      #
      SignInWithApple = "SignInWithApple"

      # No documentation available.
      #
      OIDC = "OIDC"
    end

    # <p>Initiates the authentication request.</p>
    #
    # @!attribute auth_flow
    #   <p>The authentication flow for this call to run. The API action will depend on this
    #               value. For example:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>REFRESH_TOKEN_AUTH</code> takes in a valid refresh token and returns new
    #                       tokens.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>USER_SRP_AUTH</code> takes in <code>USERNAME</code> and
    #                           <code>SRP_A</code> and returns the SRP variables to be used for next
    #                       challenge execution.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>USER_PASSWORD_AUTH</code> takes in <code>USERNAME</code> and
    #                           <code>PASSWORD</code> and returns the next challenge or tokens.</p>
    #               </li>
    #            </ul>
    #           <p>Valid values include:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>USER_SRP_AUTH</code>: Authentication flow for the Secure Remote Password
    #                       (SRP) protocol.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>REFRESH_TOKEN_AUTH</code>/<code>REFRESH_TOKEN</code>: Authentication
    #                       flow for refreshing the access token and ID token by supplying a valid refresh
    #                       token.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>CUSTOM_AUTH</code>: Custom authentication flow.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>USER_PASSWORD_AUTH</code>: Non-SRP authentication flow; user name and
    #                       password are passed directly. If a user migration Lambda trigger is set, this
    #                       flow will invoke the user migration Lambda if it doesn't find the user name in
    #                       the user pool. </p>
    #               </li>
    #            </ul>
    #           <p>
    #               <code>ADMIN_NO_SRP_AUTH</code> isn't a valid value.</p>
    #
    #   Enum, one of: ["USER_SRP_AUTH", "REFRESH_TOKEN_AUTH", "REFRESH_TOKEN", "CUSTOM_AUTH", "ADMIN_NO_SRP_AUTH", "USER_PASSWORD_AUTH", "ADMIN_USER_PASSWORD_AUTH"]
    #
    #   @return [String]
    #
    # @!attribute auth_parameters
    #   <p>The authentication parameters. These are inputs corresponding to the
    #                   <code>AuthFlow</code> that you're invoking. The required values depend on the value
    #               of <code>AuthFlow</code>:</p>
    #           <ul>
    #               <li>
    #                   <p>For <code>USER_SRP_AUTH</code>: <code>USERNAME</code> (required),
    #                           <code>SRP_A</code> (required), <code>SECRET_HASH</code> (required if the app
    #                       client is configured with a client secret), <code>DEVICE_KEY</code>.</p>
    #               </li>
    #               <li>
    #                   <p>For <code>REFRESH_TOKEN_AUTH/REFRESH_TOKEN</code>: <code>REFRESH_TOKEN</code>
    #                       (required), <code>SECRET_HASH</code> (required if the app client is configured
    #                       with a client secret), <code>DEVICE_KEY</code>.</p>
    #               </li>
    #               <li>
    #                   <p>For <code>CUSTOM_AUTH</code>: <code>USERNAME</code> (required),
    #                           <code>SECRET_HASH</code> (if app client is configured with client secret),
    #                           <code>DEVICE_KEY</code>. To start the authentication flow with password
    #                       verification, include <code>ChallengeName: SRP_A</code> and <code>SRP_A: (The
    #                           SRP_A Value)</code>.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for certain custom
    #               workflows that this action triggers.</p>
    #           <p>You create custom workflows by assigning Lambda functions to user pool triggers.
    #               When you use the InitiateAuth API action, Amazon Cognito invokes the Lambda functions that are
    #               specified for various triggers. The ClientMetadata value is passed as input to the
    #               functions for only the following triggers:</p>
    #           <ul>
    #               <li>
    #                   <p>Pre signup</p>
    #               </li>
    #               <li>
    #                   <p>Pre authentication</p>
    #               </li>
    #               <li>
    #                   <p>User migration</p>
    #               </li>
    #            </ul>
    #           <p>When Amazon Cognito invokes the functions for these triggers, it passes a JSON payload, which
    #               the function receives as input. This payload contains a <code>validationData</code>
    #               attribute, which provides the data that you assigned to the ClientMetadata parameter in
    #               your InitiateAuth request. In your function code in Lambda, you can process the
    #                   <code>validationData</code> value to enhance your workflow for your specific
    #               needs.</p>
    #           <p>When you use the InitiateAuth API action, Amazon Cognito also invokes the functions for the
    #               following triggers, but it doesn't provide the ClientMetadata value as input:</p>
    #           <ul>
    #               <li>
    #                   <p>Post authentication</p>
    #               </li>
    #               <li>
    #                   <p>Custom message</p>
    #               </li>
    #               <li>
    #                   <p>Pre token generation</p>
    #               </li>
    #               <li>
    #                   <p>Create auth challenge</p>
    #               </li>
    #               <li>
    #                   <p>Define auth challenge</p>
    #               </li>
    #               <li>
    #                   <p>Verify auth challenge</p>
    #               </li>
    #            </ul>
    #
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html">
    #   Customizing user pool Workflows with Lambda Triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #
    #           <note>
    #               <p>When you use the ClientMetadata parameter, remember that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                       <p>Store the ClientMetadata value. This data is available only to Lambda
    #                           triggers that are assigned to a user pool to support custom workflows. If
    #                           your user pool configuration doesn't include triggers, the ClientMetadata
    #                           parameter serves no purpose.</p>
    #                   </li>
    #                  <li>
    #                       <p>Validate the ClientMetadata value.</p>
    #                   </li>
    #                  <li>
    #                       <p>Encrypt the ClientMetadata value. Don't use Amazon Cognito to provide sensitive
    #                           information.</p>
    #                   </li>
    #               </ul>
    #           </note>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute client_id
    #   <p>The app client ID.</p>
    #
    #   @return [String]
    #
    # @!attribute analytics_metadata
    #   <p>The Amazon Pinpoint analytics metadata that contributes to your metrics for
    #                   <code>InitiateAuth</code> calls.</p>
    #
    #   @return [AnalyticsMetadataType]
    #
    # @!attribute user_context_data
    #   <p>Contextual data about your user session, such as the device fingerprint, IP address, or location. Amazon Cognito advanced
    #   security evaluates the risk of an authentication event based on the context that your app generates and passes to Amazon Cognito
    #   when it makes API requests.</p>
    #
    #   @return [UserContextDataType]
    #
    InitiateAuthInput = ::Struct.new(
      :auth_flow,
      :auth_parameters,
      :client_metadata,
      :client_id,
      :analytics_metadata,
      :user_context_data,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::InitiateAuthInput "\
          "auth_flow=#{auth_flow || 'nil'}, "\
          "auth_parameters=\"[SENSITIVE]\", "\
          "client_metadata=#{client_metadata || 'nil'}, "\
          "client_id=\"[SENSITIVE]\", "\
          "analytics_metadata=#{analytics_metadata || 'nil'}, "\
          "user_context_data=#{user_context_data || 'nil'}>"
      end
    end

    # <p>Initiates the authentication response.</p>
    #
    # @!attribute challenge_name
    #   <p>The name of the challenge that you're responding to with this call. This name is
    #               returned in the <code>AdminInitiateAuth</code> response if you must pass another
    #               challenge.</p>
    #           <p>Valid values include the following:</p>
    #           <note>
    #               <p>All of the following challenges require <code>USERNAME</code> and
    #                       <code>SECRET_HASH</code> (if applicable) in the parameters.</p>
    #           </note>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>SMS_MFA</code>: Next challenge is to supply an
    #                       <code>SMS_MFA_CODE</code>, delivered via SMS.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>PASSWORD_VERIFIER</code>: Next challenge is to supply
    #                           <code>PASSWORD_CLAIM_SIGNATURE</code>,
    #                           <code>PASSWORD_CLAIM_SECRET_BLOCK</code>, and <code>TIMESTAMP</code> after
    #                       the client-side SRP calculations.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>CUSTOM_CHALLENGE</code>: This is returned if your custom authentication
    #                       flow determines that the user should pass another challenge before tokens are
    #                       issued.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>DEVICE_SRP_AUTH</code>: If device tracking was activated on your user
    #                       pool and the previous challenges were passed, this challenge is returned so that
    #                       Amazon Cognito can start tracking this device.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>DEVICE_PASSWORD_VERIFIER</code>: Similar to
    #                           <code>PASSWORD_VERIFIER</code>, but for devices only.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>NEW_PASSWORD_REQUIRED</code>: For users who are required to change their
    #                       passwords after successful first login. </p>
    #                   <p>Respond to this challenge with <code>NEW_PASSWORD</code> and any required
    #                       attributes that Amazon Cognito returned in the <code>requiredAttributes</code> parameter.
    #                       You can also set values for attributes that aren't required by your user pool
    #                       and that your app client can write. For more information, see <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_RespondToAuthChallenge.html">RespondToAuthChallenge</a>.</p>
    #
    #                  <note>
    #                     <p>In a <code>NEW_PASSWORD_REQUIRED</code> challenge response, you can't modify a required attribute that already has a value.
    #   In <code>RespondToAuthChallenge</code>, set a value for any keys that Amazon Cognito returned in the <code>requiredAttributes</code> parameter,
    #   then use the <code>UpdateUserAttributes</code> API operation to modify the value of any additional attributes.</p>
    #                  </note>
    #
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>MFA_SETUP</code>: For users who are required to setup an MFA factor
    #                       before they can sign in. The MFA types activated for the user pool will be
    #                       listed in the challenge parameters <code>MFA_CAN_SETUP</code> value. </p>
    #                   <p> To set up software token MFA, use the session returned here from
    #                           <code>InitiateAuth</code> as an input to
    #                       <code>AssociateSoftwareToken</code>. Use the session returned by
    #                           <code>VerifySoftwareToken</code> as an input to
    #                           <code>RespondToAuthChallenge</code> with challenge name
    #                           <code>MFA_SETUP</code> to complete sign-in. To set up SMS MFA, an
    #                       administrator should help the user to add a phone number to their account, and
    #                       then the user should call <code>InitiateAuth</code> again to restart
    #                       sign-in.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SMS_MFA", "SOFTWARE_TOKEN_MFA", "SELECT_MFA_TYPE", "MFA_SETUP", "PASSWORD_VERIFIER", "CUSTOM_CHALLENGE", "DEVICE_SRP_AUTH", "DEVICE_PASSWORD_VERIFIER", "ADMIN_NO_SRP_AUTH", "NEW_PASSWORD_REQUIRED"]
    #
    #   @return [String]
    #
    # @!attribute session
    #   <p>The session that should pass both ways in challenge-response calls to the service. If
    #               the caller must pass another challenge, they return a session with other challenge
    #               parameters. This session should be passed as it is to the next
    #                   <code>RespondToAuthChallenge</code> API call.</p>
    #
    #   @return [String]
    #
    # @!attribute challenge_parameters
    #   <p>The challenge parameters. These are returned in the <code>InitiateAuth</code> response
    #               if you must pass another challenge. The responses in this parameter should be used to
    #               compute inputs to the next call (<code>RespondToAuthChallenge</code>). </p>
    #           <p>All challenges require <code>USERNAME</code> and <code>SECRET_HASH</code> (if
    #               applicable).</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute authentication_result
    #   <p>The result of the authentication response. This result is only returned if the caller
    #               doesn't need to pass another challenge. If the caller does need to pass another
    #               challenge before it gets tokens, <code>ChallengeName</code>,
    #                   <code>ChallengeParameters</code>, and <code>Session</code> are returned.</p>
    #
    #   @return [AuthenticationResultType]
    #
    InitiateAuthOutput = ::Struct.new(
      :challenge_name,
      :session,
      :challenge_parameters,
      :authentication_result,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when Amazon Cognito encounters an internal error.</p>
    #
    # @!attribute message
    #   <p>The message returned when Amazon Cognito throws an internal error exception.</p>
    #
    #   @return [String]
    #
    InternalErrorException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when Amazon Cognito isn't allowed to use your email identity. HTTP
    #             status code: 400.</p>
    #
    # @!attribute message
    #   <p>The message returned when you have an unverified email address or the identity policy
    #               isn't set on an email address that Amazon Cognito can access.</p>
    #
    #   @return [String]
    #
    InvalidEmailRoleAccessPolicyException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when Amazon Cognito encounters an invalid Lambda response.</p>
    #
    # @!attribute message
    #   <p>The message returned when Amazon Cognito throws an invalid Lambda response
    #               exception.</p>
    #
    #   @return [String]
    #
    InvalidLambdaResponseException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when the specified OAuth flow is not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidOAuthFlowException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when the Amazon Cognito service encounters an invalid
    #             parameter.</p>
    #
    # @!attribute message
    #   <p>The message returned when the Amazon Cognito service throws an invalid parameter
    #               exception.</p>
    #
    #   @return [String]
    #
    InvalidParameterException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when Amazon Cognito encounters an invalid password.</p>
    #
    # @!attribute message
    #   <p>The message returned when Amazon Cognito throws an invalid user password exception.</p>
    #
    #   @return [String]
    #
    InvalidPasswordException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is returned when the role provided for SMS configuration doesn't have
    #             permission to publish using Amazon SNS.</p>
    #
    # @!attribute message
    #   <p>The message returned when the invalid SMS role access policy exception is
    #               thrown.</p>
    #
    #   @return [String]
    #
    InvalidSmsRoleAccessPolicyException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when the trust relationship is not valid for the role
    #             provided for SMS configuration. This can happen if you don't trust
    #                 <code>cognito-idp.amazonaws.com</code> or the external ID provided in the role does
    #             not match what is provided in the SMS configuration for the user pool.</p>
    #
    # @!attribute message
    #   <p>The message returned when the role trust relationship for the SMS message is not
    #               valid.</p>
    #
    #   @return [String]
    #
    InvalidSmsRoleTrustRelationshipException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when the user pool configuration is not valid.</p>
    #
    # @!attribute message
    #   <p>The message returned when the user pool configuration is not valid.</p>
    #
    #   @return [String]
    #
    InvalidUserPoolConfigurationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the configuration for Lambda triggers.</p>
    #
    # @!attribute pre_sign_up
    #   <p>A pre-registration Lambda trigger.</p>
    #
    #   @return [String]
    #
    # @!attribute custom_message
    #   <p>A custom Message Lambda trigger.</p>
    #
    #   @return [String]
    #
    # @!attribute post_confirmation
    #   <p>A post-confirmation Lambda trigger.</p>
    #
    #   @return [String]
    #
    # @!attribute pre_authentication
    #   <p>A pre-authentication Lambda trigger.</p>
    #
    #   @return [String]
    #
    # @!attribute post_authentication
    #   <p>A post-authentication Lambda trigger.</p>
    #
    #   @return [String]
    #
    # @!attribute define_auth_challenge
    #   <p>Defines the authentication challenge.</p>
    #
    #   @return [String]
    #
    # @!attribute create_auth_challenge
    #   <p>Creates an authentication challenge.</p>
    #
    #   @return [String]
    #
    # @!attribute verify_auth_challenge_response
    #   <p>Verifies the authentication challenge response.</p>
    #
    #   @return [String]
    #
    # @!attribute pre_token_generation
    #   <p>A Lambda trigger that is invoked before token generation.</p>
    #
    #   @return [String]
    #
    # @!attribute user_migration
    #   <p>The user migration Lambda config type.</p>
    #
    #   @return [String]
    #
    # @!attribute custom_sms_sender
    #   <p>A custom SMS sender Lambda trigger.</p>
    #
    #   @return [CustomSMSLambdaVersionConfigType]
    #
    # @!attribute custom_email_sender
    #   <p>A custom email sender Lambda trigger.</p>
    #
    #   @return [CustomEmailLambdaVersionConfigType]
    #
    # @!attribute kms_key_id
    #   <p>The Amazon Resource Name (ARN) of an <a href="/kms/latest/developerguide/concepts.html master_keys">KMS key</a>. Amazon Cognito
    #               uses the key to encrypt codes and temporary passwords sent to
    #                   <code>CustomEmailSender</code> and <code>CustomSMSSender</code>.</p>
    #
    #   @return [String]
    #
    LambdaConfigType = ::Struct.new(
      :pre_sign_up,
      :custom_message,
      :post_confirmation,
      :pre_authentication,
      :post_authentication,
      :define_auth_challenge,
      :create_auth_challenge,
      :verify_auth_challenge_response,
      :pre_token_generation,
      :user_migration,
      :custom_sms_sender,
      :custom_email_sender,
      :kms_key_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when a user exceeds the limit for a requested Amazon Web Services
    #             resource.</p>
    #
    # @!attribute message
    #   <p>The message returned when Amazon Cognito throws a limit exceeded exception.</p>
    #
    #   @return [String]
    #
    LimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the request to list the devices.</p>
    #
    # @!attribute access_token
    #   <p>A valid access token that Amazon Cognito issued to the user whose list of devices you want to
    #               view.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The limit of the device request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute pagination_token
    #   <p>The pagination token for the list request.</p>
    #
    #   @return [String]
    #
    ListDevicesInput = ::Struct.new(
      :access_token,
      :limit,
      :pagination_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::ListDevicesInput "\
          "access_token=\"[SENSITIVE]\", "\
          "limit=#{limit || 'nil'}, "\
          "pagination_token=#{pagination_token || 'nil'}>"
      end
    end

    # <p>Represents the response to list devices.</p>
    #
    # @!attribute devices
    #   <p>The devices returned in the list devices response.</p>
    #
    #   @return [Array<DeviceType>]
    #
    # @!attribute pagination_token
    #   <p>The pagination token for the list device response.</p>
    #
    #   @return [String]
    #
    ListDevicesOutput = ::Struct.new(
      :devices,
      :pagination_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_pool_id
    #   <p>The user pool ID for the user pool.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The limit of the request to list groups.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can be
    #               used to return the next set of items in the list.</p>
    #
    #   @return [String]
    #
    ListGroupsInput = ::Struct.new(
      :user_pool_id,
      :limit,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute groups
    #   <p>The group objects for the groups.</p>
    #
    #   @return [Array<GroupType>]
    #
    # @!attribute next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can be
    #               used to return the next set of items in the list.</p>
    #
    #   @return [String]
    #
    ListGroupsOutput = ::Struct.new(
      :groups,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_pool_id
    #   <p>The user pool ID.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of IdPs to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A pagination token.</p>
    #
    #   @return [String]
    #
    ListIdentityProvidersInput = ::Struct.new(
      :user_pool_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute providers
    #   <p>A list of IdP objects.</p>
    #
    #   @return [Array<ProviderDescription>]
    #
    # @!attribute next_token
    #   <p>A pagination token.</p>
    #
    #   @return [String]
    #
    ListIdentityProvidersOutput = ::Struct.new(
      :providers,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_pool_id
    #   <p>The user pool ID for the user pool.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of resource servers to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A pagination token.</p>
    #
    #   @return [String]
    #
    ListResourceServersInput = ::Struct.new(
      :user_pool_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

    end

    # @!attribute resource_servers
    #   <p>The resource servers.</p>
    #
    #   @return [Array<ResourceServerType>]
    #
    # @!attribute next_token
    #   <p>A pagination token.</p>
    #
    #   @return [String]
    #
    ListResourceServersOutput = ::Struct.new(
      :resource_servers,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the user pool that the tags are assigned to.</p>
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
    #   <p>The tags that are assigned to the user pool.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the request to list the user import jobs.</p>
    #
    # @!attribute user_pool_id
    #   <p>The user pool ID for the user pool that the users are being imported into.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of import jobs you want the request to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute pagination_token
    #   <p>An identifier that was returned from the previous call to
    #                   <code>ListUserImportJobs</code>, which can be used to return the next set of import
    #               jobs in the list.</p>
    #
    #   @return [String]
    #
    ListUserImportJobsInput = ::Struct.new(
      :user_pool_id,
      :max_results,
      :pagination_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

    end

    # <p>Represents the response from the server to the request to list the user import
    #             jobs.</p>
    #
    # @!attribute user_import_jobs
    #   <p>The user import jobs.</p>
    #
    #   @return [Array<UserImportJobType>]
    #
    # @!attribute pagination_token
    #   <p>An identifier that can be used to return the next set of user import jobs in the
    #               list.</p>
    #
    #   @return [String]
    #
    ListUserImportJobsOutput = ::Struct.new(
      :user_import_jobs,
      :pagination_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the request to list the user pool clients.</p>
    #
    # @!attribute user_pool_id
    #   <p>The user pool ID for the user pool where you want to list user pool clients.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results you want the request to return when listing the user
    #               pool clients.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can be
    #               used to return the next set of items in the list.</p>
    #
    #   @return [String]
    #
    ListUserPoolClientsInput = ::Struct.new(
      :user_pool_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

    end

    # <p>Represents the response from the server that lists user pool clients.</p>
    #
    # @!attribute user_pool_clients
    #   <p>The user pool clients in the response that lists user pool clients.</p>
    #
    #   @return [Array<UserPoolClientDescription>]
    #
    # @!attribute next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can be
    #               used to return the next set of items in the list.</p>
    #
    #   @return [String]
    #
    ListUserPoolClientsOutput = ::Struct.new(
      :user_pool_clients,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the request to list user pools.</p>
    #
    # @!attribute next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can be
    #               used to return the next set of items in the list.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results you want the request to return when listing the user
    #               pools.</p>
    #
    #   @return [Integer]
    #
    ListUserPoolsInput = ::Struct.new(
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

    # <p>Represents the response to list user pools.</p>
    #
    # @!attribute user_pools
    #   <p>The user pools from the response to list users.</p>
    #
    #   @return [Array<UserPoolDescriptionType>]
    #
    # @!attribute next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can be
    #               used to return the next set of items in the list.</p>
    #
    #   @return [String]
    #
    ListUserPoolsOutput = ::Struct.new(
      :user_pools,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_pool_id
    #   <p>The user pool ID for the user pool.</p>
    #
    #   @return [String]
    #
    # @!attribute group_name
    #   <p>The name of the group.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The limit of the request to list users.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can be
    #               used to return the next set of items in the list.</p>
    #
    #   @return [String]
    #
    ListUsersInGroupInput = ::Struct.new(
      :user_pool_id,
      :group_name,
      :limit,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute users
    #   <p>The users returned in the request to list users.</p>
    #
    #   @return [Array<UserType>]
    #
    # @!attribute next_token
    #   <p>An identifier that you can use in a later request to return the next set of items in
    #               the list.</p>
    #
    #   @return [String]
    #
    ListUsersInGroupOutput = ::Struct.new(
      :users,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the request to list users.</p>
    #
    # @!attribute user_pool_id
    #   <p>The user pool ID for the user pool on which the search should be performed.</p>
    #
    #   @return [String]
    #
    # @!attribute attributes_to_get
    #   <p>An array of strings, where each string is the name of a user attribute to be returned
    #               for each user in the search results. If the array is null, all attributes are
    #               returned.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute limit
    #   <p>Maximum number of users to be returned.</p>
    #
    #   @return [Integer]
    #
    # @!attribute pagination_token
    #   <p>An identifier that was returned from the previous call to this operation, which can be
    #               used to return the next set of items in the list.</p>
    #
    #   @return [String]
    #
    # @!attribute filter
    #   <p>A filter string of the form "<i>AttributeName</i>
    #               <i>Filter-Type</i> "<i>AttributeValue</i>"". Quotation marks
    #               within the filter string must be escaped using the backslash (\) character. For example,
    #                   "<code>family_name</code> = \"Reddy\"".</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <i>AttributeName</i>: The name of the attribute to search for.
    #                       You can only search for one attribute at a time.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <i>Filter-Type</i>: For an exact match, use =, for example,
    #                           "<code>given_name</code> = \"Jon\"". For a prefix ("starts with") match, use
    #                       ^=, for example, "<code>given_name</code> ^= \"Jon\"". </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <i>AttributeValue</i>: The attribute value that must be matched
    #                       for each user.</p>
    #               </li>
    #            </ul>
    #           <p>If the filter string is empty, <code>ListUsers</code> returns all users in the user
    #               pool.</p>
    #           <p>You can only search for the following standard attributes:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>username</code> (case-sensitive)</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>email</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>phone_number</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>name</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>given_name</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>family_name</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>preferred_username</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>cognito:user_status</code> (called <b>Status</b> in the Console) (case-insensitive)</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>status (called <b>Enabled</b> in the Console)
    #                           (case-sensitive)</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sub</code>
    #                  </p>
    #               </li>
    #            </ul>
    #           <p>Custom attributes aren't searchable.</p>
    #           <note>
    #               <p>You can also list users with a client-side filter. The server-side filter matches
    #                   no more than one attribute. For an advanced search, use a client-side filter with
    #                   the <code>--query</code> parameter of the <code>list-users</code> action in the
    #                   CLI. When you use a client-side filter, ListUsers returns a paginated list of zero
    #                   or more users. You can receive multiple pages in a row with zero results. Repeat the
    #                   query with each pagination token that is returned until you receive a null
    #                   pagination token value, and then review the combined result. </p>
    #               <p>For more information about server-side and client-side filtering, see <a href="https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-filter.html">FilteringCLI output</a> in the <a href="https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-filter.html">Command Line Interface
    #                       User Guide</a>. </p>
    #           </note>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/how-to-manage-user-accounts.html cognito-user-pools-searching-for-users-using-listusers-api">Searching for Users Using the ListUsers API</a> and <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/how-to-manage-user-accounts.html cognito-user-pools-searching-for-users-listusers-api-examples">Examples of Using the ListUsers API</a> in the <i>Amazon Cognito Developer
    #                   Guide</i>.</p>
    #
    #   @return [String]
    #
    ListUsersInput = ::Struct.new(
      :user_pool_id,
      :attributes_to_get,
      :limit,
      :pagination_token,
      :filter,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The response from the request to list users.</p>
    #
    # @!attribute users
    #   <p>The users returned in the request to list users.</p>
    #
    #   @return [Array<UserType>]
    #
    # @!attribute pagination_token
    #   <p>An identifier that was returned from the previous call to this operation, which can be
    #               used to return the next set of items in the list.</p>
    #
    #   @return [String]
    #
    ListUsersOutput = ::Struct.new(
      :users,
      :pagination_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when Amazon Cognito can't find a multi-factor authentication
    #             (MFA) method.</p>
    #
    # @!attribute message
    #   <p>The message returned when Amazon Cognito throws an MFA method not found
    #               exception.</p>
    #
    #   @return [String]
    #
    MFAMethodNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             <i>This data type is no longer supported.</i> Applies only to SMS
    #             multi-factor authentication (MFA) configurations. Does not apply to time-based one-time
    #             password (TOTP) software token MFA configurations.</p>
    #
    # @!attribute delivery_medium
    #   <p>The delivery medium to send the MFA code. You can use this parameter to set only the
    #                   <code>SMS</code> delivery medium value.</p>
    #
    #   Enum, one of: ["SMS", "EMAIL"]
    #
    #   @return [String]
    #
    # @!attribute attribute_name
    #   <p>The attribute name of the MFA option type. The only valid value is
    #                   <code>phone_number</code>.</p>
    #
    #   @return [String]
    #
    MFAOptionType = ::Struct.new(
      :delivery_medium,
      :attribute_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MessageActionType
    #
    module MessageActionType
      # No documentation available.
      #
      RESEND = "RESEND"

      # No documentation available.
      #
      SUPPRESS = "SUPPRESS"
    end

    # <p>The message template structure.</p>
    #
    # @!attribute sms_message
    #   <p>The message template for SMS messages.</p>
    #
    #   @return [String]
    #
    # @!attribute email_message
    #   <p>The message template for email messages. EmailMessage is allowed only if <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_EmailConfigurationType.html CognitoUserPools-Type-EmailConfigurationType-EmailSendingAccount">EmailSendingAccount</a> is DEVELOPER. </p>
    #
    #   @return [String]
    #
    # @!attribute email_subject
    #   <p>The subject line for email messages. EmailSubject is allowed only if <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_EmailConfigurationType.html CognitoUserPools-Type-EmailConfigurationType-EmailSendingAccount">EmailSendingAccount</a> is DEVELOPER. </p>
    #
    #   @return [String]
    #
    MessageTemplateType = ::Struct.new(
      :sms_message,
      :email_message,
      :email_subject,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The new device metadata type.</p>
    #
    # @!attribute device_key
    #   <p>The device key.</p>
    #
    #   @return [String]
    #
    # @!attribute device_group_key
    #   <p>The device group key.</p>
    #
    #   @return [String]
    #
    NewDeviceMetadataType = ::Struct.new(
      :device_key,
      :device_group_key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when a user isn't authorized.</p>
    #
    # @!attribute message
    #   <p>The message returned when the Amazon Cognito service returns a not authorized exception.</p>
    #
    #   @return [String]
    #
    NotAuthorizedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The notify configuration type.</p>
    #
    # @!attribute from
    #   <p>The email address that is sending the email. The address must be either individually
    #               verified with Amazon Simple Email Service, or from a domain that has been verified with Amazon SES.</p>
    #
    #   @return [String]
    #
    # @!attribute reply_to
    #   <p>The destination to which the receiver of an email should reply to.</p>
    #
    #   @return [String]
    #
    # @!attribute source_arn
    #   <p>The Amazon Resource Name (ARN) of the identity that is associated with the sending
    #               authorization policy. This identity permits Amazon Cognito to send for the email address
    #               specified in the <code>From</code> parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute block_email
    #   <p>Email template used when a detected risk event is blocked.</p>
    #
    #   @return [NotifyEmailType]
    #
    # @!attribute no_action_email
    #   <p>The email template used when a detected risk event is allowed.</p>
    #
    #   @return [NotifyEmailType]
    #
    # @!attribute mfa_email
    #   <p>The multi-factor authentication (MFA) email template used when MFA is challenged as
    #               part of a detected risk.</p>
    #
    #   @return [NotifyEmailType]
    #
    NotifyConfigurationType = ::Struct.new(
      :from,
      :reply_to,
      :source_arn,
      :block_email,
      :no_action_email,
      :mfa_email,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The notify email type.</p>
    #
    # @!attribute subject
    #   <p>The email subject.</p>
    #
    #   @return [String]
    #
    # @!attribute html_body
    #   <p>The email HTML body.</p>
    #
    #   @return [String]
    #
    # @!attribute text_body
    #   <p>The email text body.</p>
    #
    #   @return [String]
    #
    NotifyEmailType = ::Struct.new(
      :subject,
      :html_body,
      :text_body,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The minimum and maximum values of an attribute that is of the number data type.</p>
    #
    # @!attribute min_value
    #   <p>The minimum value of an attribute that is of the number data type.</p>
    #
    #   @return [String]
    #
    # @!attribute max_value
    #   <p>The maximum value of an attribute that is of the number data type.</p>
    #
    #   @return [String]
    #
    NumberAttributeConstraintsType = ::Struct.new(
      :min_value,
      :max_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for OAuthFlowType
    #
    module OAuthFlowType
      # No documentation available.
      #
      code = "code"

      # No documentation available.
      #
      implicit = "implicit"

      # No documentation available.
      #
      client_credentials = "client_credentials"
    end

    # <p>The password policy type.</p>
    #
    # @!attribute minimum_length
    #   <p>The minimum length of the password in the policy that you have set. This value can't
    #               be less than 6.</p>
    #
    #   @return [Integer]
    #
    # @!attribute require_uppercase
    #   <p>In the password policy that you have set, refers to whether you have required users to
    #               use at least one uppercase letter in their password.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute require_lowercase
    #   <p>In the password policy that you have set, refers to whether you have required users to
    #               use at least one lowercase letter in their password.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute require_numbers
    #   <p>In the password policy that you have set, refers to whether you have required users to
    #               use at least one number in their password.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute require_symbols
    #   <p>In the password policy that you have set, refers to whether you have required users to
    #               use at least one symbol in their password.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute temporary_password_validity_days
    #   <p>The number of days a temporary password is valid in the password policy. If the user
    #               doesn't sign in during this time, an administrator must reset their password.</p>
    #           <note>
    #               <p>When you set <code>TemporaryPasswordValidityDays</code> for a user pool, you can
    #                   no longer set a value for the legacy <code>UnusedAccountValidityDays</code>
    #                   parameter in that user pool.</p>
    #           </note>
    #
    #   @return [Integer]
    #
    PasswordPolicyType = ::Struct.new(
      :minimum_length,
      :require_uppercase,
      :require_lowercase,
      :require_numbers,
      :require_symbols,
      :temporary_password_validity_days,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.minimum_length ||= 0
        self.require_uppercase ||= false
        self.require_lowercase ||= false
        self.require_numbers ||= false
        self.require_symbols ||= false
        self.temporary_password_validity_days ||= 0
      end

    end

    # <p>This exception is thrown when a password reset is required.</p>
    #
    # @!attribute message
    #   <p>The message returned when a password reset is required.</p>
    #
    #   @return [String]
    #
    PasswordResetRequiredException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when a precondition is not met.</p>
    #
    # @!attribute message
    #   <p>The message returned when a precondition is not met.</p>
    #
    #   @return [String]
    #
    PreconditionNotMetException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PreventUserExistenceErrorTypes
    #
    module PreventUserExistenceErrorTypes
      # No documentation available.
      #
      LEGACY = "LEGACY"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # <p>A container for IdP details.</p>
    #
    # @!attribute provider_name
    #   <p>The IdP name.</p>
    #
    #   @return [String]
    #
    # @!attribute provider_type
    #   <p>The IdP type.</p>
    #
    #   Enum, one of: ["SAML", "Facebook", "Google", "LoginWithAmazon", "SignInWithApple", "OIDC"]
    #
    #   @return [String]
    #
    # @!attribute last_modified_date
    #   <p>The date the provider was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute creation_date
    #   <p>The date the provider was added to the user pool.</p>
    #
    #   @return [Time]
    #
    ProviderDescription = ::Struct.new(
      :provider_name,
      :provider_type,
      :last_modified_date,
      :creation_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A container for information about an IdP for a user pool.</p>
    #
    # @!attribute provider_name
    #   <p>The name of the provider, such as Facebook, Google, or Login with Amazon.</p>
    #
    #   @return [String]
    #
    # @!attribute provider_attribute_name
    #   <p>The name of the provider attribute to link to, such as <code>NameID</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute provider_attribute_value
    #   <p>The value of the provider attribute to link to, such as
    #               <code>xxxxx_account</code>.</p>
    #
    #   @return [String]
    #
    ProviderUserIdentifierType = ::Struct.new(
      :provider_name,
      :provider_attribute_name,
      :provider_attribute_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RecoveryOptionNameType
    #
    module RecoveryOptionNameType
      # No documentation available.
      #
      VERIFIED_EMAIL = "verified_email"

      # No documentation available.
      #
      VERIFIED_PHONE_NUMBER = "verified_phone_number"

      # No documentation available.
      #
      ADMIN_ONLY = "admin_only"
    end

    # <p>A map containing a priority as a key, and recovery method name as a value.</p>
    #
    # @!attribute priority
    #   <p>A positive integer specifying priority of a method with 1 being the highest
    #               priority.</p>
    #
    #   @return [Integer]
    #
    # @!attribute name
    #   <p>The recovery method for a user.</p>
    #
    #   Enum, one of: ["verified_email", "verified_phone_number", "admin_only"]
    #
    #   @return [String]
    #
    RecoveryOptionType = ::Struct.new(
      :priority,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.priority ||= 0
      end

    end

    # <p>Represents the request to resend the confirmation code.</p>
    #
    # @!attribute client_id
    #   <p>The ID of the client associated with the user pool.</p>
    #
    #   @return [String]
    #
    # @!attribute secret_hash
    #   <p>A keyed-hash message authentication code (HMAC) calculated using the secret key of a
    #               user pool client and username plus the client ID in the message.</p>
    #
    #   @return [String]
    #
    # @!attribute user_context_data
    #   <p>Contextual data about your user session, such as the device fingerprint, IP address, or location. Amazon Cognito advanced
    #   security evaluates the risk of an authentication event based on the context that your app generates and passes to Amazon Cognito
    #   when it makes API requests.</p>
    #
    #   @return [UserContextDataType]
    #
    # @!attribute username
    #   <p>The <code>username</code> attribute of the user to whom you want to resend a
    #               confirmation code.</p>
    #
    #   @return [String]
    #
    # @!attribute analytics_metadata
    #   <p>The Amazon Pinpoint analytics metadata that contributes to your metrics for
    #                   <code>ResendConfirmationCode</code> calls.</p>
    #
    #   @return [AnalyticsMetadataType]
    #
    # @!attribute client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for any custom workflows
    #               that this action triggers.</p>
    #           <p>You create custom workflows by assigning Lambda functions to user pool triggers.
    #               When you use the ResendConfirmationCode API action, Amazon Cognito invokes the function that is
    #               assigned to the <i>custom message</i> trigger. When Amazon Cognito invokes this
    #               function, it passes a JSON payload, which the function receives as input. This payload
    #               contains a <code>clientMetadata</code> attribute, which provides the data that you
    #               assigned to the ClientMetadata parameter in your ResendConfirmationCode request. In your
    #               function code in Lambda, you can process the <code>clientMetadata</code> value to enhance
    #               your workflow for your specific needs.</p>
    #
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html">
    #   Customizing user pool Workflows with Lambda Triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #
    #           <note>
    #               <p>When you use the ClientMetadata parameter, remember that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                       <p>Store the ClientMetadata value. This data is available only to Lambda
    #                           triggers that are assigned to a user pool to support custom workflows. If
    #                           your user pool configuration doesn't include triggers, the ClientMetadata
    #                           parameter serves no purpose.</p>
    #                   </li>
    #                  <li>
    #                       <p>Validate the ClientMetadata value.</p>
    #                   </li>
    #                  <li>
    #                       <p>Encrypt the ClientMetadata value. Don't use Amazon Cognito to provide sensitive
    #                           information.</p>
    #                   </li>
    #               </ul>
    #           </note>
    #
    #   @return [Hash<String, String>]
    #
    ResendConfirmationCodeInput = ::Struct.new(
      :client_id,
      :secret_hash,
      :user_context_data,
      :username,
      :analytics_metadata,
      :client_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::ResendConfirmationCodeInput "\
          "client_id=\"[SENSITIVE]\", "\
          "secret_hash=\"[SENSITIVE]\", "\
          "user_context_data=#{user_context_data || 'nil'}, "\
          "username=\"[SENSITIVE]\", "\
          "analytics_metadata=#{analytics_metadata || 'nil'}, "\
          "client_metadata=#{client_metadata || 'nil'}>"
      end
    end

    # <p>The response from the server when Amazon Cognito makes the request to resend a confirmation
    #             code.</p>
    #
    # @!attribute code_delivery_details
    #   <p>The code delivery details returned by the server in response to the request to resend
    #               the confirmation code.</p>
    #
    #   @return [CodeDeliveryDetailsType]
    #
    ResendConfirmationCodeOutput = ::Struct.new(
      :code_delivery_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when the Amazon Cognito service can't find the requested
    #             resource.</p>
    #
    # @!attribute message
    #   <p>The message returned when the Amazon Cognito service returns a resource not found
    #               exception.</p>
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A resource server scope.</p>
    #
    # @!attribute scope_name
    #   <p>The name of the scope.</p>
    #
    #   @return [String]
    #
    # @!attribute scope_description
    #   <p>A description of the scope.</p>
    #
    #   @return [String]
    #
    ResourceServerScopeType = ::Struct.new(
      :scope_name,
      :scope_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A container for information about a resource server for a user pool.</p>
    #
    # @!attribute user_pool_id
    #   <p>The user pool ID for the user pool that hosts the resource server.</p>
    #
    #   @return [String]
    #
    # @!attribute identifier
    #   <p>The identifier for the resource server.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the resource server.</p>
    #
    #   @return [String]
    #
    # @!attribute scopes
    #   <p>A list of scopes that are defined for the resource server.</p>
    #
    #   @return [Array<ResourceServerScopeType>]
    #
    ResourceServerType = ::Struct.new(
      :user_pool_id,
      :identifier,
      :name,
      :scopes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request to respond to an authentication challenge.</p>
    #
    # @!attribute client_id
    #   <p>The app client ID.</p>
    #
    #   @return [String]
    #
    # @!attribute challenge_name
    #   <p>The challenge name. For more information, see <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_InitiateAuth.html">InitiateAuth</a>.</p>
    #           <p>
    #               <code>ADMIN_NO_SRP_AUTH</code> isn't a valid value.</p>
    #
    #   Enum, one of: ["SMS_MFA", "SOFTWARE_TOKEN_MFA", "SELECT_MFA_TYPE", "MFA_SETUP", "PASSWORD_VERIFIER", "CUSTOM_CHALLENGE", "DEVICE_SRP_AUTH", "DEVICE_PASSWORD_VERIFIER", "ADMIN_NO_SRP_AUTH", "NEW_PASSWORD_REQUIRED"]
    #
    #   @return [String]
    #
    # @!attribute session
    #   <p>The session that should be passed both ways in challenge-response calls to the
    #               service. If <code>InitiateAuth</code> or <code>RespondToAuthChallenge</code> API call
    #               determines that the caller must pass another challenge, they return a session with other
    #               challenge parameters. This session should be passed as it is to the next
    #                   <code>RespondToAuthChallenge</code> API call.</p>
    #
    #   @return [String]
    #
    # @!attribute challenge_responses
    #   <p>The challenge responses. These are inputs corresponding to the value of
    #                   <code>ChallengeName</code>, for example:</p>
    #           <note>
    #               <p>
    #                  <code>SECRET_HASH</code> (if app client is configured with client secret) applies
    #                   to all of the inputs that follow (including <code>SOFTWARE_TOKEN_MFA</code>).</p>
    #           </note>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>SMS_MFA</code>: <code>SMS_MFA_CODE</code>, <code>USERNAME</code>.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>PASSWORD_VERIFIER</code>: <code>PASSWORD_CLAIM_SIGNATURE</code>,
    #                           <code>PASSWORD_CLAIM_SECRET_BLOCK</code>, <code>TIMESTAMP</code>,
    #                           <code>USERNAME</code>.</p>
    #                   <note>
    #                       <p>
    #                        <code>PASSWORD_VERIFIER</code> requires <code>DEVICE_KEY</code> when you
    #                           sign in with a remembered device.</p>
    #                   </note>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>NEW_PASSWORD_REQUIRED</code>: <code>NEW_PASSWORD</code>,
    #                       <code>USERNAME</code>, <code>SECRET_HASH</code> (if app client is configured
    #                       with client secret). To set any required attributes that Amazon Cognito returned as
    #                       <code>requiredAttributes</code> in the <code>InitiateAuth</code> response,
    #                       add a <code>userAttributes.<i>attributename</i>
    #                     </code> parameter.
    #                       This parameter can also set values for writable attributes that aren't required
    #                       by your user pool.</p>
    #
    #                  <note>
    #                     <p>In a <code>NEW_PASSWORD_REQUIRED</code> challenge response, you can't modify a required attribute that already has a value.
    #   In <code>RespondToAuthChallenge</code>, set a value for any keys that Amazon Cognito returned in the <code>requiredAttributes</code> parameter,
    #   then use the <code>UpdateUserAttributes</code> API operation to modify the value of any additional attributes.</p>
    #                  </note>
    #
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>SOFTWARE_TOKEN_MFA</code>: <code>USERNAME</code> and
    #                           <code>SOFTWARE_TOKEN_MFA_CODE</code> are required attributes.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>DEVICE_SRP_AUTH</code> requires <code>USERNAME</code>,
    #                           <code>DEVICE_KEY</code>, <code>SRP_A</code> (and
    #                       <code>SECRET_HASH</code>).</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>DEVICE_PASSWORD_VERIFIER</code> requires everything that
    #                           <code>PASSWORD_VERIFIER</code> requires, plus
    #                       <code>DEVICE_KEY</code>.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>MFA_SETUP</code> requires <code>USERNAME</code>, plus you must use the
    #                       session value returned by <code>VerifySoftwareToken</code> in the
    #                           <code>Session</code> parameter.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute analytics_metadata
    #   <p>The Amazon Pinpoint analytics metadata that contributes to your metrics for
    #                   <code>RespondToAuthChallenge</code> calls.</p>
    #
    #   @return [AnalyticsMetadataType]
    #
    # @!attribute user_context_data
    #   <p>Contextual data about your user session, such as the device fingerprint, IP address, or location. Amazon Cognito advanced
    #   security evaluates the risk of an authentication event based on the context that your app generates and passes to Amazon Cognito
    #   when it makes API requests.</p>
    #
    #   @return [UserContextDataType]
    #
    # @!attribute client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for any custom workflows
    #               that this action triggers.</p>
    #           <p>You create custom workflows by assigning Lambda functions to user pool
    #               triggers. When you use the RespondToAuthChallenge API action, Amazon Cognito invokes any
    #               functions that are assigned to the following triggers: <i>post
    #                   authentication</i>, <i>pre token generation</i>,
    #                   <i>define auth challenge</i>, <i>create auth
    #                   challenge</i>, and <i>verify auth challenge</i>. When Amazon Cognito
    #               invokes any of these functions, it passes a JSON payload, which the function receives as
    #               input. This payload contains a <code>clientMetadata</code> attribute, which provides the
    #               data that you assigned to the ClientMetadata parameter in your RespondToAuthChallenge
    #               request. In your function code in Lambda, you can process the
    #                   <code>clientMetadata</code> value to enhance your workflow for your specific
    #               needs.</p>
    #
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html">
    #   Customizing user pool Workflows with Lambda Triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #
    #           <note>
    #               <p>When you use the ClientMetadata parameter, remember that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                       <p>Store the ClientMetadata value. This data is available only to Lambda
    #                           triggers that are assigned to a user pool to support custom workflows. If
    #                           your user pool configuration doesn't include triggers, the ClientMetadata
    #                           parameter serves no purpose.</p>
    #                   </li>
    #                  <li>
    #                       <p>Validate the ClientMetadata value.</p>
    #                   </li>
    #                  <li>
    #                       <p>Encrypt the ClientMetadata value. Don't use Amazon Cognito to provide sensitive
    #                           information.</p>
    #                   </li>
    #               </ul>
    #           </note>
    #
    #   @return [Hash<String, String>]
    #
    RespondToAuthChallengeInput = ::Struct.new(
      :client_id,
      :challenge_name,
      :session,
      :challenge_responses,
      :analytics_metadata,
      :user_context_data,
      :client_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::RespondToAuthChallengeInput "\
          "client_id=\"[SENSITIVE]\", "\
          "challenge_name=#{challenge_name || 'nil'}, "\
          "session=#{session || 'nil'}, "\
          "challenge_responses=#{challenge_responses || 'nil'}, "\
          "analytics_metadata=#{analytics_metadata || 'nil'}, "\
          "user_context_data=#{user_context_data || 'nil'}, "\
          "client_metadata=#{client_metadata || 'nil'}>"
      end
    end

    # <p>The response to respond to the authentication challenge.</p>
    #
    # @!attribute challenge_name
    #   <p>The challenge name. For more information, see <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_InitiateAuth.html">InitiateAuth</a>.</p>
    #
    #   Enum, one of: ["SMS_MFA", "SOFTWARE_TOKEN_MFA", "SELECT_MFA_TYPE", "MFA_SETUP", "PASSWORD_VERIFIER", "CUSTOM_CHALLENGE", "DEVICE_SRP_AUTH", "DEVICE_PASSWORD_VERIFIER", "ADMIN_NO_SRP_AUTH", "NEW_PASSWORD_REQUIRED"]
    #
    #   @return [String]
    #
    # @!attribute session
    #   <p>The session that should be passed both ways in challenge-response calls to the
    #               service. If the caller must pass another challenge, they return a session with other
    #               challenge parameters. This session should be passed as it is to the next
    #                   <code>RespondToAuthChallenge</code> API call.</p>
    #
    #   @return [String]
    #
    # @!attribute challenge_parameters
    #   <p>The challenge parameters. For more information, see <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_InitiateAuth.html">InitiateAuth</a>.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute authentication_result
    #   <p>The result returned by the server in response to the request to respond to the
    #               authentication challenge.</p>
    #
    #   @return [AuthenticationResultType]
    #
    RespondToAuthChallengeOutput = ::Struct.new(
      :challenge_name,
      :session,
      :challenge_parameters,
      :authentication_result,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute token
    #   <p>The refresh token that you want to revoke.</p>
    #
    #   @return [String]
    #
    # @!attribute client_id
    #   <p>The client ID for the token that you want to revoke.</p>
    #
    #   @return [String]
    #
    # @!attribute client_secret
    #   <p>The secret for the client ID. This is required only if the client ID has a
    #               secret.</p>
    #
    #   @return [String]
    #
    RevokeTokenInput = ::Struct.new(
      :token,
      :client_id,
      :client_secret,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::RevokeTokenInput "\
          "token=\"[SENSITIVE]\", "\
          "client_id=\"[SENSITIVE]\", "\
          "client_secret=\"[SENSITIVE]\">"
      end
    end

    RevokeTokenOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The risk configuration type.</p>
    #
    # @!attribute user_pool_id
    #   <p>The user pool ID.</p>
    #
    #   @return [String]
    #
    # @!attribute client_id
    #   <p>The app client ID.</p>
    #
    #   @return [String]
    #
    # @!attribute compromised_credentials_risk_configuration
    #   <p>The compromised credentials risk configuration object, including the
    #                   <code>EventFilter</code> and the <code>EventAction</code>.</p>
    #
    #   @return [CompromisedCredentialsRiskConfigurationType]
    #
    # @!attribute account_takeover_risk_configuration
    #   <p>The account takeover risk configuration object, including the
    #                   <code>NotifyConfiguration</code> object and <code>Actions</code> to take if there is
    #               an account takeover.</p>
    #
    #   @return [AccountTakeoverRiskConfigurationType]
    #
    # @!attribute risk_exception_configuration
    #   <p>The configuration to override the risk decision.</p>
    #
    #   @return [RiskExceptionConfigurationType]
    #
    # @!attribute last_modified_date
    #   <p>The last modified date.</p>
    #
    #   @return [Time]
    #
    RiskConfigurationType = ::Struct.new(
      :user_pool_id,
      :client_id,
      :compromised_credentials_risk_configuration,
      :account_takeover_risk_configuration,
      :risk_exception_configuration,
      :last_modified_date,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::RiskConfigurationType "\
          "user_pool_id=#{user_pool_id || 'nil'}, "\
          "client_id=\"[SENSITIVE]\", "\
          "compromised_credentials_risk_configuration=#{compromised_credentials_risk_configuration || 'nil'}, "\
          "account_takeover_risk_configuration=#{account_takeover_risk_configuration || 'nil'}, "\
          "risk_exception_configuration=#{risk_exception_configuration || 'nil'}, "\
          "last_modified_date=#{last_modified_date || 'nil'}>"
      end
    end

    # Includes enum constants for RiskDecisionType
    #
    module RiskDecisionType
      # No documentation available.
      #
      NoRisk = "NoRisk"

      # No documentation available.
      #
      AccountTakeover = "AccountTakeover"

      # No documentation available.
      #
      Block = "Block"
    end

    # <p>The type of the configuration to override the risk decision.</p>
    #
    # @!attribute blocked_ip_range_list
    #   <p>Overrides the risk decision to always block the pre-authentication requests. The IP
    #               range is in CIDR notation, a compact representation of an IP address and its routing
    #               prefix.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute skipped_ip_range_list
    #   <p>Risk detection isn't performed on the IP addresses in this range list. The IP range is
    #               in CIDR notation.</p>
    #
    #   @return [Array<String>]
    #
    RiskExceptionConfigurationType = ::Struct.new(
      :blocked_ip_range_list,
      :skipped_ip_range_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RiskLevelType
    #
    module RiskLevelType
      # No documentation available.
      #
      Low = "Low"

      # No documentation available.
      #
      Medium = "Medium"

      # No documentation available.
      #
      High = "High"
    end

    # <p>The type used for enabling SMS multi-factor authentication (MFA) at the user level.
    #             Phone numbers don't need to be verified to be used for SMS MFA. If an MFA type is
    #             activated for a user, the user will be prompted for MFA during all sign-in attempts,
    #             unless device tracking is turned on and the device has been trusted. If you would like
    #             MFA to be applied selectively based on the assessed risk level of sign-in attempts,
    #             deactivate MFA for users and turn on Adaptive Authentication for the user pool.</p>
    #
    # @!attribute enabled
    #   <p>Specifies whether SMS text message MFA is activated. If an MFA type is activated for a
    #               user, the user will be prompted for MFA during all sign-in attempts, unless device
    #               tracking is turned on and the device has been trusted.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute preferred_mfa
    #   <p>Specifies whether SMS is the preferred MFA method.</p>
    #
    #   @return [Boolean]
    #
    SMSMfaSettingsType = ::Struct.new(
      :enabled,
      :preferred_mfa,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.enabled ||= false
        self.preferred_mfa ||= false
      end

    end

    # <p>Contains information about the schema attribute.</p>
    #
    # @!attribute name
    #   <p>A schema attribute of the name type.</p>
    #
    #   @return [String]
    #
    # @!attribute attribute_data_type
    #   <p>The attribute data type.</p>
    #
    #   Enum, one of: ["String", "Number", "DateTime", "Boolean"]
    #
    #   @return [String]
    #
    # @!attribute developer_only_attribute
    #   <note>
    #               <p>You should use <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_UserPoolClientType.html CognitoUserPools-Type-UserPoolClientType-WriteAttributes">WriteAttributes</a> in the user pool client to control how attributes can
    #                   be mutated for new use cases instead of using
    #                   <code>DeveloperOnlyAttribute</code>.</p>
    #           </note>
    #           <p>Specifies whether the attribute type is developer only. This attribute can only be
    #               modified by an administrator. Users won't be able to modify this attribute using their
    #               access token. For example, <code>DeveloperOnlyAttribute</code> can be modified using
    #               AdminUpdateUserAttributes but can't be updated using UpdateUserAttributes.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute mutable
    #   <p>Specifies whether the value of the attribute can be changed.</p>
    #           <p>For any user pool attribute that is mapped to an IdP attribute, you must set this
    #               parameter to <code>true</code>. Amazon Cognito updates mapped attributes when users sign in to
    #               your application through an IdP. If an attribute is immutable, Amazon Cognito throws an error
    #               when it attempts to update the attribute. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-specifying-attribute-mapping.html">Specifying Identity Provider Attribute Mappings for Your User
    #                   Pool</a>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute required
    #   <p>Specifies whether a user pool attribute is required. If the attribute is required and
    #               the user doesn't provide a value, registration or sign-in will fail.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute number_attribute_constraints
    #   <p>Specifies the constraints for an attribute of the number type.</p>
    #
    #   @return [NumberAttributeConstraintsType]
    #
    # @!attribute string_attribute_constraints
    #   <p>Specifies the constraints for an attribute of the string type.</p>
    #
    #   @return [StringAttributeConstraintsType]
    #
    SchemaAttributeType = ::Struct.new(
      :name,
      :attribute_data_type,
      :developer_only_attribute,
      :mutable,
      :required,
      :number_attribute_constraints,
      :string_attribute_constraints,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when the specified scope doesn't exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ScopeDoesNotExistException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_pool_id
    #   <p>The user pool ID. </p>
    #
    #   @return [String]
    #
    # @!attribute client_id
    #   <p>The app client ID. If <code>ClientId</code> is null, then the risk configuration is
    #               mapped to <code>userPoolId</code>. When the client ID is null, the same risk
    #               configuration is applied to all the clients in the userPool.</p>
    #           <p>Otherwise, <code>ClientId</code> is mapped to the client. When the client ID isn't
    #               null, the user pool configuration is overridden and the risk configuration for the
    #               client is used instead.</p>
    #
    #   @return [String]
    #
    # @!attribute compromised_credentials_risk_configuration
    #   <p>The compromised credentials risk configuration.</p>
    #
    #   @return [CompromisedCredentialsRiskConfigurationType]
    #
    # @!attribute account_takeover_risk_configuration
    #   <p>The account takeover risk configuration.</p>
    #
    #   @return [AccountTakeoverRiskConfigurationType]
    #
    # @!attribute risk_exception_configuration
    #   <p>The configuration to override the risk decision.</p>
    #
    #   @return [RiskExceptionConfigurationType]
    #
    SetRiskConfigurationInput = ::Struct.new(
      :user_pool_id,
      :client_id,
      :compromised_credentials_risk_configuration,
      :account_takeover_risk_configuration,
      :risk_exception_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::SetRiskConfigurationInput "\
          "user_pool_id=#{user_pool_id || 'nil'}, "\
          "client_id=\"[SENSITIVE]\", "\
          "compromised_credentials_risk_configuration=#{compromised_credentials_risk_configuration || 'nil'}, "\
          "account_takeover_risk_configuration=#{account_takeover_risk_configuration || 'nil'}, "\
          "risk_exception_configuration=#{risk_exception_configuration || 'nil'}>"
      end
    end

    # @!attribute risk_configuration
    #   <p>The risk configuration.</p>
    #
    #   @return [RiskConfigurationType]
    #
    SetRiskConfigurationOutput = ::Struct.new(
      :risk_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_pool_id
    #   <p>The user pool ID for the user pool.</p>
    #
    #   @return [String]
    #
    # @!attribute client_id
    #   <p>The client ID for the client app.</p>
    #
    #   @return [String]
    #
    # @!attribute css
    #   <p>The CSS values in the UI customization.</p>
    #
    #   @return [String]
    #
    # @!attribute image_file
    #   <p>The uploaded logo image for the UI customization.</p>
    #
    #   @return [String]
    #
    SetUICustomizationInput = ::Struct.new(
      :user_pool_id,
      :client_id,
      :css,
      :image_file,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::SetUICustomizationInput "\
          "user_pool_id=#{user_pool_id || 'nil'}, "\
          "client_id=\"[SENSITIVE]\", "\
          "css=#{css || 'nil'}, "\
          "image_file=#{image_file || 'nil'}>"
      end
    end

    # @!attribute ui_customization
    #   <p>The UI customization information.</p>
    #
    #   @return [UICustomizationType]
    #
    SetUICustomizationOutput = ::Struct.new(
      :ui_customization,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute sms_mfa_settings
    #   <p>The SMS text message multi-factor authentication (MFA) settings.</p>
    #
    #   @return [SMSMfaSettingsType]
    #
    # @!attribute software_token_mfa_settings
    #   <p>The time-based one-time password software token MFA settings.</p>
    #
    #   @return [SoftwareTokenMfaSettingsType]
    #
    # @!attribute access_token
    #   <p>A valid access token that Amazon Cognito issued to the user whose MFA preference you want to
    #               set.</p>
    #
    #   @return [String]
    #
    SetUserMFAPreferenceInput = ::Struct.new(
      :sms_mfa_settings,
      :software_token_mfa_settings,
      :access_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::SetUserMFAPreferenceInput "\
          "sms_mfa_settings=#{sms_mfa_settings || 'nil'}, "\
          "software_token_mfa_settings=#{software_token_mfa_settings || 'nil'}, "\
          "access_token=\"[SENSITIVE]\">"
      end
    end

    SetUserMFAPreferenceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_pool_id
    #   <p>The user pool ID.</p>
    #
    #   @return [String]
    #
    # @!attribute sms_mfa_configuration
    #   <p>The SMS text message MFA configuration.</p>
    #
    #   @return [SmsMfaConfigType]
    #
    # @!attribute software_token_mfa_configuration
    #   <p>The software token MFA configuration.</p>
    #
    #   @return [SoftwareTokenMfaConfigType]
    #
    # @!attribute mfa_configuration
    #   <p>The MFA configuration. If you set the MfaConfiguration value to ‘ON’, only users who
    #               have set up an MFA factor can sign in. To learn more, see <a href="cognito/latest/developerguide/user-pool-settings-mfa.html">Adding Multi-Factor
    #                   Authentication (MFA) to a user pool</a>. Valid values include:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>OFF</code> MFA won't be used for any users.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ON</code> MFA is required for all users to sign in.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>OPTIONAL</code> MFA will be required only for individual users who have
    #                       an MFA factor activated.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["OFF", "ON", "OPTIONAL"]
    #
    #   @return [String]
    #
    SetUserPoolMfaConfigInput = ::Struct.new(
      :user_pool_id,
      :sms_mfa_configuration,
      :software_token_mfa_configuration,
      :mfa_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute sms_mfa_configuration
    #   <p>The SMS text message MFA configuration.</p>
    #
    #   @return [SmsMfaConfigType]
    #
    # @!attribute software_token_mfa_configuration
    #   <p>The software token MFA configuration.</p>
    #
    #   @return [SoftwareTokenMfaConfigType]
    #
    # @!attribute mfa_configuration
    #   <p>The MFA configuration. Valid values include:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>OFF</code> MFA won't be used for any users.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ON</code> MFA is required for all users to sign in.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>OPTIONAL</code> MFA will be required only for individual users who have
    #                       an MFA factor enabled.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["OFF", "ON", "OPTIONAL"]
    #
    #   @return [String]
    #
    SetUserPoolMfaConfigOutput = ::Struct.new(
      :sms_mfa_configuration,
      :software_token_mfa_configuration,
      :mfa_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the request to set user settings.</p>
    #
    # @!attribute access_token
    #   <p>A valid access token that Amazon Cognito issued to the user whose user settings you want to
    #               configure.</p>
    #
    #   @return [String]
    #
    # @!attribute mfa_options
    #   <p>You can use this parameter only to set an SMS configuration that uses SMS for
    #               delivery.</p>
    #
    #   @return [Array<MFAOptionType>]
    #
    SetUserSettingsInput = ::Struct.new(
      :access_token,
      :mfa_options,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::SetUserSettingsInput "\
          "access_token=\"[SENSITIVE]\", "\
          "mfa_options=#{mfa_options || 'nil'}>"
      end
    end

    # <p>The response from the server for a set user settings request.</p>
    #
    SetUserSettingsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the request to register a user.</p>
    #
    # @!attribute client_id
    #   <p>The ID of the client associated with the user pool.</p>
    #
    #   @return [String]
    #
    # @!attribute secret_hash
    #   <p>A keyed-hash message authentication code (HMAC) calculated using the secret key of a
    #               user pool client and username plus the client ID in the message.</p>
    #
    #   @return [String]
    #
    # @!attribute username
    #   <p>The user name of the user you want to register.</p>
    #
    #   @return [String]
    #
    # @!attribute password
    #   <p>The password of the user you want to register.</p>
    #
    #   @return [String]
    #
    # @!attribute user_attributes
    #   <p>An array of name-value pairs representing user attributes.</p>
    #           <p>For custom attributes, you must prepend the <code>custom:</code> prefix to the
    #               attribute name.</p>
    #
    #   @return [Array<AttributeType>]
    #
    # @!attribute validation_data
    #   <p>The validation data in the request to register a user.</p>
    #
    #   @return [Array<AttributeType>]
    #
    # @!attribute analytics_metadata
    #   <p>The Amazon Pinpoint analytics metadata that contributes to your metrics for
    #                   <code>SignUp</code> calls.</p>
    #
    #   @return [AnalyticsMetadataType]
    #
    # @!attribute user_context_data
    #   <p>Contextual data about your user session, such as the device fingerprint, IP address, or location. Amazon Cognito advanced
    #   security evaluates the risk of an authentication event based on the context that your app generates and passes to Amazon Cognito
    #   when it makes API requests.</p>
    #
    #   @return [UserContextDataType]
    #
    # @!attribute client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for any custom workflows
    #               that this action triggers.</p>
    #           <p>You create custom workflows by assigning Lambda functions to user pool triggers.
    #               When you use the SignUp API action, Amazon Cognito invokes any functions that are assigned to the
    #               following triggers: <i>pre sign-up</i>, <i>custom
    #                   message</i>, and <i>post confirmation</i>. When Amazon Cognito invokes
    #               any of these functions, it passes a JSON payload, which the function receives as input.
    #               This payload contains a <code>clientMetadata</code> attribute, which provides the data
    #               that you assigned to the ClientMetadata parameter in your SignUp request. In your
    #               function code in Lambda, you can process the <code>clientMetadata</code> value to enhance
    #               your workflow for your specific needs.</p>
    #
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html">
    #   Customizing user pool Workflows with Lambda Triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #
    #           <note>
    #               <p>When you use the ClientMetadata parameter, remember that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                       <p>Store the ClientMetadata value. This data is available only to Lambda
    #                           triggers that are assigned to a user pool to support custom workflows. If
    #                           your user pool configuration doesn't include triggers, the ClientMetadata
    #                           parameter serves no purpose.</p>
    #                   </li>
    #                  <li>
    #                       <p>Validate the ClientMetadata value.</p>
    #                   </li>
    #                  <li>
    #                       <p>Encrypt the ClientMetadata value. Don't use Amazon Cognito to provide sensitive
    #                           information.</p>
    #                   </li>
    #               </ul>
    #           </note>
    #
    #   @return [Hash<String, String>]
    #
    SignUpInput = ::Struct.new(
      :client_id,
      :secret_hash,
      :username,
      :password,
      :user_attributes,
      :validation_data,
      :analytics_metadata,
      :user_context_data,
      :client_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::SignUpInput "\
          "client_id=\"[SENSITIVE]\", "\
          "secret_hash=\"[SENSITIVE]\", "\
          "username=\"[SENSITIVE]\", "\
          "password=\"[SENSITIVE]\", "\
          "user_attributes=#{user_attributes || 'nil'}, "\
          "validation_data=#{validation_data || 'nil'}, "\
          "analytics_metadata=#{analytics_metadata || 'nil'}, "\
          "user_context_data=#{user_context_data || 'nil'}, "\
          "client_metadata=#{client_metadata || 'nil'}>"
      end
    end

    # <p>The response from the server for a registration request.</p>
    #
    # @!attribute user_confirmed
    #   <p>A response from the server indicating that a user registration has been
    #               confirmed.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute code_delivery_details
    #   <p>The code delivery details returned by the server response to the user registration
    #               request.</p>
    #
    #   @return [CodeDeliveryDetailsType]
    #
    # @!attribute user_sub
    #   <p>The UUID of the authenticated user. This isn't the same as
    #               <code>username</code>.</p>
    #
    #   @return [String]
    #
    SignUpOutput = ::Struct.new(
      :user_confirmed,
      :code_delivery_details,
      :user_sub,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.user_confirmed ||= false
      end

    end

    # <p>The SMS configuration type is the settings that your Amazon Cognito user pool must use to send
    #             an SMS message from your Amazon Web Services account through Amazon Simple Notification Service. To send SMS
    #             messages with Amazon SNS in the Amazon Web Services Region that you want, the Amazon Cognito user pool uses an
    #             Identity and Access Management (IAM) role in your Amazon Web Services account.</p>
    #
    # @!attribute sns_caller_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon SNS caller. This is the ARN of the IAM role
    #               in your Amazon Web Services account that Amazon Cognito will use to send SMS messages. SMS
    #               messages are subject to a <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-email-phone-verification.html">spending limit</a>. </p>
    #
    #   @return [String]
    #
    # @!attribute external_id
    #   <p>The external ID provides additional security for your IAM role. You can use an
    #                   <code>ExternalId</code> with the IAM role that you use with Amazon SNS to send SMS
    #               messages for your user pool. If you provide an <code>ExternalId</code>, your Amazon Cognito user
    #               pool includes it in the request to assume your IAM role. You can configure the role
    #               trust policy to require that Amazon Cognito, and any principal, provide the
    #                   <code>ExternalID</code>. If you use the Amazon Cognito Management Console to create a role
    #               for SMS multi-factor authentication (MFA), Amazon Cognito creates a role with the required
    #               permissions and a trust policy that demonstrates use of the
    #               <code>ExternalId</code>.</p>
    #           <p>For more information about the <code>ExternalId</code> of a role, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_create_for-user_externalid.html">How to use an
    #                   external ID when granting access to your Amazon Web Services resources to a third
    #                   party</a>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute sns_region
    #   <p>The Amazon Web Services Region to use with Amazon SNS integration. You can choose the same Region as your
    #               user pool, or a supported <b>Legacy Amazon SNS alternate
    #               Region</b>. </p>
    #           <p>
    #               Amazon Cognito resources in the Asia Pacific (Seoul) Amazon Web Services Region must use your Amazon SNS
    #               configuration in the Asia Pacific (Tokyo) Region. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html">SMS message settings for Amazon Cognito user pools</a>.</p>
    #
    #   @return [String]
    #
    SmsConfigurationType = ::Struct.new(
      :sns_caller_arn,
      :external_id,
      :sns_region,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The SMS text message multi-factor authentication (MFA) configuration type.</p>
    #
    # @!attribute sms_authentication_message
    #   <p>The SMS authentication message that will be sent to users with the code they must sign
    #               in. The message must contain the ‘{    }’ placeholder, which is replaced with the code.
    #               If the message isn't included, and default message will be used.</p>
    #
    #   @return [String]
    #
    # @!attribute sms_configuration
    #   <p>The SMS configuration with the settings that your Amazon Cognito user pool must use to send an
    #               SMS message from your Amazon Web Services account through Amazon Simple Notification Service. To request Amazon SNS in
    #               the Amazon Web Services Region that you want, the Amazon Cognito user pool uses an Identity and Access Management (IAM) role that
    #               you provide for your Amazon Web Services account.</p>
    #
    #   @return [SmsConfigurationType]
    #
    SmsMfaConfigType = ::Struct.new(
      :sms_authentication_message,
      :sms_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when the software token time-based one-time password (TOTP)
    #             multi-factor authentication (MFA) isn't activated for the user pool.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    SoftwareTokenMFANotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The type used for enabling software token MFA at the user pool level.</p>
    #
    # @!attribute enabled
    #   <p>Specifies whether software token MFA is activated.</p>
    #
    #   @return [Boolean]
    #
    SoftwareTokenMfaConfigType = ::Struct.new(
      :enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.enabled ||= false
      end

    end

    # <p>The type used for enabling software token MFA at the user level. If an MFA type is
    #             activated for a user, the user will be prompted for MFA during all sign-in attempts,
    #             unless device tracking is turned on and the device has been trusted. If you want MFA to
    #             be applied selectively based on the assessed risk level of sign-in attempts, deactivate
    #             MFA for users and turn on Adaptive Authentication for the user pool.</p>
    #
    # @!attribute enabled
    #   <p>Specifies whether software token MFA is activated. If an MFA type is activated for a
    #               user, the user will be prompted for MFA during all sign-in attempts, unless device
    #               tracking is turned on and the device has been trusted.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute preferred_mfa
    #   <p>Specifies whether software token MFA is the preferred MFA method.</p>
    #
    #   @return [Boolean]
    #
    SoftwareTokenMfaSettingsType = ::Struct.new(
      :enabled,
      :preferred_mfa,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.enabled ||= false
        self.preferred_mfa ||= false
      end

    end

    # <p>Represents the request to start the user import job.</p>
    #
    # @!attribute user_pool_id
    #   <p>The user pool ID for the user pool that the users are being imported into.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The job ID for the user import job.</p>
    #
    #   @return [String]
    #
    StartUserImportJobInput = ::Struct.new(
      :user_pool_id,
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the response from the server to the request to start the user import
    #             job.</p>
    #
    # @!attribute user_import_job
    #   <p>The job object that represents the user import job.</p>
    #
    #   @return [UserImportJobType]
    #
    StartUserImportJobOutput = ::Struct.new(
      :user_import_job,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StatusType
    #
    module StatusType
      # No documentation available.
      #
      Enabled = "Enabled"

      # No documentation available.
      #
      Disabled = "Disabled"
    end

    # <p>Represents the request to stop the user import job.</p>
    #
    # @!attribute user_pool_id
    #   <p>The user pool ID for the user pool that the users are being imported into.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The job ID for the user import job.</p>
    #
    #   @return [String]
    #
    StopUserImportJobInput = ::Struct.new(
      :user_pool_id,
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the response from the server to the request to stop the user import
    #             job.</p>
    #
    # @!attribute user_import_job
    #   <p>The job object that represents the user import job.</p>
    #
    #   @return [UserImportJobType]
    #
    StopUserImportJobOutput = ::Struct.new(
      :user_import_job,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The constraints associated with a string attribute.</p>
    #
    # @!attribute min_length
    #   <p>The minimum length.</p>
    #
    #   @return [String]
    #
    # @!attribute max_length
    #   <p>The maximum length.</p>
    #
    #   @return [String]
    #
    StringAttributeConstraintsType = ::Struct.new(
      :min_length,
      :max_length,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the user pool to assign the tags to.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to assign to the user pool.</p>
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

    # Includes enum constants for TimeUnitsType
    #
    module TimeUnitsType
      # No documentation available.
      #
      SECONDS = "seconds"

      # No documentation available.
      #
      MINUTES = "minutes"

      # No documentation available.
      #
      HOURS = "hours"

      # No documentation available.
      #
      DAYS = "days"
    end

    # <p>The data type TokenValidityUnits specifies the time units you use when you set the
    #             duration of ID, access, and refresh tokens.</p>
    #
    # @!attribute access_token
    #   <p> A time unit of <code>seconds</code>, <code>minutes</code>, <code>hours</code>, or
    #                   <code>days</code> for the value that you set in the <code>AccessTokenValidity</code>
    #               parameter. The default <code>AccessTokenValidity</code> time unit is hours.</p>
    #
    #   Enum, one of: ["seconds", "minutes", "hours", "days"]
    #
    #   @return [String]
    #
    # @!attribute id_token
    #   <p>A time unit of <code>seconds</code>, <code>minutes</code>, <code>hours</code>, or
    #                   <code>days</code> for the value that you set in the <code>IdTokenValidity</code>
    #               parameter. The default <code>IdTokenValidity</code> time unit is hours.</p>
    #
    #   Enum, one of: ["seconds", "minutes", "hours", "days"]
    #
    #   @return [String]
    #
    # @!attribute refresh_token
    #   <p>A time unit of <code>seconds</code>, <code>minutes</code>, <code>hours</code>, or
    #                   <code>days</code> for the value that you set in the
    #                   <code>RefreshTokenValidity</code> parameter. The default
    #                   <code>RefreshTokenValidity</code> time unit is days.</p>
    #
    #   Enum, one of: ["seconds", "minutes", "hours", "days"]
    #
    #   @return [String]
    #
    TokenValidityUnitsType = ::Struct.new(
      :access_token,
      :id_token,
      :refresh_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when the user has made too many failed attempts for a given
    #             action, such as sign-in.</p>
    #
    # @!attribute message
    #   <p>The message returned when Amazon Cognito returns a <code>TooManyFailedAttempts</code>
    #               exception.</p>
    #
    #   @return [String]
    #
    TooManyFailedAttemptsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when the user has made too many requests for a given
    #             operation.</p>
    #
    # @!attribute message
    #   <p>The message returned when the Amazon Cognito service returns a too many requests
    #               exception.</p>
    #
    #   @return [String]
    #
    TooManyRequestsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A container for the UI customization information for a user pool's built-in app
    #             UI.</p>
    #
    # @!attribute user_pool_id
    #   <p>The user pool ID for the user pool.</p>
    #
    #   @return [String]
    #
    # @!attribute client_id
    #   <p>The client ID for the client app.</p>
    #
    #   @return [String]
    #
    # @!attribute image_url
    #   <p>The logo image for the UI customization.</p>
    #
    #   @return [String]
    #
    # @!attribute css
    #   <p>The CSS values in the UI customization.</p>
    #
    #   @return [String]
    #
    # @!attribute css_version
    #   <p>The CSS version number.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_date
    #   <p>The last-modified date for the UI customization.</p>
    #
    #   @return [Time]
    #
    # @!attribute creation_date
    #   <p>The creation date for the UI customization.</p>
    #
    #   @return [Time]
    #
    UICustomizationType = ::Struct.new(
      :user_pool_id,
      :client_id,
      :image_url,
      :css,
      :css_version,
      :last_modified_date,
      :creation_date,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::UICustomizationType "\
          "user_pool_id=#{user_pool_id || 'nil'}, "\
          "client_id=\"[SENSITIVE]\", "\
          "image_url=#{image_url || 'nil'}, "\
          "css=#{css || 'nil'}, "\
          "css_version=#{css_version || 'nil'}, "\
          "last_modified_date=#{last_modified_date || 'nil'}, "\
          "creation_date=#{creation_date || 'nil'}>"
      end
    end

    # <p>Exception that is thrown when the request isn't authorized. This can happen due to an
    #             invalid access token in the request.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UnauthorizedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when Amazon Cognito encounters an unexpected exception with
    #             Lambda.</p>
    #
    # @!attribute message
    #   <p>The message returned when Amazon Cognito returns an unexpected Lambda exception.</p>
    #
    #   @return [String]
    #
    UnexpectedLambdaException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when the specified identifier isn't supported.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UnsupportedIdentityProviderException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Exception that is thrown when you attempt to perform an operation that isn't enabled
    #             for the user pool client.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UnsupportedOperationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Exception that is thrown when an unsupported token is passed to an operation.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UnsupportedTokenTypeException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request failed because the user is in an unsupported state.</p>
    #
    # @!attribute message
    #   <p>The message returned when the user is in an unsupported state.</p>
    #
    #   @return [String]
    #
    UnsupportedUserStateException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the user pool that the tags are assigned to.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The keys of the tags to remove from the user pool.</p>
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

    # @!attribute user_pool_id
    #   <p>The user pool ID.</p>
    #
    #   @return [String]
    #
    # @!attribute username
    #   <p>The user pool username.</p>
    #
    #   @return [String]
    #
    # @!attribute event_id
    #   <p>The event ID.</p>
    #
    #   @return [String]
    #
    # @!attribute feedback_token
    #   <p>The feedback token.</p>
    #
    #   @return [String]
    #
    # @!attribute feedback_value
    #   <p>The authentication event feedback value.</p>
    #
    #   Enum, one of: ["Valid", "Invalid"]
    #
    #   @return [String]
    #
    UpdateAuthEventFeedbackInput = ::Struct.new(
      :user_pool_id,
      :username,
      :event_id,
      :feedback_token,
      :feedback_value,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::UpdateAuthEventFeedbackInput "\
          "user_pool_id=#{user_pool_id || 'nil'}, "\
          "username=\"[SENSITIVE]\", "\
          "event_id=#{event_id || 'nil'}, "\
          "feedback_token=\"[SENSITIVE]\", "\
          "feedback_value=#{feedback_value || 'nil'}>"
      end
    end

    UpdateAuthEventFeedbackOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the request to update the device status.</p>
    #
    # @!attribute access_token
    #   <p>A valid access token that Amazon Cognito issued to the user whose device status you want to
    #               update.</p>
    #
    #   @return [String]
    #
    # @!attribute device_key
    #   <p>The device key.</p>
    #
    #   @return [String]
    #
    # @!attribute device_remembered_status
    #   <p>The status of whether a device is remembered.</p>
    #
    #   Enum, one of: ["remembered", "not_remembered"]
    #
    #   @return [String]
    #
    UpdateDeviceStatusInput = ::Struct.new(
      :access_token,
      :device_key,
      :device_remembered_status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::UpdateDeviceStatusInput "\
          "access_token=\"[SENSITIVE]\", "\
          "device_key=#{device_key || 'nil'}, "\
          "device_remembered_status=#{device_remembered_status || 'nil'}>"
      end
    end

    # <p>The response to the request to update the device status.</p>
    #
    UpdateDeviceStatusOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute group_name
    #   <p>The name of the group.</p>
    #
    #   @return [String]
    #
    # @!attribute user_pool_id
    #   <p>The user pool ID for the user pool.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A string containing the new description of the group.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The new role Amazon Resource Name (ARN) for the group. This is used for setting the
    #                   <code>cognito:roles</code> and <code>cognito:preferred_role</code> claims in the
    #               token.</p>
    #
    #   @return [String]
    #
    # @!attribute precedence
    #   <p>The new precedence value for the group. For more information about this parameter, see
    #                   <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_CreateGroup.html">CreateGroup</a>.</p>
    #
    #   @return [Integer]
    #
    UpdateGroupInput = ::Struct.new(
      :group_name,
      :user_pool_id,
      :description,
      :role_arn,
      :precedence,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute group
    #   <p>The group object for the group.</p>
    #
    #   @return [GroupType]
    #
    UpdateGroupOutput = ::Struct.new(
      :group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_pool_id
    #   <p>The user pool ID.</p>
    #
    #   @return [String]
    #
    # @!attribute provider_name
    #   <p>The IdP name.</p>
    #
    #   @return [String]
    #
    # @!attribute provider_details
    #   <p>The IdP details to be updated, such as <code>MetadataURL</code> and
    #                   <code>MetadataFile</code>.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute attribute_mapping
    #   <p>The IdP attribute mapping to be changed.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute idp_identifiers
    #   <p>A list of IdP identifiers.</p>
    #
    #   @return [Array<String>]
    #
    UpdateIdentityProviderInput = ::Struct.new(
      :user_pool_id,
      :provider_name,
      :provider_details,
      :attribute_mapping,
      :idp_identifiers,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute identity_provider
    #   <p>The IdP object.</p>
    #
    #   @return [IdentityProviderType]
    #
    UpdateIdentityProviderOutput = ::Struct.new(
      :identity_provider,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_pool_id
    #   <p>The user pool ID for the user pool.</p>
    #
    #   @return [String]
    #
    # @!attribute identifier
    #   <p>The identifier for the resource server.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the resource server.</p>
    #
    #   @return [String]
    #
    # @!attribute scopes
    #   <p>The scope values to be set for the resource server.</p>
    #
    #   @return [Array<ResourceServerScopeType>]
    #
    UpdateResourceServerInput = ::Struct.new(
      :user_pool_id,
      :identifier,
      :name,
      :scopes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_server
    #   <p>The resource server.</p>
    #
    #   @return [ResourceServerType]
    #
    UpdateResourceServerOutput = ::Struct.new(
      :resource_server,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the request to update user attributes.</p>
    #
    # @!attribute user_attributes
    #   <p>An array of name-value pairs representing user attributes.</p>
    #           <p>For custom attributes, you must prepend the <code>custom:</code> prefix to the
    #               attribute name.</p>
    #           <p>If you have set an attribute to require verification before Amazon Cognito updates its value,
    #               this request doesn’t immediately update the value of that attribute. After your user
    #               receives and responds to a verification message to verify the new value, Amazon Cognito updates
    #               the attribute value. Your user can sign in and receive messages with the original
    #               attribute value until they verify the new value.</p>
    #
    #   @return [Array<AttributeType>]
    #
    # @!attribute access_token
    #   <p>A valid access token that Amazon Cognito issued to the user whose user attributes you want to
    #               update.</p>
    #
    #   @return [String]
    #
    # @!attribute client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for any custom workflows
    #               that this action initiates. </p>
    #           <p>You create custom workflows by assigning Lambda functions to user pool triggers. When
    #               you use the UpdateUserAttributes API action, Amazon Cognito invokes the function that is assigned
    #               to the <i>custom message</i> trigger. When Amazon Cognito invokes this function, it
    #               passes a JSON payload, which the function receives as input. This payload contains a
    #                   <code>clientMetadata</code> attribute, which provides the data that you assigned to
    #               the ClientMetadata parameter in your UpdateUserAttributes request. In your function code
    #               in Lambda, you can process the <code>clientMetadata</code> value to enhance your workflow
    #               for your specific needs.</p>
    #
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html">
    #   Customizing user pool Workflows with Lambda Triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #
    #           <note>
    #               <p>When you use the ClientMetadata parameter, remember that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                       <p>Store the ClientMetadata value. This data is available only to Lambda
    #                           triggers that are assigned to a user pool to support custom workflows. If
    #                           your user pool configuration doesn't include triggers, the ClientMetadata
    #                           parameter serves no purpose.</p>
    #                   </li>
    #                  <li>
    #                       <p>Validate the ClientMetadata value.</p>
    #                   </li>
    #                  <li>
    #                       <p>Encrypt the ClientMetadata value. Don't use Amazon Cognito to provide sensitive
    #                           information.</p>
    #                   </li>
    #               </ul>
    #           </note>
    #
    #   @return [Hash<String, String>]
    #
    UpdateUserAttributesInput = ::Struct.new(
      :user_attributes,
      :access_token,
      :client_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::UpdateUserAttributesInput "\
          "user_attributes=#{user_attributes || 'nil'}, "\
          "access_token=\"[SENSITIVE]\", "\
          "client_metadata=#{client_metadata || 'nil'}>"
      end
    end

    # <p>Represents the response from the server for the request to update user
    #             attributes.</p>
    #
    # @!attribute code_delivery_details_list
    #   <p>The code delivery details list from the server for the request to update user
    #               attributes.</p>
    #
    #   @return [Array<CodeDeliveryDetailsType>]
    #
    UpdateUserAttributesOutput = ::Struct.new(
      :code_delivery_details_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the request to update the user pool client.</p>
    #
    # @!attribute user_pool_id
    #   <p>The user pool ID for the user pool where you want to update the user pool
    #               client.</p>
    #
    #   @return [String]
    #
    # @!attribute client_id
    #   <p>The ID of the client associated with the user pool.</p>
    #
    #   @return [String]
    #
    # @!attribute client_name
    #   <p>The client name from the update user pool client request.</p>
    #
    #   @return [String]
    #
    # @!attribute refresh_token_validity
    #   <p>The refresh token time limit. After this limit expires, your user can't use
    #           their refresh token. To specify the time unit for <code>RefreshTokenValidity</code> as
    #           <code>seconds</code>, <code>minutes</code>, <code>hours</code>, or <code>days</code>,
    #           set a <code>TokenValidityUnits</code> value in your API request.</p>
    #           <p>For example, when you set <code>RefreshTokenValidity</code> as <code>10</code> and
    #           <code>TokenValidityUnits</code> as <code>days</code>, your user can refresh their session
    #           and retrieve new access and ID tokens for 10 days.</p>
    #           <p>The default time unit for <code>RefreshTokenValidity</code> in an API request is days.
    #           You can't set <code>RefreshTokenValidity</code> to 0. If you do, Amazon Cognito overrides the
    #           value with the default value of 30 days. <i>Valid range</i> is displayed below
    #           in seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute access_token_validity
    #   <p>The access token time limit. After this limit expires, your user can't use
    #           their access token. To specify the time unit for <code>AccessTokenValidity</code> as
    #           <code>seconds</code>, <code>minutes</code>, <code>hours</code>, or <code>days</code>,
    #           set a <code>TokenValidityUnits</code> value in your API request.</p>
    #           <p>For example, when you set <code>AccessTokenValidity</code> to <code>10</code> and
    #           <code>TokenValidityUnits</code> to <code>hours</code>, your user can authorize access with
    #           their access token for 10 hours.</p>
    #           <p>The default time unit for <code>AccessTokenValidity</code> in an API request is hours.
    #           <i>Valid range</i> is displayed below in seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute id_token_validity
    #   <p>The ID token time limit. After this limit expires, your user can't use
    #           their ID token. To specify the time unit for <code>IdTokenValidity</code> as
    #           <code>seconds</code>, <code>minutes</code>, <code>hours</code>, or <code>days</code>,
    #           set a <code>TokenValidityUnits</code> value in your API request.</p>
    #           <p>For example, when you set <code>IdTokenValidity</code> as <code>10</code> and
    #           <code>TokenValidityUnits</code> as <code>hours</code>, your user can authenticate their
    #           session with their ID token for 10 hours.</p>
    #           <p>The default time unit for <code>AccessTokenValidity</code> in an API request is hours.
    #           <i>Valid range</i> is displayed below in seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute token_validity_units
    #   <p>The units in which the validity times are represented. The default unit for
    #               RefreshToken is days, and the default for ID and access tokens is hours.</p>
    #
    #   @return [TokenValidityUnitsType]
    #
    # @!attribute read_attributes
    #   <p>The read-only attributes of the user pool.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute write_attributes
    #   <p>The writeable attributes of the user pool.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute explicit_auth_flows
    #   <p>The authentication flows that are supported by the user pool clients. Flow names
    #               without the <code>ALLOW_</code> prefix are no longer supported in favor of new names
    #               with the <code>ALLOW_</code> prefix. Note that values with <code>ALLOW_</code> prefix
    #               must be used only along with values with the <code>ALLOW_</code> prefix.</p>
    #           <p>Valid values include:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>ALLOW_ADMIN_USER_PASSWORD_AUTH</code>: Enable admin based user password
    #                       authentication flow <code>ADMIN_USER_PASSWORD_AUTH</code>. This setting replaces
    #                       the <code>ADMIN_NO_SRP_AUTH</code> setting. With this authentication flow, Amazon Cognito
    #                       receives the password in the request instead of using the Secure Remote Password
    #                       (SRP) protocol to verify passwords.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ALLOW_CUSTOM_AUTH</code>: Enable Lambda trigger based
    #                       authentication.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ALLOW_USER_PASSWORD_AUTH</code>: Enable user password-based
    #                       authentication. In this flow, Amazon Cognito receives the password in the request instead
    #                       of using the SRP protocol to verify passwords.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ALLOW_USER_SRP_AUTH</code>: Enable SRP-based authentication.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ALLOW_REFRESH_TOKEN_AUTH</code>: Enable authflow to refresh
    #                       tokens.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    # @!attribute supported_identity_providers
    #   <p>A list of provider names for the IdPs that this client supports. The following are
    #               supported: <code>COGNITO</code>, <code>Facebook</code>, <code>Google</code>
    #               <code>LoginWithAmazon</code>, and the names of your own SAML and OIDC providers.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute callback_ur_ls
    #   <p>A list of allowed redirect (callback) URLs for the IdPs.</p>
    #           <p>A redirect URI must:</p>
    #           <ul>
    #               <li>
    #                   <p>Be an absolute URI.</p>
    #               </li>
    #               <li>
    #                   <p>Be registered with the authorization server.</p>
    #               </li>
    #               <li>
    #                   <p>Not include a fragment component.</p>
    #               </li>
    #            </ul>
    #           <p>See <a href="https://tools.ietf.org/html/rfc6749 section-3.1.2">OAuth 2.0 -
    #                   Redirection Endpoint</a>.</p>
    #           <p>Amazon Cognito requires HTTPS over HTTP except for http://localhost for testing purposes
    #               only.</p>
    #           <p>App callback URLs such as <code>myapp://example</code> are also supported.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute logout_ur_ls
    #   <p>A list of allowed logout URLs for the IdPs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute default_redirect_uri
    #   <p>The default redirect URI. Must be in the <code>CallbackURLs</code> list.</p>
    #           <p>A redirect URI must:</p>
    #           <ul>
    #               <li>
    #                   <p>Be an absolute URI.</p>
    #               </li>
    #               <li>
    #                   <p>Be registered with the authorization server.</p>
    #               </li>
    #               <li>
    #                   <p>Not include a fragment component.</p>
    #               </li>
    #            </ul>
    #           <p>See <a href="https://tools.ietf.org/html/rfc6749 section-3.1.2">OAuth 2.0 -
    #                   Redirection Endpoint</a>.</p>
    #           <p>Amazon Cognito requires HTTPS over HTTP except for <code>http://localhost</code> for testing
    #               purposes only.</p>
    #           <p>App callback URLs such as <code>myapp://example</code> are also supported.</p>
    #
    #   @return [String]
    #
    # @!attribute allowed_o_auth_flows
    #   <p>The allowed OAuth flows.</p>
    #           <dl>
    #               <dt>code</dt>
    #               <dd>
    #                       <p>Use a code grant flow, which provides an authorization code as the
    #                           response. This code can be exchanged for access tokens with the
    #                               <code>/oauth2/token</code> endpoint.</p>
    #                   </dd>
    #               <dt>implicit</dt>
    #               <dd>
    #                       <p>Issue the access token (and, optionally, ID token, based on scopes)
    #                           directly to your user.</p>
    #                   </dd>
    #               <dt>client_credentials</dt>
    #               <dd>
    #                       <p>Issue the access token from the <code>/oauth2/token</code> endpoint
    #                           directly to a non-person user using a combination of the client ID and
    #                           client secret.</p>
    #                   </dd>
    #            </dl>
    #
    #   @return [Array<String>]
    #
    # @!attribute allowed_o_auth_scopes
    #   <p>The allowed OAuth scopes. Possible values provided by OAuth are <code>phone</code>,
    #                   <code>email</code>, <code>openid</code>, and <code>profile</code>. Possible values
    #               provided by Amazon Web Services are <code>aws.cognito.signin.user.admin</code>. Custom scopes created
    #               in Resource Servers are also supported.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute allowed_o_auth_flows_user_pool_client
    #   <p>Set to true if the client is allowed to follow the OAuth protocol when interacting
    #               with Amazon Cognito user pools.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute analytics_configuration
    #   <p>The Amazon Pinpoint analytics configuration necessary to collect metrics for this user
    #               pool.</p>
    #           <note>
    #               <p>In Amazon Web Services Regions where Amazon Pinpoint isn't available, user pools only support sending
    #                   events to Amazon Pinpoint projects in us-east-1. In Regions where Amazon Pinpoint is available, user
    #                   pools support sending events to Amazon Pinpoint projects within that same Region.</p>
    #           </note>
    #
    #   @return [AnalyticsConfigurationType]
    #
    # @!attribute prevent_user_existence_errors
    #   <p>Errors and responses that you want Amazon Cognito APIs to return during authentication, account
    #               confirmation, and password recovery when the user doesn't exist in the user pool. When
    #               set to <code>ENABLED</code> and the user doesn't exist, authentication returns an error
    #               indicating either the username or password was incorrect. Account confirmation and
    #               password recovery return a response indicating a code was sent to a simulated
    #               destination. When set to <code>LEGACY</code>, those APIs return a
    #                   <code>UserNotFoundException</code> exception if the user doesn't exist in the user
    #               pool.</p>
    #           <p>Valid values include:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>ENABLED</code> - This prevents user existence-related errors.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>LEGACY</code> - This represents the early behavior of Amazon Cognito where user
    #                       existence related errors aren't prevented.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["LEGACY", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute enable_token_revocation
    #   <p>Activates or deactivates token revocation. For more information about revoking tokens,
    #               see <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_RevokeToken.html">RevokeToken</a>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute enable_propagate_additional_user_context_data
    #   <p>Activates the propagation of additional user context data. For more information about
    #               propagation of user context data, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-advanced-security.html"> Adding advanced security to a user pool</a>. If you don’t include this
    #               parameter, you can't send device fingerprint information, including source IP address,
    #               to Amazon Cognito advanced security. You can only activate
    #                   <code>EnablePropagateAdditionalUserContextData</code> in an app client that has a
    #               client secret.</p>
    #
    #   @return [Boolean]
    #
    UpdateUserPoolClientInput = ::Struct.new(
      :user_pool_id,
      :client_id,
      :client_name,
      :refresh_token_validity,
      :access_token_validity,
      :id_token_validity,
      :token_validity_units,
      :read_attributes,
      :write_attributes,
      :explicit_auth_flows,
      :supported_identity_providers,
      :callback_ur_ls,
      :logout_ur_ls,
      :default_redirect_uri,
      :allowed_o_auth_flows,
      :allowed_o_auth_scopes,
      :allowed_o_auth_flows_user_pool_client,
      :analytics_configuration,
      :prevent_user_existence_errors,
      :enable_token_revocation,
      :enable_propagate_additional_user_context_data,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.refresh_token_validity ||= 0
        self.allowed_o_auth_flows_user_pool_client ||= false
      end

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::UpdateUserPoolClientInput "\
          "user_pool_id=#{user_pool_id || 'nil'}, "\
          "client_id=\"[SENSITIVE]\", "\
          "client_name=#{client_name || 'nil'}, "\
          "refresh_token_validity=#{refresh_token_validity || 'nil'}, "\
          "access_token_validity=#{access_token_validity || 'nil'}, "\
          "id_token_validity=#{id_token_validity || 'nil'}, "\
          "token_validity_units=#{token_validity_units || 'nil'}, "\
          "read_attributes=#{read_attributes || 'nil'}, "\
          "write_attributes=#{write_attributes || 'nil'}, "\
          "explicit_auth_flows=#{explicit_auth_flows || 'nil'}, "\
          "supported_identity_providers=#{supported_identity_providers || 'nil'}, "\
          "callback_ur_ls=#{callback_ur_ls || 'nil'}, "\
          "logout_ur_ls=#{logout_ur_ls || 'nil'}, "\
          "default_redirect_uri=#{default_redirect_uri || 'nil'}, "\
          "allowed_o_auth_flows=#{allowed_o_auth_flows || 'nil'}, "\
          "allowed_o_auth_scopes=#{allowed_o_auth_scopes || 'nil'}, "\
          "allowed_o_auth_flows_user_pool_client=#{allowed_o_auth_flows_user_pool_client || 'nil'}, "\
          "analytics_configuration=#{analytics_configuration || 'nil'}, "\
          "prevent_user_existence_errors=#{prevent_user_existence_errors || 'nil'}, "\
          "enable_token_revocation=#{enable_token_revocation || 'nil'}, "\
          "enable_propagate_additional_user_context_data=#{enable_propagate_additional_user_context_data || 'nil'}>"
      end
    end

    # <p>Represents the response from the server to the request to update the user pool
    #             client.</p>
    #
    # @!attribute user_pool_client
    #   <p>The user pool client value from the response from the server when you request to
    #               update the user pool client.</p>
    #
    #   @return [UserPoolClientType]
    #
    UpdateUserPoolClientOutput = ::Struct.new(
      :user_pool_client,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The UpdateUserPoolDomain request input.</p>
    #
    # @!attribute domain
    #   <p>The domain name for the custom domain that hosts the sign-up and sign-in pages for
    #               your application. One example might be <code>auth.example.com</code>. </p>
    #           <p>This string can include only lowercase letters, numbers, and hyphens. Don't use a
    #               hyphen for the first or last character. Use periods to separate subdomain names.</p>
    #
    #   @return [String]
    #
    # @!attribute user_pool_id
    #   <p>The ID of the user pool that is associated with the custom domain whose certificate
    #               you're updating.</p>
    #
    #   @return [String]
    #
    # @!attribute custom_domain_config
    #   <p>The configuration for a custom domain that hosts the sign-up and sign-in pages for
    #               your application. Use this object to specify an SSL certificate that is managed by
    #               ACM.</p>
    #
    #   @return [CustomDomainConfigType]
    #
    UpdateUserPoolDomainInput = ::Struct.new(
      :domain,
      :user_pool_id,
      :custom_domain_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The UpdateUserPoolDomain response output.</p>
    #
    # @!attribute cloud_front_domain
    #   <p>The Amazon CloudFront endpoint that Amazon Cognito set up when you added the custom domain to your user
    #               pool.</p>
    #
    #   @return [String]
    #
    UpdateUserPoolDomainOutput = ::Struct.new(
      :cloud_front_domain,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the request to update the user pool.</p>
    #
    # @!attribute user_pool_id
    #   <p>The user pool ID for the user pool you want to update.</p>
    #
    #   @return [String]
    #
    # @!attribute policies
    #   <p>A container with the policies you want to update in a user pool.</p>
    #
    #   @return [UserPoolPolicyType]
    #
    # @!attribute lambda_config
    #   <p>The Lambda configuration information from the request to update the user pool.</p>
    #
    #   @return [LambdaConfigType]
    #
    # @!attribute auto_verified_attributes
    #   <p>The attributes that are automatically verified when Amazon Cognito requests to update user
    #               pools.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute sms_verification_message
    #   <p>A container with information about the SMS verification message.</p>
    #
    #   @return [String]
    #
    # @!attribute email_verification_message
    #   <p>The contents of the email verification message.</p>
    #
    #   @return [String]
    #
    # @!attribute email_verification_subject
    #   <p>The subject of the email verification message.</p>
    #
    #   @return [String]
    #
    # @!attribute verification_message_template
    #   <p>The template for verification messages.</p>
    #
    #   @return [VerificationMessageTemplateType]
    #
    # @!attribute sms_authentication_message
    #   <p>The contents of the SMS authentication message.</p>
    #
    #   @return [String]
    #
    # @!attribute user_attribute_update_settings
    #   <p>The settings for updates to user attributes. These settings include the property <code>AttributesRequireVerificationBeforeUpdate</code>,
    #   a user-pool setting that tells Amazon Cognito how to handle changes to the value of your users' email address and phone number attributes. For
    #   more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-email-phone-verification.html user-pool-settings-verifications-verify-attribute-updates">
    #   Verifying updates to to email addresses and phone numbers</a>.</p>
    #
    #   @return [UserAttributeUpdateSettingsType]
    #
    # @!attribute mfa_configuration
    #   <p>Possible values include:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>OFF</code> - MFA tokens aren't required and can't be specified during user
    #                       registration.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>ON</code> - MFA tokens are required for all user registrations. You can
    #                       only specify ON when you're initially creating a user pool. You can use the
    #                           <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_SetUserPoolMfaConfig.html">SetUserPoolMfaConfig</a> API operation to turn MFA "ON" for existing
    #                       user pools. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>OPTIONAL</code> - Users have the option when registering to create an MFA
    #                       token.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["OFF", "ON", "OPTIONAL"]
    #
    #   @return [String]
    #
    # @!attribute device_configuration
    #   <p>Device configuration.</p>
    #
    #   @return [DeviceConfigurationType]
    #
    # @!attribute email_configuration
    #   <p>The email configuration of your user pool. The email configuration type sets your
    #               preferred sending method, Amazon Web Services Region, and sender for email invitation and verification
    #               messages from your user pool.</p>
    #
    #   @return [EmailConfigurationType]
    #
    # @!attribute sms_configuration
    #   <p>The SMS configuration with the settings that your Amazon Cognito user pool must use to send an
    #               SMS message from your Amazon Web Services account through Amazon Simple Notification Service. To send SMS messages
    #               with Amazon SNS in the Amazon Web Services Region that you want, the Amazon Cognito user pool uses an Identity and Access Management
    #               (IAM) role in your Amazon Web Services account.</p>
    #
    #   @return [SmsConfigurationType]
    #
    # @!attribute user_pool_tags
    #   <p>The tag keys and values to assign to the user pool. A tag is a label that you can use
    #               to categorize and manage user pools in different ways, such as by purpose, owner,
    #               environment, or other criteria.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute admin_create_user_config
    #   <p>The configuration for <code>AdminCreateUser</code> requests.</p>
    #
    #   @return [AdminCreateUserConfigType]
    #
    # @!attribute user_pool_add_ons
    #   <p>Enables advanced security risk detection. Set the key
    #                   <code>AdvancedSecurityMode</code> to the value "AUDIT".</p>
    #
    #   @return [UserPoolAddOnsType]
    #
    # @!attribute account_recovery_setting
    #   <p>The available verified method a user can use to recover their password when they call
    #                   <code>ForgotPassword</code>. You can use this setting to define a preferred method
    #               when a user has more than one method available. With this setting, SMS doesn't qualify
    #               for a valid password recovery mechanism if the user also has SMS multi-factor
    #               authentication (MFA) activated. In the absence of this setting, Amazon Cognito uses the legacy
    #               behavior to determine the recovery method where SMS is preferred through email.</p>
    #
    #   @return [AccountRecoverySettingType]
    #
    UpdateUserPoolInput = ::Struct.new(
      :user_pool_id,
      :policies,
      :lambda_config,
      :auto_verified_attributes,
      :sms_verification_message,
      :email_verification_message,
      :email_verification_subject,
      :verification_message_template,
      :sms_authentication_message,
      :user_attribute_update_settings,
      :mfa_configuration,
      :device_configuration,
      :email_configuration,
      :sms_configuration,
      :user_pool_tags,
      :admin_create_user_config,
      :user_pool_add_ons,
      :account_recovery_setting,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the response from the server when you make a request to update the user
    #             pool.</p>
    #
    UpdateUserPoolOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The settings for updates to user attributes. These settings include the property <code>AttributesRequireVerificationBeforeUpdate</code>,
    # a user-pool setting that tells Amazon Cognito how to handle changes to the value of your users' email address and phone number attributes. For
    # more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-email-phone-verification.html#user-pool-settings-verifications-verify-attribute-updates">
    # Verifying updates to to email addresses and phone numbers</a>.</p>
    #
    # @!attribute attributes_require_verification_before_update
    #   <p>Requires that your user verifies their email address, phone number, or both before
    #               Amazon Cognito updates the value of that attribute. When you update a user attribute that has
    #               this option activated, Amazon Cognito sends a verification message to the new phone number or
    #               email address. Amazon Cognito doesn’t change the value of the attribute until your user responds
    #               to the verification message and confirms the new value.</p>
    #           <p>You can verify an updated email address or phone number with a <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_VerifyUserAttribute.html">VerifyUserAttribute</a> API request. You can also call the <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_UpdateUserAttributes.html">UpdateUserAttributes</a> or <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AdminUpdateUserAttributes.html">AdminUpdateUserAttributes</a> API and set <code>email_verified</code> or
    #                   <code>phone_number_verified</code> to true.</p>
    #           <p>When <code>AttributesRequireVerificationBeforeUpdate</code> is false, your user pool
    #               doesn't require that your users verify attribute changes before Amazon Cognito updates them. In a
    #               user pool where <code>AttributesRequireVerificationBeforeUpdate</code> is false, API
    #               operations that change attribute values can immediately update a user’s
    #                   <code>email</code> or <code>phone_number</code> attribute.</p>
    #
    #   @return [Array<String>]
    #
    UserAttributeUpdateSettingsType = ::Struct.new(
      :attributes_require_verification_before_update,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contextual data, such as the user's device fingerprint, IP address, or location, used
    #             for evaluating the risk of an unexpected event by Amazon Cognito advanced
    #         security.</p>
    #
    # @!attribute ip_address
    #   <p>The source IP address of your user's device.</p>
    #
    #   @return [String]
    #
    # @!attribute encoded_data
    #   <p>Encoded device-fingerprint details that your app collected with the Amazon Cognito
    #               context data collection library. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-adaptive-authentication.html user-pool-settings-adaptive-authentication-device-fingerprint">Adding user device and session data to API requests</a>.</p>
    #
    #   @return [String]
    #
    UserContextDataType = ::Struct.new(
      :ip_address,
      :encoded_data,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when you're trying to modify a user pool while a user import
    #             job is in progress for that pool.</p>
    #
    # @!attribute message
    #   <p>The message returned when the user pool has an import job running.</p>
    #
    #   @return [String]
    #
    UserImportInProgressException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for UserImportJobStatusType
    #
    module UserImportJobStatusType
      # No documentation available.
      #
      Created = "Created"

      # No documentation available.
      #
      Pending = "Pending"

      # No documentation available.
      #
      InProgress = "InProgress"

      # No documentation available.
      #
      Stopping = "Stopping"

      # No documentation available.
      #
      Expired = "Expired"

      # No documentation available.
      #
      Stopped = "Stopped"

      # No documentation available.
      #
      Failed = "Failed"

      # No documentation available.
      #
      Succeeded = "Succeeded"
    end

    # <p>The user import job type.</p>
    #
    # @!attribute job_name
    #   <p>The job name for the user import job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The job ID for the user import job.</p>
    #
    #   @return [String]
    #
    # @!attribute user_pool_id
    #   <p>The user pool ID for the user pool that the users are being imported into.</p>
    #
    #   @return [String]
    #
    # @!attribute pre_signed_url
    #   <p>The pre-signed URL to be used to upload the <code>.csv</code> file.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date the user import job was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute start_date
    #   <p>The date when the user import job was started.</p>
    #
    #   @return [Time]
    #
    # @!attribute completion_date
    #   <p>The date when the user import job was completed.</p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>The status of the user import job. One of the following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>Created</code> - The job was created but not started.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Pending</code> - A transition state. You have started the job, but it
    #                       has not begun importing users yet.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>InProgress</code> - The job has started, and users are being
    #                       imported.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Stopping</code> - You have stopped the job, but the job has not stopped
    #                       importing users yet.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Stopped</code> - You have stopped the job, and the job has stopped
    #                       importing users.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Succeeded</code> - The job has completed successfully.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Failed</code> - The job has stopped due to an error.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Expired</code> - You created a job, but did not start the job within
    #                       24-48 hours. All data associated with the job was deleted, and the job can't be
    #                       started.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["Created", "Pending", "InProgress", "Stopping", "Expired", "Stopped", "Failed", "Succeeded"]
    #
    #   @return [String]
    #
    # @!attribute cloud_watch_logs_role_arn
    #   <p>The role Amazon Resource Name (ARN) for the Amazon CloudWatch Logging role for the user import
    #               job. For more information, see "Creating the CloudWatch Logs IAM Role" in the Amazon Cognito Developer
    #               Guide.</p>
    #
    #   @return [String]
    #
    # @!attribute imported_users
    #   <p>The number of users that were successfully imported.</p>
    #
    #   @return [Integer]
    #
    # @!attribute skipped_users
    #   <p>The number of users that were skipped.</p>
    #
    #   @return [Integer]
    #
    # @!attribute failed_users
    #   <p>The number of users that couldn't be imported.</p>
    #
    #   @return [Integer]
    #
    # @!attribute completion_message
    #   <p>The message returned when the user import job is completed.</p>
    #
    #   @return [String]
    #
    UserImportJobType = ::Struct.new(
      :job_name,
      :job_id,
      :user_pool_id,
      :pre_signed_url,
      :creation_date,
      :start_date,
      :completion_date,
      :status,
      :cloud_watch_logs_role_arn,
      :imported_users,
      :skipped_users,
      :failed_users,
      :completion_message,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.imported_users ||= 0
        self.skipped_users ||= 0
        self.failed_users ||= 0
      end

    end

    # <p>This exception is thrown when the Amazon Cognito service encounters a user validation exception
    #             with the Lambda service.</p>
    #
    # @!attribute message
    #   <p>The message returned when the Amazon Cognito service returns a user validation exception with
    #               the Lambda service.</p>
    #
    #   @return [String]
    #
    UserLambdaValidationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when a user isn't confirmed successfully.</p>
    #
    # @!attribute message
    #   <p>The message returned when a user isn't confirmed successfully.</p>
    #
    #   @return [String]
    #
    UserNotConfirmedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when a user isn't found.</p>
    #
    # @!attribute message
    #   <p>The message returned when a user isn't found.</p>
    #
    #   @return [String]
    #
    UserNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when user pool add-ons aren't enabled.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UserPoolAddOnNotEnabledException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The user pool add-ons type.</p>
    #
    # @!attribute advanced_security_mode
    #   <p>The advanced security mode.</p>
    #
    #   Enum, one of: ["OFF", "AUDIT", "ENFORCED"]
    #
    #   @return [String]
    #
    UserPoolAddOnsType = ::Struct.new(
      :advanced_security_mode,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The description of the user pool client.</p>
    #
    # @!attribute client_id
    #   <p>The ID of the client associated with the user pool.</p>
    #
    #   @return [String]
    #
    # @!attribute user_pool_id
    #   <p>The user pool ID for the user pool where you want to describe the user pool
    #               client.</p>
    #
    #   @return [String]
    #
    # @!attribute client_name
    #   <p>The client name from the user pool client description.</p>
    #
    #   @return [String]
    #
    UserPoolClientDescription = ::Struct.new(
      :client_id,
      :user_pool_id,
      :client_name,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::UserPoolClientDescription "\
          "client_id=\"[SENSITIVE]\", "\
          "user_pool_id=#{user_pool_id || 'nil'}, "\
          "client_name=#{client_name || 'nil'}>"
      end
    end

    # <p>Contains information about a user pool client.</p>
    #
    # @!attribute user_pool_id
    #   <p>The user pool ID for the user pool client.</p>
    #
    #   @return [String]
    #
    # @!attribute client_name
    #   <p>The client name from the user pool request of the client type.</p>
    #
    #   @return [String]
    #
    # @!attribute client_id
    #   <p>The ID of the client associated with the user pool.</p>
    #
    #   @return [String]
    #
    # @!attribute client_secret
    #   <p>The client secret from the user pool request of the client type.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_date
    #   <p>The date the user pool client was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute creation_date
    #   <p>The date the user pool client was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute refresh_token_validity
    #   <p>The refresh token time limit. After this limit expires, your user can't use
    #           their refresh token. To specify the time unit for <code>RefreshTokenValidity</code> as
    #           <code>seconds</code>, <code>minutes</code>, <code>hours</code>, or <code>days</code>,
    #           set a <code>TokenValidityUnits</code> value in your API request.</p>
    #           <p>For example, when you set <code>RefreshTokenValidity</code> as <code>10</code> and
    #           <code>TokenValidityUnits</code> as <code>days</code>, your user can refresh their session
    #           and retrieve new access and ID tokens for 10 days.</p>
    #           <p>The default time unit for <code>RefreshTokenValidity</code> in an API request is days.
    #           You can't set <code>RefreshTokenValidity</code> to 0. If you do, Amazon Cognito overrides the
    #           value with the default value of 30 days. <i>Valid range</i> is displayed below
    #           in seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute access_token_validity
    #   <p>The access token time limit. After this limit expires, your user can't use
    #           their access token. To specify the time unit for <code>AccessTokenValidity</code> as
    #           <code>seconds</code>, <code>minutes</code>, <code>hours</code>, or <code>days</code>,
    #           set a <code>TokenValidityUnits</code> value in your API request.</p>
    #           <p>For example, when you set <code>AccessTokenValidity</code> to <code>10</code> and
    #           <code>TokenValidityUnits</code> to <code>hours</code>, your user can authorize access with
    #           their access token for 10 hours.</p>
    #           <p>The default time unit for <code>AccessTokenValidity</code> in an API request is hours.
    #           <i>Valid range</i> is displayed below in seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute id_token_validity
    #   <p>The ID token time limit. After this limit expires, your user can't use
    #           their ID token. To specify the time unit for <code>IdTokenValidity</code> as
    #           <code>seconds</code>, <code>minutes</code>, <code>hours</code>, or <code>days</code>,
    #           set a <code>TokenValidityUnits</code> value in your API request.</p>
    #           <p>For example, when you set <code>IdTokenValidity</code> as <code>10</code> and
    #           <code>TokenValidityUnits</code> as <code>hours</code>, your user can authenticate their
    #           session with their ID token for 10 hours.</p>
    #           <p>The default time unit for <code>AccessTokenValidity</code> in an API request is hours.
    #           <i>Valid range</i> is displayed below in seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute token_validity_units
    #   <p>The time units used to specify the token validity times of each token type: ID,
    #               access, and refresh.</p>
    #
    #   @return [TokenValidityUnitsType]
    #
    # @!attribute read_attributes
    #   <p>The Read-only attributes.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute write_attributes
    #   <p>The writeable attributes.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute explicit_auth_flows
    #   <p>The authentication flows that are supported by the user pool clients. Flow names
    #               without the <code>ALLOW_</code> prefix are no longer supported in favor of new names
    #               with the <code>ALLOW_</code> prefix. Note that values with <code>ALLOW_</code> prefix
    #               must be used only along with values including the <code>ALLOW_</code> prefix.</p>
    #           <p>Valid values include:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>ALLOW_ADMIN_USER_PASSWORD_AUTH</code>: Enable admin based user password
    #                       authentication flow <code>ADMIN_USER_PASSWORD_AUTH</code>. This setting replaces
    #                       the <code>ADMIN_NO_SRP_AUTH</code> setting. With this authentication flow, Amazon Cognito
    #                       receives the password in the request instead of using the Secure Remote Password
    #                       (SRP) protocol to verify passwords.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ALLOW_CUSTOM_AUTH</code>: Enable Lambda trigger based
    #                       authentication.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ALLOW_USER_PASSWORD_AUTH</code>: Enable user password-based
    #                       authentication. In this flow, Amazon Cognito receives the password in the request instead
    #                       of using the SRP protocol to verify passwords.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ALLOW_USER_SRP_AUTH</code>: Enable SRP-based authentication.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ALLOW_REFRESH_TOKEN_AUTH</code>: Enable authflow to refresh
    #                       tokens.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    # @!attribute supported_identity_providers
    #   <p>A list of provider names for the IdPs that this client supports. The following are
    #               supported: <code>COGNITO</code>, <code>Facebook</code>, <code>Google</code>
    #               <code>LoginWithAmazon</code>, and the names of your own SAML and OIDC providers.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute callback_ur_ls
    #   <p>A list of allowed redirect (callback) URLs for the IdPs.</p>
    #           <p>A redirect URI must:</p>
    #           <ul>
    #               <li>
    #                   <p>Be an absolute URI.</p>
    #               </li>
    #               <li>
    #                   <p>Be registered with the authorization server.</p>
    #               </li>
    #               <li>
    #                   <p>Not include a fragment component.</p>
    #               </li>
    #            </ul>
    #           <p>See <a href="https://tools.ietf.org/html/rfc6749 section-3.1.2">OAuth 2.0 -
    #                   Redirection Endpoint</a>.</p>
    #           <p>Amazon Cognito requires HTTPS over HTTP except for http://localhost for testing purposes
    #               only.</p>
    #           <p>App callback URLs such as myapp://example are also supported.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute logout_ur_ls
    #   <p>A list of allowed logout URLs for the IdPs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute default_redirect_uri
    #   <p>The default redirect URI. Must be in the <code>CallbackURLs</code> list.</p>
    #           <p>A redirect URI must:</p>
    #           <ul>
    #               <li>
    #                   <p>Be an absolute URI.</p>
    #               </li>
    #               <li>
    #                   <p>Be registered with the authorization server.</p>
    #               </li>
    #               <li>
    #                   <p>Not include a fragment component.</p>
    #               </li>
    #            </ul>
    #           <p>See <a href="https://tools.ietf.org/html/rfc6749 section-3.1.2">OAuth 2.0 -
    #                   Redirection Endpoint</a>.</p>
    #           <p>Amazon Cognito requires HTTPS over HTTP except for http://localhost for testing purposes
    #               only.</p>
    #           <p>App callback URLs such as myapp://example are also supported.</p>
    #
    #   @return [String]
    #
    # @!attribute allowed_o_auth_flows
    #   <p>The allowed OAuth flows.</p>
    #           <dl>
    #               <dt>code</dt>
    #               <dd>
    #                       <p>Use a code grant flow, which provides an authorization code as the
    #                           response. This code can be exchanged for access tokens with the
    #                               <code>/oauth2/token</code> endpoint.</p>
    #                   </dd>
    #               <dt>implicit</dt>
    #               <dd>
    #                       <p>Issue the access token (and, optionally, ID token, based on scopes)
    #                           directly to your user.</p>
    #                   </dd>
    #               <dt>client_credentials</dt>
    #               <dd>
    #                       <p>Issue the access token from the <code>/oauth2/token</code> endpoint
    #                           directly to a non-person user using a combination of the client ID and
    #                           client secret.</p>
    #                   </dd>
    #            </dl>
    #
    #   @return [Array<String>]
    #
    # @!attribute allowed_o_auth_scopes
    #   <p>The OAuth scopes that your app client supports. Possible values that OAuth provides
    #               are <code>phone</code>, <code>email</code>, <code>openid</code>, and
    #                   <code>profile</code>. Possible values that Amazon Web Services provides are
    #                   <code>aws.cognito.signin.user.admin</code>. Amazon Cognito also supports custom scopes that
    #               you create in Resource Servers.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute allowed_o_auth_flows_user_pool_client
    #   <p>Set to true if the client is allowed to follow the OAuth protocol when interacting
    #               with Amazon Cognito user pools.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute analytics_configuration
    #   <p>The Amazon Pinpoint analytics configuration for the user pool client.</p>
    #           <note>
    #               <p>Amazon Cognito user pools only support sending events to Amazon Pinpoint projects in the US East
    #                   (N. Virginia) us-east-1 Region, regardless of the Region where the user pool
    #                   resides.</p>
    #           </note>
    #
    #   @return [AnalyticsConfigurationType]
    #
    # @!attribute prevent_user_existence_errors
    #   <p>Errors and responses that you want Amazon Cognito APIs to return during authentication, account
    #               confirmation, and password recovery when the user doesn't exist in the user pool. When
    #               set to <code>ENABLED</code> and the user doesn't exist, authentication returns an error
    #               indicating either the username or password was incorrect. Account confirmation and
    #               password recovery return a response indicating a code was sent to a simulated
    #               destination. When set to <code>LEGACY</code>, those APIs return a
    #                   <code>UserNotFoundException</code> exception if the user doesn't exist in the user
    #               pool.</p>
    #           <p>Valid values include:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>ENABLED</code> - This prevents user existence-related errors.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>LEGACY</code> - This represents the old behavior of Amazon Cognito where user
    #                       existence related errors aren't prevented.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["LEGACY", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute enable_token_revocation
    #   <p>Indicates whether token revocation is activated for the user pool client. When you
    #               create a new user pool client, token revocation is activated by default. For more
    #               information about revoking tokens, see <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_RevokeToken.html">RevokeToken</a>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute enable_propagate_additional_user_context_data
    #   <p>When <code>EnablePropagateAdditionalUserContextData</code> is true, Amazon Cognito accepts an
    #                   <code>IpAddress</code> value that you send in the <code>UserContextData</code>
    #               parameter. The <code>UserContextData</code> parameter sends information to Amazon Cognito
    #               advanced security for risk analysis. You can send <code>UserContextData</code> when you
    #               sign in Amazon Cognito native users with the <code>InitiateAuth</code> and
    #                   <code>RespondToAuthChallenge</code> API operations.</p>
    #           <p>When <code>EnablePropagateAdditionalUserContextData</code> is false, you can't send
    #               your user's source IP address to Amazon Cognito advanced security with unauthenticated API
    #               operations. <code>EnablePropagateAdditionalUserContextData</code> doesn't affect whether
    #               you can send a source IP address in a <code>ContextData</code> parameter with the
    #               authenticated API operations <code>AdminInitiateAuth</code> and
    #                   <code>AdminRespondToAuthChallenge</code>.</p>
    #           <p>You can only activate <code>EnablePropagateAdditionalUserContextData</code> in an app
    #               client that has a client secret. For more information about propagation of user context
    #               data, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-adaptive-authentication.html user-pool-settings-adaptive-authentication-device-fingerprint">Adding user device and session data to API requests</a>.</p>
    #
    #   @return [Boolean]
    #
    UserPoolClientType = ::Struct.new(
      :user_pool_id,
      :client_name,
      :client_id,
      :client_secret,
      :last_modified_date,
      :creation_date,
      :refresh_token_validity,
      :access_token_validity,
      :id_token_validity,
      :token_validity_units,
      :read_attributes,
      :write_attributes,
      :explicit_auth_flows,
      :supported_identity_providers,
      :callback_ur_ls,
      :logout_ur_ls,
      :default_redirect_uri,
      :allowed_o_auth_flows,
      :allowed_o_auth_scopes,
      :allowed_o_auth_flows_user_pool_client,
      :analytics_configuration,
      :prevent_user_existence_errors,
      :enable_token_revocation,
      :enable_propagate_additional_user_context_data,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.refresh_token_validity ||= 0
      end

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::UserPoolClientType "\
          "user_pool_id=#{user_pool_id || 'nil'}, "\
          "client_name=#{client_name || 'nil'}, "\
          "client_id=\"[SENSITIVE]\", "\
          "client_secret=\"[SENSITIVE]\", "\
          "last_modified_date=#{last_modified_date || 'nil'}, "\
          "creation_date=#{creation_date || 'nil'}, "\
          "refresh_token_validity=#{refresh_token_validity || 'nil'}, "\
          "access_token_validity=#{access_token_validity || 'nil'}, "\
          "id_token_validity=#{id_token_validity || 'nil'}, "\
          "token_validity_units=#{token_validity_units || 'nil'}, "\
          "read_attributes=#{read_attributes || 'nil'}, "\
          "write_attributes=#{write_attributes || 'nil'}, "\
          "explicit_auth_flows=#{explicit_auth_flows || 'nil'}, "\
          "supported_identity_providers=#{supported_identity_providers || 'nil'}, "\
          "callback_ur_ls=#{callback_ur_ls || 'nil'}, "\
          "logout_ur_ls=#{logout_ur_ls || 'nil'}, "\
          "default_redirect_uri=#{default_redirect_uri || 'nil'}, "\
          "allowed_o_auth_flows=#{allowed_o_auth_flows || 'nil'}, "\
          "allowed_o_auth_scopes=#{allowed_o_auth_scopes || 'nil'}, "\
          "allowed_o_auth_flows_user_pool_client=#{allowed_o_auth_flows_user_pool_client || 'nil'}, "\
          "analytics_configuration=#{analytics_configuration || 'nil'}, "\
          "prevent_user_existence_errors=#{prevent_user_existence_errors || 'nil'}, "\
          "enable_token_revocation=#{enable_token_revocation || 'nil'}, "\
          "enable_propagate_additional_user_context_data=#{enable_propagate_additional_user_context_data || 'nil'}>"
      end
    end

    # <p>A user pool description.</p>
    #
    # @!attribute id
    #   <p>The ID in a user pool description.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name in a user pool description.</p>
    #
    #   @return [String]
    #
    # @!attribute lambda_config
    #   <p>The Lambda configuration information in a user pool description.</p>
    #
    #   @return [LambdaConfigType]
    #
    # @!attribute status
    #   <p>The user pool status in a user pool description.</p>
    #
    #   Enum, one of: ["Enabled", "Disabled"]
    #
    #   @return [String]
    #
    # @!attribute last_modified_date
    #   <p>The date the user pool description was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute creation_date
    #   <p>The date the user pool description was created.</p>
    #
    #   @return [Time]
    #
    UserPoolDescriptionType = ::Struct.new(
      :id,
      :name,
      :lambda_config,
      :status,
      :last_modified_date,
      :creation_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for UserPoolMfaType
    #
    module UserPoolMfaType
      # No documentation available.
      #
      OFF = "OFF"

      # No documentation available.
      #
      ON = "ON"

      # No documentation available.
      #
      OPTIONAL = "OPTIONAL"
    end

    # <p>The policy associated with a user pool.</p>
    #
    # @!attribute password_policy
    #   <p>The password policy.</p>
    #
    #   @return [PasswordPolicyType]
    #
    UserPoolPolicyType = ::Struct.new(
      :password_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when a user pool tag can't be set or updated.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UserPoolTaggingException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A container for information about the user pool.</p>
    #
    # @!attribute id
    #   <p>The ID of the user pool.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the user pool.</p>
    #
    #   @return [String]
    #
    # @!attribute policies
    #   <p>The policies associated with the user pool.</p>
    #
    #   @return [UserPoolPolicyType]
    #
    # @!attribute lambda_config
    #   <p>The Lambda triggers associated with the user pool.</p>
    #
    #   @return [LambdaConfigType]
    #
    # @!attribute status
    #   <p>The status of a user pool.</p>
    #
    #   Enum, one of: ["Enabled", "Disabled"]
    #
    #   @return [String]
    #
    # @!attribute last_modified_date
    #   <p>The date the user pool was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute creation_date
    #   <p>The date the user pool was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute schema_attributes
    #   <p>A container with the schema attributes of a user pool.</p>
    #
    #   @return [Array<SchemaAttributeType>]
    #
    # @!attribute auto_verified_attributes
    #   <p>The attributes that are auto-verified in a user pool.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute alias_attributes
    #   <p>The attributes that are aliased in a user pool.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute username_attributes
    #   <p>Specifies whether a user can use an email address or phone number as a username when
    #               they sign up.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute sms_verification_message
    #   <p>The contents of the SMS verification message.</p>
    #
    #   @return [String]
    #
    # @!attribute email_verification_message
    #   <p>The contents of the email verification message.</p>
    #
    #   @return [String]
    #
    # @!attribute email_verification_subject
    #   <p>The subject of the email verification message.</p>
    #
    #   @return [String]
    #
    # @!attribute verification_message_template
    #   <p>The template for verification messages.</p>
    #
    #   @return [VerificationMessageTemplateType]
    #
    # @!attribute sms_authentication_message
    #   <p>The contents of the SMS authentication message.</p>
    #
    #   @return [String]
    #
    # @!attribute user_attribute_update_settings
    #   <p>The settings for updates to user attributes. These settings include the property <code>AttributesRequireVerificationBeforeUpdate</code>,
    #   a user-pool setting that tells Amazon Cognito how to handle changes to the value of your users' email address and phone number attributes. For
    #   more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-email-phone-verification.html user-pool-settings-verifications-verify-attribute-updates">
    #   Verifying updates to to email addresses and phone numbers</a>.</p>
    #
    #   @return [UserAttributeUpdateSettingsType]
    #
    # @!attribute mfa_configuration
    #   <p>Can be one of the following values:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>OFF</code> - MFA tokens aren't required and can't be specified during user
    #                       registration.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>ON</code> - MFA tokens are required for all user registrations. You can
    #                       only specify required when you're initially creating a user pool.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>OPTIONAL</code> - Users have the option when registering to create an MFA
    #                       token.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["OFF", "ON", "OPTIONAL"]
    #
    #   @return [String]
    #
    # @!attribute device_configuration
    #   <p>The device configuration.</p>
    #
    #   @return [DeviceConfigurationType]
    #
    # @!attribute estimated_number_of_users
    #   <p>A number estimating the size of the user pool.</p>
    #
    #   @return [Integer]
    #
    # @!attribute email_configuration
    #   <p>The email configuration of your user pool. The email configuration type sets your
    #               preferred sending method, Amazon Web Services Region, and sender for messages tfrom your user
    #               pool.</p>
    #
    #   @return [EmailConfigurationType]
    #
    # @!attribute sms_configuration
    #   <p>The SMS configuration with the settings that your Amazon Cognito user pool must use to send an
    #               SMS message from your Amazon Web Services account through Amazon Simple Notification Service. To send SMS messages
    #               with Amazon SNS in the Amazon Web Services Region that you want, the Amazon Cognito user pool uses an Identity and Access Management
    #               (IAM) role in your Amazon Web Services account.</p>
    #
    #   @return [SmsConfigurationType]
    #
    # @!attribute user_pool_tags
    #   <p>The tags that are assigned to the user pool. A tag is a label that you can apply to
    #               user pools to categorize and manage them in different ways, such as by purpose, owner,
    #               environment, or other criteria.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute sms_configuration_failure
    #   <p>The reason why the SMS configuration can't send the messages to your users.</p>
    #           <p>This message might include comma-separated values to describe why your SMS
    #               configuration can't send messages to user pool end users.</p>
    #           <dl>
    #               <dt>InvalidSmsRoleAccessPolicyException</dt>
    #               <dd>
    #                       <p>The Identity and Access Management role that Amazon Cognito uses to send SMS messages isn't properly
    #                           configured. For more information, see <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_SmsConfigurationType.html">SmsConfigurationType</a>.</p>
    #                   </dd>
    #               <dt>SNSSandbox</dt>
    #               <dd>
    #                       <p>The Amazon Web Services account is in the SNS SMS Sandbox and messages will
    #                           only reach verified end users. This parameter won’t get populated with
    #                           SNSSandbox if the IAM user creating the user pool doesn’t have SNS
    #                           permissions. To learn how to move your Amazon Web Services account out of the
    #                           sandbox, see <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox-moving-to-production.html">Moving out
    #                               of the SMS sandbox</a>.</p>
    #                   </dd>
    #            </dl>
    #
    #   @return [String]
    #
    # @!attribute email_configuration_failure
    #   <p>Deprecated. Review error codes from API requests with
    #                   <code>EventSource:cognito-idp.amazonaws.com</code> in CloudTrail for
    #               information about problems with user pool email configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute domain
    #   <p>The domain prefix, if the user pool has a domain associated with it.</p>
    #
    #   @return [String]
    #
    # @!attribute custom_domain
    #   <p>A custom domain name that you provide to Amazon Cognito. This parameter applies only if you use
    #               a custom domain to host the sign-up and sign-in pages for your application. An example
    #               of a custom domain name might be <code>auth.example.com</code>.</p>
    #           <p>For more information about adding a custom domain to your user pool, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-add-custom-domain.html">Using Your Own Domain for the Hosted UI</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute admin_create_user_config
    #   <p>The configuration for <code>AdminCreateUser</code> requests.</p>
    #
    #   @return [AdminCreateUserConfigType]
    #
    # @!attribute user_pool_add_ons
    #   <p>The user pool add-ons.</p>
    #
    #   @return [UserPoolAddOnsType]
    #
    # @!attribute username_configuration
    #   <p>Case sensitivity of the username input for the selected sign-in option. For example,
    #               when case sensitivity is set to <code>False</code>, users can sign in using either
    #               "username" or "Username". This configuration is immutable once it has been set. For more
    #               information, see <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_UsernameConfigurationType.html">UsernameConfigurationType</a>.</p>
    #
    #   @return [UsernameConfigurationType]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for the user pool.</p>
    #
    #   @return [String]
    #
    # @!attribute account_recovery_setting
    #   <p>The available verified method a user can use to recover their password when they call
    #                   <code>ForgotPassword</code>. You can use this setting to define a preferred method
    #               when a user has more than one method available. With this setting, SMS doesn't qualify
    #               for a valid password recovery mechanism if the user also has SMS multi-factor
    #               authentication (MFA) activated. In the absence of this setting, Amazon Cognito uses the legacy
    #               behavior to determine the recovery method where SMS is preferred through email.</p>
    #
    #   @return [AccountRecoverySettingType]
    #
    UserPoolType = ::Struct.new(
      :id,
      :name,
      :policies,
      :lambda_config,
      :status,
      :last_modified_date,
      :creation_date,
      :schema_attributes,
      :auto_verified_attributes,
      :alias_attributes,
      :username_attributes,
      :sms_verification_message,
      :email_verification_message,
      :email_verification_subject,
      :verification_message_template,
      :sms_authentication_message,
      :user_attribute_update_settings,
      :mfa_configuration,
      :device_configuration,
      :estimated_number_of_users,
      :email_configuration,
      :sms_configuration,
      :user_pool_tags,
      :sms_configuration_failure,
      :email_configuration_failure,
      :domain,
      :custom_domain,
      :admin_create_user_config,
      :user_pool_add_ons,
      :username_configuration,
      :arn,
      :account_recovery_setting,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.estimated_number_of_users ||= 0
      end

    end

    # Includes enum constants for UserStatusType
    #
    module UserStatusType
      # No documentation available.
      #
      UNCONFIRMED = "UNCONFIRMED"

      # No documentation available.
      #
      CONFIRMED = "CONFIRMED"

      # No documentation available.
      #
      ARCHIVED = "ARCHIVED"

      # No documentation available.
      #
      COMPROMISED = "COMPROMISED"

      # No documentation available.
      #
      UNKNOWN = "UNKNOWN"

      # No documentation available.
      #
      RESET_REQUIRED = "RESET_REQUIRED"

      # No documentation available.
      #
      FORCE_CHANGE_PASSWORD = "FORCE_CHANGE_PASSWORD"
    end

    # <p>A user profile in a Amazon Cognito user pool.</p>
    #
    # @!attribute username
    #   <p>The user name of the user you want to describe.</p>
    #
    #   @return [String]
    #
    # @!attribute attributes
    #   <p>A container with information about the user type attributes.</p>
    #
    #   @return [Array<AttributeType>]
    #
    # @!attribute user_create_date
    #   <p>The creation date of the user.</p>
    #
    #   @return [Time]
    #
    # @!attribute user_last_modified_date
    #   <p>The last modified date of the user.</p>
    #
    #   @return [Time]
    #
    # @!attribute enabled
    #   <p>Specifies whether the user is enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute user_status
    #   <p>The user status. This can be one of the following:</p>
    #           <ul>
    #               <li>
    #                   <p>UNCONFIRMED - User has been created but not confirmed.</p>
    #               </li>
    #               <li>
    #                   <p>CONFIRMED - User has been confirmed.</p>
    #               </li>
    #               <li>
    #                   <p>EXTERNAL_PROVIDER - User signed in with a third-party IdP.</p>
    #               </li>
    #               <li>
    #                   <p>ARCHIVED - User is no longer active.</p>
    #               </li>
    #               <li>
    #                   <p>UNKNOWN - User status isn't known.</p>
    #               </li>
    #               <li>
    #                   <p>RESET_REQUIRED - User is confirmed, but the user must request a code and reset
    #                       their password before they can sign in.</p>
    #               </li>
    #               <li>
    #                   <p>FORCE_CHANGE_PASSWORD - The user is confirmed and the user can sign in using a
    #                       temporary password, but on first sign-in, the user must change their password to
    #                       a new value before doing anything else. </p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["UNCONFIRMED", "CONFIRMED", "ARCHIVED", "COMPROMISED", "UNKNOWN", "RESET_REQUIRED", "FORCE_CHANGE_PASSWORD"]
    #
    #   @return [String]
    #
    # @!attribute mfa_options
    #   <p>The MFA options for the user.</p>
    #
    #   @return [Array<MFAOptionType>]
    #
    UserType = ::Struct.new(
      :username,
      :attributes,
      :user_create_date,
      :user_last_modified_date,
      :enabled,
      :user_status,
      :mfa_options,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.enabled ||= false
      end

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::UserType "\
          "username=\"[SENSITIVE]\", "\
          "attributes=#{attributes || 'nil'}, "\
          "user_create_date=#{user_create_date || 'nil'}, "\
          "user_last_modified_date=#{user_last_modified_date || 'nil'}, "\
          "enabled=#{enabled || 'nil'}, "\
          "user_status=#{user_status || 'nil'}, "\
          "mfa_options=#{mfa_options || 'nil'}>"
      end
    end

    # Includes enum constants for UsernameAttributeType
    #
    module UsernameAttributeType
      # No documentation available.
      #
      PHONE_NUMBER = "phone_number"

      # No documentation available.
      #
      EMAIL = "email"
    end

    # <p>The username configuration type. </p>
    #
    # @!attribute case_sensitive
    #   <p>Specifies whether user name case sensitivity will be applied for all users in the user
    #               pool through Amazon Cognito APIs.</p>
    #           <p>Valid values include:</p>
    #           <dl>
    #               <dt>True</dt>
    #               <dd>
    #                       <p>Enables case sensitivity for all username input. When this option is set
    #                           to <code>True</code>, users must sign in using the exact capitalization of
    #                           their given username, such as “UserName”. This is the default value.</p>
    #                   </dd>
    #               <dt>False</dt>
    #               <dd>
    #                       <p>Enables case insensitivity for all username input. For example, when this
    #                           option is set to <code>False</code>, users can sign in using either
    #                           "username" or "Username". This option also enables both
    #                               <code>preferred_username</code> and <code>email</code> alias to be case
    #                           insensitive, in addition to the <code>username</code> attribute.</p>
    #                   </dd>
    #            </dl>
    #
    #   @return [Boolean]
    #
    UsernameConfigurationType = ::Struct.new(
      :case_sensitive,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when Amazon Cognito encounters a user name that already
    #             exists in the user pool.</p>
    #
    # @!attribute message
    #   <p>The message returned when Amazon Cognito throws a user name exists exception.</p>
    #
    #   @return [String]
    #
    UsernameExistsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The template for verification messages.</p>
    #
    # @!attribute sms_message
    #   <p>The template for SMS messages that Amazon Cognito sends to your users.</p>
    #
    #   @return [String]
    #
    # @!attribute email_message
    #   <p>The template for email messages that Amazon Cognito sends to your users. You can set an
    #                   <code>EmailMessage</code> template only if the value of <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_EmailConfigurationType.html CognitoUserPools-Type-EmailConfigurationType-EmailSendingAccount"> EmailSendingAccount</a> is <code>DEVELOPER</code>. When your <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_EmailConfigurationType.html CognitoUserPools-Type-EmailConfigurationType-EmailSendingAccount">EmailSendingAccount</a> is <code>DEVELOPER</code>, your user pool sends email
    #               messages with your own Amazon SES configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute email_subject
    #   <p>The subject line for the email message template. You can set an
    #                   <code>EmailSubject</code> template only if the value of <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_EmailConfigurationType.html CognitoUserPools-Type-EmailConfigurationType-EmailSendingAccount"> EmailSendingAccount</a> is <code>DEVELOPER</code>. When your <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_EmailConfigurationType.html CognitoUserPools-Type-EmailConfigurationType-EmailSendingAccount">EmailSendingAccount</a> is <code>DEVELOPER</code>, your user pool sends email
    #               messages with your own Amazon SES configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute email_message_by_link
    #   <p>The email message template for sending a confirmation link to the user. You can set an
    #                   <code>EmailMessageByLink</code> template only if the value of <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_EmailConfigurationType.html CognitoUserPools-Type-EmailConfigurationType-EmailSendingAccount"> EmailSendingAccount</a> is <code>DEVELOPER</code>. When your <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_EmailConfigurationType.html CognitoUserPools-Type-EmailConfigurationType-EmailSendingAccount">EmailSendingAccount</a> is <code>DEVELOPER</code>, your user pool sends email
    #               messages with your own Amazon SES configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute email_subject_by_link
    #   <p>The subject line for the email message template for sending a confirmation link to the
    #               user. You can set an <code>EmailSubjectByLink</code> template only if the value of
    #                   <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_EmailConfigurationType.html CognitoUserPools-Type-EmailConfigurationType-EmailSendingAccount"> EmailSendingAccount</a> is <code>DEVELOPER</code>. When your <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_EmailConfigurationType.html CognitoUserPools-Type-EmailConfigurationType-EmailSendingAccount">EmailSendingAccount</a> is <code>DEVELOPER</code>, your user pool sends email
    #               messages with your own Amazon SES configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute default_email_option
    #   <p>The default email option.</p>
    #
    #   Enum, one of: ["CONFIRM_WITH_LINK", "CONFIRM_WITH_CODE"]
    #
    #   @return [String]
    #
    VerificationMessageTemplateType = ::Struct.new(
      :sms_message,
      :email_message,
      :email_subject,
      :email_message_by_link,
      :email_subject_by_link,
      :default_email_option,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for VerifiedAttributeType
    #
    module VerifiedAttributeType
      # No documentation available.
      #
      PHONE_NUMBER = "phone_number"

      # No documentation available.
      #
      EMAIL = "email"
    end

    # @!attribute access_token
    #   <p>A valid access token that Amazon Cognito issued to the user whose software token you want to
    #               verify.</p>
    #
    #   @return [String]
    #
    # @!attribute session
    #   <p>The session that should be passed both ways in challenge-response calls to the
    #               service.</p>
    #
    #   @return [String]
    #
    # @!attribute user_code
    #   <p>The one- time password computed using the secret code returned by <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AssociateSoftwareToken.html">AssociateSoftwareToken</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute friendly_device_name
    #   <p>The friendly device name.</p>
    #
    #   @return [String]
    #
    VerifySoftwareTokenInput = ::Struct.new(
      :access_token,
      :session,
      :user_code,
      :friendly_device_name,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::VerifySoftwareTokenInput "\
          "access_token=\"[SENSITIVE]\", "\
          "session=#{session || 'nil'}, "\
          "user_code=#{user_code || 'nil'}, "\
          "friendly_device_name=#{friendly_device_name || 'nil'}>"
      end
    end

    # @!attribute status
    #   <p>The status of the verify software token.</p>
    #
    #   Enum, one of: ["SUCCESS", "ERROR"]
    #
    #   @return [String]
    #
    # @!attribute session
    #   <p>The session that should be passed both ways in challenge-response calls to the
    #               service.</p>
    #
    #   @return [String]
    #
    VerifySoftwareTokenOutput = ::Struct.new(
      :status,
      :session,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for VerifySoftwareTokenResponseType
    #
    module VerifySoftwareTokenResponseType
      # No documentation available.
      #
      SUCCESS = "SUCCESS"

      # No documentation available.
      #
      ERROR = "ERROR"
    end

    # <p>Represents the request to verify user attributes.</p>
    #
    # @!attribute access_token
    #   <p>A valid access token that Amazon Cognito issued to the user whose user attributes you want to
    #               verify.</p>
    #
    #   @return [String]
    #
    # @!attribute attribute_name
    #   <p>The attribute name in the request to verify user attributes.</p>
    #
    #   @return [String]
    #
    # @!attribute code
    #   <p>The verification code in the request to verify user attributes.</p>
    #
    #   @return [String]
    #
    VerifyUserAttributeInput = ::Struct.new(
      :access_token,
      :attribute_name,
      :code,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CognitoIdentityProvider::Types::VerifyUserAttributeInput "\
          "access_token=\"[SENSITIVE]\", "\
          "attribute_name=#{attribute_name || 'nil'}, "\
          "code=#{code || 'nil'}>"
      end
    end

    # <p>A container representing the response from the server from the request to verify user
    #             attributes.</p>
    #
    VerifyUserAttributeOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
