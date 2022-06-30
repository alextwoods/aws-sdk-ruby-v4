# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Pinpoint
  module Types

    # <p>Specifies the status and settings of the ADM (Amazon Device Messaging) channel for an application.</p>
    #
    # @!attribute client_id
    #   <p>The Client ID that you received from Amazon to send messages by using ADM.</p>
    #
    #   @return [String]
    #
    # @!attribute client_secret
    #   <p>The Client Secret that you received from Amazon to send messages by using ADM.</p>
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p>Specifies whether to enable the ADM channel for the application.</p>
    #
    #   @return [Boolean]
    #
    ADMChannelRequest = ::Struct.new(
      :client_id,
      :client_secret,
      :enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.enabled ||= false
      end

    end

    # <p>Provides information about the status and settings of the ADM (Amazon Device Messaging) channel for an application.</p>
    #
    # @!attribute application_id
    #   <p>The unique identifier for the application that the ADM channel applies to.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date and time when the ADM channel was enabled.</p>
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p>Specifies whether the ADM channel is enabled for the application.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute has_credential
    #   <p>(Not used) This property is retained only for backward compatibility.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute id
    #   <p>(Deprecated) An identifier for the ADM channel. This property is retained only for backward compatibility.</p>
    #
    #   @return [String]
    #
    # @!attribute is_archived
    #   <p>Specifies whether the ADM channel is archived.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute last_modified_by
    #   <p>The user who last modified the ADM channel.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_date
    #   <p>The date and time when the ADM channel was last modified.</p>
    #
    #   @return [String]
    #
    # @!attribute platform
    #   <p>The type of messaging or notification platform for the channel. For the ADM channel, this value is ADM.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The current version of the ADM channel.</p>
    #
    #   @return [Integer]
    #
    ADMChannelResponse = ::Struct.new(
      :application_id,
      :creation_date,
      :enabled,
      :has_credential,
      :id,
      :is_archived,
      :last_modified_by,
      :last_modified_date,
      :platform,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.enabled ||= false
        self.has_credential ||= false
        self.is_archived ||= false
        self.version ||= 0
      end

    end

    # <p>Specifies the settings for a one-time message that's sent directly to an endpoint through the ADM (Amazon Device Messaging) channel.</p>
    #
    # @!attribute action
    #   <p>The action to occur if the recipient taps the push notification. Valid values are:</p> <ul><li><p>OPEN_APP - Your app opens or it becomes the foreground app if it was sent to the background. This is the default action.</p></li> <li><p>DEEP_LINK - Your app opens and displays a designated user interface in the app. This action uses the deep-linking features of the Android platform.</p></li> <li><p>URL - The default mobile browser on the recipient's device opens and loads the web page at a URL that you specify.</p></li></ul>
    #
    #   Enum, one of: ["OPEN_APP", "DEEP_LINK", "URL"]
    #
    #   @return [String]
    #
    # @!attribute body
    #   <p>The body of the notification message.</p>
    #
    #   @return [String]
    #
    # @!attribute consolidation_key
    #   <p>An arbitrary string that indicates that multiple messages are logically the same and that Amazon Device Messaging (ADM) can drop previously enqueued messages in favor of this message.</p>
    #
    #   @return [String]
    #
    # @!attribute data
    #   <p>The JSON data payload to use for the push notification, if the notification is a silent push notification. This payload is added to the data.pinpoint.jsonBody object of the notification.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute expires_after
    #   <p>The amount of time, in seconds, that ADM should store the message if the recipient's device is offline. Amazon Pinpoint specifies this value in the expiresAfter parameter when it sends the notification message to ADM.</p>
    #
    #   @return [String]
    #
    # @!attribute icon_reference
    #   <p>The icon image name of the asset saved in your app.</p>
    #
    #   @return [String]
    #
    # @!attribute image_icon_url
    #   <p>The URL of the large icon image to display in the content view of the push notification.</p>
    #
    #   @return [String]
    #
    # @!attribute image_url
    #   <p>The URL of an image to display in the push notification.</p>
    #
    #   @return [String]
    #
    # @!attribute md5
    #   <p>The base64-encoded, MD5 checksum of the value specified by the Data property. ADM uses the MD5 value to verify the integrity of the data.</p>
    #
    #   @return [String]
    #
    # @!attribute raw_content
    #   <p>The raw, JSON-formatted string to use as the payload for the notification message. If specified, this value overrides all other content for the message.</p>
    #
    #   @return [String]
    #
    # @!attribute silent_push
    #   <p>Specifies whether the notification is a silent push notification, which is a push notification that doesn't display on a recipient's device. Silent push notifications can be used for cases such as updating an app's configuration or supporting phone home functionality.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute small_image_icon_url
    #   <p>The URL of the small icon image to display in the status bar and the content view of the push notification.</p>
    #
    #   @return [String]
    #
    # @!attribute sound
    #   <p>The sound to play when the recipient receives the push notification. You can use the default stream or specify the file name of a sound resource that's bundled in your app. On an Android platform, the sound file must reside in /res/raw/.</p>
    #
    #   @return [String]
    #
    # @!attribute substitutions
    #   <p>The default message variables to use in the notification message. You can override the default variables with individual address variables.</p>
    #
    #   @return [Hash<String, Array<String>>]
    #
    # @!attribute title
    #   <p>The title to display above the notification message on the recipient's device.</p>
    #
    #   @return [String]
    #
    # @!attribute url
    #   <p>The URL to open in the recipient's default mobile browser, if a recipient taps the push notification and the value of the Action property is URL.</p>
    #
    #   @return [String]
    #
    ADMMessage = ::Struct.new(
      :action,
      :body,
      :consolidation_key,
      :data,
      :expires_after,
      :icon_reference,
      :image_icon_url,
      :image_url,
      :md5,
      :raw_content,
      :silent_push,
      :small_image_icon_url,
      :sound,
      :substitutions,
      :title,
      :url,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.silent_push ||= false
      end

    end

    # <p>Specifies the status and settings of the APNs (Apple Push Notification service) channel for an application.</p>
    #
    # @!attribute bundle_id
    #   <p>The bundle identifier that's assigned to your iOS app. This identifier is used for APNs tokens.</p>
    #
    #   @return [String]
    #
    # @!attribute certificate
    #   <p>The APNs client certificate that you received from Apple, if you want Amazon Pinpoint to communicate with APNs by using an APNs certificate.</p>
    #
    #   @return [String]
    #
    # @!attribute default_authentication_method
    #   <p>The default authentication method that you want Amazon Pinpoint to use when authenticating with APNs, key or certificate.</p>
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p>Specifies whether to enable the APNs channel for the application.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute private_key
    #   <p>The private key for the APNs client certificate that you want Amazon Pinpoint to use to communicate with APNs.</p>
    #
    #   @return [String]
    #
    # @!attribute team_id
    #   <p>The identifier that's assigned to your Apple developer account team. This identifier is used for APNs tokens.</p>
    #
    #   @return [String]
    #
    # @!attribute token_key
    #   <p>The authentication key to use for APNs tokens.</p>
    #
    #   @return [String]
    #
    # @!attribute token_key_id
    #   <p>The key identifier that's assigned to your APNs signing key, if you want Amazon Pinpoint to communicate with APNs by using APNs tokens.</p>
    #
    #   @return [String]
    #
    APNSChannelRequest = ::Struct.new(
      :bundle_id,
      :certificate,
      :default_authentication_method,
      :enabled,
      :private_key,
      :team_id,
      :token_key,
      :token_key_id,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.enabled ||= false
      end

    end

    # <p>Provides information about the status and settings of the APNs (Apple Push Notification service) channel for an application.</p>
    #
    # @!attribute application_id
    #   <p>The unique identifier for the application that the APNs channel applies to.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date and time when the APNs channel was enabled.</p>
    #
    #   @return [String]
    #
    # @!attribute default_authentication_method
    #   <p>The default authentication method that Amazon Pinpoint uses to authenticate with APNs for this channel, key or certificate.</p>
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p>Specifies whether the APNs channel is enabled for the application.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute has_credential
    #   <p>(Not used) This property is retained only for backward compatibility.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute has_token_key
    #   <p>Specifies whether the APNs channel is configured to communicate with APNs by using APNs tokens. To provide an authentication key for APNs tokens, set the TokenKey property of the channel.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute id
    #   <p>(Deprecated) An identifier for the APNs channel. This property is retained only for backward compatibility.</p>
    #
    #   @return [String]
    #
    # @!attribute is_archived
    #   <p>Specifies whether the APNs channel is archived.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute last_modified_by
    #   <p>The user who last modified the APNs channel.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_date
    #   <p>The date and time when the APNs channel was last modified.</p>
    #
    #   @return [String]
    #
    # @!attribute platform
    #   <p>The type of messaging or notification platform for the channel. For the APNs channel, this value is APNS.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The current version of the APNs channel.</p>
    #
    #   @return [Integer]
    #
    APNSChannelResponse = ::Struct.new(
      :application_id,
      :creation_date,
      :default_authentication_method,
      :enabled,
      :has_credential,
      :has_token_key,
      :id,
      :is_archived,
      :last_modified_by,
      :last_modified_date,
      :platform,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.enabled ||= false
        self.has_credential ||= false
        self.has_token_key ||= false
        self.is_archived ||= false
        self.version ||= 0
      end

    end

    # <p>Specifies the settings for a one-time message that's sent directly to an endpoint through the APNs (Apple Push Notification service) channel.</p>
    #
    # @!attribute apns_push_type
    #   <p>The type of push notification to send. Valid values are:</p> <ul><li><p>alert - For a standard notification that's displayed on recipients' devices and prompts a recipient to interact with the notification.</p></li> <li><p>background - For a silent notification that delivers content in the background and isn't displayed on recipients' devices.</p></li> <li><p>complication - For a notification that contains update information for an app’s complication timeline.</p></li> <li><p>fileprovider - For a notification that signals changes to a File Provider extension.</p></li> <li><p>mdm - For a notification that tells managed devices to contact the MDM server.</p></li> <li><p>voip - For a notification that provides information about an incoming VoIP call.</p></li></ul> <p>Amazon Pinpoint specifies this value in the apns-push-type request header when it sends the notification message to APNs. If you don't specify a value for this property, Amazon Pinpoint sets the value to alert or background automatically, based on the value that you specify for the SilentPush or RawContent property of the message.</p> <p>For more information about the apns-push-type request header, see <a href="https://developer.apple.com/documentation/usernotifications/setting_up_a_remote_notification_server/sending_notification_requests_to_apns">Sending Notification Requests to APNs</a> on the Apple Developer website.</p>
    #
    #   @return [String]
    #
    # @!attribute action
    #   <p>The action to occur if the recipient taps the push notification. Valid values are:</p> <ul><li><p>OPEN_APP - Your app opens or it becomes the foreground app if it was sent to the background. This is the default action.</p></li> <li><p>DEEP_LINK - Your app opens and displays a designated user interface in the app. This setting uses the deep-linking features of the iOS platform.</p></li> <li><p>URL - The default mobile browser on the recipient's device opens and loads the web page at a URL that you specify.</p></li></ul>
    #
    #   Enum, one of: ["OPEN_APP", "DEEP_LINK", "URL"]
    #
    #   @return [String]
    #
    # @!attribute badge
    #   <p>The key that indicates whether and how to modify the badge of your app's icon when the recipient receives the push notification. If this key isn't included in the dictionary, the badge doesn't change. To remove the badge, set this value to 0.</p>
    #
    #   @return [Integer]
    #
    # @!attribute body
    #   <p>The body of the notification message.</p>
    #
    #   @return [String]
    #
    # @!attribute category
    #   <p>The key that indicates the notification type for the push notification. This key is a value that's defined by the identifier property of one of your app's registered categories.</p>
    #
    #   @return [String]
    #
    # @!attribute collapse_id
    #   <p>An arbitrary identifier that, if assigned to multiple messages, APNs uses to coalesce the messages into a single push notification instead of delivering each message individually. This value can't exceed 64 bytes.</p> <p>Amazon Pinpoint specifies this value in the apns-collapse-id request header when it sends the notification message to APNs.</p>
    #
    #   @return [String]
    #
    # @!attribute data
    #   <p>The JSON payload to use for a silent push notification. This payload is added to the data.pinpoint.jsonBody object of the notification.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute media_url
    #   <p>The URL of an image or video to display in the push notification.</p>
    #
    #   @return [String]
    #
    # @!attribute preferred_authentication_method
    #   <p>The authentication method that you want Amazon Pinpoint to use when authenticating with APNs, CERTIFICATE or TOKEN.</p>
    #
    #   @return [String]
    #
    # @!attribute priority
    #   <p>para>5 - Low priority, the notification might be delayed, delivered as part of a group, or throttled.</p>/listitem> <li><p>10 - High priority, the notification is sent immediately. This is the default value. A high priority notification should trigger an alert, play a sound, or badge your app's icon on the recipient's device.</p></li>/para> <p>Amazon Pinpoint specifies this value in the apns-priority request header when it sends the notification message to APNs.</p> <p>The equivalent values for Firebase Cloud Messaging (FCM), formerly Google Cloud Messaging (GCM), are normal, for 5, and high, for 10. If you specify an FCM value for this property, Amazon Pinpoint accepts and converts the value to the corresponding APNs value.</p>
    #
    #   @return [String]
    #
    # @!attribute raw_content
    #   <p>The raw, JSON-formatted string to use as the payload for the notification message. If specified, this value overrides all other content for the message.</p> <note><p>If you specify the raw content of an APNs push notification, the message payload has to include the content-available key. The value of the content-available key has to be an integer, and can only be 0 or 1. If you're sending a standard notification, set the value of content-available to 0. If you're sending a silent (background) notification, set the value of content-available to 1. Additionally, silent notification payloads can't include the alert, badge, or sound keys. For more information, see <a href="https://developer.apple.com/documentation/usernotifications/setting_up_a_remote_notification_server/generating_a_remote_notification">Generating a Remote Notification</a> and <a href="https://developer.apple.com/documentation/usernotifications/setting_up_a_remote_notification_server/pushing_background_updates_to_your_app">Pushing Background Updates to Your App</a> on the Apple Developer website.</p></note>
    #
    #   @return [String]
    #
    # @!attribute silent_push
    #   <p>Specifies whether the notification is a silent push notification. A silent (or background) push notification isn't displayed on recipients' devices. You can use silent push notifications to make small updates to your app, or to display messages in an in-app message center.</p> <p>Amazon Pinpoint uses this property to determine the correct value for the apns-push-type request header when it sends the notification message to APNs. If you specify a value of true for this property, Amazon Pinpoint sets the value for the apns-push-type header field to background.</p> <note><p>If you specify the raw content of an APNs push notification, the message payload has to include the content-available key. For silent (background) notifications, set the value of content-available to 1. Additionally, the message payload for a silent notification can't include the alert, badge, or sound keys. For more information, see <a href="https://developer.apple.com/documentation/usernotifications/setting_up_a_remote_notification_server/generating_a_remote_notification">Generating a Remote Notification</a> and <a href="https://developer.apple.com/documentation/usernotifications/setting_up_a_remote_notification_server/pushing_background_updates_to_your_app">Pushing Background Updates to Your App</a> on the Apple Developer website.</p> <p>Apple has indicated that they will throttle "excessive" background notifications based on current traffic volumes. To prevent your notifications being throttled, Apple recommends that you send no more than 3 silent push notifications to each recipient per hour.</p></note>
    #
    #   @return [Boolean]
    #
    # @!attribute sound
    #   <p>The key for the sound to play when the recipient receives the push notification. The value for this key is the name of a sound file in your app's main bundle or the Library/Sounds folder in your app's data container. If the sound file can't be found or you specify default for the value, the system plays the default alert sound.</p>
    #
    #   @return [String]
    #
    # @!attribute substitutions
    #   <p>The default message variables to use in the notification message. You can override these default variables with individual address variables.</p>
    #
    #   @return [Hash<String, Array<String>>]
    #
    # @!attribute thread_id
    #   <p>The key that represents your app-specific identifier for grouping notifications. If you provide a Notification Content app extension, you can use this value to group your notifications together.</p>
    #
    #   @return [String]
    #
    # @!attribute time_to_live
    #   <p>The amount of time, in seconds, that APNs should store and attempt to deliver the push notification, if the service is unable to deliver the notification the first time. If this value is 0, APNs treats the notification as if it expires immediately and the service doesn't store or try to deliver the notification again.</p> <p>Amazon Pinpoint specifies this value in the apns-expiration request header when it sends the notification message to APNs.</p>
    #
    #   @return [Integer]
    #
    # @!attribute title
    #   <p>The title to display above the notification message on the recipient's device.</p>
    #
    #   @return [String]
    #
    # @!attribute url
    #   <p>The URL to open in the recipient's default mobile browser, if a recipient taps the push notification and the value of the Action property is URL.</p>
    #
    #   @return [String]
    #
    APNSMessage = ::Struct.new(
      :apns_push_type,
      :action,
      :badge,
      :body,
      :category,
      :collapse_id,
      :data,
      :media_url,
      :preferred_authentication_method,
      :priority,
      :raw_content,
      :silent_push,
      :sound,
      :substitutions,
      :thread_id,
      :time_to_live,
      :title,
      :url,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.badge ||= 0
        self.silent_push ||= false
        self.time_to_live ||= 0
      end

    end

    # <p>Specifies channel-specific content and settings for a message template that can be used in push notifications that are sent through the APNs (Apple Push Notification service) channel.</p>
    #
    # @!attribute action
    #   <p>The action to occur if a recipient taps a push notification that's based on the message template. Valid values are:</p> <ul><li><p>OPEN_APP - Your app opens or it becomes the foreground app if it was sent to the background. This is the default action.</p></li> <li><p>DEEP_LINK - Your app opens and displays a designated user interface in the app. This setting uses the deep-linking features of the iOS platform.</p></li> <li><p>URL - The default mobile browser on the recipient's device opens and loads the web page at a URL that you specify.</p></li></ul>
    #
    #   Enum, one of: ["OPEN_APP", "DEEP_LINK", "URL"]
    #
    #   @return [String]
    #
    # @!attribute body
    #   <p>The message body to use in push notifications that are based on the message template.</p>
    #
    #   @return [String]
    #
    # @!attribute media_url
    #   <p>The URL of an image or video to display in push notifications that are based on the message template.</p>
    #
    #   @return [String]
    #
    # @!attribute raw_content
    #   <p>The raw, JSON-formatted string to use as the payload for push notifications that are based on the message template. If specified, this value overrides all other content for the message template.</p>
    #
    #   @return [String]
    #
    # @!attribute sound
    #   <p>The key for the sound to play when the recipient receives a push notification that's based on the message template. The value for this key is the name of a sound file in your app's main bundle or the Library/Sounds folder in your app's data container. If the sound file can't be found or you specify default for the value, the system plays the default alert sound.</p>
    #
    #   @return [String]
    #
    # @!attribute title
    #   <p>The title to use in push notifications that are based on the message template. This title appears above the notification message on a recipient's device.</p>
    #
    #   @return [String]
    #
    # @!attribute url
    #   <p>The URL to open in the recipient's default mobile browser, if a recipient taps a push notification that's based on the message template and the value of the Action property is URL.</p>
    #
    #   @return [String]
    #
    APNSPushNotificationTemplate = ::Struct.new(
      :action,
      :body,
      :media_url,
      :raw_content,
      :sound,
      :title,
      :url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the status and settings of the APNs (Apple Push Notification service) sandbox channel for an application.</p>
    #
    # @!attribute bundle_id
    #   <p>The bundle identifier that's assigned to your iOS app. This identifier is used for APNs tokens.</p>
    #
    #   @return [String]
    #
    # @!attribute certificate
    #   <p>The APNs client certificate that you received from Apple, if you want Amazon Pinpoint to communicate with the APNs sandbox environment by using an APNs certificate.</p>
    #
    #   @return [String]
    #
    # @!attribute default_authentication_method
    #   <p>The default authentication method that you want Amazon Pinpoint to use when authenticating with the APNs sandbox environment, key or certificate.</p>
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p>Specifies whether to enable the APNs sandbox channel for the application.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute private_key
    #   <p>The private key for the APNs client certificate that you want Amazon Pinpoint to use to communicate with the APNs sandbox environment.</p>
    #
    #   @return [String]
    #
    # @!attribute team_id
    #   <p>The identifier that's assigned to your Apple developer account team. This identifier is used for APNs tokens.</p>
    #
    #   @return [String]
    #
    # @!attribute token_key
    #   <p>The authentication key to use for APNs tokens.</p>
    #
    #   @return [String]
    #
    # @!attribute token_key_id
    #   <p>The key identifier that's assigned to your APNs signing key, if you want Amazon Pinpoint to communicate with the APNs sandbox environment by using APNs tokens.</p>
    #
    #   @return [String]
    #
    APNSSandboxChannelRequest = ::Struct.new(
      :bundle_id,
      :certificate,
      :default_authentication_method,
      :enabled,
      :private_key,
      :team_id,
      :token_key,
      :token_key_id,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.enabled ||= false
      end

    end

    # <p>Provides information about the status and settings of the APNs (Apple Push Notification service) sandbox channel for an application.</p>
    #
    # @!attribute application_id
    #   <p>The unique identifier for the application that the APNs sandbox channel applies to.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date and time when the APNs sandbox channel was enabled.</p>
    #
    #   @return [String]
    #
    # @!attribute default_authentication_method
    #   <p>The default authentication method that Amazon Pinpoint uses to authenticate with the APNs sandbox environment for this channel, key or certificate.</p>
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p>Specifies whether the APNs sandbox channel is enabled for the application.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute has_credential
    #   <p>(Not used) This property is retained only for backward compatibility.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute has_token_key
    #   <p>Specifies whether the APNs sandbox channel is configured to communicate with APNs by using APNs tokens. To provide an authentication key for APNs tokens, set the TokenKey property of the channel.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute id
    #   <p>(Deprecated) An identifier for the APNs sandbox channel. This property is retained only for backward compatibility.</p>
    #
    #   @return [String]
    #
    # @!attribute is_archived
    #   <p>Specifies whether the APNs sandbox channel is archived.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute last_modified_by
    #   <p>The user who last modified the APNs sandbox channel.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_date
    #   <p>The date and time when the APNs sandbox channel was last modified.</p>
    #
    #   @return [String]
    #
    # @!attribute platform
    #   <p>The type of messaging or notification platform for the channel. For the APNs sandbox channel, this value is APNS_SANDBOX.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The current version of the APNs sandbox channel.</p>
    #
    #   @return [Integer]
    #
    APNSSandboxChannelResponse = ::Struct.new(
      :application_id,
      :creation_date,
      :default_authentication_method,
      :enabled,
      :has_credential,
      :has_token_key,
      :id,
      :is_archived,
      :last_modified_by,
      :last_modified_date,
      :platform,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.enabled ||= false
        self.has_credential ||= false
        self.has_token_key ||= false
        self.is_archived ||= false
        self.version ||= 0
      end

    end

    # <p>Specifies the status and settings of the APNs (Apple Push Notification service) VoIP channel for an application.</p>
    #
    # @!attribute bundle_id
    #   <p>The bundle identifier that's assigned to your iOS app. This identifier is used for APNs tokens.</p>
    #
    #   @return [String]
    #
    # @!attribute certificate
    #   <p>The APNs client certificate that you received from Apple, if you want Amazon Pinpoint to communicate with APNs by using an APNs certificate.</p>
    #
    #   @return [String]
    #
    # @!attribute default_authentication_method
    #   <p>The default authentication method that you want Amazon Pinpoint to use when authenticating with APNs, key or certificate.</p>
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p>Specifies whether to enable the APNs VoIP channel for the application.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute private_key
    #   <p>The private key for the APNs client certificate that you want Amazon Pinpoint to use to communicate with APNs.</p>
    #
    #   @return [String]
    #
    # @!attribute team_id
    #   <p>The identifier that's assigned to your Apple developer account team. This identifier is used for APNs tokens.</p>
    #
    #   @return [String]
    #
    # @!attribute token_key
    #   <p>The authentication key to use for APNs tokens.</p>
    #
    #   @return [String]
    #
    # @!attribute token_key_id
    #   <p>The key identifier that's assigned to your APNs signing key, if you want Amazon Pinpoint to communicate with APNs by using APNs tokens.</p>
    #
    #   @return [String]
    #
    APNSVoipChannelRequest = ::Struct.new(
      :bundle_id,
      :certificate,
      :default_authentication_method,
      :enabled,
      :private_key,
      :team_id,
      :token_key,
      :token_key_id,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.enabled ||= false
      end

    end

    # <p>Provides information about the status and settings of the APNs (Apple Push Notification service) VoIP channel for an application.</p>
    #
    # @!attribute application_id
    #   <p>The unique identifier for the application that the APNs VoIP channel applies to.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date and time when the APNs VoIP channel was enabled.</p>
    #
    #   @return [String]
    #
    # @!attribute default_authentication_method
    #   <p>The default authentication method that Amazon Pinpoint uses to authenticate with APNs for this channel, key or certificate.</p>
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p>Specifies whether the APNs VoIP channel is enabled for the application.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute has_credential
    #   <p>(Not used) This property is retained only for backward compatibility.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute has_token_key
    #   <p>Specifies whether the APNs VoIP channel is configured to communicate with APNs by using APNs tokens. To provide an authentication key for APNs tokens, set the TokenKey property of the channel.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute id
    #   <p>(Deprecated) An identifier for the APNs VoIP channel. This property is retained only for backward compatibility.</p>
    #
    #   @return [String]
    #
    # @!attribute is_archived
    #   <p>Specifies whether the APNs VoIP channel is archived.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute last_modified_by
    #   <p>The user who last modified the APNs VoIP channel.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_date
    #   <p>The date and time when the APNs VoIP channel was last modified.</p>
    #
    #   @return [String]
    #
    # @!attribute platform
    #   <p>The type of messaging or notification platform for the channel. For the APNs VoIP channel, this value is APNS_VOIP.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The current version of the APNs VoIP channel.</p>
    #
    #   @return [Integer]
    #
    APNSVoipChannelResponse = ::Struct.new(
      :application_id,
      :creation_date,
      :default_authentication_method,
      :enabled,
      :has_credential,
      :has_token_key,
      :id,
      :is_archived,
      :last_modified_by,
      :last_modified_date,
      :platform,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.enabled ||= false
        self.has_credential ||= false
        self.has_token_key ||= false
        self.is_archived ||= false
        self.version ||= 0
      end

    end

    # <p>Specifies the status and settings of the APNs (Apple Push Notification service) VoIP sandbox channel for an application.</p>
    #
    # @!attribute bundle_id
    #   <p>The bundle identifier that's assigned to your iOS app. This identifier is used for APNs tokens.</p>
    #
    #   @return [String]
    #
    # @!attribute certificate
    #   <p>The APNs client certificate that you received from Apple, if you want Amazon Pinpoint to communicate with the APNs sandbox environment by using an APNs certificate.</p>
    #
    #   @return [String]
    #
    # @!attribute default_authentication_method
    #   <p>The default authentication method that you want Amazon Pinpoint to use when authenticating with the APNs sandbox environment for this channel, key or certificate.</p>
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p>Specifies whether the APNs VoIP sandbox channel is enabled for the application.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute private_key
    #   <p>The private key for the APNs client certificate that you want Amazon Pinpoint to use to communicate with the APNs sandbox environment.</p>
    #
    #   @return [String]
    #
    # @!attribute team_id
    #   <p>The identifier that's assigned to your Apple developer account team. This identifier is used for APNs tokens.</p>
    #
    #   @return [String]
    #
    # @!attribute token_key
    #   <p>The authentication key to use for APNs tokens.</p>
    #
    #   @return [String]
    #
    # @!attribute token_key_id
    #   <p>The key identifier that's assigned to your APNs signing key, if you want Amazon Pinpoint to communicate with the APNs sandbox environment by using APNs tokens.</p>
    #
    #   @return [String]
    #
    APNSVoipSandboxChannelRequest = ::Struct.new(
      :bundle_id,
      :certificate,
      :default_authentication_method,
      :enabled,
      :private_key,
      :team_id,
      :token_key,
      :token_key_id,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.enabled ||= false
      end

    end

    # <p>Provides information about the status and settings of the APNs (Apple Push Notification service) VoIP sandbox channel for an application.</p>
    #
    # @!attribute application_id
    #   <p>The unique identifier for the application that the APNs VoIP sandbox channel applies to.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date and time when the APNs VoIP sandbox channel was enabled.</p>
    #
    #   @return [String]
    #
    # @!attribute default_authentication_method
    #   <p>The default authentication method that Amazon Pinpoint uses to authenticate with the APNs sandbox environment for this channel, key or certificate.</p>
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p>Specifies whether the APNs VoIP sandbox channel is enabled for the application.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute has_credential
    #   <p>(Not used) This property is retained only for backward compatibility.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute has_token_key
    #   <p>Specifies whether the APNs VoIP sandbox channel is configured to communicate with APNs by using APNs tokens. To provide an authentication key for APNs tokens, set the TokenKey property of the channel.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute id
    #   <p>(Deprecated) An identifier for the APNs VoIP sandbox channel. This property is retained only for backward compatibility.</p>
    #
    #   @return [String]
    #
    # @!attribute is_archived
    #   <p>Specifies whether the APNs VoIP sandbox channel is archived.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute last_modified_by
    #   <p>The user who last modified the APNs VoIP sandbox channel.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_date
    #   <p>The date and time when the APNs VoIP sandbox channel was last modified.</p>
    #
    #   @return [String]
    #
    # @!attribute platform
    #   <p>The type of messaging or notification platform for the channel. For the APNs VoIP sandbox channel, this value is APNS_VOIP_SANDBOX.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The current version of the APNs VoIP sandbox channel.</p>
    #
    #   @return [Integer]
    #
    APNSVoipSandboxChannelResponse = ::Struct.new(
      :application_id,
      :creation_date,
      :default_authentication_method,
      :enabled,
      :has_credential,
      :has_token_key,
      :id,
      :is_archived,
      :last_modified_by,
      :last_modified_date,
      :platform,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.enabled ||= false
        self.has_credential ||= false
        self.has_token_key ||= false
        self.is_archived ||= false
        self.version ||= 0
      end

    end

    # Includes enum constants for Action
    #
    module Action
      # No documentation available.
      #
      OPEN_APP = "OPEN_APP"

      # No documentation available.
      #
      DEEP_LINK = "DEEP_LINK"

      # No documentation available.
      #
      URL = "URL"
    end

    # <p>Provides information about the activities that were performed by a campaign.</p>
    #
    # @!attribute item
    #   <p>An array of responses, one for each activity that was performed by the campaign.</p>
    #
    #   @return [Array<ActivityResponse>]
    #
    # @!attribute next_token
    #   <p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>
    #
    #   @return [String]
    #
    ActivitiesResponse = ::Struct.new(
      :item,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the configuration and other settings for an activity in a journey.</p>
    #
    # @!attribute custom
    #   <p>The settings for a custom message activity. This type of activity calls an AWS Lambda function or web hook that sends messages to participants.</p>
    #
    #   @return [CustomMessageActivity]
    #
    # @!attribute conditional_split
    #   <p>The settings for a yes/no split activity. This type of activity sends participants down one of two paths in a journey, based on conditions that you specify.</p>
    #
    #   @return [ConditionalSplitActivity]
    #
    # @!attribute description
    #   <p>The custom description of the activity.</p>
    #
    #   @return [String]
    #
    # @!attribute email
    #   <p>The settings for an email activity. This type of activity sends an email message to participants.</p>
    #
    #   @return [EmailMessageActivity]
    #
    # @!attribute holdout
    #   <p>The settings for a holdout activity. This type of activity stops a journey for a specified percentage of participants.</p>
    #
    #   @return [HoldoutActivity]
    #
    # @!attribute multi_condition
    #   <p>The settings for a multivariate split activity. This type of activity sends participants down one of as many as five paths (including a default <i>Else</i> path) in a journey, based on conditions that you specify.</p>
    #
    #   @return [MultiConditionalSplitActivity]
    #
    # @!attribute push
    #   <p>The settings for a push notification activity. This type of activity sends a push notification to participants.</p>
    #
    #   @return [PushMessageActivity]
    #
    # @!attribute random_split
    #   <p>The settings for a random split activity. This type of activity randomly sends specified percentages of participants down one of as many as five paths in a journey, based on conditions that you specify.</p>
    #
    #   @return [RandomSplitActivity]
    #
    # @!attribute sms
    #   <p>The settings for an SMS activity. This type of activity sends a text message to participants.</p>
    #
    #   @return [SMSMessageActivity]
    #
    # @!attribute wait
    #   <p>The settings for a wait activity. This type of activity waits for a certain amount of time or until a specific date and time before moving participants to the next activity in a journey.</p>
    #
    #   @return [WaitActivity]
    #
    # @!attribute contact_center
    #   <p>The settings for a connect activity. This type of activity initiates a contact center call to participants.</p>
    #
    #   @return [ContactCenterActivity]
    #
    Activity = ::Struct.new(
      :custom,
      :conditional_split,
      :description,
      :email,
      :holdout,
      :multi_condition,
      :push,
      :random_split,
      :sms,
      :wait,
      :contact_center,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about an activity that was performed by a campaign.</p>
    #
    # @!attribute application_id
    #   <p>The unique identifier for the application that the campaign applies to.</p>
    #
    #   @return [String]
    #
    # @!attribute campaign_id
    #   <p>The unique identifier for the campaign that the activity applies to.</p>
    #
    #   @return [String]
    #
    # @!attribute end
    #   <p>The actual time, in ISO 8601 format, when the activity was marked CANCELLED or COMPLETED.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The unique identifier for the activity.</p>
    #
    #   @return [String]
    #
    # @!attribute result
    #   <p>Specifies whether the activity succeeded. Possible values are SUCCESS and FAIL.</p>
    #
    #   @return [String]
    #
    # @!attribute scheduled_start
    #   <p>The scheduled start time, in ISO 8601 format, for the activity.</p>
    #
    #   @return [String]
    #
    # @!attribute start
    #   <p>The actual start time, in ISO 8601 format, of the activity.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The current status of the activity. Possible values are: PENDING, INITIALIZING, RUNNING, PAUSED, CANCELLED, and COMPLETED.</p>
    #
    #   @return [String]
    #
    # @!attribute successful_endpoint_count
    #   <p>The total number of endpoints that the campaign successfully delivered messages to.</p>
    #
    #   @return [Integer]
    #
    # @!attribute timezones_completed_count
    #   <p>The total number of time zones that were completed.</p>
    #
    #   @return [Integer]
    #
    # @!attribute timezones_total_count
    #   <p>The total number of unique time zones that are in the segment for the campaign.</p>
    #
    #   @return [Integer]
    #
    # @!attribute total_endpoint_count
    #   <p>The total number of endpoints that the campaign attempted to deliver messages to.</p>
    #
    #   @return [Integer]
    #
    # @!attribute treatment_id
    #   <p>The unique identifier for the campaign treatment that the activity applies to. A treatment is a variation of a campaign that's used for A/B testing of a campaign.</p>
    #
    #   @return [String]
    #
    ActivityResponse = ::Struct.new(
      :application_id,
      :campaign_id,
      :end,
      :id,
      :result,
      :scheduled_start,
      :start,
      :state,
      :successful_endpoint_count,
      :timezones_completed_count,
      :timezones_total_count,
      :total_endpoint_count,
      :treatment_id,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.successful_endpoint_count ||= 0
        self.timezones_completed_count ||= 0
        self.timezones_total_count ||= 0
        self.total_endpoint_count ||= 0
      end

    end

    # <p>Specifies address-based configuration settings for a message that's sent directly to an endpoint.</p>
    #
    # @!attribute body_override
    #   <p>The message body to use instead of the default message body. This value overrides the default message body.</p>
    #
    #   @return [String]
    #
    # @!attribute channel_type
    #   <p>The channel to use when sending the message.</p>
    #
    #   Enum, one of: ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"]
    #
    #   @return [String]
    #
    # @!attribute context
    #   <p>An object that maps custom attributes to attributes for the address and is attached to the message. Attribute names are case sensitive.</p> <p>For a push notification, this payload is added to the data.pinpoint object. For an email or text message, this payload is added to email/SMS delivery receipt event attributes.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute raw_content
    #   <p>The raw, JSON-formatted string to use as the payload for the message. If specified, this value overrides all other values for the message.</p>
    #
    #   @return [String]
    #
    # @!attribute substitutions
    #   <p>A map of the message variables to merge with the variables specified by properties of the DefaultMessage object. The variables specified in this map take precedence over all other variables.</p>
    #
    #   @return [Hash<String, Array<String>>]
    #
    # @!attribute title_override
    #   <p>The message title to use instead of the default message title. This value overrides the default message title.</p>
    #
    #   @return [String]
    #
    AddressConfiguration = ::Struct.new(
      :body_override,
      :channel_type,
      :context,
      :raw_content,
      :substitutions,
      :title_override,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Alignment
    #
    module Alignment
      # No documentation available.
      #
      LEFT = "LEFT"

      # No documentation available.
      #
      CENTER = "CENTER"

      # No documentation available.
      #
      RIGHT = "RIGHT"
    end

    # <p>Specifies channel-specific content and settings for a message template that can be used in push notifications that are sent through the ADM (Amazon Device Messaging), Baidu (Baidu Cloud Push), or GCM (Firebase Cloud Messaging, formerly Google Cloud Messaging) channel.</p>
    #
    # @!attribute action
    #   <p>The action to occur if a recipient taps a push notification that's based on the message template. Valid values are:</p> <ul><li><p>OPEN_APP - Your app opens or it becomes the foreground app if it was sent to the background. This is the default action.</p></li> <li><p>DEEP_LINK - Your app opens and displays a designated user interface in the app. This action uses the deep-linking features of the Android platform.</p></li> <li><p>URL - The default mobile browser on the recipient's device opens and loads the web page at a URL that you specify.</p></li></ul>
    #
    #   Enum, one of: ["OPEN_APP", "DEEP_LINK", "URL"]
    #
    #   @return [String]
    #
    # @!attribute body
    #   <p>The message body to use in a push notification that's based on the message template.</p>
    #
    #   @return [String]
    #
    # @!attribute image_icon_url
    #   <p>The URL of the large icon image to display in the content view of a push notification that's based on the message template.</p>
    #
    #   @return [String]
    #
    # @!attribute image_url
    #   <p>The URL of an image to display in a push notification that's based on the message template.</p>
    #
    #   @return [String]
    #
    # @!attribute raw_content
    #   <p>The raw, JSON-formatted string to use as the payload for a push notification that's based on the message template. If specified, this value overrides all other content for the message template.</p>
    #
    #   @return [String]
    #
    # @!attribute small_image_icon_url
    #   <p>The URL of the small icon image to display in the status bar and the content view of a push notification that's based on the message template.</p>
    #
    #   @return [String]
    #
    # @!attribute sound
    #   <p>The sound to play when a recipient receives a push notification that's based on the message template. You can use the default stream or specify the file name of a sound resource that's bundled in your app. On an Android platform, the sound file must reside in /res/raw/.</p>
    #
    #   @return [String]
    #
    # @!attribute title
    #   <p>The title to use in a push notification that's based on the message template. This title appears above the notification message on a recipient's device.</p>
    #
    #   @return [String]
    #
    # @!attribute url
    #   <p>The URL to open in a recipient's default mobile browser, if a recipient taps a push notification that's based on the message template and the value of the Action property is URL.</p>
    #
    #   @return [String]
    #
    AndroidPushNotificationTemplate = ::Struct.new(
      :action,
      :body,
      :image_icon_url,
      :image_url,
      :raw_content,
      :small_image_icon_url,
      :sound,
      :title,
      :url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides the results of a query that retrieved the data for a standard metric that applies to an application, and provides information about that query.</p>
    #
    # @!attribute application_id
    #   <p>The unique identifier for the application that the metric applies to.</p>
    #
    #   @return [String]
    #
    # @!attribute end_time
    #   <p>The last date and time of the date range that was used to filter the query results, in extended ISO 8601 format. The date range is inclusive.</p>
    #
    #   @return [Time]
    #
    # @!attribute kpi_name
    #   <p>The name of the metric, also referred to as a <i>key performance indicator (KPI)</i>, that the data was retrieved for. This value describes the associated metric and consists of two or more terms, which are comprised of lowercase alphanumeric characters, separated by a hyphen. For a list of possible values, see the <a href="https://docs.aws.amazon.com/pinpoint/latest/developerguide/analytics-standard-metrics.html">Amazon Pinpoint Developer Guide</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute kpi_result
    #   <p>An array of objects that contains the results of the query. Each object contains the value for the metric and metadata about that value.</p>
    #
    #   @return [BaseKpiResult]
    #
    # @!attribute next_token
    #   <p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null for the Application Metrics resource because the resource returns all results in a single page.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The first date and time of the date range that was used to filter the query results, in extended ISO 8601 format. The date range is inclusive.</p>
    #
    #   @return [Time]
    #
    ApplicationDateRangeKpiResponse = ::Struct.new(
      :application_id,
      :end_time,
      :kpi_name,
      :kpi_result,
      :next_token,
      :start_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about an application.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The display name of the application. This name is displayed as the <b>Project name</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A string-to-string map of key-value pairs that identifies the tags that are associated with the application. Each tag consists of a required tag key and an associated tag value.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute creation_date
    #   <p>The date and time when the Application was created.</p>
    #
    #   @return [String]
    #
    ApplicationResponse = ::Struct.new(
      :arn,
      :id,
      :name,
      :tags,
      :creation_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about an application, including the default settings for an application.</p>
    #
    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    # @!attribute campaign_hook
    #   <p>The settings for the AWS Lambda function to invoke by default as a code hook for campaigns in the application. You can use this hook to customize segments that are used by campaigns in the application.</p>
    #
    #   @return [CampaignHook]
    #
    # @!attribute last_modified_date
    #   <p>The date and time, in ISO 8601 format, when the application's settings were last modified.</p>
    #
    #   @return [String]
    #
    # @!attribute limits
    #   <p>The default sending limits for campaigns in the application.</p>
    #
    #   @return [CampaignLimits]
    #
    # @!attribute quiet_time
    #   <p>The default quiet time for campaigns in the application. Quiet time is a specific time range when messages aren't sent to endpoints, if all the following conditions are met:</p> <ul><li><p>The EndpointDemographic.Timezone property of the endpoint is set to a valid value.</p></li> <li><p>The current time in the endpoint's time zone is later than or equal to the time specified by the QuietTime.Start property for the application (or a campaign or journey that has custom quiet time settings).</p></li> <li><p>The current time in the endpoint's time zone is earlier than or equal to the time specified by the QuietTime.End property for the application (or a campaign or journey that has custom quiet time settings).</p></li></ul> <p>If any of the preceding conditions isn't met, the endpoint will receive messages from a campaign or journey, even if quiet time is enabled.</p>
    #
    #   @return [QuietTime]
    #
    ApplicationSettingsResource = ::Struct.new(
      :application_id,
      :campaign_hook,
      :last_modified_date,
      :limits,
      :quiet_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about all of your applications.</p>
    #
    # @!attribute item
    #   <p>An array of responses, one for each application that was returned.</p>
    #
    #   @return [Array<ApplicationResponse>]
    #
    # @!attribute next_token
    #   <p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>
    #
    #   @return [String]
    #
    ApplicationsResponse = ::Struct.new(
      :item,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies attribute-based criteria for including or excluding endpoints from a segment.</p>
    #
    # @!attribute attribute_type
    #   <p>The type of segment dimension to use. Valid values are: <ul><li>INCLUSIVE - endpoints that have attributes matching the values are included in the segment.</li><li>EXCLUSIVE - endpoints that have attributes matching the values are excluded in the segment.</li><li>CONTAINS - endpoints that have attributes' substrings match the values are included in the segment.</li><li>BEFORE - endpoints with attributes read as ISO_INSTANT datetimes before the value are included in the segment.</li><li>AFTER - endpoints with attributes read as ISO_INSTANT datetimes after the value are included in the segment.</li><li>ON - endpoints with attributes read as ISO_INSTANT dates on the value are included in the segment. Time is ignored in this comparison.</li><li>BETWEEN - endpoints with attributes read as ISO_INSTANT datetimes between the values are included in the segment.</li></p>
    #
    #   Enum, one of: ["INCLUSIVE", "EXCLUSIVE", "CONTAINS", "BEFORE", "AFTER", "ON", "BETWEEN"]
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The criteria values to use for the segment dimension. Depending on the value of the AttributeType property, endpoints are included or excluded from the segment if their attribute values match the criteria values.</p>
    #
    #   @return [Array<String>]
    #
    AttributeDimension = ::Struct.new(
      :attribute_type,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AttributeType
    #
    module AttributeType
      # No documentation available.
      #
      INCLUSIVE = "INCLUSIVE"

      # No documentation available.
      #
      EXCLUSIVE = "EXCLUSIVE"

      # No documentation available.
      #
      CONTAINS = "CONTAINS"

      # No documentation available.
      #
      BEFORE = "BEFORE"

      # No documentation available.
      #
      AFTER = "AFTER"

      # No documentation available.
      #
      ON = "ON"

      # No documentation available.
      #
      BETWEEN = "BETWEEN"
    end

    # <p>Provides information about the type and the names of attributes that were removed from all the endpoints that are associated with an application.</p>
    #
    # @!attribute application_id
    #   <p>The unique identifier for the application.</p>
    #
    #   @return [String]
    #
    # @!attribute attribute_type
    #   <p>The type of attribute or attributes that were removed from the endpoints. Valid values are:</p> <ul><li><p>endpoint-custom-attributes - Custom attributes that describe endpoints.</p></li> <li><p>endpoint-metric-attributes - Custom metrics that your app reports to Amazon Pinpoint for endpoints.</p></li> <li><p>endpoint-user-attributes - Custom attributes that describe users.</p></li></ul>
    #
    #   @return [String]
    #
    # @!attribute attributes
    #   <p>An array that specifies the names of the attributes that were removed from the endpoints.</p>
    #
    #   @return [Array<String>]
    #
    AttributesResource = ::Struct.new(
      :application_id,
      :attribute_type,
      :attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about an API request or response.</p>
    #
    # @!attribute message
    #   <p>The message that's returned from the API.</p>
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The unique identifier for the request or response.</p>
    #
    #   @return [String]
    #
    BadRequestException = ::Struct.new(
      :message,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the status and settings of the Baidu (Baidu Cloud Push) channel for an application.</p>
    #
    # @!attribute api_key
    #   <p>The API key that you received from the Baidu Cloud Push service to communicate with the service.</p>
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p>Specifies whether to enable the Baidu channel for the application.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute secret_key
    #   <p>The secret key that you received from the Baidu Cloud Push service to communicate with the service.</p>
    #
    #   @return [String]
    #
    BaiduChannelRequest = ::Struct.new(
      :api_key,
      :enabled,
      :secret_key,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.enabled ||= false
      end

    end

    # <p>Provides information about the status and settings of the Baidu (Baidu Cloud Push) channel for an application.</p>
    #
    # @!attribute application_id
    #   <p>The unique identifier for the application that the Baidu channel applies to.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date and time when the Baidu channel was enabled.</p>
    #
    #   @return [String]
    #
    # @!attribute credential
    #   <p>The API key that you received from the Baidu Cloud Push service to communicate with the service.</p>
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p>Specifies whether the Baidu channel is enabled for the application.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute has_credential
    #   <p>(Not used) This property is retained only for backward compatibility.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute id
    #   <p>(Deprecated) An identifier for the Baidu channel. This property is retained only for backward compatibility.</p>
    #
    #   @return [String]
    #
    # @!attribute is_archived
    #   <p>Specifies whether the Baidu channel is archived.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute last_modified_by
    #   <p>The user who last modified the Baidu channel.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_date
    #   <p>The date and time when the Baidu channel was last modified.</p>
    #
    #   @return [String]
    #
    # @!attribute platform
    #   <p>The type of messaging or notification platform for the channel. For the Baidu channel, this value is BAIDU.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The current version of the Baidu channel.</p>
    #
    #   @return [Integer]
    #
    BaiduChannelResponse = ::Struct.new(
      :application_id,
      :creation_date,
      :credential,
      :enabled,
      :has_credential,
      :id,
      :is_archived,
      :last_modified_by,
      :last_modified_date,
      :platform,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.enabled ||= false
        self.has_credential ||= false
        self.is_archived ||= false
        self.version ||= 0
      end

    end

    # <p>Specifies the settings for a one-time message that's sent directly to an endpoint through the Baidu (Baidu Cloud Push) channel.</p>
    #
    # @!attribute action
    #   <p>The action to occur if the recipient taps the push notification. Valid values are:</p> <ul><li><p>OPEN_APP - Your app opens or it becomes the foreground app if it was sent to the background. This is the default action.</p></li> <li><p>DEEP_LINK - Your app opens and displays a designated user interface in the app. This action uses the deep-linking features of the Android platform.</p></li> <li><p>URL - The default mobile browser on the recipient's device opens and loads the web page at a URL that you specify.</p></li></ul>
    #
    #   Enum, one of: ["OPEN_APP", "DEEP_LINK", "URL"]
    #
    #   @return [String]
    #
    # @!attribute body
    #   <p>The body of the notification message.</p>
    #
    #   @return [String]
    #
    # @!attribute data
    #   <p>The JSON data payload to use for the push notification, if the notification is a silent push notification. This payload is added to the data.pinpoint.jsonBody object of the notification.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute icon_reference
    #   <p>The icon image name of the asset saved in your app.</p>
    #
    #   @return [String]
    #
    # @!attribute image_icon_url
    #   <p>The URL of the large icon image to display in the content view of the push notification.</p>
    #
    #   @return [String]
    #
    # @!attribute image_url
    #   <p>The URL of an image to display in the push notification.</p>
    #
    #   @return [String]
    #
    # @!attribute raw_content
    #   <p>The raw, JSON-formatted string to use as the payload for the notification message. If specified, this value overrides all other content for the message.</p>
    #
    #   @return [String]
    #
    # @!attribute silent_push
    #   <p>Specifies whether the notification is a silent push notification, which is a push notification that doesn't display on a recipient's device. Silent push notifications can be used for cases such as updating an app's configuration or supporting phone home functionality.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute small_image_icon_url
    #   <p>The URL of the small icon image to display in the status bar and the content view of the push notification.</p>
    #
    #   @return [String]
    #
    # @!attribute sound
    #   <p>The sound to play when the recipient receives the push notification. You can use the default stream or specify the file name of a sound resource that's bundled in your app. On an Android platform, the sound file must reside in /res/raw/.</p>
    #
    #   @return [String]
    #
    # @!attribute substitutions
    #   <p>The default message variables to use in the notification message. You can override the default variables with individual address variables.</p>
    #
    #   @return [Hash<String, Array<String>>]
    #
    # @!attribute time_to_live
    #   <p>The amount of time, in seconds, that the Baidu Cloud Push service should store the message if the recipient's device is offline. The default value and maximum supported time is 604,800 seconds (7 days).</p>
    #
    #   @return [Integer]
    #
    # @!attribute title
    #   <p>The title to display above the notification message on the recipient's device.</p>
    #
    #   @return [String]
    #
    # @!attribute url
    #   <p>The URL to open in the recipient's default mobile browser, if a recipient taps the push notification and the value of the Action property is URL.</p>
    #
    #   @return [String]
    #
    BaiduMessage = ::Struct.new(
      :action,
      :body,
      :data,
      :icon_reference,
      :image_icon_url,
      :image_url,
      :raw_content,
      :silent_push,
      :small_image_icon_url,
      :sound,
      :substitutions,
      :time_to_live,
      :title,
      :url,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.silent_push ||= false
        self.time_to_live ||= 0
      end

    end

    # <p>Provides the results of a query that retrieved the data for a standard metric that applies to an application, campaign, or journey.</p>
    #
    # @!attribute rows
    #   <p>An array of objects that provides the results of a query that retrieved the data for a standard metric that applies to an application, campaign, or journey.</p>
    #
    #   @return [Array<ResultRow>]
    #
    BaseKpiResult = ::Struct.new(
      :rows,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ButtonAction
    #
    module ButtonAction
      # No documentation available.
      #
      LINK = "LINK"

      # No documentation available.
      #
      DEEP_LINK = "DEEP_LINK"

      # No documentation available.
      #
      CLOSE = "CLOSE"
    end

    # <p>Specifies the contents of a message that's sent through a custom channel to recipients of a campaign.</p>
    #
    # @!attribute data
    #   <p>The raw, JSON-formatted string to use as the payload for the message. The maximum size is 5 KB.</p>
    #
    #   @return [String]
    #
    CampaignCustomMessage = ::Struct.new(
      :data,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides the results of a query that retrieved the data for a standard metric that applies to a campaign, and provides information about that query.</p>
    #
    # @!attribute application_id
    #   <p>The unique identifier for the application that the metric applies to.</p>
    #
    #   @return [String]
    #
    # @!attribute campaign_id
    #   <p>The unique identifier for the campaign that the metric applies to.</p>
    #
    #   @return [String]
    #
    # @!attribute end_time
    #   <p>The last date and time of the date range that was used to filter the query results, in extended ISO 8601 format. The date range is inclusive.</p>
    #
    #   @return [Time]
    #
    # @!attribute kpi_name
    #   <p>The name of the metric, also referred to as a <i>key performance indicator (KPI)</i>, that the data was retrieved for. This value describes the associated metric and consists of two or more terms, which are comprised of lowercase alphanumeric characters, separated by a hyphen. For a list of possible values, see the <a href="https://docs.aws.amazon.com/pinpoint/latest/developerguide/analytics-standard-metrics.html">Amazon Pinpoint Developer Guide</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute kpi_result
    #   <p>An array of objects that contains the results of the query. Each object contains the value for the metric and metadata about that value.</p>
    #
    #   @return [BaseKpiResult]
    #
    # @!attribute next_token
    #   <p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null for the Campaign Metrics resource because the resource returns all results in a single page.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The first date and time of the date range that was used to filter the query results, in extended ISO 8601 format. The date range is inclusive.</p>
    #
    #   @return [Time]
    #
    CampaignDateRangeKpiResponse = ::Struct.new(
      :application_id,
      :campaign_id,
      :end_time,
      :kpi_name,
      :kpi_result,
      :next_token,
      :start_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the content and "From" address for an email message that's sent to recipients of a campaign.</p>
    #
    # @!attribute body
    #   <p>The body of the email for recipients whose email clients don't render HTML content.</p>
    #
    #   @return [String]
    #
    # @!attribute from_address
    #   <p>The verified email address to send the email from. The default address is the FromAddress specified for the email channel for the application.</p>
    #
    #   @return [String]
    #
    # @!attribute html_body
    #   <p>The body of the email, in HTML format, for recipients whose email clients render HTML content.</p>
    #
    #   @return [String]
    #
    # @!attribute title
    #   <p>The subject line, or title, of the email.</p>
    #
    #   @return [String]
    #
    CampaignEmailMessage = ::Struct.new(
      :body,
      :from_address,
      :html_body,
      :title,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the settings for events that cause a campaign to be sent.</p>
    #
    # @!attribute dimensions
    #   <p>The dimension settings of the event filter for the campaign.</p>
    #
    #   @return [EventDimensions]
    #
    # @!attribute filter_type
    #   <p>The type of event that causes the campaign to be sent. Valid values are: SYSTEM, sends the campaign when a system event occurs; and, ENDPOINT, sends the campaign when an endpoint event (<link  linkend="apps-application-id-events">Events</link> resource) occurs.</p>
    #
    #   Enum, one of: ["SYSTEM", "ENDPOINT"]
    #
    #   @return [String]
    #
    CampaignEventFilter = ::Struct.new(
      :dimensions,
      :filter_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies settings for invoking an AWS Lambda function that customizes a segment for a campaign.</p>
    #
    # @!attribute lambda_function_name
    #   <p>The name or Amazon Resource Name (ARN) of the AWS Lambda function that Amazon Pinpoint invokes to customize a segment for a campaign.</p>
    #
    #   @return [String]
    #
    # @!attribute mode
    #   <p>The mode that Amazon Pinpoint uses to invoke the AWS Lambda function. Possible values are:</p> <ul><li><p>FILTER - Invoke the function to customize the segment that's used by a campaign.</p></li> <li><p>DELIVERY - (Deprecated) Previously, invoked the function to send a campaign through a custom channel. This functionality is not supported anymore. To send a campaign through a custom channel, use the CustomDeliveryConfiguration and CampaignCustomMessage objects of the campaign.</p></li></ul>
    #
    #   Enum, one of: ["DELIVERY", "FILTER"]
    #
    #   @return [String]
    #
    # @!attribute web_url
    #   <p>The web URL that Amazon Pinpoint calls to invoke the AWS Lambda function over HTTPS.</p>
    #
    #   @return [String]
    #
    CampaignHook = ::Struct.new(
      :lambda_function_name,
      :mode,
      :web_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>In-app message configuration.</p>
    #
    # @!attribute body
    #   <p>The message body of the notification, the email body or the text message.</p>
    #
    #   @return [String]
    #
    # @!attribute content
    #   <p>In-app message content.</p>
    #
    #   @return [Array<InAppMessageContent>]
    #
    # @!attribute custom_config
    #   <p>Custom config to be sent to client.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute layout
    #   <p>In-app message layout.</p>
    #
    #   Enum, one of: ["BOTTOM_BANNER", "TOP_BANNER", "OVERLAYS", "MOBILE_FEED", "MIDDLE_BANNER", "CAROUSEL"]
    #
    #   @return [String]
    #
    CampaignInAppMessage = ::Struct.new(
      :body,
      :content,
      :custom_config,
      :layout,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>For a campaign, specifies limits on the messages that the campaign can send. For an application, specifies the default limits for messages that campaigns in the application can send.</p>
    #
    # @!attribute daily
    #   <p>The maximum number of messages that a campaign can send to a single endpoint during a 24-hour period. For an application, this value specifies the default limit for the number of messages that campaigns and journeys can send to a single endpoint during a 24-hour period. The maximum value is 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute maximum_duration
    #   <p>The maximum amount of time, in seconds, that a campaign can attempt to deliver a message after the scheduled start time for the campaign. The minimum value is 60 seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute messages_per_second
    #   <p>The maximum number of messages that a campaign can send each second. For an application, this value specifies the default limit for the number of messages that campaigns can send each second. The minimum value is 50. The maximum value is 20,000.</p>
    #
    #   @return [Integer]
    #
    # @!attribute total
    #   <p>The maximum number of messages that a campaign can send to a single endpoint during the course of the campaign. If a campaign recurs, this setting applies to all runs of the campaign. The maximum value is 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute session
    #   <p>The maximum total number of messages that the campaign can send per user session.</p>
    #
    #   @return [Integer]
    #
    CampaignLimits = ::Struct.new(
      :daily,
      :maximum_duration,
      :messages_per_second,
      :total,
      :session,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.daily ||= 0
        self.maximum_duration ||= 0
        self.messages_per_second ||= 0
        self.total ||= 0
        self.session ||= 0
      end

    end

    # <p>Provides information about the status, configuration, and other settings for a campaign.</p>
    #
    # @!attribute additional_treatments
    #   <p>An array of responses, one for each treatment that you defined for the campaign, in addition to the default treatment.</p>
    #
    #   @return [Array<TreatmentResource>]
    #
    # @!attribute application_id
    #   <p>The unique identifier for the application that the campaign applies to.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the campaign.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date, in ISO 8601 format, when the campaign was created.</p>
    #
    #   @return [String]
    #
    # @!attribute custom_delivery_configuration
    #   <p>The delivery configuration settings for sending the campaign through a custom channel.</p>
    #
    #   @return [CustomDeliveryConfiguration]
    #
    # @!attribute default_state
    #   <p>The current status of the campaign's default treatment. This value exists only for campaigns that have more than one treatment.</p>
    #
    #   @return [CampaignState]
    #
    # @!attribute description
    #   <p>The custom description of the campaign.</p>
    #
    #   @return [String]
    #
    # @!attribute holdout_percent
    #   <p>The allocated percentage of users (segment members) who shouldn't receive messages from the campaign.</p>
    #
    #   @return [Integer]
    #
    # @!attribute hook
    #   <p>The settings for the AWS Lambda function to use as a code hook for the campaign. You can use this hook to customize the segment that's used by the campaign.</p>
    #
    #   @return [CampaignHook]
    #
    # @!attribute id
    #   <p>The unique identifier for the campaign.</p>
    #
    #   @return [String]
    #
    # @!attribute is_paused
    #   <p>Specifies whether the campaign is paused. A paused campaign doesn't run unless you resume it by changing this value to false.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute last_modified_date
    #   <p>The date, in ISO 8601 format, when the campaign was last modified.</p>
    #
    #   @return [String]
    #
    # @!attribute limits
    #   <p>The messaging limits for the campaign.</p>
    #
    #   @return [CampaignLimits]
    #
    # @!attribute message_configuration
    #   <p>The message configuration settings for the campaign.</p>
    #
    #   @return [MessageConfiguration]
    #
    # @!attribute name
    #   <p>The name of the campaign.</p>
    #
    #   @return [String]
    #
    # @!attribute schedule
    #   <p>The schedule settings for the campaign.</p>
    #
    #   @return [Schedule]
    #
    # @!attribute segment_id
    #   <p>The unique identifier for the segment that's associated with the campaign.</p>
    #
    #   @return [String]
    #
    # @!attribute segment_version
    #   <p>The version number of the segment that's associated with the campaign.</p>
    #
    #   @return [Integer]
    #
    # @!attribute state
    #   <p>The current status of the campaign.</p>
    #
    #   @return [CampaignState]
    #
    # @!attribute tags
    #   <p>A string-to-string map of key-value pairs that identifies the tags that are associated with the campaign. Each tag consists of a required tag key and an associated tag value.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute template_configuration
    #   <p>The message template that’s used for the campaign.</p>
    #
    #   @return [TemplateConfiguration]
    #
    # @!attribute treatment_description
    #   <p>The custom description of the default treatment for the campaign.</p>
    #
    #   @return [String]
    #
    # @!attribute treatment_name
    #   <p>The custom name of the default treatment for the campaign, if the campaign has multiple treatments. A <i>treatment</i> is a variation of a campaign that's used for A/B testing.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version number of the campaign.</p>
    #
    #   @return [Integer]
    #
    # @!attribute priority
    #   <p>Defines the priority of the campaign, used to decide the order of messages displayed to user if there are multiple messages scheduled to be displayed at the same moment.</p>
    #
    #   @return [Integer]
    #
    CampaignResponse = ::Struct.new(
      :additional_treatments,
      :application_id,
      :arn,
      :creation_date,
      :custom_delivery_configuration,
      :default_state,
      :description,
      :holdout_percent,
      :hook,
      :id,
      :is_paused,
      :last_modified_date,
      :limits,
      :message_configuration,
      :name,
      :schedule,
      :segment_id,
      :segment_version,
      :state,
      :tags,
      :template_configuration,
      :treatment_description,
      :treatment_name,
      :version,
      :priority,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.holdout_percent ||= 0
        self.is_paused ||= false
        self.segment_version ||= 0
        self.version ||= 0
        self.priority ||= 0
      end

    end

    # <p>Specifies the content and settings for an SMS message that's sent to recipients of a campaign.</p>
    #
    # @!attribute body
    #   <p>The body of the SMS message.</p>
    #
    #   @return [String]
    #
    # @!attribute message_type
    #   <p>The SMS message type. Valid values are TRANSACTIONAL (for messages that are critical or time-sensitive, such as a one-time passwords) and PROMOTIONAL (for messsages that aren't critical or time-sensitive, such as marketing messages).</p>
    #
    #   Enum, one of: ["TRANSACTIONAL", "PROMOTIONAL"]
    #
    #   @return [String]
    #
    # @!attribute origination_number
    #   <p>The long code to send the SMS message from. This value should be one of the dedicated long codes that's assigned to your AWS account. Although it isn't required, we recommend that you specify the long code using an E.164 format to ensure prompt and accurate delivery of the message. For example, +12065550100.</p>
    #
    #   @return [String]
    #
    # @!attribute sender_id
    #   <p>The sender ID to display on recipients' devices when they receive the SMS message.</p>
    #
    #   @return [String]
    #
    # @!attribute entity_id
    #   <p>The entity ID or Principal Entity (PE) id received from the regulatory body for sending SMS in your country.</p>
    #
    #   @return [String]
    #
    # @!attribute template_id
    #   <p>The template ID received from the regulatory body for sending SMS in your country.</p>
    #
    #   @return [String]
    #
    CampaignSmsMessage = ::Struct.new(
      :body,
      :message_type,
      :origination_number,
      :sender_id,
      :entity_id,
      :template_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about the status of a campaign.</p>
    #
    # @!attribute campaign_status
    #   <p>The current status of the campaign, or the current status of a treatment that belongs to an A/B test campaign.</p> <p>If a campaign uses A/B testing, the campaign has a status of COMPLETED only if all campaign treatments have a status of COMPLETED. If you delete the segment that's associated with a campaign, the campaign fails and has a status of DELETED.</p>
    #
    #   Enum, one of: ["SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED", "DELETED", "INVALID"]
    #
    #   @return [String]
    #
    CampaignState = ::Struct.new(
      :campaign_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CampaignStatus
    #
    module CampaignStatus
      # No documentation available.
      #
      SCHEDULED = "SCHEDULED"

      # No documentation available.
      #
      EXECUTING = "EXECUTING"

      # No documentation available.
      #
      PENDING_NEXT_RUN = "PENDING_NEXT_RUN"

      # No documentation available.
      #
      COMPLETED = "COMPLETED"

      # No documentation available.
      #
      PAUSED = "PAUSED"

      # No documentation available.
      #
      DELETED = "DELETED"

      # No documentation available.
      #
      INVALID = "INVALID"
    end

    # <p>Provides information about the configuration and other settings for all the campaigns that are associated with an application.</p>
    #
    # @!attribute item
    #   <p>An array of responses, one for each campaign that's associated with the application.</p>
    #
    #   @return [Array<CampaignResponse>]
    #
    # @!attribute next_token
    #   <p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>
    #
    #   @return [String]
    #
    CampaignsResponse = ::Struct.new(
      :item,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about the general settings and status of a channel for an application.</p>
    #
    # @!attribute application_id
    #   <p>The unique identifier for the application.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date and time, in ISO 8601 format, when the channel was enabled.</p>
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p>Specifies whether the channel is enabled for the application.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute has_credential
    #   <p>(Not used) This property is retained only for backward compatibility.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute id
    #   <p>(Deprecated) An identifier for the channel. This property is retained only for backward compatibility.</p>
    #
    #   @return [String]
    #
    # @!attribute is_archived
    #   <p>Specifies whether the channel is archived.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute last_modified_by
    #   <p>The user who last modified the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_date
    #   <p>The date and time, in ISO 8601 format, when the channel was last modified.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The current version of the channel.</p>
    #
    #   @return [Integer]
    #
    ChannelResponse = ::Struct.new(
      :application_id,
      :creation_date,
      :enabled,
      :has_credential,
      :id,
      :is_archived,
      :last_modified_by,
      :last_modified_date,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.enabled ||= false
        self.has_credential ||= false
        self.is_archived ||= false
        self.version ||= 0
      end

    end

    # Includes enum constants for ChannelType
    #
    module ChannelType
      # No documentation available.
      #
      PUSH = "PUSH"

      # No documentation available.
      #
      GCM = "GCM"

      # No documentation available.
      #
      APNS = "APNS"

      # No documentation available.
      #
      APNS_SANDBOX = "APNS_SANDBOX"

      # No documentation available.
      #
      APNS_VOIP = "APNS_VOIP"

      # No documentation available.
      #
      APNS_VOIP_SANDBOX = "APNS_VOIP_SANDBOX"

      # No documentation available.
      #
      ADM = "ADM"

      # No documentation available.
      #
      SMS = "SMS"

      # No documentation available.
      #
      VOICE = "VOICE"

      # No documentation available.
      #
      EMAIL = "EMAIL"

      # No documentation available.
      #
      BAIDU = "BAIDU"

      # No documentation available.
      #
      CUSTOM = "CUSTOM"

      # No documentation available.
      #
      IN_APP = "IN_APP"
    end

    # <p>Provides information about the general settings and status of all channels for an application, including channels that aren't enabled for the application.</p>
    #
    # @!attribute channels
    #   <p>A map that contains a multipart response for each channel. For each item in this object, the ChannelType is the key and the Channel is the value.</p>
    #
    #   @return [Hash<String, ChannelResponse>]
    #
    ChannelsResponse = ::Struct.new(
      :channels,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the conditions to evaluate for an activity in a journey, and how to evaluate those conditions.</p>
    #
    # @!attribute conditions
    #   <p>The conditions to evaluate for the activity.</p>
    #
    #   @return [Array<SimpleCondition>]
    #
    # @!attribute operator
    #   <p>Specifies how to handle multiple conditions for the activity. For example, if you specify two conditions for an activity, whether both or only one of the conditions must be met for the activity to be performed.</p>
    #
    #   Enum, one of: ["ALL", "ANY"]
    #
    #   @return [String]
    #
    Condition = ::Struct.new(
      :conditions,
      :operator,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the settings for a yes/no split activity in a journey. This type of activity sends participants down one of two paths in a journey, based on conditions that you specify.</p> <note><p>To create yes/no split activities that send participants down different paths based on push notification events (such as Open or Received events), your mobile app has to specify the User ID and Endpoint ID values. For more information, see <a href="https://docs.aws.amazon.com/pinpoint/latest/developerguide/integrate.html">Integrating Amazon Pinpoint with your application</a> in the <i>Amazon Pinpoint Developer Guide</i>.</p></note>
    #
    # @!attribute condition
    #   <p>The conditions that define the paths for the activity, and the relationship between the conditions.</p>
    #
    #   @return [Condition]
    #
    # @!attribute evaluation_wait_time
    #   <p>The amount of time to wait before determining whether the conditions are met, or the date and time when Amazon Pinpoint determines whether the conditions are met.</p>
    #
    #   @return [WaitTime]
    #
    # @!attribute false_activity
    #   <p>The unique identifier for the activity to perform if the conditions aren't met.</p>
    #
    #   @return [String]
    #
    # @!attribute true_activity
    #   <p>The unique identifier for the activity to perform if the conditions are met.</p>
    #
    #   @return [String]
    #
    ConditionalSplitActivity = ::Struct.new(
      :condition,
      :evaluation_wait_time,
      :false_activity,
      :true_activity,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about an API request or response.</p>
    #
    # @!attribute message
    #   <p>The message that's returned from the API.</p>
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The unique identifier for the request or response.</p>
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :message,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_activity
    #   <p>The unique identifier for the next activity to perform after the this activity.</p>
    #
    #   @return [String]
    #
    ContactCenterActivity = ::Struct.new(
      :next_activity,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute create_application_request
    #   <p>Specifies the display name of an application and the tags to associate with the application.</p>
    #
    #   @return [CreateApplicationRequest]
    #
    CreateAppInput = ::Struct.new(
      :create_application_request,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_response
    #   <p>Provides information about an application.</p>
    #
    #   @return [ApplicationResponse]
    #
    CreateAppOutput = ::Struct.new(
      :application_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the display name of an application and the tags to associate with the application.</p>
    #
    # @!attribute name
    #   <p>The display name of the application. This name is displayed as the <b>Project name</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A string-to-string map of key-value pairs that defines the tags to associate with the application. Each tag consists of a required tag key and an associated tag value.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateApplicationRequest = ::Struct.new(
      :name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    # @!attribute write_campaign_request
    #   <p>Specifies the configuration and other settings for a campaign.</p>
    #
    #   @return [WriteCampaignRequest]
    #
    CreateCampaignInput = ::Struct.new(
      :application_id,
      :write_campaign_request,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute campaign_response
    #   <p>Provides information about the status, configuration, and other settings for a campaign.</p>
    #
    #   @return [CampaignResponse]
    #
    CreateCampaignOutput = ::Struct.new(
      :campaign_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute email_template_request
    #   <p>Specifies the content and settings for a message template that can be used in messages that are sent through the email channel.</p>
    #
    #   @return [EmailTemplateRequest]
    #
    # @!attribute template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    #
    #   @return [String]
    #
    CreateEmailTemplateInput = ::Struct.new(
      :email_template_request,
      :template_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute create_template_message_body
    #   <p>Provides information about a request to create a message template.</p>
    #
    #   @return [CreateTemplateMessageBody]
    #
    CreateEmailTemplateOutput = ::Struct.new(
      :create_template_message_body,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    # @!attribute export_job_request
    #   <p>Specifies the settings for a job that exports endpoint definitions to an Amazon Simple Storage Service (Amazon S3) bucket.</p>
    #
    #   @return [ExportJobRequest]
    #
    CreateExportJobInput = ::Struct.new(
      :application_id,
      :export_job_request,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute export_job_response
    #   <p>Provides information about the status and settings of a job that exports endpoint definitions to a file. The file can be added directly to an Amazon Simple Storage Service (Amazon S3) bucket by using the Amazon Pinpoint API or downloaded directly to a computer by using the Amazon Pinpoint console.</p>
    #
    #   @return [ExportJobResponse]
    #
    CreateExportJobOutput = ::Struct.new(
      :export_job_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    # @!attribute import_job_request
    #   <p>Specifies the settings for a job that imports endpoint definitions from an Amazon Simple Storage Service (Amazon S3) bucket.</p>
    #
    #   @return [ImportJobRequest]
    #
    CreateImportJobInput = ::Struct.new(
      :application_id,
      :import_job_request,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute import_job_response
    #   <p>Provides information about the status and settings of a job that imports endpoint definitions from one or more files. The files can be stored in an Amazon Simple Storage Service (Amazon S3) bucket or uploaded directly from a computer by using the Amazon Pinpoint console.</p>
    #
    #   @return [ImportJobResponse]
    #
    CreateImportJobOutput = ::Struct.new(
      :import_job_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute in_app_template_request
    #   <p>InApp Template Request.</p>
    #
    #   @return [InAppTemplateRequest]
    #
    # @!attribute template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    #
    #   @return [String]
    #
    CreateInAppTemplateInput = ::Struct.new(
      :in_app_template_request,
      :template_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute template_create_message_body
    #   <p>Provides information about a request to create a message template.</p>
    #
    #   @return [TemplateCreateMessageBody]
    #
    CreateInAppTemplateOutput = ::Struct.new(
      :template_create_message_body,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    # @!attribute write_journey_request
    #   <p>Specifies the configuration and other settings for a journey.</p>
    #
    #   @return [WriteJourneyRequest]
    #
    CreateJourneyInput = ::Struct.new(
      :application_id,
      :write_journey_request,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute journey_response
    #   <p>Provides information about the status, configuration, and other settings for a journey.</p>
    #
    #   @return [JourneyResponse]
    #
    CreateJourneyOutput = ::Struct.new(
      :journey_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute push_notification_template_request
    #   <p>Specifies the content and settings for a message template that can be used in messages that are sent through a push notification channel.</p>
    #
    #   @return [PushNotificationTemplateRequest]
    #
    # @!attribute template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    #
    #   @return [String]
    #
    CreatePushTemplateInput = ::Struct.new(
      :push_notification_template_request,
      :template_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute create_template_message_body
    #   <p>Provides information about a request to create a message template.</p>
    #
    #   @return [CreateTemplateMessageBody]
    #
    CreatePushTemplateOutput = ::Struct.new(
      :create_template_message_body,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute create_recommender_configuration
    #   <p>Specifies Amazon Pinpoint configuration settings for retrieving and processing recommendation data from a recommender model.</p>
    #
    #   @return [CreateRecommenderConfigurationShape]
    #
    CreateRecommenderConfigurationInput = ::Struct.new(
      :create_recommender_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute recommender_configuration_response
    #   <p>Provides information about Amazon Pinpoint configuration settings for retrieving and processing data from a recommender model.</p>
    #
    #   @return [RecommenderConfigurationResponse]
    #
    CreateRecommenderConfigurationOutput = ::Struct.new(
      :recommender_configuration_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies Amazon Pinpoint configuration settings for retrieving and processing recommendation data from a recommender model.</p>
    #
    # @!attribute attributes
    #   <p>A map of key-value pairs that defines 1-10 custom endpoint or user attributes, depending on the value for the RecommendationProviderIdType property. Each of these attributes temporarily stores a recommended item that's retrieved from the recommender model and sent to an AWS Lambda function for additional processing. Each attribute can be used as a message variable in a message template.</p> <p>In the map, the key is the name of a custom attribute and the value is a custom display name for that attribute. The display name appears in the <b>Attribute finder</b> of the template editor on the Amazon Pinpoint console. The following restrictions apply to these names:</p> <ul><li><p>An attribute name must start with a letter or number and it can contain up to 50 characters. The characters can be letters, numbers, underscores (_), or hyphens (-). Attribute names are case sensitive and must be unique.</p></li> <li><p>An attribute display name must start with a letter or number and it can contain up to 25 characters. The characters can be letters, numbers, spaces, underscores (_), or hyphens (-).</p></li></ul> <p>This object is required if the configuration invokes an AWS Lambda function (RecommendationTransformerUri) to process recommendation data. Otherwise, don't include this object in your request.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute description
    #   <p>A custom description of the configuration for the recommender model. The description can contain up to 128 characters. The characters can be letters, numbers, spaces, or the following symbols: _ ; () , ‐.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A custom name of the configuration for the recommender model. The name must start with a letter or number and it can contain up to 128 characters. The characters can be letters, numbers, spaces, underscores (_), or hyphens (-).</p>
    #
    #   @return [String]
    #
    # @!attribute recommendation_provider_id_type
    #   <p>The type of Amazon Pinpoint ID to associate with unique user IDs in the recommender model. This value enables the model to use attribute and event data that’s specific to a particular endpoint or user in an Amazon Pinpoint application. Valid values are:</p> <ul><li><p>PINPOINT_ENDPOINT_ID - Associate each user in the model with a particular endpoint in Amazon Pinpoint. The data is correlated based on endpoint IDs in Amazon Pinpoint. This is the default value.</p></li> <li><p>PINPOINT_USER_ID - Associate each user in the model with a particular user and endpoint in Amazon Pinpoint. The data is correlated based on user IDs in Amazon Pinpoint. If you specify this value, an endpoint definition in Amazon Pinpoint has to specify both a user ID (UserId) and an endpoint ID. Otherwise, messages won’t be sent to the user's endpoint.</p></li></ul>
    #
    #   @return [String]
    #
    # @!attribute recommendation_provider_role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that authorizes Amazon Pinpoint to retrieve recommendation data from the recommender model.</p>
    #
    #   @return [String]
    #
    # @!attribute recommendation_provider_uri
    #   <p>The Amazon Resource Name (ARN) of the recommender model to retrieve recommendation data from. This value must match the ARN of an Amazon Personalize campaign.</p>
    #
    #   @return [String]
    #
    # @!attribute recommendation_transformer_uri
    #   <p>The name or Amazon Resource Name (ARN) of the AWS Lambda function to invoke for additional processing of recommendation data that's retrieved from the recommender model.</p>
    #
    #   @return [String]
    #
    # @!attribute recommendations_display_name
    #   <p>A custom display name for the standard endpoint or user attribute (RecommendationItems) that temporarily stores recommended items for each endpoint or user, depending on the value for the RecommendationProviderIdType property. This value is required if the configuration doesn't invoke an AWS Lambda function (RecommendationTransformerUri) to perform additional processing of recommendation data.</p> <p>This name appears in the <b>Attribute finder</b> of the template editor on the Amazon Pinpoint console. The name can contain up to 25 characters. The characters can be letters, numbers, spaces, underscores (_), or hyphens (-). These restrictions don't apply to attribute values.</p>
    #
    #   @return [String]
    #
    # @!attribute recommendations_per_message
    #   <p>The number of recommended items to retrieve from the model for each endpoint or user, depending on the value for the RecommendationProviderIdType property. This number determines how many recommended items are available for use in message variables. The minimum value is 1. The maximum value is 5. The default value is 5.</p> <p>To use multiple recommended items and custom attributes with message variables, you have to use an AWS Lambda function (RecommendationTransformerUri) to perform additional processing of recommendation data.</p>
    #
    #   @return [Integer]
    #
    CreateRecommenderConfigurationShape = ::Struct.new(
      :attributes,
      :description,
      :name,
      :recommendation_provider_id_type,
      :recommendation_provider_role_arn,
      :recommendation_provider_uri,
      :recommendation_transformer_uri,
      :recommendations_display_name,
      :recommendations_per_message,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.recommendations_per_message ||= 0
      end

    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    # @!attribute write_segment_request
    #   <p>Specifies the configuration, dimension, and other settings for a segment. A WriteSegmentRequest object can include a Dimensions object or a SegmentGroups object, but not both.</p>
    #
    #   @return [WriteSegmentRequest]
    #
    CreateSegmentInput = ::Struct.new(
      :application_id,
      :write_segment_request,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute segment_response
    #   <p>Provides information about the configuration, dimension, and other settings for a segment.</p>
    #
    #   @return [SegmentResponse]
    #
    CreateSegmentOutput = ::Struct.new(
      :segment_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute sms_template_request
    #   <p>Specifies the content and settings for a message template that can be used in text messages that are sent through the SMS channel.</p>
    #
    #   @return [SMSTemplateRequest]
    #
    # @!attribute template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    #
    #   @return [String]
    #
    CreateSmsTemplateInput = ::Struct.new(
      :sms_template_request,
      :template_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute create_template_message_body
    #   <p>Provides information about a request to create a message template.</p>
    #
    #   @return [CreateTemplateMessageBody]
    #
    CreateSmsTemplateOutput = ::Struct.new(
      :create_template_message_body,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about a request to create a message template.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the message template that was created.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The message that's returned from the API for the request to create the message template.</p>
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The unique identifier for the request to create the message template.</p>
    #
    #   @return [String]
    #
    CreateTemplateMessageBody = ::Struct.new(
      :arn,
      :message,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    #
    #   @return [String]
    #
    # @!attribute voice_template_request
    #   <p>Specifies the content and settings for a message template that can be used in messages that are sent through the voice channel.</p>
    #
    #   @return [VoiceTemplateRequest]
    #
    CreateVoiceTemplateInput = ::Struct.new(
      :template_name,
      :voice_template_request,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute create_template_message_body
    #   <p>Provides information about a request to create a message template.</p>
    #
    #   @return [CreateTemplateMessageBody]
    #
    CreateVoiceTemplateOutput = ::Struct.new(
      :create_template_message_body,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the delivery configuration settings for sending a campaign or campaign treatment through a custom channel. This object is required if you use the CampaignCustomMessage object to define the message to send for the campaign or campaign treatment.</p>
    #
    # @!attribute delivery_uri
    #   <p>The destination to send the campaign or treatment to. This value can be one of the following:</p> <ul><li><p>The name or Amazon Resource Name (ARN) of an AWS Lambda function to invoke to handle delivery of the campaign or treatment.</p></li> <li><p>The URL for a web application or service that supports HTTPS and can receive the message. The URL has to be a full URL, including the HTTPS protocol.</p></li></ul>
    #
    #   @return [String]
    #
    # @!attribute endpoint_types
    #   <p>The types of endpoints to send the campaign or treatment to. Each valid value maps to a type of channel that you can associate with an endpoint by using the ChannelType property of an endpoint.</p>
    #
    #   @return [Array<String>]
    #
    CustomDeliveryConfiguration = ::Struct.new(
      :delivery_uri,
      :endpoint_types,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The settings for a custom message activity. This type of activity calls an AWS Lambda function or web hook that sends messages to participants.</p>
    #
    # @!attribute delivery_uri
    #   <p>The destination to send the campaign or treatment to. This value can be one of the following:</p> <ul><li><p>The name or Amazon Resource Name (ARN) of an AWS Lambda function to invoke to handle delivery of the campaign or treatment.</p></li> <li><p>The URL for a web application or service that supports HTTPS and can receive the message. The URL has to be a full URL, including the HTTPS protocol.</p></li></ul>
    #
    #   @return [String]
    #
    # @!attribute endpoint_types
    #   <p>The types of endpoints to send the custom message to. Each valid value maps to a type of channel that you can associate with an endpoint by using the ChannelType property of an endpoint.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute message_config
    #   <p>Specifies the message data included in a custom channel message that's sent to participants in a journey.</p>
    #
    #   @return [JourneyCustomMessage]
    #
    # @!attribute next_activity
    #   <p>The unique identifier for the next activity to perform, after Amazon Pinpoint calls the AWS Lambda function or web hook.</p>
    #
    #   @return [String]
    #
    # @!attribute template_name
    #   <p>The name of the custom message template to use for the message. If specified, this value must match the name of an existing message template.</p>
    #
    #   @return [String]
    #
    # @!attribute template_version
    #   <p>The unique identifier for the version of the message template to use for the message. If specified, this value must match the identifier for an existing template version. To retrieve a list of versions and version identifiers for a template, use the <link  linkend="templates-template-name-template-type-versions">Template Versions</link> resource.</p> <p>If you don't specify a value for this property, Amazon Pinpoint uses the <i>active version</i> of the template. The <i>active version</i> is typically the version of a template that's been most recently reviewed and approved for use, depending on your workflow. It isn't necessarily the latest version of a template.</p>
    #
    #   @return [String]
    #
    CustomMessageActivity = ::Struct.new(
      :delivery_uri,
      :endpoint_types,
      :message_config,
      :next_activity,
      :template_name,
      :template_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Default button configuration.</p>
    #
    # @!attribute background_color
    #   <p>The background color of the button.</p>
    #
    #   @return [String]
    #
    # @!attribute border_radius
    #   <p>The border radius of the button.</p>
    #
    #   @return [Integer]
    #
    # @!attribute button_action
    #   <p>Action triggered by the button.</p>
    #
    #   Enum, one of: ["LINK", "DEEP_LINK", "CLOSE"]
    #
    #   @return [String]
    #
    # @!attribute link
    #   <p>Button destination.</p>
    #
    #   @return [String]
    #
    # @!attribute text
    #   <p>Button text.</p>
    #
    #   @return [String]
    #
    # @!attribute text_color
    #   <p>The text color of the button.</p>
    #
    #   @return [String]
    #
    DefaultButtonConfiguration = ::Struct.new(
      :background_color,
      :border_radius,
      :button_action,
      :link,
      :text,
      :text_color,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.border_radius ||= 0
      end

    end

    # <p>Specifies the default message for all channels.</p>
    #
    # @!attribute body
    #   <p>The default body of the message.</p>
    #
    #   @return [String]
    #
    # @!attribute substitutions
    #   <p>The default message variables to use in the message. You can override these default variables with individual address variables.</p>
    #
    #   @return [Hash<String, Array<String>>]
    #
    DefaultMessage = ::Struct.new(
      :body,
      :substitutions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the default settings and content for a push notification that's sent directly to an endpoint.</p>
    #
    # @!attribute action
    #   <p>The default action to occur if a recipient taps the push notification. Valid values are:</p> <ul><li><p>OPEN_APP - Your app opens or it becomes the foreground app if it was sent to the background. This is the default action.</p></li> <li><p>DEEP_LINK - Your app opens and displays a designated user interface in the app. This setting uses the deep-linking features of the iOS and Android platforms.</p></li> <li><p>URL - The default mobile browser on the recipient's device opens and loads the web page at a URL that you specify.</p></li></ul>
    #
    #   Enum, one of: ["OPEN_APP", "DEEP_LINK", "URL"]
    #
    #   @return [String]
    #
    # @!attribute body
    #   <p>The default body of the notification message.</p>
    #
    #   @return [String]
    #
    # @!attribute data
    #   <p>The JSON data payload to use for the default push notification, if the notification is a silent push notification. This payload is added to the data.pinpoint.jsonBody object of the notification.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute silent_push
    #   <p>Specifies whether the default notification is a silent push notification, which is a push notification that doesn't display on a recipient's device. Silent push notifications can be used for cases such as updating an app's configuration or delivering messages to an in-app notification center.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute substitutions
    #   <p>The default message variables to use in the notification message. You can override the default variables with individual address variables.</p>
    #
    #   @return [Hash<String, Array<String>>]
    #
    # @!attribute title
    #   <p>The default title to display above the notification message on a recipient's device.</p>
    #
    #   @return [String]
    #
    # @!attribute url
    #   <p>The default URL to open in a recipient's default mobile browser, if a recipient taps the push notification and the value of the Action property is URL.</p>
    #
    #   @return [String]
    #
    DefaultPushNotificationMessage = ::Struct.new(
      :action,
      :body,
      :data,
      :silent_push,
      :substitutions,
      :title,
      :url,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.silent_push ||= false
      end

    end

    # <p>Specifies the default settings and content for a message template that can be used in messages that are sent through a push notification channel.</p>
    #
    # @!attribute action
    #   <p>The action to occur if a recipient taps a push notification that's based on the message template. Valid values are:</p> <ul><li><p>OPEN_APP - Your app opens or it becomes the foreground app if it was sent to the background. This is the default action.</p></li> <li><p>DEEP_LINK - Your app opens and displays a designated user interface in the app. This setting uses the deep-linking features of the iOS and Android platforms.</p></li> <li><p>URL - The default mobile browser on the recipient's device opens and loads the web page at a URL that you specify.</p></li></ul>
    #
    #   Enum, one of: ["OPEN_APP", "DEEP_LINK", "URL"]
    #
    #   @return [String]
    #
    # @!attribute body
    #   <p>The message body to use in push notifications that are based on the message template.</p>
    #
    #   @return [String]
    #
    # @!attribute sound
    #   <p>The sound to play when a recipient receives a push notification that's based on the message template. You can use the default stream or specify the file name of a sound resource that's bundled in your app. On an Android platform, the sound file must reside in /res/raw/.</p> <p>For an iOS platform, this value is the key for the name of a sound file in your app's main bundle or the Library/Sounds folder in your app's data container. If the sound file can't be found or you specify default for the value, the system plays the default alert sound.</p>
    #
    #   @return [String]
    #
    # @!attribute title
    #   <p>The title to use in push notifications that are based on the message template. This title appears above the notification message on a recipient's device.</p>
    #
    #   @return [String]
    #
    # @!attribute url
    #   <p>The URL to open in a recipient's default mobile browser, if a recipient taps a push notification that's based on the message template and the value of the Action property is URL.</p>
    #
    #   @return [String]
    #
    DefaultPushNotificationTemplate = ::Struct.new(
      :action,
      :body,
      :sound,
      :title,
      :url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    DeleteAdmChannelInput = ::Struct.new(
      :application_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute adm_channel_response
    #   <p>Provides information about the status and settings of the ADM (Amazon Device Messaging) channel for an application.</p>
    #
    #   @return [ADMChannelResponse]
    #
    DeleteAdmChannelOutput = ::Struct.new(
      :adm_channel_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    DeleteApnsChannelInput = ::Struct.new(
      :application_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute apns_channel_response
    #   <p>Provides information about the status and settings of the APNs (Apple Push Notification service) channel for an application.</p>
    #
    #   @return [APNSChannelResponse]
    #
    DeleteApnsChannelOutput = ::Struct.new(
      :apns_channel_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    DeleteApnsSandboxChannelInput = ::Struct.new(
      :application_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute apns_sandbox_channel_response
    #   <p>Provides information about the status and settings of the APNs (Apple Push Notification service) sandbox channel for an application.</p>
    #
    #   @return [APNSSandboxChannelResponse]
    #
    DeleteApnsSandboxChannelOutput = ::Struct.new(
      :apns_sandbox_channel_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    DeleteApnsVoipChannelInput = ::Struct.new(
      :application_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute apns_voip_channel_response
    #   <p>Provides information about the status and settings of the APNs (Apple Push Notification service) VoIP channel for an application.</p>
    #
    #   @return [APNSVoipChannelResponse]
    #
    DeleteApnsVoipChannelOutput = ::Struct.new(
      :apns_voip_channel_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    DeleteApnsVoipSandboxChannelInput = ::Struct.new(
      :application_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute apns_voip_sandbox_channel_response
    #   <p>Provides information about the status and settings of the APNs (Apple Push Notification service) VoIP sandbox channel for an application.</p>
    #
    #   @return [APNSVoipSandboxChannelResponse]
    #
    DeleteApnsVoipSandboxChannelOutput = ::Struct.new(
      :apns_voip_sandbox_channel_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    DeleteAppInput = ::Struct.new(
      :application_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_response
    #   <p>Provides information about an application.</p>
    #
    #   @return [ApplicationResponse]
    #
    DeleteAppOutput = ::Struct.new(
      :application_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    DeleteBaiduChannelInput = ::Struct.new(
      :application_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute baidu_channel_response
    #   <p>Provides information about the status and settings of the Baidu (Baidu Cloud Push) channel for an application.</p>
    #
    #   @return [BaiduChannelResponse]
    #
    DeleteBaiduChannelOutput = ::Struct.new(
      :baidu_channel_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    # @!attribute campaign_id
    #   <p>The unique identifier for the campaign.</p>
    #
    #   @return [String]
    #
    DeleteCampaignInput = ::Struct.new(
      :application_id,
      :campaign_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute campaign_response
    #   <p>Provides information about the status, configuration, and other settings for a campaign.</p>
    #
    #   @return [CampaignResponse]
    #
    DeleteCampaignOutput = ::Struct.new(
      :campaign_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    DeleteEmailChannelInput = ::Struct.new(
      :application_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute email_channel_response
    #   <p>Provides information about the status and settings of the email channel for an application.</p>
    #
    #   @return [EmailChannelResponse]
    #
    DeleteEmailChannelOutput = ::Struct.new(
      :email_channel_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend="templates-template-name-template-type-versions">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>
    #
    #   @return [String]
    #
    DeleteEmailTemplateInput = ::Struct.new(
      :template_name,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute message_body
    #   <p>Provides information about an API request or response.</p>
    #
    #   @return [MessageBody]
    #
    DeleteEmailTemplateOutput = ::Struct.new(
      :message_body,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_id
    #   <p>The unique identifier for the endpoint.</p>
    #
    #   @return [String]
    #
    DeleteEndpointInput = ::Struct.new(
      :application_id,
      :endpoint_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute endpoint_response
    #   <p>Provides information about the channel type and other settings for an endpoint.</p>
    #
    #   @return [EndpointResponse]
    #
    DeleteEndpointOutput = ::Struct.new(
      :endpoint_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    DeleteEventStreamInput = ::Struct.new(
      :application_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_stream
    #   <p>Specifies settings for publishing event data to an Amazon Kinesis data stream or an Amazon Kinesis Data Firehose delivery stream.</p>
    #
    #   @return [EventStream]
    #
    DeleteEventStreamOutput = ::Struct.new(
      :event_stream,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    DeleteGcmChannelInput = ::Struct.new(
      :application_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute gcm_channel_response
    #   <p>Provides information about the status and settings of the GCM channel for an application. The GCM channel enables Amazon Pinpoint to send push notifications through the Firebase Cloud Messaging (FCM), formerly Google Cloud Messaging (GCM), service.</p>
    #
    #   @return [GCMChannelResponse]
    #
    DeleteGcmChannelOutput = ::Struct.new(
      :gcm_channel_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend="templates-template-name-template-type-versions">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>
    #
    #   @return [String]
    #
    DeleteInAppTemplateInput = ::Struct.new(
      :template_name,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute message_body
    #   <p>Provides information about an API request or response.</p>
    #
    #   @return [MessageBody]
    #
    DeleteInAppTemplateOutput = ::Struct.new(
      :message_body,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    # @!attribute journey_id
    #   <p>The unique identifier for the journey.</p>
    #
    #   @return [String]
    #
    DeleteJourneyInput = ::Struct.new(
      :application_id,
      :journey_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute journey_response
    #   <p>Provides information about the status, configuration, and other settings for a journey.</p>
    #
    #   @return [JourneyResponse]
    #
    DeleteJourneyOutput = ::Struct.new(
      :journey_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend="templates-template-name-template-type-versions">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>
    #
    #   @return [String]
    #
    DeletePushTemplateInput = ::Struct.new(
      :template_name,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute message_body
    #   <p>Provides information about an API request or response.</p>
    #
    #   @return [MessageBody]
    #
    DeletePushTemplateOutput = ::Struct.new(
      :message_body,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute recommender_id
    #   <p>The unique identifier for the recommender model configuration. This identifier is displayed as the <b>Recommender ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    DeleteRecommenderConfigurationInput = ::Struct.new(
      :recommender_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute recommender_configuration_response
    #   <p>Provides information about Amazon Pinpoint configuration settings for retrieving and processing data from a recommender model.</p>
    #
    #   @return [RecommenderConfigurationResponse]
    #
    DeleteRecommenderConfigurationOutput = ::Struct.new(
      :recommender_configuration_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    # @!attribute segment_id
    #   <p>The unique identifier for the segment.</p>
    #
    #   @return [String]
    #
    DeleteSegmentInput = ::Struct.new(
      :application_id,
      :segment_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute segment_response
    #   <p>Provides information about the configuration, dimension, and other settings for a segment.</p>
    #
    #   @return [SegmentResponse]
    #
    DeleteSegmentOutput = ::Struct.new(
      :segment_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    DeleteSmsChannelInput = ::Struct.new(
      :application_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute sms_channel_response
    #   <p>Provides information about the status and settings of the SMS channel for an application.</p>
    #
    #   @return [SMSChannelResponse]
    #
    DeleteSmsChannelOutput = ::Struct.new(
      :sms_channel_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend="templates-template-name-template-type-versions">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>
    #
    #   @return [String]
    #
    DeleteSmsTemplateInput = ::Struct.new(
      :template_name,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute message_body
    #   <p>Provides information about an API request or response.</p>
    #
    #   @return [MessageBody]
    #
    DeleteSmsTemplateOutput = ::Struct.new(
      :message_body,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    # @!attribute user_id
    #   <p>The unique identifier for the user.</p>
    #
    #   @return [String]
    #
    DeleteUserEndpointsInput = ::Struct.new(
      :application_id,
      :user_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute endpoints_response
    #   <p>Provides information about all the endpoints that are associated with a user ID.</p>
    #
    #   @return [EndpointsResponse]
    #
    DeleteUserEndpointsOutput = ::Struct.new(
      :endpoints_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    DeleteVoiceChannelInput = ::Struct.new(
      :application_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute voice_channel_response
    #   <p>Provides information about the status and settings of the voice channel for an application.</p>
    #
    #   @return [VoiceChannelResponse]
    #
    DeleteVoiceChannelOutput = ::Struct.new(
      :voice_channel_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend="templates-template-name-template-type-versions">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>
    #
    #   @return [String]
    #
    DeleteVoiceTemplateInput = ::Struct.new(
      :template_name,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute message_body
    #   <p>Provides information about an API request or response.</p>
    #
    #   @return [MessageBody]
    #
    DeleteVoiceTemplateOutput = ::Struct.new(
      :message_body,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DeliveryStatus
    #
    module DeliveryStatus
      # No documentation available.
      #
      SUCCESSFUL = "SUCCESSFUL"

      # No documentation available.
      #
      THROTTLED = "THROTTLED"

      # No documentation available.
      #
      TEMPORARY_FAILURE = "TEMPORARY_FAILURE"

      # No documentation available.
      #
      PERMANENT_FAILURE = "PERMANENT_FAILURE"

      # No documentation available.
      #
      UNKNOWN_FAILURE = "UNKNOWN_FAILURE"

      # No documentation available.
      #
      OPT_OUT = "OPT_OUT"

      # No documentation available.
      #
      DUPLICATE = "DUPLICATE"
    end

    # Includes enum constants for DimensionType
    #
    module DimensionType
      # No documentation available.
      #
      INCLUSIVE = "INCLUSIVE"

      # No documentation available.
      #
      EXCLUSIVE = "EXCLUSIVE"
    end

    # <p>Specifies the settings and content for the default message and any default messages that you tailored for specific channels.</p>
    #
    # @!attribute adm_message
    #   <p>The default push notification message for the ADM (Amazon Device Messaging) channel. This message overrides the default push notification message (DefaultPushNotificationMessage).</p>
    #
    #   @return [ADMMessage]
    #
    # @!attribute apns_message
    #   <p>The default push notification message for the APNs (Apple Push Notification service) channel. This message overrides the default push notification message (DefaultPushNotificationMessage).</p>
    #
    #   @return [APNSMessage]
    #
    # @!attribute baidu_message
    #   <p>The default push notification message for the Baidu (Baidu Cloud Push) channel. This message overrides the default push notification message (DefaultPushNotificationMessage).</p>
    #
    #   @return [BaiduMessage]
    #
    # @!attribute default_message
    #   <p>The default message for all channels.</p>
    #
    #   @return [DefaultMessage]
    #
    # @!attribute default_push_notification_message
    #   <p>The default push notification message for all push notification channels.</p>
    #
    #   @return [DefaultPushNotificationMessage]
    #
    # @!attribute email_message
    #   <p>The default message for the email channel. This message overrides the default message (DefaultMessage).</p>
    #
    #   @return [EmailMessage]
    #
    # @!attribute gcm_message
    #   <p>The default push notification message for the GCM channel, which is used to send notifications through the Firebase Cloud Messaging (FCM), formerly Google Cloud Messaging (GCM), service. This message overrides the default push notification message (DefaultPushNotificationMessage).</p>
    #
    #   @return [GCMMessage]
    #
    # @!attribute sms_message
    #   <p>The default message for the SMS channel. This message overrides the default message (DefaultMessage).</p>
    #
    #   @return [SMSMessage]
    #
    # @!attribute voice_message
    #   <p>The default message for the voice channel. This message overrides the default message (DefaultMessage).</p>
    #
    #   @return [VoiceMessage]
    #
    DirectMessageConfiguration = ::Struct.new(
      :adm_message,
      :apns_message,
      :baidu_message,
      :default_message,
      :default_push_notification_message,
      :email_message,
      :gcm_message,
      :sms_message,
      :voice_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Duration
    #
    module Duration
      # No documentation available.
      #
      HR_24 = "HR_24"

      # No documentation available.
      #
      DAY_7 = "DAY_7"

      # No documentation available.
      #
      DAY_14 = "DAY_14"

      # No documentation available.
      #
      DAY_30 = "DAY_30"
    end

    # <p>Specifies the status and settings of the email channel for an application.</p>
    #
    # @!attribute configuration_set
    #   <p>The <a href="https://docs.aws.amazon.com/ses/latest/APIReference/API_ConfigurationSet.html">Amazon SES configuration set</a> that you want to apply to messages that you send through the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p>Specifies whether to enable the email channel for the application.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute from_address
    #   <p>The verified email address that you want to send email from when you send email through the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute identity
    #   <p>The Amazon Resource Name (ARN) of the identity, verified with Amazon Simple Email Service (Amazon SES), that you want to use when you send email through the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The ARN of the AWS Identity and Access Management (IAM) role that you want Amazon Pinpoint to use when it submits email-related event data for the channel.</p>
    #
    #   @return [String]
    #
    EmailChannelRequest = ::Struct.new(
      :configuration_set,
      :enabled,
      :from_address,
      :identity,
      :role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.enabled ||= false
      end

    end

    # <p>Provides information about the status and settings of the email channel for an application.</p>
    #
    # @!attribute application_id
    #   <p>The unique identifier for the application that the email channel applies to.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_set
    #   <p>The <a href="https://docs.aws.amazon.com/ses/latest/APIReference/API_ConfigurationSet.html">Amazon SES configuration set</a> that's applied to messages that are sent through the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date and time, in ISO 8601 format, when the email channel was enabled.</p>
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p>Specifies whether the email channel is enabled for the application.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute from_address
    #   <p>The verified email address that email is sent from when you send email through the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute has_credential
    #   <p>(Not used) This property is retained only for backward compatibility.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute id
    #   <p>(Deprecated) An identifier for the email channel. This property is retained only for backward compatibility.</p>
    #
    #   @return [String]
    #
    # @!attribute identity
    #   <p>The Amazon Resource Name (ARN) of the identity, verified with Amazon Simple Email Service (Amazon SES), that's used when you send email through the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute is_archived
    #   <p>Specifies whether the email channel is archived.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute last_modified_by
    #   <p>The user who last modified the email channel.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_date
    #   <p>The date and time, in ISO 8601 format, when the email channel was last modified.</p>
    #
    #   @return [String]
    #
    # @!attribute messages_per_second
    #   <p>The maximum number of emails that can be sent through the channel each second.</p>
    #
    #   @return [Integer]
    #
    # @!attribute platform
    #   <p>The type of messaging or notification platform for the channel. For the email channel, this value is EMAIL.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The ARN of the AWS Identity and Access Management (IAM) role that Amazon Pinpoint uses to submit email-related event data for the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The current version of the email channel.</p>
    #
    #   @return [Integer]
    #
    EmailChannelResponse = ::Struct.new(
      :application_id,
      :configuration_set,
      :creation_date,
      :enabled,
      :from_address,
      :has_credential,
      :id,
      :identity,
      :is_archived,
      :last_modified_by,
      :last_modified_date,
      :messages_per_second,
      :platform,
      :role_arn,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.enabled ||= false
        self.has_credential ||= false
        self.is_archived ||= false
        self.messages_per_second ||= 0
        self.version ||= 0
      end

    end

    # <p>Specifies the default settings and content for a one-time email message that's sent directly to an endpoint.</p>
    #
    # @!attribute body
    #   <p>The body of the email message.</p>
    #
    #   @return [String]
    #
    # @!attribute feedback_forwarding_address
    #   <p>The email address to forward bounces and complaints to, if feedback forwarding is enabled.</p>
    #
    #   @return [String]
    #
    # @!attribute from_address
    #   <p>The verified email address to send the email message from. The default value is the FromAddress specified for the email channel.</p>
    #
    #   @return [String]
    #
    # @!attribute raw_email
    #   <p>The email message, represented as a raw MIME message.</p>
    #
    #   @return [RawEmail]
    #
    # @!attribute reply_to_addresses
    #   <p>The reply-to email address(es) for the email message. If a recipient replies to the email, each reply-to address receives the reply.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute simple_email
    #   <p>The email message, composed of a subject, a text part, and an HTML part.</p>
    #
    #   @return [SimpleEmail]
    #
    # @!attribute substitutions
    #   <p>The default message variables to use in the email message. You can override the default variables with individual address variables.</p>
    #
    #   @return [Hash<String, Array<String>>]
    #
    EmailMessage = ::Struct.new(
      :body,
      :feedback_forwarding_address,
      :from_address,
      :raw_email,
      :reply_to_addresses,
      :simple_email,
      :substitutions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the settings for an email activity in a journey. This type of activity sends an email message to participants.</p>
    #
    # @!attribute message_config
    #   <p>Specifies the sender address for an email message that's sent to participants in the journey.</p>
    #
    #   @return [JourneyEmailMessage]
    #
    # @!attribute next_activity
    #   <p>The unique identifier for the next activity to perform, after the message is sent.</p>
    #
    #   @return [String]
    #
    # @!attribute template_name
    #   <p>The name of the email message template to use for the message. If specified, this value must match the name of an existing message template.</p>
    #
    #   @return [String]
    #
    # @!attribute template_version
    #   <p>The unique identifier for the version of the email template to use for the message. If specified, this value must match the identifier for an existing template version. To retrieve a list of versions and version identifiers for a template, use the <link  linkend="templates-template-name-template-type-versions">Template Versions</link> resource.</p> <p>If you don't specify a value for this property, Amazon Pinpoint uses the <i>active version</i> of the template. The <i>active version</i> is typically the version of a template that's been most recently reviewed and approved for use, depending on your workflow. It isn't necessarily the latest version of a template.</p>
    #
    #   @return [String]
    #
    EmailMessageActivity = ::Struct.new(
      :message_config,
      :next_activity,
      :template_name,
      :template_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the content and settings for a message template that can be used in messages that are sent through the email channel.</p>
    #
    # @!attribute default_substitutions
    #   <p>A JSON object that specifies the default values to use for message variables in the message template. This object is a set of key-value pairs. Each key defines a message variable in the template. The corresponding value defines the default value for that variable. When you create a message that's based on the template, you can override these defaults with message-specific and address-specific variables and values.</p>
    #
    #   @return [String]
    #
    # @!attribute html_part
    #   <p>The message body, in HTML format, to use in email messages that are based on the message template. We recommend using HTML format for email clients that render HTML content. You can include links, formatted text, and more in an HTML message.</p>
    #
    #   @return [String]
    #
    # @!attribute recommender_id
    #   <p>The unique identifier for the recommender model to use for the message template. Amazon Pinpoint uses this value to determine how to retrieve and process data from a recommender model when it sends messages that use the template, if the template contains message variables for recommendation data.</p>
    #
    #   @return [String]
    #
    # @!attribute subject
    #   <p>The subject line, or title, to use in email messages that are based on the message template.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A string-to-string map of key-value pairs that defines the tags to associate with the message template. Each tag consists of a required tag key and an associated tag value.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute template_description
    #   <p>A custom description of the message template.</p>
    #
    #   @return [String]
    #
    # @!attribute text_part
    #   <p>The message body, in plain text format, to use in email messages that are based on the message template. We recommend using plain text format for email clients that don't render HTML content and clients that are connected to high-latency networks, such as mobile devices.</p>
    #
    #   @return [String]
    #
    EmailTemplateRequest = ::Struct.new(
      :default_substitutions,
      :html_part,
      :recommender_id,
      :subject,
      :tags,
      :template_description,
      :text_part,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about the content and settings for a message template that can be used in messages that are sent through the email channel.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the message template.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date, in ISO 8601 format, when the message template was created.</p>
    #
    #   @return [String]
    #
    # @!attribute default_substitutions
    #   <p>The JSON object that specifies the default values that are used for message variables in the message template. This object is a set of key-value pairs. Each key defines a message variable in the template. The corresponding value defines the default value for that variable.</p>
    #
    #   @return [String]
    #
    # @!attribute html_part
    #   <p>The message body, in HTML format, that's used in email messages that are based on the message template.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_date
    #   <p>The date, in ISO 8601 format, when the message template was last modified.</p>
    #
    #   @return [String]
    #
    # @!attribute recommender_id
    #   <p>The unique identifier for the recommender model that's used by the message template.</p>
    #
    #   @return [String]
    #
    # @!attribute subject
    #   <p>The subject line, or title, that's used in email messages that are based on the message template.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A string-to-string map of key-value pairs that identifies the tags that are associated with the message template. Each tag consists of a required tag key and an associated tag value.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute template_description
    #   <p>The custom description of the message template.</p>
    #
    #   @return [String]
    #
    # @!attribute template_name
    #   <p>The name of the message template.</p>
    #
    #   @return [String]
    #
    # @!attribute template_type
    #   <p>The type of channel that the message template is designed for. For an email template, this value is EMAIL.</p>
    #
    #   Enum, one of: ["EMAIL", "SMS", "VOICE", "PUSH", "INAPP"]
    #
    #   @return [String]
    #
    # @!attribute text_part
    #   <p>The message body, in plain text format, that's used in email messages that are based on the message template.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The unique identifier, as an integer, for the active version of the message template, or the version of the template that you specified by using the version parameter in your request.</p>
    #
    #   @return [String]
    #
    EmailTemplateResponse = ::Struct.new(
      :arn,
      :creation_date,
      :default_substitutions,
      :html_part,
      :last_modified_date,
      :recommender_id,
      :subject,
      :tags,
      :template_description,
      :template_name,
      :template_type,
      :text_part,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies an endpoint to create or update and the settings and attributes to set or change for the endpoint.</p>
    #
    # @!attribute address
    #   <p>The destination address for messages or push notifications that you send to the endpoint. The address varies by channel. For a push-notification channel, use the token provided by the push notification service, such as an Apple Push Notification service (APNs) device token or a Firebase Cloud Messaging (FCM) registration token. For the SMS channel, use a phone number in E.164 format, such as +12065550100. For the email channel, use an email address.</p>
    #
    #   @return [String]
    #
    # @!attribute attributes
    #   <p>One or more custom attributes that describe the endpoint by associating a name with an array of values. For example, the value of a custom attribute named Interests might be: ["Science", "Music", "Travel"]. You can use these attributes as filter criteria when you create segments. Attribute names are case sensitive.</p> <p>An attribute name can contain up to 50 characters. An attribute value can contain up to 100 characters. When you define the name of a custom attribute, avoid using the following characters: number sign ( ), colon (:), question mark (?), backslash (\), and slash (/). The Amazon Pinpoint console can't display attribute names that contain these characters. This restriction doesn't apply to attribute values.</p>
    #
    #   @return [Hash<String, Array<String>>]
    #
    # @!attribute channel_type
    #   <p>The channel to use when sending messages or push notifications to the endpoint.</p>
    #
    #   Enum, one of: ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"]
    #
    #   @return [String]
    #
    # @!attribute demographic
    #   <p>The demographic information for the endpoint, such as the time zone and platform.</p>
    #
    #   @return [EndpointDemographic]
    #
    # @!attribute effective_date
    #   <p>The date and time, in ISO 8601 format, when the endpoint was created or updated.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_status
    #   <p>Specifies whether to send messages or push notifications to the endpoint. Valid values are: ACTIVE, messages are sent to the endpoint; and, INACTIVE, messages aren’t sent to the endpoint.</p> <p>Amazon Pinpoint automatically sets this value to ACTIVE when you create an endpoint or update an existing endpoint. Amazon Pinpoint automatically sets this value to INACTIVE if you update another endpoint that has the same address specified by the Address property.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The unique identifier for the endpoint in the context of the batch.</p>
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>The geographic information for the endpoint.</p>
    #
    #   @return [EndpointLocation]
    #
    # @!attribute metrics
    #   <p>One or more custom metrics that your app reports to Amazon Pinpoint for the endpoint.</p>
    #
    #   @return [Hash<String, Float>]
    #
    # @!attribute opt_out
    #   <p>Specifies whether the user who's associated with the endpoint has opted out of receiving messages and push notifications from you. Possible values are: ALL, the user has opted out and doesn't want to receive any messages or push notifications; and, NONE, the user hasn't opted out and wants to receive all messages and push notifications.</p>
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The unique identifier for the request to create or update the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute user
    #   <p>One or more custom attributes that describe the user who's associated with the endpoint.</p>
    #
    #   @return [EndpointUser]
    #
    EndpointBatchItem = ::Struct.new(
      :address,
      :attributes,
      :channel_type,
      :demographic,
      :effective_date,
      :endpoint_status,
      :id,
      :location,
      :metrics,
      :opt_out,
      :request_id,
      :user,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a batch of endpoints to create or update and the settings and attributes to set or change for each endpoint.</p>
    #
    # @!attribute item
    #   <p>An array that defines the endpoints to create or update and, for each endpoint, the property values to set or change. An array can contain a maximum of 100 items.</p>
    #
    #   @return [Array<EndpointBatchItem>]
    #
    EndpointBatchRequest = ::Struct.new(
      :item,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies demographic information about an endpoint, such as the applicable time zone and platform.</p>
    #
    # @!attribute app_version
    #   <p>The version of the app that's associated with the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute locale
    #   <p>The locale of the endpoint, in the following format: the ISO 639-1 alpha-2 code, followed by an underscore (_), followed by an ISO 3166-1 alpha-2 value.</p>
    #
    #   @return [String]
    #
    # @!attribute make
    #   <p>The manufacturer of the endpoint device, such as apple or samsung.</p>
    #
    #   @return [String]
    #
    # @!attribute model
    #   <p>The model name or number of the endpoint device, such as iPhone or SM-G900F.</p>
    #
    #   @return [String]
    #
    # @!attribute model_version
    #   <p>The model version of the endpoint device.</p>
    #
    #   @return [String]
    #
    # @!attribute platform
    #   <p>The platform of the endpoint device, such as ios.</p>
    #
    #   @return [String]
    #
    # @!attribute platform_version
    #   <p>The platform version of the endpoint device.</p>
    #
    #   @return [String]
    #
    # @!attribute timezone
    #   <p>The time zone of the endpoint, specified as a tz database name value, such as America/Los_Angeles.</p>
    #
    #   @return [String]
    #
    EndpointDemographic = ::Struct.new(
      :app_version,
      :locale,
      :make,
      :model,
      :model_version,
      :platform,
      :platform_version,
      :timezone,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides the status code and message that result from processing data for an endpoint.</p>
    #
    # @!attribute message
    #   <p>The custom message that's returned in the response as a result of processing the endpoint data.</p>
    #
    #   @return [String]
    #
    # @!attribute status_code
    #   <p>The status code that's returned in the response as a result of processing the endpoint data.</p>
    #
    #   @return [Integer]
    #
    EndpointItemResponse = ::Struct.new(
      :message,
      :status_code,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.status_code ||= 0
      end

    end

    # <p>Specifies geographic information about an endpoint.</p>
    #
    # @!attribute city
    #   <p>The name of the city where the endpoint is located.</p>
    #
    #   @return [String]
    #
    # @!attribute country
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region where the endpoint is located. For example, US for the United States.</p>
    #
    #   @return [String]
    #
    # @!attribute latitude
    #   <p>The latitude coordinate of the endpoint location, rounded to one decimal place.</p>
    #
    #   @return [Float]
    #
    # @!attribute longitude
    #   <p>The longitude coordinate of the endpoint location, rounded to one decimal place.</p>
    #
    #   @return [Float]
    #
    # @!attribute postal_code
    #   <p>The postal or ZIP code for the area where the endpoint is located.</p>
    #
    #   @return [String]
    #
    # @!attribute region
    #   <p>The name of the region where the endpoint is located. For locations in the United States, this value is the name of a state.</p>
    #
    #   @return [String]
    #
    EndpointLocation = ::Struct.new(
      :city,
      :country,
      :latitude,
      :longitude,
      :postal_code,
      :region,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.latitude ||= 0
        self.longitude ||= 0
      end

    end

    # <p>Provides information about the delivery status and results of sending a message directly to an endpoint.</p>
    #
    # @!attribute address
    #   <p>The endpoint address that the message was delivered to.</p>
    #
    #   @return [String]
    #
    # @!attribute delivery_status
    #   <p>The delivery status of the message. Possible values are:</p> <ul> <li><p>DUPLICATE - The endpoint address is a duplicate of another endpoint address. Amazon Pinpoint won't attempt to send the message again.</p></li> <li><p>OPT_OUT - The user who's associated with the endpoint has opted out of receiving messages from you. Amazon Pinpoint won't attempt to send the message again.</p></li> <li><p>PERMANENT_FAILURE - An error occurred when delivering the message to the endpoint. Amazon Pinpoint won't attempt to send the message again.</p></li>    <li><p>SUCCESSFUL - The message was successfully delivered to the endpoint.</p></li> <li><p>TEMPORARY_FAILURE - A temporary error occurred. Amazon Pinpoint won't attempt to send the message again.</p></li> <li><p>THROTTLED - Amazon Pinpoint throttled the operation to send the message to the endpoint.</p></li> <li><p>TIMEOUT - The message couldn't be sent within the timeout period.</p></li> <li><p>UNKNOWN_FAILURE - An unknown error occurred.</p></li></ul>
    #
    #   Enum, one of: ["SUCCESSFUL", "THROTTLED", "TEMPORARY_FAILURE", "PERMANENT_FAILURE", "UNKNOWN_FAILURE", "OPT_OUT", "DUPLICATE"]
    #
    #   @return [String]
    #
    # @!attribute message_id
    #   <p>The unique identifier for the message that was sent.</p>
    #
    #   @return [String]
    #
    # @!attribute status_code
    #   <p>The downstream service status code for delivering the message.</p>
    #
    #   @return [Integer]
    #
    # @!attribute status_message
    #   <p>The status message for delivering the message.</p>
    #
    #   @return [String]
    #
    # @!attribute updated_token
    #   <p>For push notifications that are sent through the GCM channel, specifies whether the endpoint's device registration token was updated as part of delivering the message.</p>
    #
    #   @return [String]
    #
    EndpointMessageResult = ::Struct.new(
      :address,
      :delivery_status,
      :message_id,
      :status_code,
      :status_message,
      :updated_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.status_code ||= 0
      end

    end

    # <p>Specifies the channel type and other settings for an endpoint.</p>
    #
    # @!attribute address
    #   <p>The destination address for messages or push notifications that you send to the endpoint. The address varies by channel. For a push-notification channel, use the token provided by the push notification service, such as an Apple Push Notification service (APNs) device token or a Firebase Cloud Messaging (FCM) registration token. For the SMS channel, use a phone number in E.164 format, such as +12065550100. For the email channel, use an email address.</p>
    #
    #   @return [String]
    #
    # @!attribute attributes
    #   <p>One or more custom attributes that describe the endpoint by associating a name with an array of values. For example, the value of a custom attribute named Interests might be: ["Science", "Music", "Travel"]. You can use these attributes as filter criteria when you create segments. Attribute names are case sensitive.</p> <p>An attribute name can contain up to 50 characters. An attribute value can contain up to 100 characters. When you define the name of a custom attribute, avoid using the following characters: number sign ( ), colon (:), question mark (?), backslash (\), and slash (/). The Amazon Pinpoint console can't display attribute names that contain these characters. This restriction doesn't apply to attribute values.</p>
    #
    #   @return [Hash<String, Array<String>>]
    #
    # @!attribute channel_type
    #   <p>The channel to use when sending messages or push notifications to the endpoint.</p>
    #
    #   Enum, one of: ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"]
    #
    #   @return [String]
    #
    # @!attribute demographic
    #   <p>The demographic information for the endpoint, such as the time zone and platform.</p>
    #
    #   @return [EndpointDemographic]
    #
    # @!attribute effective_date
    #   <p>The date and time, in ISO 8601 format, when the endpoint is updated.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_status
    #   <p>Specifies whether to send messages or push notifications to the endpoint. Valid values are: ACTIVE, messages are sent to the endpoint; and, INACTIVE, messages aren’t sent to the endpoint.</p> <p>Amazon Pinpoint automatically sets this value to ACTIVE when you create an endpoint or update an existing endpoint. Amazon Pinpoint automatically sets this value to INACTIVE if you update another endpoint that has the same address specified by the Address property.</p>
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>The geographic information for the endpoint.</p>
    #
    #   @return [EndpointLocation]
    #
    # @!attribute metrics
    #   <p>One or more custom metrics that your app reports to Amazon Pinpoint for the endpoint.</p>
    #
    #   @return [Hash<String, Float>]
    #
    # @!attribute opt_out
    #   <p>Specifies whether the user who's associated with the endpoint has opted out of receiving messages and push notifications from you. Possible values are: ALL, the user has opted out and doesn't want to receive any messages or push notifications; and, NONE, the user hasn't opted out and wants to receive all messages and push notifications.</p>
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The unique identifier for the most recent request to update the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute user
    #   <p>One or more custom attributes that describe the user who's associated with the endpoint.</p>
    #
    #   @return [EndpointUser]
    #
    EndpointRequest = ::Struct.new(
      :address,
      :attributes,
      :channel_type,
      :demographic,
      :effective_date,
      :endpoint_status,
      :location,
      :metrics,
      :opt_out,
      :request_id,
      :user,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about the channel type and other settings for an endpoint.</p>
    #
    # @!attribute address
    #   <p>The destination address for messages or push notifications that you send to the endpoint. The address varies by channel. For example, the address for a push-notification channel is typically the token provided by a push notification service, such as an Apple Push Notification service (APNs) device token or a Firebase Cloud Messaging (FCM) registration token. The address for the SMS channel is a phone number in E.164 format, such as +12065550100. The address for the email channel is an email address.</p>
    #
    #   @return [String]
    #
    # @!attribute application_id
    #   <p>The unique identifier for the application that's associated with the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute attributes
    #   <p>One or more custom attributes that describe the endpoint by associating a name with an array of values. For example, the value of a custom attribute named Interests might be: ["Science", "Music", "Travel"]. You can use these attributes as filter criteria when you create segments.</p>
    #
    #   @return [Hash<String, Array<String>>]
    #
    # @!attribute channel_type
    #   <p>The channel that's used when sending messages or push notifications to the endpoint.</p>
    #
    #   Enum, one of: ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"]
    #
    #   @return [String]
    #
    # @!attribute cohort_id
    #   <p>A number from 0-99 that represents the cohort that the endpoint is assigned to. Endpoints are grouped into cohorts randomly, and each cohort contains approximately 1 percent of the endpoints for an application. Amazon Pinpoint assigns cohorts to the holdout or treatment allocations for campaigns.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date and time, in ISO 8601 format, when the endpoint was created.</p>
    #
    #   @return [String]
    #
    # @!attribute demographic
    #   <p>The demographic information for the endpoint, such as the time zone and platform.</p>
    #
    #   @return [EndpointDemographic]
    #
    # @!attribute effective_date
    #   <p>The date and time, in ISO 8601 format, when the endpoint was last updated.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_status
    #   <p>Specifies whether messages or push notifications are sent to the endpoint. Possible values are: ACTIVE, messages are sent to the endpoint; and, INACTIVE, messages aren’t sent to the endpoint.</p> <p>Amazon Pinpoint automatically sets this value to ACTIVE when you create an endpoint or update an existing endpoint. Amazon Pinpoint automatically sets this value to INACTIVE if you update another endpoint that has the same address specified by the Address property.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The unique identifier that you assigned to the endpoint. The identifier should be a globally unique identifier (GUID) to ensure that it doesn't conflict with other endpoint identifiers that are associated with the application.</p>
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>The geographic information for the endpoint.</p>
    #
    #   @return [EndpointLocation]
    #
    # @!attribute metrics
    #   <p>One or more custom metrics that your app reports to Amazon Pinpoint for the endpoint.</p>
    #
    #   @return [Hash<String, Float>]
    #
    # @!attribute opt_out
    #   <p>Specifies whether the user who's associated with the endpoint has opted out of receiving messages and push notifications from you. Possible values are: ALL, the user has opted out and doesn't want to receive any messages or push notifications; and, NONE, the user hasn't opted out and wants to receive all messages and push notifications.</p>
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The unique identifier for the most recent request to update the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute user
    #   <p>One or more custom user attributes that your app reports to Amazon Pinpoint for the user who's associated with the endpoint.</p>
    #
    #   @return [EndpointUser]
    #
    EndpointResponse = ::Struct.new(
      :address,
      :application_id,
      :attributes,
      :channel_type,
      :cohort_id,
      :creation_date,
      :demographic,
      :effective_date,
      :endpoint_status,
      :id,
      :location,
      :metrics,
      :opt_out,
      :request_id,
      :user,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the content, including message variables and attributes, to use in a message that's sent directly to an endpoint.</p>
    #
    # @!attribute body_override
    #   <p>The body of the message. If specified, this value overrides the default message body.</p>
    #
    #   @return [String]
    #
    # @!attribute context
    #   <p>A map of custom attributes to attach to the message for the address. Attribute names are case sensitive.</p> <p>For a push notification, this payload is added to the data.pinpoint object. For an email or text message, this payload is added to email/SMS delivery receipt event attributes.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute raw_content
    #   <p>The raw, JSON-formatted string to use as the payload for the message. If specified, this value overrides all other values for the message.</p>
    #
    #   @return [String]
    #
    # @!attribute substitutions
    #   <p>A map of the message variables to merge with the variables specified for the default message (DefaultMessage.Substitutions). The variables specified in this map take precedence over all other variables.</p>
    #
    #   @return [Hash<String, Array<String>>]
    #
    # @!attribute title_override
    #   <p>The title or subject line of the message. If specified, this value overrides the default message title or subject line.</p>
    #
    #   @return [String]
    #
    EndpointSendConfiguration = ::Struct.new(
      :body_override,
      :context,
      :raw_content,
      :substitutions,
      :title_override,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies data for one or more attributes that describe the user who's associated with an endpoint.</p>
    #
    # @!attribute user_attributes
    #   <p>One or more custom attributes that describe the user by associating a name with an array of values. For example, the value of an attribute named Interests might be: ["Science", "Music", "Travel"]. You can use these attributes as filter criteria when you create segments. Attribute names are case sensitive.</p> <p>An attribute name can contain up to 50 characters. An attribute value can contain up to 100 characters. When you define the name of a custom attribute, avoid using the following characters: number sign ( ), colon (:), question mark (?), backslash (\), and slash (/). The Amazon Pinpoint console can't display attribute names that contain these characters. This restriction doesn't apply to attribute values.</p>
    #
    #   @return [Hash<String, Array<String>>]
    #
    # @!attribute user_id
    #   <p>The unique identifier for the user.</p>
    #
    #   @return [String]
    #
    EndpointUser = ::Struct.new(
      :user_attributes,
      :user_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about all the endpoints that are associated with a user ID.</p>
    #
    # @!attribute item
    #   <p>An array of responses, one for each endpoint that's associated with the user ID.</p>
    #
    #   @return [Array<EndpointResponse>]
    #
    EndpointsResponse = ::Struct.new(
      :item,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies information about an event that reports data to Amazon Pinpoint.</p>
    #
    # @!attribute app_package_name
    #   <p>The package name of the app that's recording the event.</p>
    #
    #   @return [String]
    #
    # @!attribute app_title
    #   <p>The title of the app that's recording the event.</p>
    #
    #   @return [String]
    #
    # @!attribute app_version_code
    #   <p>The version number of the app that's recording the event.</p>
    #
    #   @return [String]
    #
    # @!attribute attributes
    #   <p>One or more custom attributes that are associated with the event.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute client_sdk_version
    #   <p>The version of the SDK that's running on the client device.</p>
    #
    #   @return [String]
    #
    # @!attribute event_type
    #   <p>The name of the event.</p>
    #
    #   @return [String]
    #
    # @!attribute metrics
    #   <p>One or more custom metrics that are associated with the event.</p>
    #
    #   @return [Hash<String, Float>]
    #
    # @!attribute sdk_name
    #   <p>The name of the SDK that's being used to record the event.</p>
    #
    #   @return [String]
    #
    # @!attribute session
    #   <p>Information about the session in which the event occurred.</p>
    #
    #   @return [Session]
    #
    # @!attribute timestamp
    #   <p>The date and time, in ISO 8601 format, when the event occurred.</p>
    #
    #   @return [String]
    #
    Event = ::Struct.new(
      :app_package_name,
      :app_title,
      :app_version_code,
      :attributes,
      :client_sdk_version,
      :event_type,
      :metrics,
      :sdk_name,
      :session,
      :timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the conditions to evaluate for an event that applies to an activity in a journey.</p>
    #
    # @!attribute dimensions
    #   <p>The dimensions for the event filter to use for the activity.</p>
    #
    #   @return [EventDimensions]
    #
    # @!attribute message_activity
    #   <p>The message identifier (message_id) for the message to use when determining whether message events meet the condition.</p>
    #
    #   @return [String]
    #
    EventCondition = ::Struct.new(
      :dimensions,
      :message_activity,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the dimensions for an event filter that determines when a campaign is sent or a journey activity is performed.</p>
    #
    # @!attribute attributes
    #   <p>One or more custom attributes that your application reports to Amazon Pinpoint. You can use these attributes as selection criteria when you create an event filter.</p>
    #
    #   @return [Hash<String, AttributeDimension>]
    #
    # @!attribute event_type
    #   <p>The name of the event that causes the campaign to be sent or the journey activity to be performed. This can be a standard event that Amazon Pinpoint generates, such as _email.delivered. For campaigns, this can also be a custom event that's specific to your application. For information about standard events, see <a href="https://docs.aws.amazon.com/pinpoint/latest/developerguide/event-streams.html">Streaming Amazon Pinpoint Events</a> in the <i>Amazon Pinpoint Developer Guide</i>.</p>
    #
    #   @return [SetDimension]
    #
    # @!attribute metrics
    #   <p>One or more custom metrics that your application reports to Amazon Pinpoint. You can use these metrics as selection criteria when you create an event filter.</p>
    #
    #   @return [Hash<String, MetricDimension>]
    #
    EventDimensions = ::Struct.new(
      :attributes,
      :event_type,
      :metrics,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the settings for an event that causes a campaign to be sent or a journey activity to be performed.</p>
    #
    # @!attribute dimensions
    #   <p>The dimensions for the event filter to use for the campaign or the journey activity.</p>
    #
    #   @return [EventDimensions]
    #
    # @!attribute filter_type
    #   <p>The type of event that causes the campaign to be sent or the journey activity to be performed. Valid values are: SYSTEM, sends the campaign or performs the activity when a system event occurs; and, ENDPOINT, sends the campaign or performs the activity when an endpoint event (<link  linkend="apps-application-id-events">Events resource</link>) occurs.</p>
    #
    #   Enum, one of: ["SYSTEM", "ENDPOINT"]
    #
    #   @return [String]
    #
    EventFilter = ::Struct.new(
      :dimensions,
      :filter_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides the status code and message that result from processing an event.</p>
    #
    # @!attribute message
    #   <p>A custom message that's returned in the response as a result of processing the event.</p>
    #
    #   @return [String]
    #
    # @!attribute status_code
    #   <p>The status code that's returned in the response as a result of processing the event. Possible values are: 202, for events that were accepted; and, 400, for events that weren't valid.</p>
    #
    #   @return [Integer]
    #
    EventItemResponse = ::Struct.new(
      :message,
      :status_code,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.status_code ||= 0
      end

    end

    # <p>Specifies the settings for an event that causes a journey activity to start.</p>
    #
    # @!attribute event_filter
    #   <p>Specifies the settings for an event that causes a campaign to be sent or a journey activity to be performed.</p>
    #
    #   @return [EventFilter]
    #
    # @!attribute segment_id
    #
    #   @return [String]
    #
    EventStartCondition = ::Struct.new(
      :event_filter,
      :segment_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies settings for publishing event data to an Amazon Kinesis data stream or an Amazon Kinesis Data Firehose delivery stream.</p>
    #
    # @!attribute application_id
    #   <p>The unique identifier for the application to publish event data for.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_stream_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Kinesis data stream or Amazon Kinesis Data Firehose delivery stream to publish event data to.</p> <p>For a Kinesis data stream, the ARN format is: arn:aws:kinesis:<replaceable>region</replaceable>:<replaceable>account-id</replaceable>:stream/<replaceable>stream_name</replaceable>
    #                  </p> <p>For a Kinesis Data Firehose delivery stream, the ARN format is: arn:aws:firehose:<replaceable>region</replaceable>:<replaceable>account-id</replaceable>:deliverystream/<replaceable>stream_name</replaceable>
    #                  </p>
    #
    #   @return [String]
    #
    # @!attribute external_id
    #   <p>(Deprecated) Your AWS account ID, which you assigned to an external ID key in an IAM trust policy. Amazon Pinpoint previously used this value to assume an IAM role when publishing event data, but we removed this requirement. We don't recommend use of external IDs for IAM roles that are assumed by Amazon Pinpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_date
    #   <p>The date, in ISO 8601 format, when the event stream was last modified.</p>
    #
    #   @return [String]
    #
    # @!attribute last_updated_by
    #   <p>The IAM user who last modified the event stream.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The AWS Identity and Access Management (IAM) role that authorizes Amazon Pinpoint to publish event data to the stream in your AWS account.</p>
    #
    #   @return [String]
    #
    EventStream = ::Struct.new(
      :application_id,
      :destination_stream_arn,
      :external_id,
      :last_modified_date,
      :last_updated_by,
      :role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a batch of endpoints and events to process.</p>
    #
    # @!attribute endpoint
    #   <p>A set of properties and attributes that are associated with the endpoint.</p>
    #
    #   @return [PublicEndpoint]
    #
    # @!attribute events
    #   <p>A set of properties that are associated with the event.</p>
    #
    #   @return [Hash<String, Event>]
    #
    EventsBatch = ::Struct.new(
      :endpoint,
      :events,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a batch of events to process.</p>
    #
    # @!attribute batch_item
    #   <p>The batch of events to process. For each item in a batch, the endpoint ID acts as a key that has an EventsBatch object as its value.</p>
    #
    #   @return [Hash<String, EventsBatch>]
    #
    EventsRequest = ::Struct.new(
      :batch_item,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about endpoints and the events that they're associated with.</p>
    #
    # @!attribute results
    #   <p>A map that contains a multipart response for each endpoint. For each item in this object, the endpoint ID is the key and the item response is the value. If no item response exists, the value can also be one of the following: 202, the request was processed successfully; or 400, the payload wasn't valid or required fields were missing.</p>
    #
    #   @return [Hash<String, ItemResponse>]
    #
    EventsResponse = ::Struct.new(
      :results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the settings for a job that exports endpoint definitions to an Amazon Simple Storage Service (Amazon S3) bucket.</p>
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that authorizes Amazon Pinpoint to access the Amazon S3 location where you want to export endpoint definitions to.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_url_prefix
    #   <p>The URL of the location in an Amazon Simple Storage Service (Amazon S3) bucket where you want to export endpoint definitions to. This location is typically a folder that contains multiple files. The URL should be in the following format: s3://<replaceable>bucket-name</replaceable>/<replaceable>folder-name</replaceable>/.</p>
    #
    #   @return [String]
    #
    # @!attribute segment_id
    #   <p>The identifier for the segment to export endpoint definitions from. If you don't specify this value, Amazon Pinpoint exports definitions for all the endpoints that are associated with the application.</p>
    #
    #   @return [String]
    #
    # @!attribute segment_version
    #   <p>The version of the segment to export endpoint definitions from, if specified.</p>
    #
    #   @return [Integer]
    #
    ExportJobRequest = ::Struct.new(
      :role_arn,
      :s3_url_prefix,
      :segment_id,
      :segment_version,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.segment_version ||= 0
      end

    end

    # <p>Provides information about the resource settings for a job that exports endpoint definitions to a file. The file can be added directly to an Amazon Simple Storage Service (Amazon S3) bucket by using the Amazon Pinpoint API or downloaded directly to a computer by using the Amazon Pinpoint console.</p>
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that authorized Amazon Pinpoint to access the Amazon S3 location where the endpoint definitions were exported to.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_url_prefix
    #   <p>The URL of the location in an Amazon Simple Storage Service (Amazon S3) bucket where the endpoint definitions were exported to. This location is typically a folder that contains multiple files. The URL should be in the following format: s3://<replaceable>bucket-name</replaceable>/<replaceable>folder-name</replaceable>/.</p>
    #
    #   @return [String]
    #
    # @!attribute segment_id
    #   <p>The identifier for the segment that the endpoint definitions were exported from. If this value isn't present, Amazon Pinpoint exported definitions for all the endpoints that are associated with the application.</p>
    #
    #   @return [String]
    #
    # @!attribute segment_version
    #   <p>The version of the segment that the endpoint definitions were exported from.</p>
    #
    #   @return [Integer]
    #
    ExportJobResource = ::Struct.new(
      :role_arn,
      :s3_url_prefix,
      :segment_id,
      :segment_version,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.segment_version ||= 0
      end

    end

    # <p>Provides information about the status and settings of a job that exports endpoint definitions to a file. The file can be added directly to an Amazon Simple Storage Service (Amazon S3) bucket by using the Amazon Pinpoint API or downloaded directly to a computer by using the Amazon Pinpoint console.</p>
    #
    # @!attribute application_id
    #   <p>The unique identifier for the application that's associated with the export job.</p>
    #
    #   @return [String]
    #
    # @!attribute completed_pieces
    #   <p>The number of pieces that were processed successfully (completed) by the export job, as of the time of the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute completion_date
    #   <p>The date, in ISO 8601 format, when the export job was completed.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date, in ISO 8601 format, when the export job was created.</p>
    #
    #   @return [String]
    #
    # @!attribute definition
    #   <p>The resource settings that apply to the export job.</p>
    #
    #   @return [ExportJobResource]
    #
    # @!attribute failed_pieces
    #   <p>The number of pieces that weren't processed successfully (failed) by the export job, as of the time of the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute failures
    #   <p>An array of entries, one for each of the first 100 entries that weren't processed successfully (failed) by the export job, if any.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute id
    #   <p>The unique identifier for the export job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_status
    #   <p>The status of the export job. The job status is FAILED if Amazon Pinpoint wasn't able to process one or more pieces in the job.</p>
    #
    #   Enum, one of: ["CREATED", "PREPARING_FOR_INITIALIZATION", "INITIALIZING", "PROCESSING", "PENDING_JOB", "COMPLETING", "COMPLETED", "FAILING", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute total_failures
    #   <p>The total number of endpoint definitions that weren't processed successfully (failed) by the export job, typically because an error, such as a syntax error, occurred.</p>
    #
    #   @return [Integer]
    #
    # @!attribute total_pieces
    #   <p>The total number of pieces that must be processed to complete the export job. Each piece consists of an approximately equal portion of the endpoint definitions that are part of the export job.</p>
    #
    #   @return [Integer]
    #
    # @!attribute total_processed
    #   <p>The total number of endpoint definitions that were processed by the export job.</p>
    #
    #   @return [Integer]
    #
    # @!attribute type
    #   <p>The job type. This value is EXPORT for export jobs.</p>
    #
    #   @return [String]
    #
    ExportJobResponse = ::Struct.new(
      :application_id,
      :completed_pieces,
      :completion_date,
      :creation_date,
      :definition,
      :failed_pieces,
      :failures,
      :id,
      :job_status,
      :total_failures,
      :total_pieces,
      :total_processed,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.completed_pieces ||= 0
        self.failed_pieces ||= 0
        self.total_failures ||= 0
        self.total_pieces ||= 0
        self.total_processed ||= 0
      end

    end

    # <p>Provides information about all the export jobs that are associated with an application or segment. An export job is a job that exports endpoint definitions to a file.</p>
    #
    # @!attribute item
    #   <p>An array of responses, one for each export job that's associated with the application (Export Jobs resource) or segment (Segment Export Jobs resource).</p>
    #
    #   @return [Array<ExportJobResponse>]
    #
    # @!attribute next_token
    #   <p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>
    #
    #   @return [String]
    #
    ExportJobsResponse = ::Struct.new(
      :item,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FilterType
    #
    module FilterType
      # No documentation available.
      #
      SYSTEM = "SYSTEM"

      # No documentation available.
      #
      ENDPOINT = "ENDPOINT"
    end

    # <p>Provides information about an API request or response.</p>
    #
    # @!attribute message
    #   <p>The message that's returned from the API.</p>
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The unique identifier for the request or response.</p>
    #
    #   @return [String]
    #
    ForbiddenException = ::Struct.new(
      :message,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Format
    #
    module Format
      # No documentation available.
      #
      CSV = "CSV"

      # No documentation available.
      #
      JSON = "JSON"
    end

    # Includes enum constants for Frequency
    #
    module Frequency
      # No documentation available.
      #
      ONCE = "ONCE"

      # No documentation available.
      #
      HOURLY = "HOURLY"

      # No documentation available.
      #
      DAILY = "DAILY"

      # No documentation available.
      #
      WEEKLY = "WEEKLY"

      # No documentation available.
      #
      MONTHLY = "MONTHLY"

      # No documentation available.
      #
      EVENT = "EVENT"

      # No documentation available.
      #
      IN_APP_EVENT = "IN_APP_EVENT"
    end

    # <p>Specifies the status and settings of the GCM channel for an application. This channel enables Amazon Pinpoint to send push notifications through the Firebase Cloud Messaging (FCM), formerly Google Cloud Messaging (GCM), service.</p>
    #
    # @!attribute api_key
    #   <p>The Web API Key, also referred to as an <i>API_KEY</i> or <i>server key</i>, that you received from Google to communicate with Google services.</p>
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p>Specifies whether to enable the GCM channel for the application.</p>
    #
    #   @return [Boolean]
    #
    GCMChannelRequest = ::Struct.new(
      :api_key,
      :enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.enabled ||= false
      end

    end

    # <p>Provides information about the status and settings of the GCM channel for an application. The GCM channel enables Amazon Pinpoint to send push notifications through the Firebase Cloud Messaging (FCM), formerly Google Cloud Messaging (GCM), service.</p>
    #
    # @!attribute application_id
    #   <p>The unique identifier for the application that the GCM channel applies to.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date and time when the GCM channel was enabled.</p>
    #
    #   @return [String]
    #
    # @!attribute credential
    #   <p>The Web API Key, also referred to as an <i>API_KEY</i> or <i>server key</i>, that you received from Google to communicate with Google services.</p>
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p>Specifies whether the GCM channel is enabled for the application.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute has_credential
    #   <p>(Not used) This property is retained only for backward compatibility.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute id
    #   <p>(Deprecated) An identifier for the GCM channel. This property is retained only for backward compatibility.</p>
    #
    #   @return [String]
    #
    # @!attribute is_archived
    #   <p>Specifies whether the GCM channel is archived.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute last_modified_by
    #   <p>The user who last modified the GCM channel.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_date
    #   <p>The date and time when the GCM channel was last modified.</p>
    #
    #   @return [String]
    #
    # @!attribute platform
    #   <p>The type of messaging or notification platform for the channel. For the GCM channel, this value is GCM.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The current version of the GCM channel.</p>
    #
    #   @return [Integer]
    #
    GCMChannelResponse = ::Struct.new(
      :application_id,
      :creation_date,
      :credential,
      :enabled,
      :has_credential,
      :id,
      :is_archived,
      :last_modified_by,
      :last_modified_date,
      :platform,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.enabled ||= false
        self.has_credential ||= false
        self.is_archived ||= false
        self.version ||= 0
      end

    end

    # <p>Specifies the settings for a one-time message that's sent directly to an endpoint through the GCM channel. The GCM channel enables Amazon Pinpoint to send messages to the Firebase Cloud Messaging (FCM), formerly Google Cloud Messaging (GCM), service.</p>
    #
    # @!attribute action
    #   <p>The action to occur if the recipient taps the push notification. Valid values are:</p> <ul><li><p>OPEN_APP - Your app opens or it becomes the foreground app if it was sent to the background. This is the default action.</p></li> <li><p>DEEP_LINK - Your app opens and displays a designated user interface in the app. This action uses the deep-linking features of the Android platform.</p></li> <li><p>URL - The default mobile browser on the recipient's device opens and loads the web page at a URL that you specify.</p></li></ul>
    #
    #   Enum, one of: ["OPEN_APP", "DEEP_LINK", "URL"]
    #
    #   @return [String]
    #
    # @!attribute body
    #   <p>The body of the notification message.</p>
    #
    #   @return [String]
    #
    # @!attribute collapse_key
    #   <p>An arbitrary string that identifies a group of messages that can be collapsed to ensure that only the last message is sent when delivery can resume. This helps avoid sending too many instances of the same messages when the recipient's device comes online again or becomes active.</p> <p>Amazon Pinpoint specifies this value in the Firebase Cloud Messaging (FCM) collapse_key parameter when it sends the notification message to FCM.</p>
    #
    #   @return [String]
    #
    # @!attribute data
    #   <p>The JSON data payload to use for the push notification, if the notification is a silent push notification. This payload is added to the data.pinpoint.jsonBody object of the notification.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute icon_reference
    #   <p>The icon image name of the asset saved in your app.</p>
    #
    #   @return [String]
    #
    # @!attribute image_icon_url
    #   <p>The URL of the large icon image to display in the content view of the push notification.</p>
    #
    #   @return [String]
    #
    # @!attribute image_url
    #   <p>The URL of an image to display in the push notification.</p>
    #
    #   @return [String]
    #
    # @!attribute priority
    #   <p>para>normal - The notification might be delayed. Delivery is optimized for battery usage on the recipient's device. Use this value unless immediate delivery is required.</p>/listitem> <li><p>high - The notification is sent immediately and might wake a sleeping device.</p></li>/para> <p>Amazon Pinpoint specifies this value in the FCM priority parameter when it sends the notification message to FCM.</p> <p>The equivalent values for Apple Push Notification service (APNs) are 5, for normal, and 10, for high. If you specify an APNs value for this property, Amazon Pinpoint accepts and converts the value to the corresponding FCM value.</p>
    #
    #   @return [String]
    #
    # @!attribute raw_content
    #   <p>The raw, JSON-formatted string to use as the payload for the notification message. If specified, this value overrides all other content for the message.</p>
    #
    #   @return [String]
    #
    # @!attribute restricted_package_name
    #   <p>The package name of the application where registration tokens must match in order for the recipient to receive the message.</p>
    #
    #   @return [String]
    #
    # @!attribute silent_push
    #   <p>Specifies whether the notification is a silent push notification, which is a push notification that doesn't display on a recipient's device. Silent push notifications can be used for cases such as updating an app's configuration or supporting phone home functionality.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute small_image_icon_url
    #   <p>The URL of the small icon image to display in the status bar and the content view of the push notification.</p>
    #
    #   @return [String]
    #
    # @!attribute sound
    #   <p>The sound to play when the recipient receives the push notification. You can use the default stream or specify the file name of a sound resource that's bundled in your app. On an Android platform, the sound file must reside in /res/raw/.</p>
    #
    #   @return [String]
    #
    # @!attribute substitutions
    #   <p>The default message variables to use in the notification message. You can override the default variables with individual address variables.</p>
    #
    #   @return [Hash<String, Array<String>>]
    #
    # @!attribute time_to_live
    #   <p>The amount of time, in seconds, that FCM should store and attempt to deliver the push notification, if the service is unable to deliver the notification the first time. If you don't specify this value, FCM defaults to the maximum value, which is 2,419,200 seconds (28 days).</p> <p>Amazon Pinpoint specifies this value in the FCM time_to_live parameter when it sends the notification message to FCM.</p>
    #
    #   @return [Integer]
    #
    # @!attribute title
    #   <p>The title to display above the notification message on the recipient's device.</p>
    #
    #   @return [String]
    #
    # @!attribute url
    #   <p>The URL to open in the recipient's default mobile browser, if a recipient taps the push notification and the value of the Action property is URL.</p>
    #
    #   @return [String]
    #
    GCMMessage = ::Struct.new(
      :action,
      :body,
      :collapse_key,
      :data,
      :icon_reference,
      :image_icon_url,
      :image_url,
      :priority,
      :raw_content,
      :restricted_package_name,
      :silent_push,
      :small_image_icon_url,
      :sound,
      :substitutions,
      :time_to_live,
      :title,
      :url,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.silent_push ||= false
        self.time_to_live ||= 0
      end

    end

    # <p>Specifies the GPS coordinates of a location.</p>
    #
    # @!attribute latitude
    #   <p>The latitude coordinate of the location.</p>
    #
    #   @return [Float]
    #
    # @!attribute longitude
    #   <p>The longitude coordinate of the location.</p>
    #
    #   @return [Float]
    #
    GPSCoordinates = ::Struct.new(
      :latitude,
      :longitude,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.latitude ||= 0
        self.longitude ||= 0
      end

    end

    # <p>Specifies GPS-based criteria for including or excluding endpoints from a segment.</p>
    #
    # @!attribute coordinates
    #   <p>The GPS coordinates to measure distance from.</p>
    #
    #   @return [GPSCoordinates]
    #
    # @!attribute range_in_kilometers
    #   <p>The range, in kilometers, from the GPS coordinates.</p>
    #
    #   @return [Float]
    #
    GPSPointDimension = ::Struct.new(
      :coordinates,
      :range_in_kilometers,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.range_in_kilometers ||= 0
      end

    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    GetAdmChannelInput = ::Struct.new(
      :application_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute adm_channel_response
    #   <p>Provides information about the status and settings of the ADM (Amazon Device Messaging) channel for an application.</p>
    #
    #   @return [ADMChannelResponse]
    #
    GetAdmChannelOutput = ::Struct.new(
      :adm_channel_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    GetApnsChannelInput = ::Struct.new(
      :application_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute apns_channel_response
    #   <p>Provides information about the status and settings of the APNs (Apple Push Notification service) channel for an application.</p>
    #
    #   @return [APNSChannelResponse]
    #
    GetApnsChannelOutput = ::Struct.new(
      :apns_channel_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    GetApnsSandboxChannelInput = ::Struct.new(
      :application_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute apns_sandbox_channel_response
    #   <p>Provides information about the status and settings of the APNs (Apple Push Notification service) sandbox channel for an application.</p>
    #
    #   @return [APNSSandboxChannelResponse]
    #
    GetApnsSandboxChannelOutput = ::Struct.new(
      :apns_sandbox_channel_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    GetApnsVoipChannelInput = ::Struct.new(
      :application_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute apns_voip_channel_response
    #   <p>Provides information about the status and settings of the APNs (Apple Push Notification service) VoIP channel for an application.</p>
    #
    #   @return [APNSVoipChannelResponse]
    #
    GetApnsVoipChannelOutput = ::Struct.new(
      :apns_voip_channel_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    GetApnsVoipSandboxChannelInput = ::Struct.new(
      :application_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute apns_voip_sandbox_channel_response
    #   <p>Provides information about the status and settings of the APNs (Apple Push Notification service) VoIP sandbox channel for an application.</p>
    #
    #   @return [APNSVoipSandboxChannelResponse]
    #
    GetApnsVoipSandboxChannelOutput = ::Struct.new(
      :apns_voip_sandbox_channel_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    GetAppInput = ::Struct.new(
      :application_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_response
    #   <p>Provides information about an application.</p>
    #
    #   @return [ApplicationResponse]
    #
    GetAppOutput = ::Struct.new(
      :application_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    # @!attribute end_time
    #   <p>The last date and time to retrieve data for, as part of an inclusive date range that filters the query results. This value should be in extended ISO 8601 format and use Coordinated Universal Time (UTC), for example: 2019-07-26T20:00:00Z for 8:00 PM UTC July 26, 2019.</p>
    #
    #   @return [Time]
    #
    # @!attribute kpi_name
    #   <p>The name of the metric, also referred to as a <i>key performance indicator (KPI)</i>, to retrieve data for. This value describes the associated metric and consists of two or more terms, which are comprised of lowercase alphanumeric characters, separated by a hyphen. Examples are email-open-rate and successful-delivery-rate. For a list of valid values, see the <a href="https://docs.aws.amazon.com/pinpoint/latest/developerguide/analytics-standard-metrics.html">Amazon Pinpoint Developer Guide</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The  string that specifies which page of results to return in a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    #
    #   @return [String]
    #
    # @!attribute page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The first date and time to retrieve data for, as part of an inclusive date range that filters the query results. This value should be in extended ISO 8601 format and use Coordinated Universal Time (UTC), for example: 2019-07-19T20:00:00Z for 8:00 PM UTC July 19, 2019. This value should also be fewer than 90 days from the current day.</p>
    #
    #   @return [Time]
    #
    GetApplicationDateRangeKpiInput = ::Struct.new(
      :application_id,
      :end_time,
      :kpi_name,
      :next_token,
      :page_size,
      :start_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_date_range_kpi_response
    #   <p>Provides the results of a query that retrieved the data for a standard metric that applies to an application, and provides information about that query.</p>
    #
    #   @return [ApplicationDateRangeKpiResponse]
    #
    GetApplicationDateRangeKpiOutput = ::Struct.new(
      :application_date_range_kpi_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    GetApplicationSettingsInput = ::Struct.new(
      :application_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_settings_resource
    #   <p>Provides information about an application, including the default settings for an application.</p>
    #
    #   @return [ApplicationSettingsResource]
    #
    GetApplicationSettingsOutput = ::Struct.new(
      :application_settings_resource,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    #
    #   @return [String]
    #
    # @!attribute token
    #   <p>The NextToken string that specifies which page of results to return in a paginated response.</p>
    #
    #   @return [String]
    #
    GetAppsInput = ::Struct.new(
      :page_size,
      :token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute applications_response
    #   <p>Provides information about all of your applications.</p>
    #
    #   @return [ApplicationsResponse]
    #
    GetAppsOutput = ::Struct.new(
      :applications_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    GetBaiduChannelInput = ::Struct.new(
      :application_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute baidu_channel_response
    #   <p>Provides information about the status and settings of the Baidu (Baidu Cloud Push) channel for an application.</p>
    #
    #   @return [BaiduChannelResponse]
    #
    GetBaiduChannelOutput = ::Struct.new(
      :baidu_channel_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    # @!attribute campaign_id
    #   <p>The unique identifier for the campaign.</p>
    #
    #   @return [String]
    #
    # @!attribute page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    #
    #   @return [String]
    #
    # @!attribute token
    #   <p>The NextToken string that specifies which page of results to return in a paginated response.</p>
    #
    #   @return [String]
    #
    GetCampaignActivitiesInput = ::Struct.new(
      :application_id,
      :campaign_id,
      :page_size,
      :token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute activities_response
    #   <p>Provides information about the activities that were performed by a campaign.</p>
    #
    #   @return [ActivitiesResponse]
    #
    GetCampaignActivitiesOutput = ::Struct.new(
      :activities_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    # @!attribute campaign_id
    #   <p>The unique identifier for the campaign.</p>
    #
    #   @return [String]
    #
    # @!attribute end_time
    #   <p>The last date and time to retrieve data for, as part of an inclusive date range that filters the query results. This value should be in extended ISO 8601 format and use Coordinated Universal Time (UTC), for example: 2019-07-26T20:00:00Z for 8:00 PM UTC July 26, 2019.</p>
    #
    #   @return [Time]
    #
    # @!attribute kpi_name
    #   <p>The name of the metric, also referred to as a <i>key performance indicator (KPI)</i>, to retrieve data for. This value describes the associated metric and consists of two or more terms, which are comprised of lowercase alphanumeric characters, separated by a hyphen. Examples are email-open-rate and successful-delivery-rate. For a list of valid values, see the <a href="https://docs.aws.amazon.com/pinpoint/latest/developerguide/analytics-standard-metrics.html">Amazon Pinpoint Developer Guide</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The  string that specifies which page of results to return in a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    #
    #   @return [String]
    #
    # @!attribute page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The first date and time to retrieve data for, as part of an inclusive date range that filters the query results. This value should be in extended ISO 8601 format and use Coordinated Universal Time (UTC), for example: 2019-07-19T20:00:00Z for 8:00 PM UTC July 19, 2019. This value should also be fewer than 90 days from the current day.</p>
    #
    #   @return [Time]
    #
    GetCampaignDateRangeKpiInput = ::Struct.new(
      :application_id,
      :campaign_id,
      :end_time,
      :kpi_name,
      :next_token,
      :page_size,
      :start_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute campaign_date_range_kpi_response
    #   <p>Provides the results of a query that retrieved the data for a standard metric that applies to a campaign, and provides information about that query.</p>
    #
    #   @return [CampaignDateRangeKpiResponse]
    #
    GetCampaignDateRangeKpiOutput = ::Struct.new(
      :campaign_date_range_kpi_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    # @!attribute campaign_id
    #   <p>The unique identifier for the campaign.</p>
    #
    #   @return [String]
    #
    GetCampaignInput = ::Struct.new(
      :application_id,
      :campaign_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute campaign_response
    #   <p>Provides information about the status, configuration, and other settings for a campaign.</p>
    #
    #   @return [CampaignResponse]
    #
    GetCampaignOutput = ::Struct.new(
      :campaign_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    # @!attribute campaign_id
    #   <p>The unique identifier for the campaign.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The unique version number (Version property) for the campaign version.</p>
    #
    #   @return [String]
    #
    GetCampaignVersionInput = ::Struct.new(
      :application_id,
      :campaign_id,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute campaign_response
    #   <p>Provides information about the status, configuration, and other settings for a campaign.</p>
    #
    #   @return [CampaignResponse]
    #
    GetCampaignVersionOutput = ::Struct.new(
      :campaign_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    # @!attribute campaign_id
    #   <p>The unique identifier for the campaign.</p>
    #
    #   @return [String]
    #
    # @!attribute page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    #
    #   @return [String]
    #
    # @!attribute token
    #   <p>The NextToken string that specifies which page of results to return in a paginated response.</p>
    #
    #   @return [String]
    #
    GetCampaignVersionsInput = ::Struct.new(
      :application_id,
      :campaign_id,
      :page_size,
      :token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute campaigns_response
    #   <p>Provides information about the configuration and other settings for all the campaigns that are associated with an application.</p>
    #
    #   @return [CampaignsResponse]
    #
    GetCampaignVersionsOutput = ::Struct.new(
      :campaigns_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    # @!attribute page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    #
    #   @return [String]
    #
    # @!attribute token
    #   <p>The NextToken string that specifies which page of results to return in a paginated response.</p>
    #
    #   @return [String]
    #
    GetCampaignsInput = ::Struct.new(
      :application_id,
      :page_size,
      :token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute campaigns_response
    #   <p>Provides information about the configuration and other settings for all the campaigns that are associated with an application.</p>
    #
    #   @return [CampaignsResponse]
    #
    GetCampaignsOutput = ::Struct.new(
      :campaigns_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    GetChannelsInput = ::Struct.new(
      :application_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channels_response
    #   <p>Provides information about the general settings and status of all channels for an application, including channels that aren't enabled for the application.</p>
    #
    #   @return [ChannelsResponse]
    #
    GetChannelsOutput = ::Struct.new(
      :channels_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    GetEmailChannelInput = ::Struct.new(
      :application_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute email_channel_response
    #   <p>Provides information about the status and settings of the email channel for an application.</p>
    #
    #   @return [EmailChannelResponse]
    #
    GetEmailChannelOutput = ::Struct.new(
      :email_channel_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend="templates-template-name-template-type-versions">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>
    #
    #   @return [String]
    #
    GetEmailTemplateInput = ::Struct.new(
      :template_name,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute email_template_response
    #   <p>Provides information about the content and settings for a message template that can be used in messages that are sent through the email channel.</p>
    #
    #   @return [EmailTemplateResponse]
    #
    GetEmailTemplateOutput = ::Struct.new(
      :email_template_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_id
    #   <p>The unique identifier for the endpoint.</p>
    #
    #   @return [String]
    #
    GetEndpointInput = ::Struct.new(
      :application_id,
      :endpoint_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute endpoint_response
    #   <p>Provides information about the channel type and other settings for an endpoint.</p>
    #
    #   @return [EndpointResponse]
    #
    GetEndpointOutput = ::Struct.new(
      :endpoint_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    GetEventStreamInput = ::Struct.new(
      :application_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_stream
    #   <p>Specifies settings for publishing event data to an Amazon Kinesis data stream or an Amazon Kinesis Data Firehose delivery stream.</p>
    #
    #   @return [EventStream]
    #
    GetEventStreamOutput = ::Struct.new(
      :event_stream,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The unique identifier for the job.</p>
    #
    #   @return [String]
    #
    GetExportJobInput = ::Struct.new(
      :application_id,
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute export_job_response
    #   <p>Provides information about the status and settings of a job that exports endpoint definitions to a file. The file can be added directly to an Amazon Simple Storage Service (Amazon S3) bucket by using the Amazon Pinpoint API or downloaded directly to a computer by using the Amazon Pinpoint console.</p>
    #
    #   @return [ExportJobResponse]
    #
    GetExportJobOutput = ::Struct.new(
      :export_job_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    # @!attribute page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    #
    #   @return [String]
    #
    # @!attribute token
    #   <p>The NextToken string that specifies which page of results to return in a paginated response.</p>
    #
    #   @return [String]
    #
    GetExportJobsInput = ::Struct.new(
      :application_id,
      :page_size,
      :token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute export_jobs_response
    #   <p>Provides information about all the export jobs that are associated with an application or segment. An export job is a job that exports endpoint definitions to a file.</p>
    #
    #   @return [ExportJobsResponse]
    #
    GetExportJobsOutput = ::Struct.new(
      :export_jobs_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    GetGcmChannelInput = ::Struct.new(
      :application_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute gcm_channel_response
    #   <p>Provides information about the status and settings of the GCM channel for an application. The GCM channel enables Amazon Pinpoint to send push notifications through the Firebase Cloud Messaging (FCM), formerly Google Cloud Messaging (GCM), service.</p>
    #
    #   @return [GCMChannelResponse]
    #
    GetGcmChannelOutput = ::Struct.new(
      :gcm_channel_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The unique identifier for the job.</p>
    #
    #   @return [String]
    #
    GetImportJobInput = ::Struct.new(
      :application_id,
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute import_job_response
    #   <p>Provides information about the status and settings of a job that imports endpoint definitions from one or more files. The files can be stored in an Amazon Simple Storage Service (Amazon S3) bucket or uploaded directly from a computer by using the Amazon Pinpoint console.</p>
    #
    #   @return [ImportJobResponse]
    #
    GetImportJobOutput = ::Struct.new(
      :import_job_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    # @!attribute page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    #
    #   @return [String]
    #
    # @!attribute token
    #   <p>The NextToken string that specifies which page of results to return in a paginated response.</p>
    #
    #   @return [String]
    #
    GetImportJobsInput = ::Struct.new(
      :application_id,
      :page_size,
      :token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute import_jobs_response
    #   <p>Provides information about the status and settings of all the import jobs that are associated with an application or segment. An import job is a job that imports endpoint definitions from one or more files.</p>
    #
    #   @return [ImportJobsResponse]
    #
    GetImportJobsOutput = ::Struct.new(
      :import_jobs_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_id
    #   <p>The unique identifier for the endpoint.</p>
    #
    #   @return [String]
    #
    GetInAppMessagesInput = ::Struct.new(
      :application_id,
      :endpoint_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute in_app_messages_response
    #   <p>Get in-app messages response object.</p>
    #
    #   @return [InAppMessagesResponse]
    #
    GetInAppMessagesOutput = ::Struct.new(
      :in_app_messages_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend="templates-template-name-template-type-versions">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>
    #
    #   @return [String]
    #
    GetInAppTemplateInput = ::Struct.new(
      :template_name,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute in_app_template_response
    #   <p>In-App Template Response.</p>
    #
    #   @return [InAppTemplateResponse]
    #
    GetInAppTemplateOutput = ::Struct.new(
      :in_app_template_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    # @!attribute end_time
    #   <p>The last date and time to retrieve data for, as part of an inclusive date range that filters the query results. This value should be in extended ISO 8601 format and use Coordinated Universal Time (UTC), for example: 2019-07-26T20:00:00Z for 8:00 PM UTC July 26, 2019.</p>
    #
    #   @return [Time]
    #
    # @!attribute journey_id
    #   <p>The unique identifier for the journey.</p>
    #
    #   @return [String]
    #
    # @!attribute kpi_name
    #   <p>The name of the metric, also referred to as a <i>key performance indicator (KPI)</i>, to retrieve data for. This value describes the associated metric and consists of two or more terms, which are comprised of lowercase alphanumeric characters, separated by a hyphen. Examples are email-open-rate and successful-delivery-rate. For a list of valid values, see the <a href="https://docs.aws.amazon.com/pinpoint/latest/developerguide/analytics-standard-metrics.html">Amazon Pinpoint Developer Guide</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The  string that specifies which page of results to return in a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    #
    #   @return [String]
    #
    # @!attribute page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The first date and time to retrieve data for, as part of an inclusive date range that filters the query results. This value should be in extended ISO 8601 format and use Coordinated Universal Time (UTC), for example: 2019-07-19T20:00:00Z for 8:00 PM UTC July 19, 2019. This value should also be fewer than 90 days from the current day.</p>
    #
    #   @return [Time]
    #
    GetJourneyDateRangeKpiInput = ::Struct.new(
      :application_id,
      :end_time,
      :journey_id,
      :kpi_name,
      :next_token,
      :page_size,
      :start_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute journey_date_range_kpi_response
    #   <p>Provides the results of a query that retrieved the data for a standard engagement metric that applies to a journey, and provides information about that query.</p>
    #
    #   @return [JourneyDateRangeKpiResponse]
    #
    GetJourneyDateRangeKpiOutput = ::Struct.new(
      :journey_date_range_kpi_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    # @!attribute journey_activity_id
    #   <p>The unique identifier for the journey activity.</p>
    #
    #   @return [String]
    #
    # @!attribute journey_id
    #   <p>The unique identifier for the journey.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The  string that specifies which page of results to return in a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    #
    #   @return [String]
    #
    # @!attribute page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    #
    #   @return [String]
    #
    GetJourneyExecutionActivityMetricsInput = ::Struct.new(
      :application_id,
      :journey_activity_id,
      :journey_id,
      :next_token,
      :page_size,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute journey_execution_activity_metrics_response
    #   <p>Provides the results of a query that retrieved the data for a standard execution metric that applies to a journey activity, and provides information about that query.</p>
    #
    #   @return [JourneyExecutionActivityMetricsResponse]
    #
    GetJourneyExecutionActivityMetricsOutput = ::Struct.new(
      :journey_execution_activity_metrics_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    # @!attribute journey_id
    #   <p>The unique identifier for the journey.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The  string that specifies which page of results to return in a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    #
    #   @return [String]
    #
    # @!attribute page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    #
    #   @return [String]
    #
    GetJourneyExecutionMetricsInput = ::Struct.new(
      :application_id,
      :journey_id,
      :next_token,
      :page_size,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute journey_execution_metrics_response
    #   <p>Provides the results of a query that retrieved the data for a standard execution metric that applies to a journey, and provides information about that query.</p>
    #
    #   @return [JourneyExecutionMetricsResponse]
    #
    GetJourneyExecutionMetricsOutput = ::Struct.new(
      :journey_execution_metrics_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    # @!attribute journey_id
    #   <p>The unique identifier for the journey.</p>
    #
    #   @return [String]
    #
    GetJourneyInput = ::Struct.new(
      :application_id,
      :journey_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute journey_response
    #   <p>Provides information about the status, configuration, and other settings for a journey.</p>
    #
    #   @return [JourneyResponse]
    #
    GetJourneyOutput = ::Struct.new(
      :journey_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend="templates-template-name-template-type-versions">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>
    #
    #   @return [String]
    #
    GetPushTemplateInput = ::Struct.new(
      :template_name,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute push_notification_template_response
    #   <p>Provides information about the content and settings for a message template that can be used in messages that are sent through a push notification channel.</p>
    #
    #   @return [PushNotificationTemplateResponse]
    #
    GetPushTemplateOutput = ::Struct.new(
      :push_notification_template_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute recommender_id
    #   <p>The unique identifier for the recommender model configuration. This identifier is displayed as the <b>Recommender ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    GetRecommenderConfigurationInput = ::Struct.new(
      :recommender_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute recommender_configuration_response
    #   <p>Provides information about Amazon Pinpoint configuration settings for retrieving and processing data from a recommender model.</p>
    #
    #   @return [RecommenderConfigurationResponse]
    #
    GetRecommenderConfigurationOutput = ::Struct.new(
      :recommender_configuration_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    #
    #   @return [String]
    #
    # @!attribute token
    #   <p>The NextToken string that specifies which page of results to return in a paginated response.</p>
    #
    #   @return [String]
    #
    GetRecommenderConfigurationsInput = ::Struct.new(
      :page_size,
      :token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute list_recommender_configurations_response
    #   <p>Provides information about all the recommender model configurations that are associated with your Amazon Pinpoint account.</p>
    #
    #   @return [ListRecommenderConfigurationsResponse]
    #
    GetRecommenderConfigurationsOutput = ::Struct.new(
      :list_recommender_configurations_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    # @!attribute page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    #
    #   @return [String]
    #
    # @!attribute segment_id
    #   <p>The unique identifier for the segment.</p>
    #
    #   @return [String]
    #
    # @!attribute token
    #   <p>The NextToken string that specifies which page of results to return in a paginated response.</p>
    #
    #   @return [String]
    #
    GetSegmentExportJobsInput = ::Struct.new(
      :application_id,
      :page_size,
      :segment_id,
      :token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute export_jobs_response
    #   <p>Provides information about all the export jobs that are associated with an application or segment. An export job is a job that exports endpoint definitions to a file.</p>
    #
    #   @return [ExportJobsResponse]
    #
    GetSegmentExportJobsOutput = ::Struct.new(
      :export_jobs_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    # @!attribute page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    #
    #   @return [String]
    #
    # @!attribute segment_id
    #   <p>The unique identifier for the segment.</p>
    #
    #   @return [String]
    #
    # @!attribute token
    #   <p>The NextToken string that specifies which page of results to return in a paginated response.</p>
    #
    #   @return [String]
    #
    GetSegmentImportJobsInput = ::Struct.new(
      :application_id,
      :page_size,
      :segment_id,
      :token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute import_jobs_response
    #   <p>Provides information about the status and settings of all the import jobs that are associated with an application or segment. An import job is a job that imports endpoint definitions from one or more files.</p>
    #
    #   @return [ImportJobsResponse]
    #
    GetSegmentImportJobsOutput = ::Struct.new(
      :import_jobs_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    # @!attribute segment_id
    #   <p>The unique identifier for the segment.</p>
    #
    #   @return [String]
    #
    GetSegmentInput = ::Struct.new(
      :application_id,
      :segment_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute segment_response
    #   <p>Provides information about the configuration, dimension, and other settings for a segment.</p>
    #
    #   @return [SegmentResponse]
    #
    GetSegmentOutput = ::Struct.new(
      :segment_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    # @!attribute segment_id
    #   <p>The unique identifier for the segment.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The unique version number (Version property) for the campaign version.</p>
    #
    #   @return [String]
    #
    GetSegmentVersionInput = ::Struct.new(
      :application_id,
      :segment_id,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute segment_response
    #   <p>Provides information about the configuration, dimension, and other settings for a segment.</p>
    #
    #   @return [SegmentResponse]
    #
    GetSegmentVersionOutput = ::Struct.new(
      :segment_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    # @!attribute page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    #
    #   @return [String]
    #
    # @!attribute segment_id
    #   <p>The unique identifier for the segment.</p>
    #
    #   @return [String]
    #
    # @!attribute token
    #   <p>The NextToken string that specifies which page of results to return in a paginated response.</p>
    #
    #   @return [String]
    #
    GetSegmentVersionsInput = ::Struct.new(
      :application_id,
      :page_size,
      :segment_id,
      :token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute segments_response
    #   <p>Provides information about all the segments that are associated with an application.</p>
    #
    #   @return [SegmentsResponse]
    #
    GetSegmentVersionsOutput = ::Struct.new(
      :segments_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    # @!attribute page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    #
    #   @return [String]
    #
    # @!attribute token
    #   <p>The NextToken string that specifies which page of results to return in a paginated response.</p>
    #
    #   @return [String]
    #
    GetSegmentsInput = ::Struct.new(
      :application_id,
      :page_size,
      :token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute segments_response
    #   <p>Provides information about all the segments that are associated with an application.</p>
    #
    #   @return [SegmentsResponse]
    #
    GetSegmentsOutput = ::Struct.new(
      :segments_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    GetSmsChannelInput = ::Struct.new(
      :application_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute sms_channel_response
    #   <p>Provides information about the status and settings of the SMS channel for an application.</p>
    #
    #   @return [SMSChannelResponse]
    #
    GetSmsChannelOutput = ::Struct.new(
      :sms_channel_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend="templates-template-name-template-type-versions">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>
    #
    #   @return [String]
    #
    GetSmsTemplateInput = ::Struct.new(
      :template_name,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute sms_template_response
    #   <p>Provides information about the content and settings for a message template that can be used in text messages that are sent through the SMS channel.</p>
    #
    #   @return [SMSTemplateResponse]
    #
    GetSmsTemplateOutput = ::Struct.new(
      :sms_template_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    # @!attribute user_id
    #   <p>The unique identifier for the user.</p>
    #
    #   @return [String]
    #
    GetUserEndpointsInput = ::Struct.new(
      :application_id,
      :user_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute endpoints_response
    #   <p>Provides information about all the endpoints that are associated with a user ID.</p>
    #
    #   @return [EndpointsResponse]
    #
    GetUserEndpointsOutput = ::Struct.new(
      :endpoints_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    GetVoiceChannelInput = ::Struct.new(
      :application_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute voice_channel_response
    #   <p>Provides information about the status and settings of the voice channel for an application.</p>
    #
    #   @return [VoiceChannelResponse]
    #
    GetVoiceChannelOutput = ::Struct.new(
      :voice_channel_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend="templates-template-name-template-type-versions">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>
    #
    #   @return [String]
    #
    GetVoiceTemplateInput = ::Struct.new(
      :template_name,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute voice_template_response
    #   <p>Provides information about the content and settings for a message template that can be used in messages that are sent through the voice channel.</p>
    #
    #   @return [VoiceTemplateResponse]
    #
    GetVoiceTemplateOutput = ::Struct.new(
      :voice_template_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the settings for a holdout activity in a journey. This type of activity stops a journey for a specified percentage of participants.</p>
    #
    # @!attribute next_activity
    #   <p>The unique identifier for the next activity to perform, after performing the holdout activity.</p>
    #
    #   @return [String]
    #
    # @!attribute percentage
    #   <p>The percentage of participants who shouldn't continue the journey.</p> <p>To determine which participants are held out, Amazon Pinpoint applies a probability-based algorithm to the percentage that you specify. Therefore, the actual percentage of participants who are held out may not be equal to the percentage that you specify.</p>
    #
    #   @return [Integer]
    #
    HoldoutActivity = ::Struct.new(
      :next_activity,
      :percentage,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.percentage ||= 0
      end

    end

    # <p>Specifies the settings for a job that imports endpoint definitions from an Amazon Simple Storage Service (Amazon S3) bucket.</p>
    #
    # @!attribute define_segment
    #   <p>Specifies whether to create a segment that contains the endpoints, when the endpoint definitions are imported.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute external_id
    #   <p>(Deprecated) Your AWS account ID, which you assigned to an external ID key in an IAM trust policy. Amazon Pinpoint previously used this value to assume an IAM role when importing endpoint definitions, but we removed this requirement. We don't recommend use of external IDs for IAM roles that are assumed by Amazon Pinpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute format
    #   <p>The format of the files that contain the endpoint definitions to import. Valid values are: CSV, for comma-separated values format; and, JSON, for newline-delimited JSON format. If the Amazon S3 location stores multiple files that use different formats, Amazon Pinpoint imports data only from the files that use the specified format.</p>
    #
    #   Enum, one of: ["CSV", "JSON"]
    #
    #   @return [String]
    #
    # @!attribute register_endpoints
    #   <p>Specifies whether to register the endpoints with Amazon Pinpoint, when the endpoint definitions are imported.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that authorizes Amazon Pinpoint to access the Amazon S3 location to import endpoint definitions from.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_url
    #   <p>The URL of the Amazon Simple Storage Service (Amazon S3) bucket that contains the endpoint definitions to import. This location can be a folder or a single file. If the location is a folder, Amazon Pinpoint imports endpoint definitions from the files in this location, including any subfolders that the folder contains.</p> <p>The URL should be in the following format: s3://<replaceable>bucket-name</replaceable>/<replaceable>folder-name</replaceable>/<replaceable>file-name</replaceable>. The location can end with the key for an individual object or a prefix that qualifies multiple objects.</p>
    #
    #   @return [String]
    #
    # @!attribute segment_id
    #   <p>The identifier for the segment to update or add the imported endpoint definitions to, if the import job is meant to update an existing segment.</p>
    #
    #   @return [String]
    #
    # @!attribute segment_name
    #   <p>A custom name for the segment that's created by the import job, if the value of the DefineSegment property is true.</p>
    #
    #   @return [String]
    #
    ImportJobRequest = ::Struct.new(
      :define_segment,
      :external_id,
      :format,
      :register_endpoints,
      :role_arn,
      :s3_url,
      :segment_id,
      :segment_name,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.define_segment ||= false
        self.register_endpoints ||= false
      end

    end

    # <p>Provides information about the resource settings for a job that imports endpoint definitions from one or more files. The files can be stored in an Amazon Simple Storage Service (Amazon S3) bucket or uploaded directly from a computer by using the Amazon Pinpoint console.</p>
    #
    # @!attribute define_segment
    #   <p>Specifies whether the import job creates a segment that contains the endpoints, when the endpoint definitions are imported.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute external_id
    #   <p>(Deprecated) Your AWS account ID, which you assigned to an external ID key in an IAM trust policy. Amazon Pinpoint previously used this value to assume an IAM role when importing endpoint definitions, but we removed this requirement. We don't recommend use of external IDs for IAM roles that are assumed by Amazon Pinpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute format
    #   <p>The format of the files that contain the endpoint definitions to import. Valid values are: CSV, for comma-separated values format; and, JSON, for newline-delimited JSON format.</p> <p>If the files are stored in an Amazon S3 location and that location contains multiple files that use different formats, Amazon Pinpoint imports data only from the files that use the specified format.</p>
    #
    #   Enum, one of: ["CSV", "JSON"]
    #
    #   @return [String]
    #
    # @!attribute register_endpoints
    #   <p>Specifies whether the import job registers the endpoints with Amazon Pinpoint, when the endpoint definitions are imported.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that authorizes Amazon Pinpoint to access the Amazon S3 location to import endpoint definitions from.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_url
    #   <p>The URL of the Amazon Simple Storage Service (Amazon S3) bucket that contains the endpoint definitions to import. This location can be a folder or a single file. If the location is a folder, Amazon Pinpoint imports endpoint definitions from the files in this location, including any subfolders that the folder contains.</p> <p>The URL should be in the following format: s3://<replaceable>bucket-name</replaceable>/<replaceable>folder-name</replaceable>/<replaceable>file-name</replaceable>. The location can end with the key for an individual object or a prefix that qualifies multiple objects.</p>
    #
    #   @return [String]
    #
    # @!attribute segment_id
    #   <p>The identifier for the segment that the import job updates or adds endpoint definitions to, if the import job updates an existing segment.</p>
    #
    #   @return [String]
    #
    # @!attribute segment_name
    #   <p>The custom name for the segment that's created by the import job, if the value of the DefineSegment property is true.</p>
    #
    #   @return [String]
    #
    ImportJobResource = ::Struct.new(
      :define_segment,
      :external_id,
      :format,
      :register_endpoints,
      :role_arn,
      :s3_url,
      :segment_id,
      :segment_name,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.define_segment ||= false
        self.register_endpoints ||= false
      end

    end

    # <p>Provides information about the status and settings of a job that imports endpoint definitions from one or more files. The files can be stored in an Amazon Simple Storage Service (Amazon S3) bucket or uploaded directly from a computer by using the Amazon Pinpoint console.</p>
    #
    # @!attribute application_id
    #   <p>The unique identifier for the application that's associated with the import job.</p>
    #
    #   @return [String]
    #
    # @!attribute completed_pieces
    #   <p>The number of pieces that were processed successfully (completed) by the import job, as of the time of the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute completion_date
    #   <p>The date, in ISO 8601 format, when the import job was completed.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date, in ISO 8601 format, when the import job was created.</p>
    #
    #   @return [String]
    #
    # @!attribute definition
    #   <p>The resource settings that apply to the import job.</p>
    #
    #   @return [ImportJobResource]
    #
    # @!attribute failed_pieces
    #   <p>The number of pieces that weren't processed successfully (failed) by the import job, as of the time of the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute failures
    #   <p>An array of entries, one for each of the first 100 entries that weren't processed successfully (failed) by the import job, if any.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute id
    #   <p>The unique identifier for the import job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_status
    #   <p>The status of the import job. The job status is FAILED if Amazon Pinpoint wasn't able to process one or more pieces in the job.</p>
    #
    #   Enum, one of: ["CREATED", "PREPARING_FOR_INITIALIZATION", "INITIALIZING", "PROCESSING", "PENDING_JOB", "COMPLETING", "COMPLETED", "FAILING", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute total_failures
    #   <p>The total number of endpoint definitions that weren't processed successfully (failed) by the import job, typically because an error, such as a syntax error, occurred.</p>
    #
    #   @return [Integer]
    #
    # @!attribute total_pieces
    #   <p>The total number of pieces that must be processed to complete the import job. Each piece consists of an approximately equal portion of the endpoint definitions that are part of the import job.</p>
    #
    #   @return [Integer]
    #
    # @!attribute total_processed
    #   <p>The total number of endpoint definitions that were processed by the import job.</p>
    #
    #   @return [Integer]
    #
    # @!attribute type
    #   <p>The job type. This value is IMPORT for import jobs.</p>
    #
    #   @return [String]
    #
    ImportJobResponse = ::Struct.new(
      :application_id,
      :completed_pieces,
      :completion_date,
      :creation_date,
      :definition,
      :failed_pieces,
      :failures,
      :id,
      :job_status,
      :total_failures,
      :total_pieces,
      :total_processed,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.completed_pieces ||= 0
        self.failed_pieces ||= 0
        self.total_failures ||= 0
        self.total_pieces ||= 0
        self.total_processed ||= 0
      end

    end

    # <p>Provides information about the status and settings of all the import jobs that are associated with an application or segment. An import job is a job that imports endpoint definitions from one or more files.</p>
    #
    # @!attribute item
    #   <p>An array of responses, one for each import job that's associated with the application (Import Jobs resource) or segment (Segment Import Jobs resource).</p>
    #
    #   @return [Array<ImportJobResponse>]
    #
    # @!attribute next_token
    #   <p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>
    #
    #   @return [String]
    #
    ImportJobsResponse = ::Struct.new(
      :item,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Schedule of the campaign.</p>
    #
    # @!attribute end_date
    #   <p>The scheduled time after which the in-app message should not be shown. Timestamp is in ISO 8601 format.</p>
    #
    #   @return [String]
    #
    # @!attribute event_filter
    #   <p>The event filter the SDK has to use to show the in-app message in the application.</p>
    #
    #   @return [CampaignEventFilter]
    #
    # @!attribute quiet_time
    #   <p>Time during which the in-app message should not be shown to the user.</p>
    #
    #   @return [QuietTime]
    #
    InAppCampaignSchedule = ::Struct.new(
      :end_date,
      :event_filter,
      :quiet_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides all fields required for building an in-app message.</p>
    #
    # @!attribute content
    #   <p>In-app message content.</p>
    #
    #   @return [Array<InAppMessageContent>]
    #
    # @!attribute custom_config
    #   <p>Custom config to be sent to SDK.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute layout
    #   <p>The layout of the message.</p>
    #
    #   Enum, one of: ["BOTTOM_BANNER", "TOP_BANNER", "OVERLAYS", "MOBILE_FEED", "MIDDLE_BANNER", "CAROUSEL"]
    #
    #   @return [String]
    #
    InAppMessage = ::Struct.new(
      :content,
      :custom_config,
      :layout,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Text config for Message Body.</p>
    #
    # @!attribute alignment
    #   <p>The alignment of the text. Valid values: LEFT, CENTER, RIGHT.</p>
    #
    #   Enum, one of: ["LEFT", "CENTER", "RIGHT"]
    #
    #   @return [String]
    #
    # @!attribute body
    #   <p>Message Body.</p>
    #
    #   @return [String]
    #
    # @!attribute text_color
    #   <p>The text color.</p>
    #
    #   @return [String]
    #
    InAppMessageBodyConfig = ::Struct.new(
      :alignment,
      :body,
      :text_color,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Button Config for an in-app message.</p>
    #
    # @!attribute android
    #   <p>Default button content.</p>
    #
    #   @return [OverrideButtonConfiguration]
    #
    # @!attribute default_config
    #   <p>Default button content.</p>
    #
    #   @return [DefaultButtonConfiguration]
    #
    # @!attribute ios
    #   <p>Default button content.</p>
    #
    #   @return [OverrideButtonConfiguration]
    #
    # @!attribute web
    #   <p>Default button content.</p>
    #
    #   @return [OverrideButtonConfiguration]
    #
    InAppMessageButton = ::Struct.new(
      :android,
      :default_config,
      :ios,
      :web,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Targeted in-app message campaign.</p>
    #
    # @!attribute campaign_id
    #   <p>Campaign id of the corresponding campaign.</p>
    #
    #   @return [String]
    #
    # @!attribute daily_cap
    #   <p>Daily cap which controls the number of times any in-app messages can be shown to the endpoint during a day.</p>
    #
    #   @return [Integer]
    #
    # @!attribute in_app_message
    #   <p>In-app message content with all fields required for rendering an in-app message.</p>
    #
    #   @return [InAppMessage]
    #
    # @!attribute priority
    #   <p>Priority of the in-app message.</p>
    #
    #   @return [Integer]
    #
    # @!attribute schedule
    #   <p>Schedule of the campaign.</p>
    #
    #   @return [InAppCampaignSchedule]
    #
    # @!attribute session_cap
    #   <p>Session cap which controls the number of times an in-app message can be shown to the endpoint during an application session.</p>
    #
    #   @return [Integer]
    #
    # @!attribute total_cap
    #   <p>Total cap which controls the number of times an in-app message can be shown to the endpoint.</p>
    #
    #   @return [Integer]
    #
    # @!attribute treatment_id
    #   <p>Treatment id of the campaign.</p>
    #
    #   @return [String]
    #
    InAppMessageCampaign = ::Struct.new(
      :campaign_id,
      :daily_cap,
      :in_app_message,
      :priority,
      :schedule,
      :session_cap,
      :total_cap,
      :treatment_id,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.daily_cap ||= 0
        self.priority ||= 0
        self.session_cap ||= 0
        self.total_cap ||= 0
      end

    end

    # <p>The configuration for the message content.</p>
    #
    # @!attribute background_color
    #   <p>The background color for the message.</p>
    #
    #   @return [String]
    #
    # @!attribute body_config
    #   <p>The configuration for the message body.</p>
    #
    #   @return [InAppMessageBodyConfig]
    #
    # @!attribute header_config
    #   <p>The configuration for the message header.</p>
    #
    #   @return [InAppMessageHeaderConfig]
    #
    # @!attribute image_url
    #   <p>The image url for the background of message.</p>
    #
    #   @return [String]
    #
    # @!attribute primary_btn
    #   <p>The first button inside the message.</p>
    #
    #   @return [InAppMessageButton]
    #
    # @!attribute secondary_btn
    #   <p>The second button inside message.</p>
    #
    #   @return [InAppMessageButton]
    #
    InAppMessageContent = ::Struct.new(
      :background_color,
      :body_config,
      :header_config,
      :image_url,
      :primary_btn,
      :secondary_btn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Text config for Message Header.</p>
    #
    # @!attribute alignment
    #   <p>The alignment of the text. Valid values: LEFT, CENTER, RIGHT.</p>
    #
    #   Enum, one of: ["LEFT", "CENTER", "RIGHT"]
    #
    #   @return [String]
    #
    # @!attribute header
    #   <p>Message Header.</p>
    #
    #   @return [String]
    #
    # @!attribute text_color
    #   <p>The text color.</p>
    #
    #   @return [String]
    #
    InAppMessageHeaderConfig = ::Struct.new(
      :alignment,
      :header,
      :text_color,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Get in-app messages response object.</p>
    #
    # @!attribute in_app_message_campaigns
    #   <p>List of targeted in-app message campaigns.</p>
    #
    #   @return [Array<InAppMessageCampaign>]
    #
    InAppMessagesResponse = ::Struct.new(
      :in_app_message_campaigns,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>InApp Template Request.</p>
    #
    # @!attribute content
    #   <p>The content of the message, can include up to 5 modals. Each modal must contain a message, a header, and background color. ImageUrl and buttons are optional.</p>
    #
    #   @return [Array<InAppMessageContent>]
    #
    # @!attribute custom_config
    #   <p>Custom config to be sent to client.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute layout
    #   <p>The layout of the message.</p>
    #
    #   Enum, one of: ["BOTTOM_BANNER", "TOP_BANNER", "OVERLAYS", "MOBILE_FEED", "MIDDLE_BANNER", "CAROUSEL"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A string-to-string map of key-value pairs that defines the tags to associate with the message template. Each tag consists of a required tag key and an associated tag value.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute template_description
    #   <p>The description of the template.</p>
    #
    #   @return [String]
    #
    InAppTemplateRequest = ::Struct.new(
      :content,
      :custom_config,
      :layout,
      :tags,
      :template_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>In-App Template Response.</p>
    #
    # @!attribute arn
    #   <p>The resource arn of the template.</p>
    #
    #   @return [String]
    #
    # @!attribute content
    #   <p>The content of the message, can include up to 5 modals. Each modal must contain a message, a header, and background color. ImageUrl and buttons are optional.</p>
    #
    #   @return [Array<InAppMessageContent>]
    #
    # @!attribute creation_date
    #   <p>The creation date of the template.</p>
    #
    #   @return [String]
    #
    # @!attribute custom_config
    #   <p>Custom config to be sent to client.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute last_modified_date
    #   <p>The last modified date of the template.</p>
    #
    #   @return [String]
    #
    # @!attribute layout
    #   <p>The layout of the message.</p>
    #
    #   Enum, one of: ["BOTTOM_BANNER", "TOP_BANNER", "OVERLAYS", "MOBILE_FEED", "MIDDLE_BANNER", "CAROUSEL"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A string-to-string map of key-value pairs that defines the tags to associate with the message template. Each tag consists of a required tag key and an associated tag value.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute template_description
    #   <p>The description of the template.</p>
    #
    #   @return [String]
    #
    # @!attribute template_name
    #   <p>The name of the template.</p>
    #
    #   @return [String]
    #
    # @!attribute template_type
    #   <p>The type of the template.</p>
    #
    #   Enum, one of: ["EMAIL", "SMS", "VOICE", "PUSH", "INAPP"]
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version id of the template.</p>
    #
    #   @return [String]
    #
    InAppTemplateResponse = ::Struct.new(
      :arn,
      :content,
      :creation_date,
      :custom_config,
      :last_modified_date,
      :layout,
      :tags,
      :template_description,
      :template_name,
      :template_type,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Include
    #
    module Include
      # No documentation available.
      #
      ALL = "ALL"

      # No documentation available.
      #
      ANY = "ANY"

      # No documentation available.
      #
      NONE = "NONE"
    end

    # <p>Provides information about an API request or response.</p>
    #
    # @!attribute message
    #   <p>The message that's returned from the API.</p>
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The unique identifier for the request or response.</p>
    #
    #   @return [String]
    #
    InternalServerErrorException = ::Struct.new(
      :message,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about the results of a request to create or update an endpoint that's associated with an event.</p>
    #
    # @!attribute endpoint_item_response
    #   <p>The response that was received after the endpoint data was accepted.</p>
    #
    #   @return [EndpointItemResponse]
    #
    # @!attribute events_item_response
    #   <p>A multipart response object that contains a key and a value for each event in the request. In each object, the event ID is the key and an EventItemResponse object is the value.</p>
    #
    #   @return [Hash<String, EventItemResponse>]
    #
    ItemResponse = ::Struct.new(
      :endpoint_item_response,
      :events_item_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for JobStatus
    #
    module JobStatus
      # No documentation available.
      #
      CREATED = "CREATED"

      # No documentation available.
      #
      PREPARING_FOR_INITIALIZATION = "PREPARING_FOR_INITIALIZATION"

      # No documentation available.
      #
      INITIALIZING = "INITIALIZING"

      # No documentation available.
      #
      PROCESSING = "PROCESSING"

      # No documentation available.
      #
      PENDING_JOB = "PENDING_JOB"

      # No documentation available.
      #
      COMPLETING = "COMPLETING"

      # No documentation available.
      #
      COMPLETED = "COMPLETED"

      # No documentation available.
      #
      FAILING = "FAILING"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>The channel-specific configurations for the journey.</p>
    #
    # @!attribute connect_campaign_arn
    #   <p>Amazon Resource Name (ARN) of the Connect Campaign.</p>
    #
    #   @return [String]
    #
    # @!attribute connect_campaign_execution_role_arn
    #   <p>IAM role ARN to be assumed when invoking Connect campaign execution APIs for dialing.</p>
    #
    #   @return [String]
    #
    JourneyChannelSettings = ::Struct.new(
      :connect_campaign_arn,
      :connect_campaign_execution_role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the message content for a custom channel message that's sent to participants in a journey.</p>
    #
    # @!attribute data
    #   <p>The message content that's passed to an AWS Lambda function or to a web hook.</p>
    #
    #   @return [String]
    #
    JourneyCustomMessage = ::Struct.new(
      :data,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides the results of a query that retrieved the data for a standard engagement metric that applies to a journey, and provides information about that query.</p>
    #
    # @!attribute application_id
    #   <p>The unique identifier for the application that the metric applies to.</p>
    #
    #   @return [String]
    #
    # @!attribute end_time
    #   <p>The last date and time of the date range that was used to filter the query results, in extended ISO 8601 format. The date range is inclusive.</p>
    #
    #   @return [Time]
    #
    # @!attribute journey_id
    #   <p>The unique identifier for the journey that the metric applies to.</p>
    #
    #   @return [String]
    #
    # @!attribute kpi_name
    #   <p>The name of the metric, also referred to as a <i>key performance indicator (KPI)</i>, that the data was retrieved for. This value describes the associated metric and consists of two or more terms, which are comprised of lowercase alphanumeric characters, separated by a hyphen. For a list of possible values, see the <a href="https://docs.aws.amazon.com/pinpoint/latest/developerguide/analytics-standard-metrics.html">Amazon Pinpoint Developer Guide</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute kpi_result
    #   <p>An array of objects that contains the results of the query. Each object contains the value for the metric and metadata about that value.</p>
    #
    #   @return [BaseKpiResult]
    #
    # @!attribute next_token
    #   <p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null for the Journey Engagement Metrics resource because the resource returns all results in a single page.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The first date and time of the date range that was used to filter the query results, in extended ISO 8601 format. The date range is inclusive.</p>
    #
    #   @return [Time]
    #
    JourneyDateRangeKpiResponse = ::Struct.new(
      :application_id,
      :end_time,
      :journey_id,
      :kpi_name,
      :kpi_result,
      :next_token,
      :start_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the "From" address for an email message that's sent to participants in a journey.</p>
    #
    # @!attribute from_address
    #   <p>The verified email address to send the email message from. The default address is the FromAddress specified for the email channel for the application.</p>
    #
    #   @return [String]
    #
    JourneyEmailMessage = ::Struct.new(
      :from_address,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides the results of a query that retrieved the data for a standard execution metric that applies to a journey activity, and provides information about that query.</p>
    #
    # @!attribute activity_type
    #   <p>The type of activity that the metric applies to. Possible values are:</p> <ul><li><p>CONDITIONAL_SPLIT - For a yes/no split activity, which is an activity that sends participants down one of two paths in a journey.</p></li> <li><p>HOLDOUT - For a holdout activity, which is an activity that stops a journey for a specified percentage of participants.</p></li> <li><p>MESSAGE - For an email activity, which is an activity that sends an email message to participants.</p></li> <li><p>MULTI_CONDITIONAL_SPLIT - For a multivariate split activity, which is an activity that sends participants down one of as many as five paths in a journey.</p></li> <li><p>RANDOM_SPLIT - For a random split activity, which is an activity that sends specified percentages of participants down one of as many as five paths in a journey.</p></li> <li><p>WAIT - For a wait activity, which is an activity that waits for a certain amount of time or until a specific date and time before moving participants to the next activity in a journey.</p></li></ul>
    #
    #   @return [String]
    #
    # @!attribute application_id
    #   <p>The unique identifier for the application that the metric applies to.</p>
    #
    #   @return [String]
    #
    # @!attribute journey_activity_id
    #   <p>The unique identifier for the activity that the metric applies to.</p>
    #
    #   @return [String]
    #
    # @!attribute journey_id
    #   <p>The unique identifier for the journey that the metric applies to.</p>
    #
    #   @return [String]
    #
    # @!attribute last_evaluated_time
    #   <p>The date and time, in ISO 8601 format, when Amazon Pinpoint last evaluated the execution status of the activity and updated the data for the metric.</p>
    #
    #   @return [String]
    #
    # @!attribute metrics
    #   <p>A JSON object that contains the results of the query. The results vary depending on the type of activity (ActivityType). For information about the structure and contents of the results, see the <a href="https://docs.aws.amazon.com/pinpoint/latest/developerguide/analytics-standard-metrics.html">Amazon Pinpoint Developer Guide</a>.</p>
    #
    #   @return [Hash<String, String>]
    #
    JourneyExecutionActivityMetricsResponse = ::Struct.new(
      :activity_type,
      :application_id,
      :journey_activity_id,
      :journey_id,
      :last_evaluated_time,
      :metrics,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides the results of a query that retrieved the data for a standard execution metric that applies to a journey, and provides information about that query.</p>
    #
    # @!attribute application_id
    #   <p>The unique identifier for the application that the metric applies to.</p>
    #
    #   @return [String]
    #
    # @!attribute journey_id
    #   <p>The unique identifier for the journey that the metric applies to.</p>
    #
    #   @return [String]
    #
    # @!attribute last_evaluated_time
    #   <p>The date and time, in ISO 8601 format, when Amazon Pinpoint last evaluated the journey and updated the data for the metric.</p>
    #
    #   @return [String]
    #
    # @!attribute metrics
    #   <p>A JSON object that contains the results of the query. For information about the structure and contents of the results, see the <a href="https://docs.aws.amazon.com//pinpoint/latest/developerguide/analytics-standard-metrics.html">Amazon Pinpoint Developer Guide</a>.</p>
    #
    #   @return [Hash<String, String>]
    #
    JourneyExecutionMetricsResponse = ::Struct.new(
      :application_id,
      :journey_id,
      :last_evaluated_time,
      :metrics,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies limits on the messages that a journey can send and the number of times participants can enter a journey.</p>
    #
    # @!attribute daily_cap
    #   <p>The maximum number of messages that the journey can send to a single participant during a 24-hour period. The maximum value is 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute endpoint_reentry_cap
    #   <p>The maximum number of times that a participant can enter the journey. The maximum value is 100. To allow participants to enter the journey an unlimited number of times, set this value to 0.</p>
    #
    #   @return [Integer]
    #
    # @!attribute messages_per_second
    #   <p>The maximum number of messages that the journey can send each second.</p>
    #
    #   @return [Integer]
    #
    # @!attribute endpoint_reentry_interval
    #   <p>Minimum time that must pass before an endpoint can re-enter a given journey. The duration should use an ISO 8601 format, such as PT1H. </p>
    #
    #   @return [String]
    #
    JourneyLimits = ::Struct.new(
      :daily_cap,
      :endpoint_reentry_cap,
      :messages_per_second,
      :endpoint_reentry_interval,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.daily_cap ||= 0
        self.endpoint_reentry_cap ||= 0
        self.messages_per_second ||= 0
      end

    end

    # <p>Specifies the message configuration for a push notification that's sent to participants in a journey.</p>
    #
    # @!attribute time_to_live
    #   <p>The number of seconds that the push notification service should keep the message, if the service is unable to deliver the notification the first time. This value is converted to an expiration value when it's sent to a push-notification service. If this value is 0, the service treats the notification as if it expires immediately and the service doesn't store or try to deliver the notification again.</p> <p>This value doesn't apply to messages that are sent through the Amazon Device Messaging (ADM) service.</p>
    #
    #   @return [String]
    #
    JourneyPushMessage = ::Struct.new(
      :time_to_live,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about the status, configuration, and other settings for a journey.</p>
    #
    # @!attribute activities
    #   <p>A map that contains a set of Activity objects, one object for each activity in the journey. For each Activity object, the key is the unique identifier (string) for an activity and the value is the settings for the activity.</p>
    #
    #   @return [Hash<String, Activity>]
    #
    # @!attribute application_id
    #   <p>The unique identifier for the application that the journey applies to.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date, in ISO 8601 format, when the journey was created.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The unique identifier for the journey.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_date
    #   <p>The date, in ISO 8601 format, when the journey was last modified.</p>
    #
    #   @return [String]
    #
    # @!attribute limits
    #   <p>The messaging and entry limits for the journey.</p>
    #
    #   @return [JourneyLimits]
    #
    # @!attribute local_time
    #   <p>Specifies whether the journey's scheduled start and end times use each participant's local time. If this value is true, the schedule uses each participant's local time.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute name
    #   <p>The name of the journey.</p>
    #
    #   @return [String]
    #
    # @!attribute quiet_time
    #   <p>The quiet time settings for the journey. Quiet time is a specific time range when a journey doesn't send messages to participants, if all the following conditions are met:</p> <ul><li><p>The EndpointDemographic.Timezone property of the endpoint for the participant is set to a valid value.</p></li> <li><p>The current time in the participant's time zone is later than or equal to the time specified by the QuietTime.Start property for the journey.</p></li> <li><p>The current time in the participant's time zone is earlier than or equal to the time specified by the QuietTime.End property for the journey.</p></li></ul> <p>If any of the preceding conditions isn't met, the participant will receive messages from the journey, even if quiet time is enabled.</p>
    #
    #   @return [QuietTime]
    #
    # @!attribute refresh_frequency
    #   <p>The frequency with which Amazon Pinpoint evaluates segment and event data for the journey, as a duration in ISO 8601 format.</p>
    #
    #   @return [String]
    #
    # @!attribute schedule
    #   <p>The schedule settings for the journey.</p>
    #
    #   @return [JourneySchedule]
    #
    # @!attribute start_activity
    #   <p>The unique identifier for the first activity in the journey.</p>
    #
    #   @return [String]
    #
    # @!attribute start_condition
    #   <p>The segment that defines which users are participants in the journey.</p>
    #
    #   @return [StartCondition]
    #
    # @!attribute state
    #   <p>The current status of the journey. Possible values are:</p> <ul><li><p>DRAFT - The journey is being developed and hasn't been published yet.</p></li> <li><p>ACTIVE - The journey has been developed and published. Depending on the journey's schedule, the journey may currently be running or scheduled to start running at a later time. If a journey's status is ACTIVE, you can't add, change, or remove activities from it.</p></li> <li><p>COMPLETED - The journey has been published and has finished running. All participants have entered the journey and no participants are waiting to complete the journey or any activities in the journey.</p></li> <li><p>CANCELLED - The journey has been stopped. If a journey's status is CANCELLED, you can't add, change, or remove activities or segment settings from the journey.</p></li> <li><p>CLOSED - The journey has been published and has started running. It may have also passed its scheduled end time, or passed its scheduled start time and a refresh frequency hasn't been specified for it. If a journey's status is CLOSED, you can't add participants to it, and no existing participants can enter the journey for the first time. However, any existing participants who are currently waiting to start an activity may continue the journey.</p></li></ul>
    #
    #   Enum, one of: ["DRAFT", "ACTIVE", "COMPLETED", "CANCELLED", "CLOSED", "PAUSED"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>This object is not used or supported.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute wait_for_quiet_time
    #   <p>Specifies whether endpoints in quiet hours should enter a wait till the end of their quiet hours.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute refresh_on_segment_update
    #   <p>Specifies whether a journey should be refreshed on segment update.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute journey_channel_settings
    #   <p>The channel-specific configurations for the journey.</p>
    #
    #   @return [JourneyChannelSettings]
    #
    JourneyResponse = ::Struct.new(
      :activities,
      :application_id,
      :creation_date,
      :id,
      :last_modified_date,
      :limits,
      :local_time,
      :name,
      :quiet_time,
      :refresh_frequency,
      :schedule,
      :start_activity,
      :start_condition,
      :state,
      :tags,
      :wait_for_quiet_time,
      :refresh_on_segment_update,
      :journey_channel_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.local_time ||= false
        self.wait_for_quiet_time ||= false
        self.refresh_on_segment_update ||= false
      end

    end

    # <p>Specifies the sender ID and message type for an SMS message that's sent to participants in a journey.</p>
    #
    # @!attribute message_type
    #   <p>The SMS message type. Valid values are TRANSACTIONAL (for messages that are critical or time-sensitive, such as a one-time passwords) and PROMOTIONAL (for messsages that aren't critical or time-sensitive, such as marketing messages).</p>
    #
    #   Enum, one of: ["TRANSACTIONAL", "PROMOTIONAL"]
    #
    #   @return [String]
    #
    # @!attribute origination_number
    #   <p>The long code to send the SMS message from. This value should be one of the dedicated long codes that's assigned to your AWS account. Although it isn't required, we recommend that you specify the long code using an E.164 format to ensure prompt and accurate delivery of the message. For example, +12065550100.</p>
    #
    #   @return [String]
    #
    # @!attribute sender_id
    #   <p>The sender ID to display as the sender of the message on a recipient's device. Support for sender IDs varies by country or region. For more information, see <a href="https://docs.aws.amazon.com/pinpoint/latest/userguide/channels-sms-countries.html">Supported Countries and Regions</a> in the Amazon Pinpoint User Guide.</p>
    #
    #   @return [String]
    #
    # @!attribute entity_id
    #   <p>The entity ID or Principal Entity (PE) id received from the regulatory body for sending SMS in your country.</p>
    #
    #   @return [String]
    #
    # @!attribute template_id
    #   <p>The template ID received from the regulatory body for sending SMS in your country.</p>
    #
    #   @return [String]
    #
    JourneySMSMessage = ::Struct.new(
      :message_type,
      :origination_number,
      :sender_id,
      :entity_id,
      :template_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the schedule settings for a journey.</p>
    #
    # @!attribute end_time
    #   <p>The scheduled time, in ISO 8601 format, when the journey ended or will end.</p>
    #
    #   @return [Time]
    #
    # @!attribute start_time
    #   <p>The scheduled time, in ISO 8601 format, when the journey began or will begin.</p>
    #
    #   @return [Time]
    #
    # @!attribute timezone
    #   <p>The starting UTC offset for the journey schedule, if the value of the journey's LocalTime property is true. Valid values are: UTC,
    #                     UTC+01, UTC+02, UTC+03, UTC+03:30, UTC+04, UTC+04:30, UTC+05, UTC+05:30,
    #                     UTC+05:45, UTC+06, UTC+06:30, UTC+07, UTC+08, UTC+08:45, UTC+09, UTC+09:30,
    #                     UTC+10, UTC+10:30, UTC+11, UTC+12, UTC+12:45, UTC+13, UTC+13:45, UTC-02,
    #                     UTC-02:30, UTC-03, UTC-03:30, UTC-04, UTC-05, UTC-06, UTC-07, UTC-08, UTC-09,
    #                     UTC-09:30, UTC-10, and UTC-11.</p>
    #
    #   @return [String]
    #
    JourneySchedule = ::Struct.new(
      :end_time,
      :start_time,
      :timezone,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Changes the status of a journey.</p>
    #
    # @!attribute state
    #   <p>The status of the journey. Currently, Supported values are ACTIVE, PAUSED, and CANCELLED</p> <p>If you cancel a journey, Amazon Pinpoint continues to perform activities that are currently in progress, until those activities are complete. Amazon Pinpoint also continues to collect and aggregate analytics data for those activities, until they are complete, and any activities that were complete when you cancelled the journey.</p> <p>After you cancel a journey, you can't add, change, or remove any activities from the journey. In addition, Amazon Pinpoint stops evaluating the journey and doesn't perform any activities that haven't started.</p> <p>When the journey is paused, Amazon Pinpoint continues to perform activities that are currently in progress, until those activities are complete. Endpoints will stop entering journeys when the journey is paused and will resume entering the journey after the journey is resumed. For wait activities, wait time is paused when the journey is paused. Currently, PAUSED only supports journeys with a segment refresh interval.</p>
    #
    #   Enum, one of: ["DRAFT", "ACTIVE", "COMPLETED", "CANCELLED", "CLOSED", "PAUSED"]
    #
    #   @return [String]
    #
    JourneyStateRequest = ::Struct.new(
      :state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about the status, configuration, and other settings for all the journeys that are associated with an application.</p>
    #
    # @!attribute item
    #   <p>An array of responses, one for each journey that's associated with the application.</p>
    #
    #   @return [Array<JourneyResponse>]
    #
    # @!attribute next_token
    #   <p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>
    #
    #   @return [String]
    #
    JourneysResponse = ::Struct.new(
      :item,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Layout
    #
    module Layout
      # No documentation available.
      #
      BOTTOM_BANNER = "BOTTOM_BANNER"

      # No documentation available.
      #
      TOP_BANNER = "TOP_BANNER"

      # No documentation available.
      #
      OVERLAYS = "OVERLAYS"

      # No documentation available.
      #
      MOBILE_FEED = "MOBILE_FEED"

      # No documentation available.
      #
      MIDDLE_BANNER = "MIDDLE_BANNER"

      # No documentation available.
      #
      CAROUSEL = "CAROUSEL"
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    # @!attribute page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    #
    #   @return [String]
    #
    # @!attribute token
    #   <p>The NextToken string that specifies which page of results to return in a paginated response.</p>
    #
    #   @return [String]
    #
    ListJourneysInput = ::Struct.new(
      :application_id,
      :page_size,
      :token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute journeys_response
    #   <p>Provides information about the status, configuration, and other settings for all the journeys that are associated with an application.</p>
    #
    #   @return [JourneysResponse]
    #
    ListJourneysOutput = ::Struct.new(
      :journeys_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about all the recommender model configurations that are associated with your Amazon Pinpoint account.</p>
    #
    # @!attribute item
    #   <p>An array of responses, one for each recommender model configuration that's associated with your Amazon Pinpoint account.</p>
    #
    #   @return [Array<RecommenderConfigurationResponse>]
    #
    # @!attribute next_token
    #   <p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>
    #
    #   @return [String]
    #
    ListRecommenderConfigurationsResponse = ::Struct.new(
      :item,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    ListTagsForResourceInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tags_model
    #   <p>Specifies the tags (keys and values) for an application, campaign, message template, or segment.</p>
    #
    #   @return [TagsModel]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags_model,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The  string that specifies which page of results to return in a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    #
    #   @return [String]
    #
    # @!attribute page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    #
    #   @return [String]
    #
    # @!attribute template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    #
    #   @return [String]
    #
    # @!attribute template_type
    #   <p>The type of channel that the message template is designed for. Valid values are: EMAIL, PUSH, SMS, and VOICE.</p>
    #
    #   @return [String]
    #
    ListTemplateVersionsInput = ::Struct.new(
      :next_token,
      :page_size,
      :template_name,
      :template_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute template_versions_response
    #   <p>Provides information about all the versions of a specific message template.</p>
    #
    #   @return [TemplateVersionsResponse]
    #
    ListTemplateVersionsOutput = ::Struct.new(
      :template_versions_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The  string that specifies which page of results to return in a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    #
    #   @return [String]
    #
    # @!attribute page_size
    #   <p>The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.</p>
    #
    #   @return [String]
    #
    # @!attribute prefix
    #   <p>The substring to match in the names of the message templates to include in the results. If you specify this value, Amazon Pinpoint returns only those templates whose names begin with the value that you specify.</p>
    #
    #   @return [String]
    #
    # @!attribute template_type
    #   <p>The type of message template to include in the results. Valid values are: EMAIL, PUSH, SMS, and VOICE. To include all types of templates in the results, don't include this parameter in your request.</p>
    #
    #   @return [String]
    #
    ListTemplatesInput = ::Struct.new(
      :next_token,
      :page_size,
      :prefix,
      :template_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute templates_response
    #   <p>Provides information about all the message templates that are associated with your Amazon Pinpoint account.</p>
    #
    #   @return [TemplatesResponse]
    #
    ListTemplatesOutput = ::Struct.new(
      :templates_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the content and settings for a push notification that's sent to recipients of a campaign.</p>
    #
    # @!attribute action
    #   <p>The action to occur if a recipient taps the push notification. Valid values are:</p> <ul><li><p>OPEN_APP - Your app opens or it becomes the foreground app if it was sent to the background. This is the default action.</p></li> <li><p>DEEP_LINK - Your app opens and displays a designated user interface in the app. This setting uses the deep-linking features of iOS and Android.</p></li> <li><p>URL - The default mobile browser on the recipient's device opens and loads the web page at a URL that you specify.</p></li></ul>
    #
    #   Enum, one of: ["OPEN_APP", "DEEP_LINK", "URL"]
    #
    #   @return [String]
    #
    # @!attribute body
    #   <p>The body of the notification message. The maximum number of characters is 200.</p>
    #
    #   @return [String]
    #
    # @!attribute image_icon_url
    #   <p>The URL of the image to display as the push-notification icon, such as the icon for the app.</p>
    #
    #   @return [String]
    #
    # @!attribute image_small_icon_url
    #   <p>The URL of the image to display as the small, push-notification icon, such as a small version of the icon for the app.</p>
    #
    #   @return [String]
    #
    # @!attribute image_url
    #   <p>The URL of an image to display in the push notification.</p>
    #
    #   @return [String]
    #
    # @!attribute json_body
    #   <p>The JSON payload to use for a silent push notification.</p>
    #
    #   @return [String]
    #
    # @!attribute media_url
    #   <p>The URL of the image or video to display in the push notification.</p>
    #
    #   @return [String]
    #
    # @!attribute raw_content
    #   <p>The raw, JSON-formatted string to use as the payload for the notification message. If specified, this value overrides all other content for the message.</p>
    #
    #   @return [String]
    #
    # @!attribute silent_push
    #   <p>Specifies whether the notification is a silent push notification, which is a push notification that doesn't display on a recipient's device. Silent push notifications can be used for cases such as updating an app's configuration, displaying messages in an in-app message center, or supporting phone home functionality.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute time_to_live
    #   <p>The number of seconds that the push-notification service should keep the message, if the service is unable to deliver the notification the first time. This value is converted to an expiration value when it's sent to a push-notification service. If this value is 0, the service treats the notification as if it expires immediately and the service doesn't store or try to deliver the notification again.</p> <p>This value doesn't apply to messages that are sent through the Amazon Device Messaging (ADM) service.</p>
    #
    #   @return [Integer]
    #
    # @!attribute title
    #   <p>The title to display above the notification message on a recipient's device.</p>
    #
    #   @return [String]
    #
    # @!attribute url
    #   <p>The URL to open in a recipient's default mobile browser, if a recipient taps the push notification and the value of the Action property is URL.</p>
    #
    #   @return [String]
    #
    Message = ::Struct.new(
      :action,
      :body,
      :image_icon_url,
      :image_small_icon_url,
      :image_url,
      :json_body,
      :media_url,
      :raw_content,
      :silent_push,
      :time_to_live,
      :title,
      :url,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.silent_push ||= false
        self.time_to_live ||= 0
      end

    end

    # <p>Provides information about an API request or response.</p>
    #
    # @!attribute message
    #   <p>The message that's returned from the API.</p>
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The unique identifier for the request or response.</p>
    #
    #   @return [String]
    #
    MessageBody = ::Struct.new(
      :message,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the message configuration settings for a campaign.</p>
    #
    # @!attribute adm_message
    #   <p>The message that the campaign sends through the ADM (Amazon Device Messaging) channel. If specified, this message overrides the default message.</p>
    #
    #   @return [Message]
    #
    # @!attribute apns_message
    #   <p>The message that the campaign sends through the APNs (Apple Push Notification service) channel. If specified, this message overrides the default message.</p>
    #
    #   @return [Message]
    #
    # @!attribute baidu_message
    #   <p>The message that the campaign sends through the Baidu (Baidu Cloud Push) channel. If specified, this message overrides the default message.</p>
    #
    #   @return [Message]
    #
    # @!attribute custom_message
    #   <p>The message that the campaign sends through a custom channel, as specified by the delivery configuration (CustomDeliveryConfiguration) settings for the campaign. If specified, this message overrides the default message.</p>
    #
    #   @return [CampaignCustomMessage]
    #
    # @!attribute default_message
    #   <p>The default message that the campaign sends through all the channels that are configured for the campaign.</p>
    #
    #   @return [Message]
    #
    # @!attribute email_message
    #   <p>The message that the campaign sends through the email channel. If specified, this message overrides the default message.</p>
    #
    #   @return [CampaignEmailMessage]
    #
    # @!attribute gcm_message
    #   <p>The message that the campaign sends through the GCM channel, which enables Amazon Pinpoint to send push notifications through the Firebase Cloud Messaging (FCM), formerly Google Cloud Messaging (GCM), service. If specified, this message overrides the default message.</p>
    #
    #   @return [Message]
    #
    # @!attribute sms_message
    #   <p>The message that the campaign sends through the SMS channel. If specified, this message overrides the default message.</p>
    #
    #   @return [CampaignSmsMessage]
    #
    # @!attribute in_app_message
    #   <p>The in-app message configuration.</p>
    #
    #   @return [CampaignInAppMessage]
    #
    MessageConfiguration = ::Struct.new(
      :adm_message,
      :apns_message,
      :baidu_message,
      :custom_message,
      :default_message,
      :email_message,
      :gcm_message,
      :sms_message,
      :in_app_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the configuration and other settings for a message.</p>
    #
    # @!attribute addresses
    #   <p>A map of key-value pairs, where each key is an address and each value is an <a href="https://docs.aws.amazon.com/pinpoint/latest/apireference/apps-application-id-messages.html apps-application-id-messages-model-addressconfiguration">AddressConfiguration</a> object. An address can be a push notification token, a phone number, or an email address. You can use an <a href="https://docs.aws.amazon.com/pinpoint/latest/apireference/apps-application-id-messages.html apps-application-id-messages-model-addressconfiguration">AddressConfiguration</a> object to tailor the message for an address by specifying settings such as content overrides and message variables.</p>
    #
    #   @return [Hash<String, AddressConfiguration>]
    #
    # @!attribute context
    #   <p>A map of custom attributes to attach to the message. For a push notification, this payload is added to the data.pinpoint object. For an email or text message, this payload is added to email/SMS delivery receipt event attributes.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute endpoints
    #   <p>A map of key-value pairs, where each key is an endpoint ID and each value is an <a href="https://docs.aws.amazon.com/pinpoint/latest/apireference/apps-application-id-messages.html apps-application-id-messages-model-endpointsendconfiguration">EndpointSendConfiguration</a> object. You can use an <a href="https://docs.aws.amazon.com/pinpoint/latest/apireference/apps-application-id-messages.html apps-application-id-messages-model-endpointsendconfiguration">EndpointSendConfiguration</a> object to tailor the message for an endpoint by specifying settings such as content overrides and message variables.</p>
    #
    #   @return [Hash<String, EndpointSendConfiguration>]
    #
    # @!attribute message_configuration
    #   <p>The settings and content for the default message and any default messages that you defined for specific channels.</p>
    #
    #   @return [DirectMessageConfiguration]
    #
    # @!attribute template_configuration
    #   <p>The message template to use for the message.</p>
    #
    #   @return [TemplateConfiguration]
    #
    # @!attribute trace_id
    #   <p>The unique identifier for tracing the message. This identifier is visible to message recipients.</p>
    #
    #   @return [String]
    #
    MessageRequest = ::Struct.new(
      :addresses,
      :context,
      :endpoints,
      :message_configuration,
      :template_configuration,
      :trace_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about the results of a request to send a message to an endpoint address.</p>
    #
    # @!attribute application_id
    #   <p>The unique identifier for the application that was used to send the message.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_result
    #   <p>A map that contains a multipart response for each address that the message was sent to. In the map, the endpoint ID is the key and the result is the value.</p>
    #
    #   @return [Hash<String, EndpointMessageResult>]
    #
    # @!attribute request_id
    #   <p>The identifier for the original request that the message was delivered for.</p>
    #
    #   @return [String]
    #
    # @!attribute result
    #   <p>A map that contains a multipart response for each address (email address, phone number, or push notification token) that the message was sent to. In the map, the address is the key and the result is the value.</p>
    #
    #   @return [Hash<String, MessageResult>]
    #
    MessageResponse = ::Struct.new(
      :application_id,
      :endpoint_result,
      :request_id,
      :result,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about the results of sending a message directly to an endpoint address.</p>
    #
    # @!attribute delivery_status
    #   <p>The delivery status of the message. Possible values are:</p> <ul> <li><p>DUPLICATE - The endpoint address is a duplicate of another endpoint address. Amazon Pinpoint won't attempt to send the message again.</p></li>   <li><p>OPT_OUT - The user who's associated with the endpoint address has opted out of receiving messages from you. Amazon Pinpoint won't attempt to send the message again.</p></li> <li><p>PERMANENT_FAILURE - An error occurred when delivering the message to the endpoint address. Amazon Pinpoint won't attempt to send the message again.</p></li>   <li><p>SUCCESSFUL - The message was successfully delivered to the endpoint address.</p></li> <li><p>TEMPORARY_FAILURE - A temporary error occurred. Amazon Pinpoint won't attempt to send the message again.</p></li> <li><p>THROTTLED - Amazon Pinpoint throttled the operation to send the message to the endpoint address.</p></li> <li><p>TIMEOUT - The message couldn't be sent within the timeout period.</p></li> <li><p>UNKNOWN_FAILURE - An unknown error occurred.</p></li></ul>
    #
    #   Enum, one of: ["SUCCESSFUL", "THROTTLED", "TEMPORARY_FAILURE", "PERMANENT_FAILURE", "UNKNOWN_FAILURE", "OPT_OUT", "DUPLICATE"]
    #
    #   @return [String]
    #
    # @!attribute message_id
    #   <p>The unique identifier for the message that was sent.</p>
    #
    #   @return [String]
    #
    # @!attribute status_code
    #   <p>The downstream service status code for delivering the message.</p>
    #
    #   @return [Integer]
    #
    # @!attribute status_message
    #   <p>The status message for delivering the message.</p>
    #
    #   @return [String]
    #
    # @!attribute updated_token
    #   <p>For push notifications that are sent through the GCM channel, specifies whether the endpoint's device registration token was updated as part of delivering the message.</p>
    #
    #   @return [String]
    #
    MessageResult = ::Struct.new(
      :delivery_status,
      :message_id,
      :status_code,
      :status_message,
      :updated_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.status_code ||= 0
      end

    end

    # Includes enum constants for MessageType
    #
    module MessageType
      # No documentation available.
      #
      TRANSACTIONAL = "TRANSACTIONAL"

      # No documentation available.
      #
      PROMOTIONAL = "PROMOTIONAL"
    end

    # <p>Provides information about an API request or response.</p>
    #
    # @!attribute message
    #   <p>The message that's returned from the API.</p>
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The unique identifier for the request or response.</p>
    #
    #   @return [String]
    #
    MethodNotAllowedException = ::Struct.new(
      :message,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies metric-based criteria for including or excluding endpoints from a segment. These criteria derive from custom metrics that you define for endpoints.</p>
    #
    # @!attribute comparison_operator
    #   <p>The operator to use when comparing metric values. Valid values are: GREATER_THAN, LESS_THAN, GREATER_THAN_OR_EQUAL, LESS_THAN_OR_EQUAL, and EQUAL.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value to compare.</p>
    #
    #   @return [Float]
    #
    MetricDimension = ::Struct.new(
      :comparison_operator,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.value ||= 0
      end

    end

    # Includes enum constants for Mode
    #
    module Mode
      # No documentation available.
      #
      DELIVERY = "DELIVERY"

      # No documentation available.
      #
      FILTER = "FILTER"
    end

    # <p>Specifies a condition to evaluate for an activity path in a journey.</p>
    #
    # @!attribute condition
    #   <p>The condition to evaluate for the activity path.</p>
    #
    #   @return [SimpleCondition]
    #
    # @!attribute next_activity
    #   <p>The unique identifier for the next activity to perform, after completing the activity for the path.</p>
    #
    #   @return [String]
    #
    MultiConditionalBranch = ::Struct.new(
      :condition,
      :next_activity,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the settings for a multivariate split activity in a journey. This type of activity sends participants down one of as many as five paths (including a default <i>Else</i> path) in a journey, based on conditions that you specify.</p> <note><p>To create multivariate split activities that send participants down different paths based on push notification events (such as Open or Received events), your mobile app has to specify the User ID and Endpoint ID values. For more information, see <a href="https://docs.aws.amazon.com/pinpoint/latest/developerguide/integrate.html">Integrating Amazon Pinpoint with your application</a> in the <i>Amazon Pinpoint Developer Guide</i>.</p></note>
    #
    # @!attribute branches
    #   <p>The paths for the activity, including the conditions for entering each path and the activity to perform for each path.</p>
    #
    #   @return [Array<MultiConditionalBranch>]
    #
    # @!attribute default_activity
    #   <p>The unique identifier for the activity to perform for participants who don't meet any of the conditions specified for other paths in the activity.</p>
    #
    #   @return [String]
    #
    # @!attribute evaluation_wait_time
    #   <p>The amount of time to wait or the date and time when Amazon Pinpoint determines whether the conditions are met.</p>
    #
    #   @return [WaitTime]
    #
    MultiConditionalSplitActivity = ::Struct.new(
      :branches,
      :default_activity,
      :evaluation_wait_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about an API request or response.</p>
    #
    # @!attribute message
    #   <p>The message that's returned from the API.</p>
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The unique identifier for the request or response.</p>
    #
    #   @return [String]
    #
    NotFoundException = ::Struct.new(
      :message,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a phone number to validate and retrieve information about.</p>
    #
    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region where the phone number was originally registered.</p>
    #
    #   @return [String]
    #
    # @!attribute phone_number
    #   <p>The phone number to retrieve information about. The phone number that you provide should include a valid numeric country code. Otherwise, the operation might result in an error.</p>
    #
    #   @return [String]
    #
    NumberValidateRequest = ::Struct.new(
      :iso_country_code,
      :phone_number,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about a phone number.</p>
    #
    # @!attribute carrier
    #   <p>The carrier or service provider that the phone number is currently registered with. In some countries and regions, this value may be the carrier or service provider that the phone number was originally registered with.</p>
    #
    #   @return [String]
    #
    # @!attribute city
    #   <p>The name of the city where the phone number was originally registered.</p>
    #
    #   @return [String]
    #
    # @!attribute cleansed_phone_number_e164
    #   <p>The cleansed phone number, in E.164 format, for the location where the phone number was originally registered.</p>
    #
    #   @return [String]
    #
    # @!attribute cleansed_phone_number_national
    #   <p>The cleansed phone number, in the format for the location where the phone number was originally registered.</p>
    #
    #   @return [String]
    #
    # @!attribute country
    #   <p>The name of the country or region where the phone number was originally registered.</p>
    #
    #   @return [String]
    #
    # @!attribute country_code_iso2
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region where the phone number was originally registered.</p>
    #
    #   @return [String]
    #
    # @!attribute country_code_numeric
    #   <p>The numeric code for the country or region where the phone number was originally registered.</p>
    #
    #   @return [String]
    #
    # @!attribute county
    #   <p>The name of the county where the phone number was originally registered.</p>
    #
    #   @return [String]
    #
    # @!attribute original_country_code_iso2
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, that was sent in the request body.</p>
    #
    #   @return [String]
    #
    # @!attribute original_phone_number
    #   <p>The phone number that was sent in the request body.</p>
    #
    #   @return [String]
    #
    # @!attribute phone_type
    #   <p>The description of the phone type. Valid values are: MOBILE, LANDLINE, VOIP,
    #                     INVALID, PREPAID, and OTHER.</p>
    #
    #   @return [String]
    #
    # @!attribute phone_type_code
    #   <p>The phone type, represented by an integer. Valid values are: 0 (mobile), 1 (landline), 2 (VoIP), 3 (invalid), 4 (other), and 5 (prepaid).</p>
    #
    #   @return [Integer]
    #
    # @!attribute timezone
    #   <p>The time zone for the location where the phone number was originally registered.</p>
    #
    #   @return [String]
    #
    # @!attribute zip_code
    #   <p>The postal or ZIP code for the location where the phone number was originally registered.</p>
    #
    #   @return [String]
    #
    NumberValidateResponse = ::Struct.new(
      :carrier,
      :city,
      :cleansed_phone_number_e164,
      :cleansed_phone_number_national,
      :country,
      :country_code_iso2,
      :country_code_numeric,
      :county,
      :original_country_code_iso2,
      :original_phone_number,
      :phone_type,
      :phone_type_code,
      :timezone,
      :zip_code,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.phone_type_code ||= 0
      end

    end

    # Includes enum constants for Operator
    #
    module Operator
      # No documentation available.
      #
      ALL = "ALL"

      # No documentation available.
      #
      ANY = "ANY"
    end

    # <p>Override button configuration.</p>
    #
    # @!attribute button_action
    #   <p>Action triggered by the button.</p>
    #
    #   Enum, one of: ["LINK", "DEEP_LINK", "CLOSE"]
    #
    #   @return [String]
    #
    # @!attribute link
    #   <p>Button destination.</p>
    #
    #   @return [String]
    #
    OverrideButtonConfiguration = ::Struct.new(
      :button_action,
      :link,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about an API request or response.</p>
    #
    # @!attribute message
    #   <p>The message that's returned from the API.</p>
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The unique identifier for the request or response.</p>
    #
    #   @return [String]
    #
    PayloadTooLargeException = ::Struct.new(
      :message,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute number_validate_request
    #   <p>Specifies a phone number to validate and retrieve information about.</p>
    #
    #   @return [NumberValidateRequest]
    #
    PhoneNumberValidateInput = ::Struct.new(
      :number_validate_request,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute number_validate_response
    #   <p>Provides information about a phone number.</p>
    #
    #   @return [NumberValidateResponse]
    #
    PhoneNumberValidateOutput = ::Struct.new(
      :number_validate_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the properties and attributes of an endpoint that's associated with an event.</p>
    #
    # @!attribute address
    #   <p>The unique identifier for the recipient, such as a device token, email address, or mobile phone number.</p>
    #
    #   @return [String]
    #
    # @!attribute attributes
    #   <p>One or more custom attributes that describe the endpoint by associating a name with an array of values. You can use these attributes as filter criteria when you create segments.</p>
    #
    #   @return [Hash<String, Array<String>>]
    #
    # @!attribute channel_type
    #   <p>The channel that's used when sending messages or push notifications to the endpoint.</p>
    #
    #   Enum, one of: ["PUSH", "GCM", "APNS", "APNS_SANDBOX", "APNS_VOIP", "APNS_VOIP_SANDBOX", "ADM", "SMS", "VOICE", "EMAIL", "BAIDU", "CUSTOM", "IN_APP"]
    #
    #   @return [String]
    #
    # @!attribute demographic
    #   <p>The demographic information for the endpoint, such as the time zone and platform.</p>
    #
    #   @return [EndpointDemographic]
    #
    # @!attribute effective_date
    #   <p>The date and time, in ISO 8601 format, when the endpoint was last updated.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_status
    #   <p>Specifies whether to send messages or push notifications to the endpoint. Valid values are: ACTIVE, messages are sent to the endpoint; and, INACTIVE, messages aren’t sent to the endpoint.</p> <p>Amazon Pinpoint automatically sets this value to ACTIVE when you create an endpoint or update an existing endpoint. Amazon Pinpoint automatically sets this value to INACTIVE if you update another endpoint that has the same address specified by the Address property.</p>
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>The geographic information for the endpoint.</p>
    #
    #   @return [EndpointLocation]
    #
    # @!attribute metrics
    #   <p>One or more custom metrics that your app reports to Amazon Pinpoint for the endpoint.</p>
    #
    #   @return [Hash<String, Float>]
    #
    # @!attribute opt_out
    #   <p>Specifies whether the user who's associated with the endpoint has opted out of receiving messages and push notifications from you. Possible values are: ALL, the user has opted out and doesn't want to receive any messages or push notifications; and, NONE, the user hasn't opted out and wants to receive all messages and push notifications.</p>
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>A unique identifier that's generated each time the endpoint is updated.</p>
    #
    #   @return [String]
    #
    # @!attribute user
    #   <p>One or more custom user attributes that your app reports to Amazon Pinpoint for the user who's associated with the endpoint.</p>
    #
    #   @return [EndpointUser]
    #
    PublicEndpoint = ::Struct.new(
      :address,
      :attributes,
      :channel_type,
      :demographic,
      :effective_date,
      :endpoint_status,
      :location,
      :metrics,
      :opt_out,
      :request_id,
      :user,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the settings for a push notification activity in a journey. This type of activity sends a push notification to participants.</p>
    #
    # @!attribute message_config
    #   <p>Specifies the time to live (TTL) value for push notifications that are sent to participants in a journey.</p>
    #
    #   @return [JourneyPushMessage]
    #
    # @!attribute next_activity
    #   <p>The unique identifier for the next activity to perform, after the message is sent.</p>
    #
    #   @return [String]
    #
    # @!attribute template_name
    #   <p>The name of the push notification template to use for the message. If specified, this value must match the name of an existing message template.</p>
    #
    #   @return [String]
    #
    # @!attribute template_version
    #   <p>The unique identifier for the version of the push notification template to use for the message. If specified, this value must match the identifier for an existing template version. To retrieve a list of versions and version identifiers for a template, use the <link  linkend="templates-template-name-template-type-versions">Template Versions</link> resource.</p> <p>If you don't specify a value for this property, Amazon Pinpoint uses the <i>active version</i> of the template. The <i>active version</i> is typically the version of a template that's been most recently reviewed and approved for use, depending on your workflow. It isn't necessarily the latest version of a template.</p>
    #
    #   @return [String]
    #
    PushMessageActivity = ::Struct.new(
      :message_config,
      :next_activity,
      :template_name,
      :template_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the content and settings for a message template that can be used in messages that are sent through a push notification channel.</p>
    #
    # @!attribute adm
    #   <p>The message template to use for the ADM (Amazon Device Messaging) channel. This message template overrides the default template for push notification channels (DefaultPushNotificationTemplate).</p>
    #
    #   @return [AndroidPushNotificationTemplate]
    #
    # @!attribute apns
    #   <p>The message template to use for the APNs (Apple Push Notification service) channel. This message template overrides the default template for push notification channels (DefaultPushNotificationTemplate).</p>
    #
    #   @return [APNSPushNotificationTemplate]
    #
    # @!attribute baidu
    #   <p>The message template to use for the Baidu (Baidu Cloud Push) channel. This message template overrides the default template for push notification channels (DefaultPushNotificationTemplate).</p>
    #
    #   @return [AndroidPushNotificationTemplate]
    #
    # @!attribute default
    #   <p>The default message template to use for push notification channels.</p>
    #
    #   @return [DefaultPushNotificationTemplate]
    #
    # @!attribute default_substitutions
    #   <p>A JSON object that specifies the default values to use for message variables in the message template. This object is a set of key-value pairs. Each key defines a message variable in the template. The corresponding value defines the default value for that variable. When you create a message that's based on the template, you can override these defaults with message-specific and address-specific variables and values.</p>
    #
    #   @return [String]
    #
    # @!attribute gcm
    #   <p>The message template to use for the GCM channel, which is used to send notifications through the Firebase Cloud Messaging (FCM), formerly Google Cloud Messaging (GCM), service. This message template overrides the default template for push notification channels (DefaultPushNotificationTemplate).</p>
    #
    #   @return [AndroidPushNotificationTemplate]
    #
    # @!attribute recommender_id
    #   <p>The unique identifier for the recommender model to use for the message template. Amazon Pinpoint uses this value to determine how to retrieve and process data from a recommender model when it sends messages that use the template, if the template contains message variables for recommendation data.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A string-to-string map of key-value pairs that defines the tags to associate with the message template. Each tag consists of a required tag key and an associated tag value.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute template_description
    #   <p>A custom description of the message template.</p>
    #
    #   @return [String]
    #
    PushNotificationTemplateRequest = ::Struct.new(
      :adm,
      :apns,
      :baidu,
      :default,
      :default_substitutions,
      :gcm,
      :recommender_id,
      :tags,
      :template_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about the content and settings for a message template that can be used in messages that are sent through a push notification channel.</p>
    #
    # @!attribute adm
    #   <p>The message template that's used for the ADM (Amazon Device Messaging) channel. This message template overrides the default template for push notification channels (DefaultPushNotificationTemplate).</p>
    #
    #   @return [AndroidPushNotificationTemplate]
    #
    # @!attribute apns
    #   <p>The message template that's used for the APNs (Apple Push Notification service) channel. This message template overrides the default template for push notification channels (DefaultPushNotificationTemplate).</p>
    #
    #   @return [APNSPushNotificationTemplate]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the message template.</p>
    #
    #   @return [String]
    #
    # @!attribute baidu
    #   <p>The message template that's used for the Baidu (Baidu Cloud Push) channel. This message template overrides the default template for push notification channels (DefaultPushNotificationTemplate).</p>
    #
    #   @return [AndroidPushNotificationTemplate]
    #
    # @!attribute creation_date
    #   <p>The date, in ISO 8601 format, when the message template was created.</p>
    #
    #   @return [String]
    #
    # @!attribute default
    #   <p>The default message template that's used for push notification channels.</p>
    #
    #   @return [DefaultPushNotificationTemplate]
    #
    # @!attribute default_substitutions
    #   <p>The JSON object that specifies the default values that are used for message variables in the message template. This object is a set of key-value pairs. Each key defines a message variable in the template. The corresponding value defines the default value for that variable.</p>
    #
    #   @return [String]
    #
    # @!attribute gcm
    #   <p>The message template that's used for the GCM channel, which is used to send notifications through the Firebase Cloud Messaging (FCM), formerly Google Cloud Messaging (GCM), service. This message template overrides the default template for push notification channels (DefaultPushNotificationTemplate).</p>
    #
    #   @return [AndroidPushNotificationTemplate]
    #
    # @!attribute last_modified_date
    #   <p>The date, in ISO 8601 format, when the message template was last modified.</p>
    #
    #   @return [String]
    #
    # @!attribute recommender_id
    #   <p>The unique identifier for the recommender model that's used by the message template.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A string-to-string map of key-value pairs that identifies the tags that are associated with the message template. Each tag consists of a required tag key and an associated tag value.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute template_description
    #   <p>The custom description of the message template.</p>
    #
    #   @return [String]
    #
    # @!attribute template_name
    #   <p>The name of the message template.</p>
    #
    #   @return [String]
    #
    # @!attribute template_type
    #   <p>The type of channel that the message template is designed for. For a push notification template, this value is PUSH.</p>
    #
    #   Enum, one of: ["EMAIL", "SMS", "VOICE", "PUSH", "INAPP"]
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The unique identifier, as an integer, for the active version of the message template, or the version of the template that you specified by using the version parameter in your request.</p>
    #
    #   @return [String]
    #
    PushNotificationTemplateResponse = ::Struct.new(
      :adm,
      :apns,
      :arn,
      :baidu,
      :creation_date,
      :default,
      :default_substitutions,
      :gcm,
      :last_modified_date,
      :recommender_id,
      :tags,
      :template_description,
      :template_name,
      :template_type,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    # @!attribute write_event_stream
    #   <p>Specifies the Amazon Resource Name (ARN) of an event stream to publish events to and the AWS Identity and Access Management (IAM) role to use when publishing those events.</p>
    #
    #   @return [WriteEventStream]
    #
    PutEventStreamInput = ::Struct.new(
      :application_id,
      :write_event_stream,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_stream
    #   <p>Specifies settings for publishing event data to an Amazon Kinesis data stream or an Amazon Kinesis Data Firehose delivery stream.</p>
    #
    #   @return [EventStream]
    #
    PutEventStreamOutput = ::Struct.new(
      :event_stream,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    # @!attribute events_request
    #   <p>Specifies a batch of events to process.</p>
    #
    #   @return [EventsRequest]
    #
    PutEventsInput = ::Struct.new(
      :application_id,
      :events_request,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute events_response
    #   <p>Provides information about endpoints and the events that they're associated with.</p>
    #
    #   @return [EventsResponse]
    #
    PutEventsOutput = ::Struct.new(
      :events_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the start and end times that define a time range when messages aren't sent to endpoints.</p>
    #
    # @!attribute end
    #   <p>The specific time when quiet time ends. This value has to use 24-hour notation and be in HH:MM format, where HH is the hour (with a leading zero, if applicable) and MM is the minutes. For example, use 02:30 to represent 2:30 AM, or 14:30 to represent 2:30 PM.</p>
    #
    #   @return [String]
    #
    # @!attribute start
    #   <p>The specific time when quiet time begins. This value has to use 24-hour notation and be in HH:MM format, where HH is the hour (with a leading zero, if applicable) and MM is the minutes. For example, use 02:30 to represent 2:30 AM, or 14:30 to represent 2:30 PM.</p>
    #
    #   @return [String]
    #
    QuietTime = ::Struct.new(
      :end,
      :start,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the settings for a random split activity in a journey. This type of activity randomly sends specified percentages of participants down one of as many as five paths in a journey, based on conditions that you specify.</p>
    #
    # @!attribute branches
    #   <p>The paths for the activity, including the percentage of participants to enter each path and the activity to perform for each path.</p>
    #
    #   @return [Array<RandomSplitEntry>]
    #
    RandomSplitActivity = ::Struct.new(
      :branches,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the settings for a path in a random split activity in a journey.</p>
    #
    # @!attribute next_activity
    #   <p>The unique identifier for the next activity to perform, after completing the activity for the path.</p>
    #
    #   @return [String]
    #
    # @!attribute percentage
    #   <p>The percentage of participants to send down the activity path.</p> <p>To determine which participants are sent down each path, Amazon Pinpoint applies a probability-based algorithm to the percentages that you specify for the paths. Therefore, the actual percentage of participants who are sent down a path may not be equal to the percentage that you specify.</p>
    #
    #   @return [Integer]
    #
    RandomSplitEntry = ::Struct.new(
      :next_activity,
      :percentage,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.percentage ||= 0
      end

    end

    # <p>Specifies the contents of an email message, represented as a raw MIME message.</p>
    #
    # @!attribute data
    #   <p>The email message, represented as a raw MIME message. The entire message must be base64 encoded.</p>
    #
    #   @return [String]
    #
    RawEmail = ::Struct.new(
      :data,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies criteria for including or excluding endpoints from a segment based on how recently an endpoint was active.</p>
    #
    # @!attribute duration
    #   <p>The duration to use when determining whether an endpoint is active or inactive.</p>
    #
    #   Enum, one of: ["HR_24", "DAY_7", "DAY_14", "DAY_30"]
    #
    #   @return [String]
    #
    # @!attribute recency_type
    #   <p>The type of recency dimension to use for the segment. Valid values are: ACTIVE, endpoints that were active within the specified duration are included in the segment; and, INACTIVE, endpoints that weren't active within the specified duration are included in the segment.</p>
    #
    #   Enum, one of: ["ACTIVE", "INACTIVE"]
    #
    #   @return [String]
    #
    RecencyDimension = ::Struct.new(
      :duration,
      :recency_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RecencyType
    #
    module RecencyType
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      INACTIVE = "INACTIVE"
    end

    # <p>Provides information about Amazon Pinpoint configuration settings for retrieving and processing data from a recommender model.</p>
    #
    # @!attribute attributes
    #   <p>A map that defines 1-10 custom endpoint or user attributes, depending on the value for the RecommendationProviderIdType property. Each of these attributes temporarily stores a recommended item that's retrieved from the recommender model and sent to an AWS Lambda function for additional processing. Each attribute can be used as a message variable in a message template.</p> <p>This value is null if the configuration doesn't invoke an AWS Lambda function (RecommendationTransformerUri) to perform additional processing of recommendation data.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute creation_date
    #   <p>The date, in extended ISO 8601 format, when the configuration was created for the recommender model.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The custom description of the configuration for the recommender model.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The unique identifier for the recommender model configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_date
    #   <p>The date, in extended ISO 8601 format, when the configuration for the recommender model was last modified.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The custom name of the configuration for the recommender model.</p>
    #
    #   @return [String]
    #
    # @!attribute recommendation_provider_id_type
    #   <p>The type of Amazon Pinpoint ID that's associated with unique user IDs in the recommender model. This value enables the model to use attribute and event data that’s specific to a particular endpoint or user in an Amazon Pinpoint application. Possible values are:</p> <ul><li><p>PINPOINT_ENDPOINT_ID - Each user in the model is associated with a particular endpoint in Amazon Pinpoint. The data is correlated based on endpoint IDs in Amazon Pinpoint. This is the default value.</p></li> <li><p>PINPOINT_USER_ID - Each user in the model is associated with a particular user and endpoint in Amazon Pinpoint. The data is correlated based on user IDs in Amazon Pinpoint. If this value is specified, an endpoint definition in Amazon Pinpoint has to specify both a user ID (UserId) and an endpoint ID. Otherwise, messages won’t be sent to the user's endpoint.</p></li></ul>
    #
    #   @return [String]
    #
    # @!attribute recommendation_provider_role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that authorizes Amazon Pinpoint to retrieve recommendation data from the recommender model.</p>
    #
    #   @return [String]
    #
    # @!attribute recommendation_provider_uri
    #   <p>The Amazon Resource Name (ARN) of the recommender model that Amazon Pinpoint retrieves the recommendation data from. This value is the ARN of an Amazon Personalize campaign.</p>
    #
    #   @return [String]
    #
    # @!attribute recommendation_transformer_uri
    #   <p>The name or Amazon Resource Name (ARN) of the AWS Lambda function that Amazon Pinpoint invokes to perform additional processing of recommendation data that it retrieves from the recommender model.</p>
    #
    #   @return [String]
    #
    # @!attribute recommendations_display_name
    #   <p>The custom display name for the standard endpoint or user attribute (RecommendationItems) that temporarily stores recommended items for each endpoint or user, depending on the value for the RecommendationProviderIdType property. This name appears in the <b>Attribute finder</b> of the template editor on the Amazon Pinpoint console.</p> <p>This value is null if the configuration doesn't invoke an AWS Lambda function (RecommendationTransformerUri) to perform additional processing of recommendation data.</p>
    #
    #   @return [String]
    #
    # @!attribute recommendations_per_message
    #   <p>The number of recommended items that are retrieved from the model for each endpoint or user, depending on the value for the RecommendationProviderIdType property. This number determines how many recommended items are available for use in message variables.</p>
    #
    #   @return [Integer]
    #
    RecommenderConfigurationResponse = ::Struct.new(
      :attributes,
      :creation_date,
      :description,
      :id,
      :last_modified_date,
      :name,
      :recommendation_provider_id_type,
      :recommendation_provider_role_arn,
      :recommendation_provider_uri,
      :recommendation_transformer_uri,
      :recommendations_display_name,
      :recommendations_per_message,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.recommendations_per_message ||= 0
      end

    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    # @!attribute attribute_type
    #   <p>The type of attribute or attributes to remove. Valid values are:</p> <ul><li><p>endpoint-custom-attributes - Custom attributes that describe endpoints, such as the date when an associated user opted in or out of receiving communications from you through a specific type of channel.</p></li> <li><p>endpoint-metric-attributes - Custom metrics that your app reports to Amazon Pinpoint for endpoints, such as the number of app sessions or the number of items left in a cart.</p></li> <li><p>endpoint-user-attributes - Custom attributes that describe users, such as first name, last name, and age.</p></li></ul>
    #
    #   @return [String]
    #
    # @!attribute update_attributes_request
    #   <p>Specifies one or more attributes to remove from all the endpoints that are associated with an application.</p>
    #
    #   @return [UpdateAttributesRequest]
    #
    RemoveAttributesInput = ::Struct.new(
      :application_id,
      :attribute_type,
      :update_attributes_request,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute attributes_resource
    #   <p>Provides information about the type and the names of attributes that were removed from all the endpoints that are associated with an application.</p>
    #
    #   @return [AttributesResource]
    #
    RemoveAttributesOutput = ::Struct.new(
      :attributes_resource,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides the results of a query that retrieved the data for a standard metric that applies to an application, campaign, or journey.</p>
    #
    # @!attribute grouped_bys
    #   <p>An array of objects that defines the field and field values that were used to group data in a result set that contains multiple results. This value is null if the data in a result set isn’t grouped.</p>
    #
    #   @return [Array<ResultRowValue>]
    #
    # @!attribute values
    #   <p>An array of objects that provides pre-aggregated values for a standard metric that applies to an application, campaign, or journey.</p>
    #
    #   @return [Array<ResultRowValue>]
    #
    ResultRow = ::Struct.new(
      :grouped_bys,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides a single value and metadata about that value as part of an array of query results for a standard metric that applies to an application, campaign, or journey.</p>
    #
    # @!attribute key
    #   <p>The friendly name of the metric whose value is specified by the Value property.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The data type of the value specified by the Value property.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>In a Values object, the value for the metric that the query retrieved data for. In a GroupedBys object, the value for the field that was used to group data in a result set that contains multiple results (Values objects).</p>
    #
    #   @return [String]
    #
    ResultRowValue = ::Struct.new(
      :key,
      :type,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the status and settings of the SMS channel for an application.</p>
    #
    # @!attribute enabled
    #   <p>Specifies whether to enable the SMS channel for the application.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute sender_id
    #   <p>The identity that you want to display on recipients' devices when they receive messages from the SMS channel.</p>
    #
    #   @return [String]
    #
    # @!attribute short_code
    #   <p>The registered short code that you want to use when you send messages through the SMS channel.</p>
    #
    #   @return [String]
    #
    SMSChannelRequest = ::Struct.new(
      :enabled,
      :sender_id,
      :short_code,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.enabled ||= false
      end

    end

    # <p>Provides information about the status and settings of the SMS channel for an application.</p>
    #
    # @!attribute application_id
    #   <p>The unique identifier for the application that the SMS channel applies to.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date and time, in ISO 8601 format, when the SMS channel was enabled.</p>
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p>Specifies whether the SMS channel is enabled for the application.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute has_credential
    #   <p>(Not used) This property is retained only for backward compatibility.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute id
    #   <p>(Deprecated) An identifier for the SMS channel. This property is retained only for backward compatibility.</p>
    #
    #   @return [String]
    #
    # @!attribute is_archived
    #   <p>Specifies whether the SMS channel is archived.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute last_modified_by
    #   <p>The user who last modified the SMS channel.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_date
    #   <p>The date and time, in ISO 8601 format, when the SMS channel was last modified.</p>
    #
    #   @return [String]
    #
    # @!attribute platform
    #   <p>The type of messaging or notification platform for the channel. For the SMS channel, this value is SMS.</p>
    #
    #   @return [String]
    #
    # @!attribute promotional_messages_per_second
    #   <p>The maximum number of promotional messages that you can send through the SMS channel each second.</p>
    #
    #   @return [Integer]
    #
    # @!attribute sender_id
    #   <p>The identity that displays on recipients' devices when they receive messages from the SMS channel.</p>
    #
    #   @return [String]
    #
    # @!attribute short_code
    #   <p>The registered short code to use when you send messages through the SMS channel.</p>
    #
    #   @return [String]
    #
    # @!attribute transactional_messages_per_second
    #   <p>The maximum number of transactional messages that you can send through the SMS channel each second.</p>
    #
    #   @return [Integer]
    #
    # @!attribute version
    #   <p>The current version of the SMS channel.</p>
    #
    #   @return [Integer]
    #
    SMSChannelResponse = ::Struct.new(
      :application_id,
      :creation_date,
      :enabled,
      :has_credential,
      :id,
      :is_archived,
      :last_modified_by,
      :last_modified_date,
      :platform,
      :promotional_messages_per_second,
      :sender_id,
      :short_code,
      :transactional_messages_per_second,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.enabled ||= false
        self.has_credential ||= false
        self.is_archived ||= false
        self.promotional_messages_per_second ||= 0
        self.transactional_messages_per_second ||= 0
        self.version ||= 0
      end

    end

    # <p>Specifies the default settings for a one-time SMS message that's sent directly to an endpoint.</p>
    #
    # @!attribute body
    #   <p>The body of the SMS message.</p>
    #
    #   @return [String]
    #
    # @!attribute keyword
    #   <p>The SMS program name that you provided to AWS Support when you requested your dedicated number.</p>
    #
    #   @return [String]
    #
    # @!attribute media_url
    #   <p>This field is reserved for future use.</p>
    #
    #   @return [String]
    #
    # @!attribute message_type
    #   <p>The SMS message type. Valid values are TRANSACTIONAL (for messages that are critical or time-sensitive, such as a one-time passwords) and PROMOTIONAL (for messsages that aren't critical or time-sensitive, such as marketing messages).</p>
    #
    #   Enum, one of: ["TRANSACTIONAL", "PROMOTIONAL"]
    #
    #   @return [String]
    #
    # @!attribute origination_number
    #   <p>The number to send the SMS message from. This value should be one of the dedicated long or short codes that's assigned to your AWS account. If you don't specify a long or short code, Amazon Pinpoint assigns a random long code to the SMS message and sends the message from that code.</p>
    #
    #   @return [String]
    #
    # @!attribute sender_id
    #   <p>The sender ID to display as the sender of the message on a recipient's device. Support for sender IDs varies by country or region.</p>
    #
    #   @return [String]
    #
    # @!attribute substitutions
    #   <p>The message variables to use in the SMS message. You can override the default variables with individual address variables.</p>
    #
    #   @return [Hash<String, Array<String>>]
    #
    # @!attribute entity_id
    #   <p>The entity ID or Principal Entity (PE) id received from the regulatory body for sending SMS in your country.</p>
    #
    #   @return [String]
    #
    # @!attribute template_id
    #   <p>The template ID received from the regulatory body for sending SMS in your country.</p>
    #
    #   @return [String]
    #
    SMSMessage = ::Struct.new(
      :body,
      :keyword,
      :media_url,
      :message_type,
      :origination_number,
      :sender_id,
      :substitutions,
      :entity_id,
      :template_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the settings for an SMS activity in a journey. This type of activity sends a text message to participants.</p>
    #
    # @!attribute message_config
    #   <p>Specifies the sender ID and message type for an SMS message that's sent to participants in a journey.</p>
    #
    #   @return [JourneySMSMessage]
    #
    # @!attribute next_activity
    #   <p>The unique identifier for the next activity to perform, after the message is sent.</p>
    #
    #   @return [String]
    #
    # @!attribute template_name
    #   <p>The name of the SMS message template to use for the message. If specified, this value must match the name of an existing message template.</p>
    #
    #   @return [String]
    #
    # @!attribute template_version
    #   <p>The unique identifier for the version of the SMS template to use for the message. If specified, this value must match the identifier for an existing template version. To retrieve a list of versions and version identifiers for a template, use the <link  linkend="templates-template-name-template-type-versions">Template Versions</link> resource.</p> <p>If you don't specify a value for this property, Amazon Pinpoint uses the <i>active version</i> of the template. The <i>active version</i> is typically the version of a template that's been most recently reviewed and approved for use, depending on your workflow. It isn't necessarily the latest version of a template.</p>
    #
    #   @return [String]
    #
    SMSMessageActivity = ::Struct.new(
      :message_config,
      :next_activity,
      :template_name,
      :template_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the content and settings for a message template that can be used in text messages that are sent through the SMS channel.</p>
    #
    # @!attribute body
    #   <p>The message body to use in text messages that are based on the message template.</p>
    #
    #   @return [String]
    #
    # @!attribute default_substitutions
    #   <p>A JSON object that specifies the default values to use for message variables in the message template. This object is a set of key-value pairs. Each key defines a message variable in the template. The corresponding value defines the default value for that variable. When you create a message that's based on the template, you can override these defaults with message-specific and address-specific variables and values.</p>
    #
    #   @return [String]
    #
    # @!attribute recommender_id
    #   <p>The unique identifier for the recommender model to use for the message template. Amazon Pinpoint uses this value to determine how to retrieve and process data from a recommender model when it sends messages that use the template, if the template contains message variables for recommendation data.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A string-to-string map of key-value pairs that defines the tags to associate with the message template. Each tag consists of a required tag key and an associated tag value.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute template_description
    #   <p>A custom description of the message template.</p>
    #
    #   @return [String]
    #
    SMSTemplateRequest = ::Struct.new(
      :body,
      :default_substitutions,
      :recommender_id,
      :tags,
      :template_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about the content and settings for a message template that can be used in text messages that are sent through the SMS channel.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the message template.</p>
    #
    #   @return [String]
    #
    # @!attribute body
    #   <p>The message body that's used in text messages that are based on the message template.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date, in ISO 8601 format, when the message template was created.</p>
    #
    #   @return [String]
    #
    # @!attribute default_substitutions
    #   <p>The JSON object that specifies the default values that are used for message variables in the message template. This object is a set of key-value pairs. Each key defines a message variable in the template. The corresponding value defines the default value for that variable.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_date
    #   <p>The date, in ISO 8601 format, when the message template was last modified.</p>
    #
    #   @return [String]
    #
    # @!attribute recommender_id
    #   <p>The unique identifier for the recommender model that's used by the message template.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A string-to-string map of key-value pairs that identifies the tags that are associated with the message template. Each tag consists of a required tag key and an associated tag value.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute template_description
    #   <p>The custom description of the message template.</p>
    #
    #   @return [String]
    #
    # @!attribute template_name
    #   <p>The name of the message template.</p>
    #
    #   @return [String]
    #
    # @!attribute template_type
    #   <p>The type of channel that the message template is designed for. For an SMS template, this value is SMS.</p>
    #
    #   Enum, one of: ["EMAIL", "SMS", "VOICE", "PUSH", "INAPP"]
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The unique identifier, as an integer, for the active version of the message template, or the version of the template that you specified by using the version parameter in your request.</p>
    #
    #   @return [String]
    #
    SMSTemplateResponse = ::Struct.new(
      :arn,
      :body,
      :creation_date,
      :default_substitutions,
      :last_modified_date,
      :recommender_id,
      :tags,
      :template_description,
      :template_name,
      :template_type,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the schedule settings for a campaign.</p>
    #
    # @!attribute end_time
    #   <p>The scheduled time, in ISO 8601 format, when the campaign ended or will end.</p>
    #
    #   @return [String]
    #
    # @!attribute event_filter
    #   <p>The type of event that causes the campaign to be sent, if the value of the Frequency property is EVENT.</p>
    #
    #   @return [CampaignEventFilter]
    #
    # @!attribute frequency
    #   <p>Specifies how often the campaign is sent or whether the campaign is sent in response to a specific event.</p>
    #
    #   Enum, one of: ["ONCE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY", "EVENT", "IN_APP_EVENT"]
    #
    #   @return [String]
    #
    # @!attribute is_local_time
    #   <p>Specifies whether the start and end times for the campaign schedule use each recipient's local time. To base the schedule on each recipient's local time, set this value to true.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute quiet_time
    #   <p>The default quiet time for the campaign. Quiet time is a specific time range when a campaign doesn't send messages to endpoints, if all the following conditions are met:</p> <ul><li><p>The EndpointDemographic.Timezone property of the endpoint is set to a valid value.</p></li> <li><p>The current time in the endpoint's time zone is later than or equal to the time specified by the QuietTime.Start property for the campaign.</p></li> <li><p>The current time in the endpoint's time zone is earlier than or equal to the time specified by the QuietTime.End property for the campaign.</p></li></ul> <p>If any of the preceding conditions isn't met, the endpoint will receive messages from the campaign, even if quiet time is enabled.</p>
    #
    #   @return [QuietTime]
    #
    # @!attribute start_time
    #   <p>The scheduled time when the campaign began or will begin. Valid values are: IMMEDIATE, to start the campaign immediately; or, a specific time in ISO 8601 format.</p>
    #
    #   @return [String]
    #
    # @!attribute timezone
    #   <p>The starting UTC offset for the campaign schedule, if the value of the IsLocalTime property is true. Valid values are: UTC, UTC+01, UTC+02, UTC+03, UTC+03:30, UTC+04, UTC+04:30, UTC+05,
    #                     UTC+05:30, UTC+05:45, UTC+06, UTC+06:30, UTC+07, UTC+08, UTC+09, UTC+09:30,
    #                     UTC+10, UTC+10:30, UTC+11, UTC+12, UTC+13, UTC-02, UTC-03, UTC-04, UTC-05, UTC-06,
    #                     UTC-07, UTC-08, UTC-09, UTC-10, and UTC-11.</p>
    #
    #   @return [String]
    #
    Schedule = ::Struct.new(
      :end_time,
      :event_filter,
      :frequency,
      :is_local_time,
      :quiet_time,
      :start_time,
      :timezone,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.is_local_time ||= false
      end

    end

    # <p>Specifies dimension settings for including or excluding endpoints from a segment based on how recently an endpoint was active.</p>
    #
    # @!attribute recency
    #   <p>The dimension settings that are based on how recently an endpoint was active.</p>
    #
    #   @return [RecencyDimension]
    #
    SegmentBehaviors = ::Struct.new(
      :recency,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a segment to associate with an activity in a journey.</p>
    #
    # @!attribute segment_id
    #   <p>The unique identifier for the segment to associate with the activity.</p>
    #
    #   @return [String]
    #
    SegmentCondition = ::Struct.new(
      :segment_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies demographic-based dimension settings for including or excluding endpoints from a segment. These settings derive from characteristics of endpoint devices, such as platform, make, and model.</p>
    #
    # @!attribute app_version
    #   <p>The app version criteria for the segment.</p>
    #
    #   @return [SetDimension]
    #
    # @!attribute channel
    #   <p>The channel criteria for the segment.</p>
    #
    #   @return [SetDimension]
    #
    # @!attribute device_type
    #   <p>The device type criteria for the segment.</p>
    #
    #   @return [SetDimension]
    #
    # @!attribute make
    #   <p>The device make criteria for the segment.</p>
    #
    #   @return [SetDimension]
    #
    # @!attribute model
    #   <p>The device model criteria for the segment.</p>
    #
    #   @return [SetDimension]
    #
    # @!attribute platform
    #   <p>The device platform criteria for the segment.</p>
    #
    #   @return [SetDimension]
    #
    SegmentDemographics = ::Struct.new(
      :app_version,
      :channel,
      :device_type,
      :make,
      :model,
      :platform,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the dimension settings for a segment.</p>
    #
    # @!attribute attributes
    #   <p>One or more custom attributes to use as criteria for the segment.</p>
    #
    #   @return [Hash<String, AttributeDimension>]
    #
    # @!attribute behavior
    #   <p>The behavior-based criteria, such as how recently users have used your app, for the segment.</p>
    #
    #   @return [SegmentBehaviors]
    #
    # @!attribute demographic
    #   <p>The demographic-based criteria, such as device platform, for the segment.</p>
    #
    #   @return [SegmentDemographics]
    #
    # @!attribute location
    #   <p>The location-based criteria, such as region or GPS coordinates, for the segment.</p>
    #
    #   @return [SegmentLocation]
    #
    # @!attribute metrics
    #   <p>One or more custom metrics to use as criteria for the segment.</p>
    #
    #   @return [Hash<String, MetricDimension>]
    #
    # @!attribute user_attributes
    #   <p>One or more custom user attributes to use as criteria for the segment.</p>
    #
    #   @return [Hash<String, AttributeDimension>]
    #
    SegmentDimensions = ::Struct.new(
      :attributes,
      :behavior,
      :demographic,
      :location,
      :metrics,
      :user_attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the base segments and dimensions for a segment, and the relationships between these base segments and dimensions.</p>
    #
    # @!attribute dimensions
    #   <p>An array that defines the dimensions for the segment.</p>
    #
    #   @return [Array<SegmentDimensions>]
    #
    # @!attribute source_segments
    #   <p>The base segment to build the segment on. A base segment, also referred to as a <i>source segment</i>, defines the initial population of endpoints for a segment. When you add dimensions to a segment, Amazon Pinpoint filters the base segment by using the dimensions that you specify.</p> <p>You can specify more than one dimensional segment or only one imported segment. If you specify an imported segment, the Amazon Pinpoint console displays a segment size estimate that indicates the size of the imported segment without any filters applied to it.</p>
    #
    #   @return [Array<SegmentReference>]
    #
    # @!attribute source_type
    #   <p>Specifies how to handle multiple base segments for the segment. For example, if you specify three base segments for the segment, whether the resulting segment is based on all, any, or none of the base segments.</p>
    #
    #   Enum, one of: ["ALL", "ANY", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>Specifies how to handle multiple dimensions for the segment. For example, if you specify three dimensions for the segment, whether the resulting segment includes endpoints that match all, any, or none of the dimensions.</p>
    #
    #   Enum, one of: ["ALL", "ANY", "NONE"]
    #
    #   @return [String]
    #
    SegmentGroup = ::Struct.new(
      :dimensions,
      :source_segments,
      :source_type,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the settings that define the relationships between segment groups for a segment.</p>
    #
    # @!attribute groups
    #   <p>An array that defines the set of segment criteria to evaluate when handling segment groups for the segment.</p>
    #
    #   @return [Array<SegmentGroup>]
    #
    # @!attribute include
    #   <p>Specifies how to handle multiple segment groups for the segment. For example, if the segment includes three segment groups, whether the resulting segment includes endpoints that match all, any, or none of the segment groups.</p>
    #
    #   Enum, one of: ["ALL", "ANY", "NONE"]
    #
    #   @return [String]
    #
    SegmentGroupList = ::Struct.new(
      :groups,
      :include,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about the import job that created a segment. An import job is a job that creates a user segment by importing endpoint definitions.</p>
    #
    # @!attribute channel_counts
    #   <p>The number of channel types in the endpoint definitions that were imported to create the segment.</p>
    #
    #   @return [Hash<String, Integer>]
    #
    # @!attribute external_id
    #   <p>(Deprecated) Your AWS account ID, which you assigned to an external ID key in an IAM trust policy. Amazon Pinpoint previously used this value to assume an IAM role when importing endpoint definitions, but we removed this requirement. We don't recommend use of external IDs for IAM roles that are assumed by Amazon Pinpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute format
    #   <p>The format of the files that were imported to create the segment. Valid values are: CSV, for comma-separated values format; and, JSON, for newline-delimited JSON format.</p>
    #
    #   Enum, one of: ["CSV", "JSON"]
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that authorized Amazon Pinpoint to access the Amazon S3 location to import endpoint definitions from.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_url
    #   <p>The URL of the Amazon Simple Storage Service (Amazon S3) bucket that the endpoint definitions were imported from to create the segment.</p>
    #
    #   @return [String]
    #
    # @!attribute size
    #   <p>The number of endpoint definitions that were imported successfully to create the segment.</p>
    #
    #   @return [Integer]
    #
    SegmentImportResource = ::Struct.new(
      :channel_counts,
      :external_id,
      :format,
      :role_arn,
      :s3_url,
      :size,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.size ||= 0
      end

    end

    # <p>Specifies geographical dimension settings for a segment.</p>
    #
    # @!attribute country
    #   <p>The country or region code, in ISO 3166-1 alpha-2 format, for the segment.</p>
    #
    #   @return [SetDimension]
    #
    # @!attribute gps_point
    #   <p>The GPS location and range for the segment.</p>
    #
    #   @return [GPSPointDimension]
    #
    SegmentLocation = ::Struct.new(
      :country,
      :gps_point,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the segment identifier and version of a segment.</p>
    #
    # @!attribute id
    #   <p>The unique identifier for the segment.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version number of the segment.</p>
    #
    #   @return [Integer]
    #
    SegmentReference = ::Struct.new(
      :id,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.version ||= 0
      end

    end

    # <p>Provides information about the configuration, dimension, and other settings for a segment.</p>
    #
    # @!attribute application_id
    #   <p>The unique identifier for the application that the segment is associated with.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the segment.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date and time when the segment was created.</p>
    #
    #   @return [String]
    #
    # @!attribute dimensions
    #   <p>The dimension settings for the segment.</p>
    #
    #   @return [SegmentDimensions]
    #
    # @!attribute id
    #   <p>The unique identifier for the segment.</p>
    #
    #   @return [String]
    #
    # @!attribute import_definition
    #   <p>The settings for the import job that's associated with the segment.</p>
    #
    #   @return [SegmentImportResource]
    #
    # @!attribute last_modified_date
    #   <p>The date and time when the segment was last modified.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the segment.</p>
    #
    #   @return [String]
    #
    # @!attribute segment_groups
    #   <p>A list of one or more segment groups that apply to the segment. Each segment group consists of zero or more base segments and the dimensions that are applied to those base segments.</p>
    #
    #   @return [SegmentGroupList]
    #
    # @!attribute segment_type
    #   <p>The segment type. Valid values are:</p> <ul><li><p>DIMENSIONAL - A dynamic segment, which is a segment that uses selection criteria that you specify and is based on endpoint data that's reported by your app. Dynamic segments can change over time.</p></li> <li><p>IMPORT - A static segment, which is a segment that uses selection criteria that you specify and is based on endpoint definitions that you import from a file. Imported segments are static; they don't change over time.</p></li></ul>
    #
    #   Enum, one of: ["DIMENSIONAL", "IMPORT"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A string-to-string map of key-value pairs that identifies the tags that are associated with the segment. Each tag consists of a required tag key and an associated tag value.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute version
    #   <p>The version number of the segment.</p>
    #
    #   @return [Integer]
    #
    SegmentResponse = ::Struct.new(
      :application_id,
      :arn,
      :creation_date,
      :dimensions,
      :id,
      :import_definition,
      :last_modified_date,
      :name,
      :segment_groups,
      :segment_type,
      :tags,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.version ||= 0
      end

    end

    # Includes enum constants for SegmentType
    #
    module SegmentType
      # No documentation available.
      #
      DIMENSIONAL = "DIMENSIONAL"

      # No documentation available.
      #
      IMPORT = "IMPORT"
    end

    # <p>Provides information about all the segments that are associated with an application.</p>
    #
    # @!attribute item
    #   <p>An array of responses, one for each segment that's associated with the application (Segments resource) or each version of a segment that's associated with the application (Segment Versions resource).</p>
    #
    #   @return [Array<SegmentResponse>]
    #
    # @!attribute next_token
    #   <p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>
    #
    #   @return [String]
    #
    SegmentsResponse = ::Struct.new(
      :item,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    # @!attribute message_request
    #   <p>Specifies the configuration and other settings for a message.</p>
    #
    #   @return [MessageRequest]
    #
    SendMessagesInput = ::Struct.new(
      :application_id,
      :message_request,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute message_response
    #   <p>Provides information about the results of a request to send a message to an endpoint address.</p>
    #
    #   @return [MessageResponse]
    #
    SendMessagesOutput = ::Struct.new(
      :message_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique ID of your Amazon Pinpoint application.</p>
    #
    #   @return [String]
    #
    # @!attribute send_otp_message_request_parameters
    #   <p>Send OTP message request parameters.</p>
    #
    #   @return [SendOTPMessageRequestParameters]
    #
    SendOTPMessageInput = ::Struct.new(
      :application_id,
      :send_otp_message_request_parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute message_response
    #   <p>Provides information about the results of a request to send a message to an endpoint address.</p>
    #
    #   @return [MessageResponse]
    #
    SendOTPMessageOutput = ::Struct.new(
      :message_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Send OTP message request parameters.</p>
    #
    # @!attribute allowed_attempts
    #   <p>The attempts allowed to validate an OTP.</p>
    #
    #   @return [Integer]
    #
    # @!attribute brand_name
    #   <p>The brand name that will be substituted into the OTP message body. Should be owned by calling AWS account.</p>
    #
    #   @return [String]
    #
    # @!attribute channel
    #   <p>Channel type for the OTP message. Supported values: [SMS].</p>
    #
    #   @return [String]
    #
    # @!attribute code_length
    #   <p>The number of characters in the generated OTP.</p>
    #
    #   @return [Integer]
    #
    # @!attribute destination_identity
    #   <p>The destination identity to send OTP to.</p>
    #
    #   @return [String]
    #
    # @!attribute entity_id
    #   <p>A unique Entity ID received from DLT after entity registration is approved.</p>
    #
    #   @return [String]
    #
    # @!attribute language
    #   <p>The language to be used for the outgoing message body containing the OTP.</p>
    #
    #   @return [String]
    #
    # @!attribute origination_identity
    #   <p>The origination identity used to send OTP from.</p>
    #
    #   @return [String]
    #
    # @!attribute reference_id
    #   <p>Developer-specified reference identifier. Required to match during OTP verification.</p>
    #
    #   @return [String]
    #
    # @!attribute template_id
    #   <p>A unique Template ID received from DLT after entity registration is approved.</p>
    #
    #   @return [String]
    #
    # @!attribute validity_period
    #   <p>The time in minutes before the OTP is no longer valid.</p>
    #
    #   @return [Integer]
    #
    SendOTPMessageRequestParameters = ::Struct.new(
      :allowed_attempts,
      :brand_name,
      :channel,
      :code_length,
      :destination_identity,
      :entity_id,
      :language,
      :origination_identity,
      :reference_id,
      :template_id,
      :validity_period,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.allowed_attempts ||= 0
        self.code_length ||= 0
        self.validity_period ||= 0
      end

    end

    # <p>Specifies the configuration and other settings for a message to send to all the endpoints that are associated with a list of users.</p>
    #
    # @!attribute context
    #   <p>A map of custom attribute-value pairs. For a push notification, Amazon Pinpoint adds these attributes to the data.pinpoint object in the body of the notification payload. Amazon Pinpoint also provides these attributes in the events that it generates for users-messages deliveries.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute message_configuration
    #   <p>The settings and content for the default message and any default messages that you defined for specific channels.</p>
    #
    #   @return [DirectMessageConfiguration]
    #
    # @!attribute template_configuration
    #   <p>The message template to use for the message.</p>
    #
    #   @return [TemplateConfiguration]
    #
    # @!attribute trace_id
    #   <p>The unique identifier for tracing the message. This identifier is visible to message recipients.</p>
    #
    #   @return [String]
    #
    # @!attribute users
    #   <p>A map that associates user IDs with <a href="https://docs.aws.amazon.com/pinpoint/latest/apireference/apps-application-id-messages.html apps-application-id-messages-model-endpointsendconfiguration">EndpointSendConfiguration</a> objects. You can use an <a href="https://docs.aws.amazon.com/pinpoint/latest/apireference/apps-application-id-messages.html apps-application-id-messages-model-endpointsendconfiguration">EndpointSendConfiguration</a> object to tailor the message for a user by specifying settings such as content overrides and message variables.</p>
    #
    #   @return [Hash<String, EndpointSendConfiguration>]
    #
    SendUsersMessageRequest = ::Struct.new(
      :context,
      :message_configuration,
      :template_configuration,
      :trace_id,
      :users,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about which users and endpoints a message was sent to.</p>
    #
    # @!attribute application_id
    #   <p>The unique identifier for the application that was used to send the message.</p>
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The unique identifier that was assigned to the message request.</p>
    #
    #   @return [String]
    #
    # @!attribute result
    #   <p>An object that indicates which endpoints the message was sent to, for each user. The object lists user IDs and, for each user ID, provides the endpoint IDs that the message was sent to. For each endpoint ID, it provides an EndpointMessageResult object.</p>
    #
    #   @return [Hash<String, Hash<String, EndpointMessageResult>>]
    #
    SendUsersMessageResponse = ::Struct.new(
      :application_id,
      :request_id,
      :result,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    # @!attribute send_users_message_request
    #   <p>Specifies the configuration and other settings for a message to send to all the endpoints that are associated with a list of users.</p>
    #
    #   @return [SendUsersMessageRequest]
    #
    SendUsersMessagesInput = ::Struct.new(
      :application_id,
      :send_users_message_request,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute send_users_message_response
    #   <p>Provides information about which users and endpoints a message was sent to.</p>
    #
    #   @return [SendUsersMessageResponse]
    #
    SendUsersMessagesOutput = ::Struct.new(
      :send_users_message_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about a session.</p>
    #
    # @!attribute duration
    #   <p>The duration of the session, in milliseconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute id
    #   <p>The unique identifier for the session.</p>
    #
    #   @return [String]
    #
    # @!attribute start_timestamp
    #   <p>The date and time when the session began.</p>
    #
    #   @return [String]
    #
    # @!attribute stop_timestamp
    #   <p>The date and time when the session ended.</p>
    #
    #   @return [String]
    #
    Session = ::Struct.new(
      :duration,
      :id,
      :start_timestamp,
      :stop_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.duration ||= 0
      end

    end

    # <p>Specifies the dimension type and values for a segment dimension.</p>
    #
    # @!attribute dimension_type
    #   <p>The type of segment dimension to use. Valid values are: INCLUSIVE, endpoints that match the criteria are included in the segment; and, EXCLUSIVE, endpoints that match the criteria are excluded from the segment.</p>
    #
    #   Enum, one of: ["INCLUSIVE", "EXCLUSIVE"]
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The criteria values to use for the segment dimension. Depending on the value of the DimensionType property, endpoints are included or excluded from the segment if their values match the criteria values.</p>
    #
    #   @return [Array<String>]
    #
    SetDimension = ::Struct.new(
      :dimension_type,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a condition to evaluate for an activity in a journey.</p>
    #
    # @!attribute event_condition
    #   <p>The dimension settings for the event that's associated with the activity.</p>
    #
    #   @return [EventCondition]
    #
    # @!attribute segment_condition
    #   <p>The segment that's associated with the activity.</p>
    #
    #   @return [SegmentCondition]
    #
    # @!attribute segment_dimensions
    #   <p>The dimension settings for the segment that's associated with the activity.</p>
    #
    #   @return [SegmentDimensions]
    #
    SimpleCondition = ::Struct.new(
      :event_condition,
      :segment_condition,
      :segment_dimensions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the contents of an email message, composed of a subject, a text part, and an HTML part.</p>
    #
    # @!attribute html_part
    #   <p>The body of the email message, in HTML format. We recommend using HTML format for email clients that render HTML content. You can include links, formatted text, and more in an HTML message.</p>
    #
    #   @return [SimpleEmailPart]
    #
    # @!attribute subject
    #   <p>The subject line, or title, of the email.</p>
    #
    #   @return [SimpleEmailPart]
    #
    # @!attribute text_part
    #   <p>The body of the email message, in plain text format. We recommend using plain text format for email clients that don't render HTML content and clients that are connected to high-latency networks, such as mobile devices.</p>
    #
    #   @return [SimpleEmailPart]
    #
    SimpleEmail = ::Struct.new(
      :html_part,
      :subject,
      :text_part,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the subject or body of an email message, represented as textual email data and the applicable character set.</p>
    #
    # @!attribute charset
    #   <p>The applicable character set for the message content.</p>
    #
    #   @return [String]
    #
    # @!attribute data
    #   <p>The textual data of the message content.</p>
    #
    #   @return [String]
    #
    SimpleEmailPart = ::Struct.new(
      :charset,
      :data,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SourceType
    #
    module SourceType
      # No documentation available.
      #
      ALL = "ALL"

      # No documentation available.
      #
      ANY = "ANY"

      # No documentation available.
      #
      NONE = "NONE"
    end

    # <p>Specifies the conditions for the first activity in a journey. This activity and its conditions determine which users are participants in a journey.</p>
    #
    # @!attribute description
    #   <p>The custom description of the condition.</p>
    #
    #   @return [String]
    #
    # @!attribute event_start_condition
    #   <p>Specifies the settings for an event that causes a journey activity to start.</p>
    #
    #   @return [EventStartCondition]
    #
    # @!attribute segment_start_condition
    #   <p>The segment that's associated with the first activity in the journey. This segment determines which users are participants in the journey.</p>
    #
    #   @return [SegmentCondition]
    #
    StartCondition = ::Struct.new(
      :description,
      :event_start_condition,
      :segment_start_condition,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for State
    #
    module State
      # No documentation available.
      #
      DRAFT = "DRAFT"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      COMPLETED = "COMPLETED"

      # No documentation available.
      #
      CANCELLED = "CANCELLED"

      # No documentation available.
      #
      CLOSED = "CLOSED"

      # No documentation available.
      #
      PAUSED = "PAUSED"
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tags_model
    #   <p>Specifies the tags (keys and values) for an application, campaign, message template, or segment.</p>
    #
    #   @return [TagsModel]
    #
    TagResourceInput = ::Struct.new(
      :resource_arn,
      :tags_model,
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

    # <p>Specifies the tags (keys and values) for an application, campaign, message template, or segment.</p>
    #
    # @!attribute tags
    #   <p>A string-to-string map of key-value pairs that defines the tags for an application, campaign, message template, or segment. Each of these resources can have a maximum of 50 tags.</p> <p>Each tag consists of a required tag key and an associated tag value. The maximum length of a tag key is 128 characters. The maximum length of a tag value is 256 characters.</p>
    #
    #   @return [Hash<String, String>]
    #
    TagsModel = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the name and version of the message template to use for the message.</p>
    #
    # @!attribute name
    #   <p>The name of the message template to use for the message. If specified, this value must match the name of an existing message template.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The unique identifier for the version of the message template to use for the message. If specified, this value must match the identifier for an existing template version. To retrieve a list of versions and version identifiers for a template, use the <link  linkend="templates-template-name-template-type-versions">Template Versions</link> resource.</p> <p>If you don't specify a value for this property, Amazon Pinpoint uses the <i>active version</i> of the template. The <i>active version</i> is typically the version of a template that's been most recently reviewed and approved for use, depending on your workflow. It isn't necessarily the latest version of a template.</p>
    #
    #   @return [String]
    #
    Template = ::Struct.new(
      :name,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies which version of a message template to use as the active version of the template.</p>
    #
    # @!attribute version
    #   <p>The version of the message template to use as the active version of the template. Valid values are: latest, for the most recent version of the template; or, the unique identifier for any existing version of the template. If you specify an identifier, the value must match the identifier for an existing template version. To retrieve a list of versions and version identifiers for a template, use the <link  linkend="templates-template-name-template-type-versions">Template Versions</link> resource.</p>
    #
    #   @return [String]
    #
    TemplateActiveVersionRequest = ::Struct.new(
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the message template to use for the message, for each type of channel.</p>
    #
    # @!attribute email_template
    #   <p>The email template to use for the message.</p>
    #
    #   @return [Template]
    #
    # @!attribute push_template
    #   <p>The push notification template to use for the message.</p>
    #
    #   @return [Template]
    #
    # @!attribute sms_template
    #   <p>The SMS template to use for the message.</p>
    #
    #   @return [Template]
    #
    # @!attribute voice_template
    #   <p>The voice template to use for the message. This object isn't supported for campaigns.</p>
    #
    #   @return [Template]
    #
    TemplateConfiguration = ::Struct.new(
      :email_template,
      :push_template,
      :sms_template,
      :voice_template,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about a request to create a message template.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the message template that was created.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The message that's returned from the API for the request to create the message template.</p>
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The unique identifier for the request to create the message template.</p>
    #
    #   @return [String]
    #
    TemplateCreateMessageBody = ::Struct.new(
      :arn,
      :message,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about a message template that's associated with your Amazon Pinpoint account.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the message template. This value isn't included in a TemplateResponse object. To retrieve the ARN of a template, use the GetEmailTemplate, GetPushTemplate, GetSmsTemplate, or GetVoiceTemplate operation, depending on the type of template that you want to retrieve the ARN for.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date, in ISO 8601 format, when the message template was created.</p>
    #
    #   @return [String]
    #
    # @!attribute default_substitutions
    #   <p>The JSON object that specifies the default values that are used for message variables in the message template. This object isn't included in a TemplateResponse object. To retrieve this object for a template, use the GetEmailTemplate, GetPushTemplate, GetSmsTemplate, or GetVoiceTemplate operation, depending on the type of template that you want to retrieve the object for.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_date
    #   <p>The date, in ISO 8601 format, when the message template was last modified.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A map of key-value pairs that identifies the tags that are associated with the message template. This object isn't included in a TemplateResponse object. To retrieve this object for a template, use the GetEmailTemplate, GetPushTemplate, GetSmsTemplate, or GetVoiceTemplate operation, depending on the type of template that you want to retrieve the object for.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute template_description
    #   <p>The custom description of the message template. This value isn't included in a TemplateResponse object. To retrieve the description of a template, use the GetEmailTemplate, GetPushTemplate, GetSmsTemplate, or GetVoiceTemplate operation, depending on the type of template that you want to retrieve the description for.</p>
    #
    #   @return [String]
    #
    # @!attribute template_name
    #   <p>The name of the message template.</p>
    #
    #   @return [String]
    #
    # @!attribute template_type
    #   <p>The type of channel that the message template is designed for. Possible values are: EMAIL, PUSH, SMS, and VOICE.</p>
    #
    #   Enum, one of: ["EMAIL", "SMS", "VOICE", "PUSH", "INAPP"]
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The unique identifier, as an integer, for the active version of the message template.</p>
    #
    #   @return [String]
    #
    TemplateResponse = ::Struct.new(
      :arn,
      :creation_date,
      :default_substitutions,
      :last_modified_date,
      :tags,
      :template_description,
      :template_name,
      :template_type,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TemplateType
    #
    module TemplateType
      # No documentation available.
      #
      EMAIL = "EMAIL"

      # No documentation available.
      #
      SMS = "SMS"

      # No documentation available.
      #
      VOICE = "VOICE"

      # No documentation available.
      #
      PUSH = "PUSH"

      # No documentation available.
      #
      INAPP = "INAPP"
    end

    # <p>Provides information about a specific version of a message template.</p>
    #
    # @!attribute creation_date
    #   <p>The date, in ISO 8601 format, when the version of the message template was created.</p>
    #
    #   @return [String]
    #
    # @!attribute default_substitutions
    #   <p>A JSON object that specifies the default values that are used for message variables in the version of the message template. This object is a set of key-value pairs. Each key defines a message variable in the template. The corresponding value defines the default value for that variable.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_date
    #   <p>The date, in ISO 8601 format, when the version of the message template was last modified.</p>
    #
    #   @return [String]
    #
    # @!attribute template_description
    #   <p>The custom description of the version of the message template.</p>
    #
    #   @return [String]
    #
    # @!attribute template_name
    #   <p>The name of the message template.</p>
    #
    #   @return [String]
    #
    # @!attribute template_type
    #   <p>The type of channel that the message template is designed for. Possible values are: EMAIL, PUSH, SMS, and VOICE.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The unique identifier for the version of the message template. This value is an integer that Amazon Pinpoint automatically increments and assigns to each new version of a template.</p>
    #
    #   @return [String]
    #
    TemplateVersionResponse = ::Struct.new(
      :creation_date,
      :default_substitutions,
      :last_modified_date,
      :template_description,
      :template_name,
      :template_type,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about all the versions of a specific message template.</p>
    #
    # @!attribute item
    #   <p>An array of responses, one for each version of the message template.</p>
    #
    #   @return [Array<TemplateVersionResponse>]
    #
    # @!attribute message
    #   <p>The message that's returned from the API for the request to retrieve information about all the versions of the message template.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The unique identifier for the request to retrieve information about all the versions of the message template.</p>
    #
    #   @return [String]
    #
    TemplateVersionsResponse = ::Struct.new(
      :item,
      :message,
      :next_token,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about all the message templates that are associated with your Amazon Pinpoint account.</p>
    #
    # @!attribute item
    #   <p>An array of responses, one for each message template that's associated with your Amazon Pinpoint account and meets any filter criteria that you specified in the request.</p>
    #
    #   @return [Array<TemplateResponse>]
    #
    # @!attribute next_token
    #   <p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>
    #
    #   @return [String]
    #
    TemplatesResponse = ::Struct.new(
      :item,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about an API request or response.</p>
    #
    # @!attribute message
    #   <p>The message that's returned from the API.</p>
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The unique identifier for the request or response.</p>
    #
    #   @return [String]
    #
    TooManyRequestsException = ::Struct.new(
      :message,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the settings for a campaign treatment. A <i>treatment</i> is a variation of a campaign that's used for A/B testing of a campaign.</p>
    #
    # @!attribute custom_delivery_configuration
    #   <p>The delivery configuration settings for sending the treatment through a custom channel. This object is required if the MessageConfiguration object for the treatment specifies a CustomMessage object.</p>
    #
    #   @return [CustomDeliveryConfiguration]
    #
    # @!attribute id
    #   <p>The unique identifier for the treatment.</p>
    #
    #   @return [String]
    #
    # @!attribute message_configuration
    #   <p>The message configuration settings for the treatment.</p>
    #
    #   @return [MessageConfiguration]
    #
    # @!attribute schedule
    #   <p>The schedule settings for the treatment.</p>
    #
    #   @return [Schedule]
    #
    # @!attribute size_percent
    #   <p>The allocated percentage of users (segment members) that the treatment is sent to.</p>
    #
    #   @return [Integer]
    #
    # @!attribute state
    #   <p>The current status of the treatment.</p>
    #
    #   @return [CampaignState]
    #
    # @!attribute template_configuration
    #   <p>The message template to use for the treatment.</p>
    #
    #   @return [TemplateConfiguration]
    #
    # @!attribute treatment_description
    #   <p>The custom description of the treatment.</p>
    #
    #   @return [String]
    #
    # @!attribute treatment_name
    #   <p>The custom name of the treatment.</p>
    #
    #   @return [String]
    #
    TreatmentResource = ::Struct.new(
      :custom_delivery_configuration,
      :id,
      :message_configuration,
      :schedule,
      :size_percent,
      :state,
      :template_configuration,
      :treatment_description,
      :treatment_name,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.size_percent ||= 0
      end

    end

    # Includes enum constants for Type
    #
    module Type
      # No documentation available.
      #
      ALL = "ALL"

      # No documentation available.
      #
      ANY = "ANY"

      # No documentation available.
      #
      NONE = "NONE"
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The key of the tag to remove from the resource. To remove multiple tags, append the tagKeys parameter and argument for each additional tag to remove, separated by an ampersand (&amp;).</p>
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

    # @!attribute adm_channel_request
    #   <p>Specifies the status and settings of the ADM (Amazon Device Messaging) channel for an application.</p>
    #
    #   @return [ADMChannelRequest]
    #
    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    UpdateAdmChannelInput = ::Struct.new(
      :adm_channel_request,
      :application_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute adm_channel_response
    #   <p>Provides information about the status and settings of the ADM (Amazon Device Messaging) channel for an application.</p>
    #
    #   @return [ADMChannelResponse]
    #
    UpdateAdmChannelOutput = ::Struct.new(
      :adm_channel_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute apns_channel_request
    #   <p>Specifies the status and settings of the APNs (Apple Push Notification service) channel for an application.</p>
    #
    #   @return [APNSChannelRequest]
    #
    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    UpdateApnsChannelInput = ::Struct.new(
      :apns_channel_request,
      :application_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute apns_channel_response
    #   <p>Provides information about the status and settings of the APNs (Apple Push Notification service) channel for an application.</p>
    #
    #   @return [APNSChannelResponse]
    #
    UpdateApnsChannelOutput = ::Struct.new(
      :apns_channel_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute apns_sandbox_channel_request
    #   <p>Specifies the status and settings of the APNs (Apple Push Notification service) sandbox channel for an application.</p>
    #
    #   @return [APNSSandboxChannelRequest]
    #
    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    UpdateApnsSandboxChannelInput = ::Struct.new(
      :apns_sandbox_channel_request,
      :application_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute apns_sandbox_channel_response
    #   <p>Provides information about the status and settings of the APNs (Apple Push Notification service) sandbox channel for an application.</p>
    #
    #   @return [APNSSandboxChannelResponse]
    #
    UpdateApnsSandboxChannelOutput = ::Struct.new(
      :apns_sandbox_channel_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute apns_voip_channel_request
    #   <p>Specifies the status and settings of the APNs (Apple Push Notification service) VoIP channel for an application.</p>
    #
    #   @return [APNSVoipChannelRequest]
    #
    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    UpdateApnsVoipChannelInput = ::Struct.new(
      :apns_voip_channel_request,
      :application_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute apns_voip_channel_response
    #   <p>Provides information about the status and settings of the APNs (Apple Push Notification service) VoIP channel for an application.</p>
    #
    #   @return [APNSVoipChannelResponse]
    #
    UpdateApnsVoipChannelOutput = ::Struct.new(
      :apns_voip_channel_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute apns_voip_sandbox_channel_request
    #   <p>Specifies the status and settings of the APNs (Apple Push Notification service) VoIP sandbox channel for an application.</p>
    #
    #   @return [APNSVoipSandboxChannelRequest]
    #
    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    UpdateApnsVoipSandboxChannelInput = ::Struct.new(
      :apns_voip_sandbox_channel_request,
      :application_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute apns_voip_sandbox_channel_response
    #   <p>Provides information about the status and settings of the APNs (Apple Push Notification service) VoIP sandbox channel for an application.</p>
    #
    #   @return [APNSVoipSandboxChannelResponse]
    #
    UpdateApnsVoipSandboxChannelOutput = ::Struct.new(
      :apns_voip_sandbox_channel_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    # @!attribute write_application_settings_request
    #   <p>Specifies the default settings for an application.</p>
    #
    #   @return [WriteApplicationSettingsRequest]
    #
    UpdateApplicationSettingsInput = ::Struct.new(
      :application_id,
      :write_application_settings_request,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_settings_resource
    #   <p>Provides information about an application, including the default settings for an application.</p>
    #
    #   @return [ApplicationSettingsResource]
    #
    UpdateApplicationSettingsOutput = ::Struct.new(
      :application_settings_resource,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies one or more attributes to remove from all the endpoints that are associated with an application.</p>
    #
    # @!attribute blacklist
    #   <p>An array of the attributes to remove from all the endpoints that are associated with the application. The array can specify the complete, exact name of each attribute to remove or it can specify a glob pattern that an attribute name must match in order for the attribute to be removed.</p>
    #
    #   @return [Array<String>]
    #
    UpdateAttributesRequest = ::Struct.new(
      :blacklist,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    # @!attribute baidu_channel_request
    #   <p>Specifies the status and settings of the Baidu (Baidu Cloud Push) channel for an application.</p>
    #
    #   @return [BaiduChannelRequest]
    #
    UpdateBaiduChannelInput = ::Struct.new(
      :application_id,
      :baidu_channel_request,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute baidu_channel_response
    #   <p>Provides information about the status and settings of the Baidu (Baidu Cloud Push) channel for an application.</p>
    #
    #   @return [BaiduChannelResponse]
    #
    UpdateBaiduChannelOutput = ::Struct.new(
      :baidu_channel_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    # @!attribute campaign_id
    #   <p>The unique identifier for the campaign.</p>
    #
    #   @return [String]
    #
    # @!attribute write_campaign_request
    #   <p>Specifies the configuration and other settings for a campaign.</p>
    #
    #   @return [WriteCampaignRequest]
    #
    UpdateCampaignInput = ::Struct.new(
      :application_id,
      :campaign_id,
      :write_campaign_request,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute campaign_response
    #   <p>Provides information about the status, configuration, and other settings for a campaign.</p>
    #
    #   @return [CampaignResponse]
    #
    UpdateCampaignOutput = ::Struct.new(
      :campaign_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    # @!attribute email_channel_request
    #   <p>Specifies the status and settings of the email channel for an application.</p>
    #
    #   @return [EmailChannelRequest]
    #
    UpdateEmailChannelInput = ::Struct.new(
      :application_id,
      :email_channel_request,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute email_channel_response
    #   <p>Provides information about the status and settings of the email channel for an application.</p>
    #
    #   @return [EmailChannelResponse]
    #
    UpdateEmailChannelOutput = ::Struct.new(
      :email_channel_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute create_new_version
    #   <p>Specifies whether to save the updates as a new version of the message template. Valid values are: true, save the updates as a new version; and, false, save the updates to (overwrite) the latest existing version of the template.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint saves the updates to (overwrites) the latest existing version of the template. If you specify a value of true for this parameter, don't specify a value for the version parameter. Otherwise, an error will occur.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute email_template_request
    #   <p>Specifies the content and settings for a message template that can be used in messages that are sent through the email channel.</p>
    #
    #   @return [EmailTemplateRequest]
    #
    # @!attribute template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend="templates-template-name-template-type-versions">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>
    #
    #   @return [String]
    #
    UpdateEmailTemplateInput = ::Struct.new(
      :create_new_version,
      :email_template_request,
      :template_name,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.create_new_version ||= false
      end

    end

    # @!attribute message_body
    #   <p>Provides information about an API request or response.</p>
    #
    #   @return [MessageBody]
    #
    UpdateEmailTemplateOutput = ::Struct.new(
      :message_body,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_id
    #   <p>The unique identifier for the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_request
    #   <p>Specifies the channel type and other settings for an endpoint.</p>
    #
    #   @return [EndpointRequest]
    #
    UpdateEndpointInput = ::Struct.new(
      :application_id,
      :endpoint_id,
      :endpoint_request,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute message_body
    #   <p>Provides information about an API request or response.</p>
    #
    #   @return [MessageBody]
    #
    UpdateEndpointOutput = ::Struct.new(
      :message_body,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_batch_request
    #   <p>Specifies a batch of endpoints to create or update and the settings and attributes to set or change for each endpoint.</p>
    #
    #   @return [EndpointBatchRequest]
    #
    UpdateEndpointsBatchInput = ::Struct.new(
      :application_id,
      :endpoint_batch_request,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute message_body
    #   <p>Provides information about an API request or response.</p>
    #
    #   @return [MessageBody]
    #
    UpdateEndpointsBatchOutput = ::Struct.new(
      :message_body,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    # @!attribute gcm_channel_request
    #   <p>Specifies the status and settings of the GCM channel for an application. This channel enables Amazon Pinpoint to send push notifications through the Firebase Cloud Messaging (FCM), formerly Google Cloud Messaging (GCM), service.</p>
    #
    #   @return [GCMChannelRequest]
    #
    UpdateGcmChannelInput = ::Struct.new(
      :application_id,
      :gcm_channel_request,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute gcm_channel_response
    #   <p>Provides information about the status and settings of the GCM channel for an application. The GCM channel enables Amazon Pinpoint to send push notifications through the Firebase Cloud Messaging (FCM), formerly Google Cloud Messaging (GCM), service.</p>
    #
    #   @return [GCMChannelResponse]
    #
    UpdateGcmChannelOutput = ::Struct.new(
      :gcm_channel_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute create_new_version
    #   <p>Specifies whether to save the updates as a new version of the message template. Valid values are: true, save the updates as a new version; and, false, save the updates to (overwrite) the latest existing version of the template.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint saves the updates to (overwrites) the latest existing version of the template. If you specify a value of true for this parameter, don't specify a value for the version parameter. Otherwise, an error will occur.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute in_app_template_request
    #   <p>InApp Template Request.</p>
    #
    #   @return [InAppTemplateRequest]
    #
    # @!attribute template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend="templates-template-name-template-type-versions">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>
    #
    #   @return [String]
    #
    UpdateInAppTemplateInput = ::Struct.new(
      :create_new_version,
      :in_app_template_request,
      :template_name,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.create_new_version ||= false
      end

    end

    # @!attribute message_body
    #   <p>Provides information about an API request or response.</p>
    #
    #   @return [MessageBody]
    #
    UpdateInAppTemplateOutput = ::Struct.new(
      :message_body,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    # @!attribute journey_id
    #   <p>The unique identifier for the journey.</p>
    #
    #   @return [String]
    #
    # @!attribute write_journey_request
    #   <p>Specifies the configuration and other settings for a journey.</p>
    #
    #   @return [WriteJourneyRequest]
    #
    UpdateJourneyInput = ::Struct.new(
      :application_id,
      :journey_id,
      :write_journey_request,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute journey_response
    #   <p>Provides information about the status, configuration, and other settings for a journey.</p>
    #
    #   @return [JourneyResponse]
    #
    UpdateJourneyOutput = ::Struct.new(
      :journey_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    # @!attribute journey_id
    #   <p>The unique identifier for the journey.</p>
    #
    #   @return [String]
    #
    # @!attribute journey_state_request
    #   <p>Changes the status of a journey.</p>
    #
    #   @return [JourneyStateRequest]
    #
    UpdateJourneyStateInput = ::Struct.new(
      :application_id,
      :journey_id,
      :journey_state_request,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute journey_response
    #   <p>Provides information about the status, configuration, and other settings for a journey.</p>
    #
    #   @return [JourneyResponse]
    #
    UpdateJourneyStateOutput = ::Struct.new(
      :journey_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute create_new_version
    #   <p>Specifies whether to save the updates as a new version of the message template. Valid values are: true, save the updates as a new version; and, false, save the updates to (overwrite) the latest existing version of the template.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint saves the updates to (overwrites) the latest existing version of the template. If you specify a value of true for this parameter, don't specify a value for the version parameter. Otherwise, an error will occur.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute push_notification_template_request
    #   <p>Specifies the content and settings for a message template that can be used in messages that are sent through a push notification channel.</p>
    #
    #   @return [PushNotificationTemplateRequest]
    #
    # @!attribute template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend="templates-template-name-template-type-versions">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>
    #
    #   @return [String]
    #
    UpdatePushTemplateInput = ::Struct.new(
      :create_new_version,
      :push_notification_template_request,
      :template_name,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.create_new_version ||= false
      end

    end

    # @!attribute message_body
    #   <p>Provides information about an API request or response.</p>
    #
    #   @return [MessageBody]
    #
    UpdatePushTemplateOutput = ::Struct.new(
      :message_body,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute recommender_id
    #   <p>The unique identifier for the recommender model configuration. This identifier is displayed as the <b>Recommender ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    # @!attribute update_recommender_configuration
    #   <p>Specifies Amazon Pinpoint configuration settings for retrieving and processing recommendation data from a recommender model.</p>
    #
    #   @return [UpdateRecommenderConfigurationShape]
    #
    UpdateRecommenderConfigurationInput = ::Struct.new(
      :recommender_id,
      :update_recommender_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute recommender_configuration_response
    #   <p>Provides information about Amazon Pinpoint configuration settings for retrieving and processing data from a recommender model.</p>
    #
    #   @return [RecommenderConfigurationResponse]
    #
    UpdateRecommenderConfigurationOutput = ::Struct.new(
      :recommender_configuration_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies Amazon Pinpoint configuration settings for retrieving and processing recommendation data from a recommender model.</p>
    #
    # @!attribute attributes
    #   <p>A map of key-value pairs that defines 1-10 custom endpoint or user attributes, depending on the value for the RecommendationProviderIdType property. Each of these attributes temporarily stores a recommended item that's retrieved from the recommender model and sent to an AWS Lambda function for additional processing. Each attribute can be used as a message variable in a message template.</p> <p>In the map, the key is the name of a custom attribute and the value is a custom display name for that attribute. The display name appears in the <b>Attribute finder</b> of the template editor on the Amazon Pinpoint console. The following restrictions apply to these names:</p> <ul><li><p>An attribute name must start with a letter or number and it can contain up to 50 characters. The characters can be letters, numbers, underscores (_), or hyphens (-). Attribute names are case sensitive and must be unique.</p></li> <li><p>An attribute display name must start with a letter or number and it can contain up to 25 characters. The characters can be letters, numbers, spaces, underscores (_), or hyphens (-).</p></li></ul> <p>This object is required if the configuration invokes an AWS Lambda function (RecommendationTransformerUri) to process recommendation data. Otherwise, don't include this object in your request.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute description
    #   <p>A custom description of the configuration for the recommender model. The description can contain up to 128 characters. The characters can be letters, numbers, spaces, or the following symbols: _ ; () , ‐.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A custom name of the configuration for the recommender model. The name must start with a letter or number and it can contain up to 128 characters. The characters can be letters, numbers, spaces, underscores (_), or hyphens (-).</p>
    #
    #   @return [String]
    #
    # @!attribute recommendation_provider_id_type
    #   <p>The type of Amazon Pinpoint ID to associate with unique user IDs in the recommender model. This value enables the model to use attribute and event data that’s specific to a particular endpoint or user in an Amazon Pinpoint application. Valid values are:</p> <ul><li><p>PINPOINT_ENDPOINT_ID - Associate each user in the model with a particular endpoint in Amazon Pinpoint. The data is correlated based on endpoint IDs in Amazon Pinpoint. This is the default value.</p></li> <li><p>PINPOINT_USER_ID - Associate each user in the model with a particular user and endpoint in Amazon Pinpoint. The data is correlated based on user IDs in Amazon Pinpoint. If you specify this value, an endpoint definition in Amazon Pinpoint has to specify both a user ID (UserId) and an endpoint ID. Otherwise, messages won’t be sent to the user's endpoint.</p></li></ul>
    #
    #   @return [String]
    #
    # @!attribute recommendation_provider_role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that authorizes Amazon Pinpoint to retrieve recommendation data from the recommender model.</p>
    #
    #   @return [String]
    #
    # @!attribute recommendation_provider_uri
    #   <p>The Amazon Resource Name (ARN) of the recommender model to retrieve recommendation data from. This value must match the ARN of an Amazon Personalize campaign.</p>
    #
    #   @return [String]
    #
    # @!attribute recommendation_transformer_uri
    #   <p>The name or Amazon Resource Name (ARN) of the AWS Lambda function to invoke for additional processing of recommendation data that's retrieved from the recommender model.</p>
    #
    #   @return [String]
    #
    # @!attribute recommendations_display_name
    #   <p>A custom display name for the standard endpoint or user attribute (RecommendationItems) that temporarily stores recommended items for each endpoint or user, depending on the value for the RecommendationProviderIdType property. This value is required if the configuration doesn't invoke an AWS Lambda function (RecommendationTransformerUri) to perform additional processing of recommendation data.</p> <p>This name appears in the <b>Attribute finder</b> of the template editor on the Amazon Pinpoint console. The name can contain up to 25 characters. The characters can be letters, numbers, spaces, underscores (_), or hyphens (-). These restrictions don't apply to attribute values.</p>
    #
    #   @return [String]
    #
    # @!attribute recommendations_per_message
    #   <p>The number of recommended items to retrieve from the model for each endpoint or user, depending on the value for the RecommendationProviderIdType property. This number determines how many recommended items are available for use in message variables. The minimum value is 1. The maximum value is 5. The default value is 5.</p> <p>To use multiple recommended items and custom attributes with message variables, you have to use an AWS Lambda function (RecommendationTransformerUri) to perform additional processing of recommendation data.</p>
    #
    #   @return [Integer]
    #
    UpdateRecommenderConfigurationShape = ::Struct.new(
      :attributes,
      :description,
      :name,
      :recommendation_provider_id_type,
      :recommendation_provider_role_arn,
      :recommendation_provider_uri,
      :recommendation_transformer_uri,
      :recommendations_display_name,
      :recommendations_per_message,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.recommendations_per_message ||= 0
      end

    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    # @!attribute segment_id
    #   <p>The unique identifier for the segment.</p>
    #
    #   @return [String]
    #
    # @!attribute write_segment_request
    #   <p>Specifies the configuration, dimension, and other settings for a segment. A WriteSegmentRequest object can include a Dimensions object or a SegmentGroups object, but not both.</p>
    #
    #   @return [WriteSegmentRequest]
    #
    UpdateSegmentInput = ::Struct.new(
      :application_id,
      :segment_id,
      :write_segment_request,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute segment_response
    #   <p>Provides information about the configuration, dimension, and other settings for a segment.</p>
    #
    #   @return [SegmentResponse]
    #
    UpdateSegmentOutput = ::Struct.new(
      :segment_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    # @!attribute sms_channel_request
    #   <p>Specifies the status and settings of the SMS channel for an application.</p>
    #
    #   @return [SMSChannelRequest]
    #
    UpdateSmsChannelInput = ::Struct.new(
      :application_id,
      :sms_channel_request,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute sms_channel_response
    #   <p>Provides information about the status and settings of the SMS channel for an application.</p>
    #
    #   @return [SMSChannelResponse]
    #
    UpdateSmsChannelOutput = ::Struct.new(
      :sms_channel_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute create_new_version
    #   <p>Specifies whether to save the updates as a new version of the message template. Valid values are: true, save the updates as a new version; and, false, save the updates to (overwrite) the latest existing version of the template.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint saves the updates to (overwrites) the latest existing version of the template. If you specify a value of true for this parameter, don't specify a value for the version parameter. Otherwise, an error will occur.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute sms_template_request
    #   <p>Specifies the content and settings for a message template that can be used in text messages that are sent through the SMS channel.</p>
    #
    #   @return [SMSTemplateRequest]
    #
    # @!attribute template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend="templates-template-name-template-type-versions">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>
    #
    #   @return [String]
    #
    UpdateSmsTemplateInput = ::Struct.new(
      :create_new_version,
      :sms_template_request,
      :template_name,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.create_new_version ||= false
      end

    end

    # @!attribute message_body
    #   <p>Provides information about an API request or response.</p>
    #
    #   @return [MessageBody]
    #
    UpdateSmsTemplateOutput = ::Struct.new(
      :message_body,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute template_active_version_request
    #   <p>Specifies which version of a message template to use as the active version of the template.</p>
    #
    #   @return [TemplateActiveVersionRequest]
    #
    # @!attribute template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    #
    #   @return [String]
    #
    # @!attribute template_type
    #   <p>The type of channel that the message template is designed for. Valid values are: EMAIL, PUSH, SMS, and VOICE.</p>
    #
    #   @return [String]
    #
    UpdateTemplateActiveVersionInput = ::Struct.new(
      :template_active_version_request,
      :template_name,
      :template_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute message_body
    #   <p>Provides information about an API request or response.</p>
    #
    #   @return [MessageBody]
    #
    UpdateTemplateActiveVersionOutput = ::Struct.new(
      :message_body,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    #
    #   @return [String]
    #
    # @!attribute voice_channel_request
    #   <p>Specifies the status and settings of the voice channel for an application.</p>
    #
    #   @return [VoiceChannelRequest]
    #
    UpdateVoiceChannelInput = ::Struct.new(
      :application_id,
      :voice_channel_request,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute voice_channel_response
    #   <p>Provides information about the status and settings of the voice channel for an application.</p>
    #
    #   @return [VoiceChannelResponse]
    #
    UpdateVoiceChannelOutput = ::Struct.new(
      :voice_channel_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute create_new_version
    #   <p>Specifies whether to save the updates as a new version of the message template. Valid values are: true, save the updates as a new version; and, false, save the updates to (overwrite) the latest existing version of the template.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint saves the updates to (overwrites) the latest existing version of the template. If you specify a value of true for this parameter, don't specify a value for the version parameter. Otherwise, an error will occur.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute template_name
    #   <p>The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link  linkend="templates-template-name-template-type-versions">Template Versions</link> resource.</p> <p>If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.</p> <p>If you don't specify a value for this parameter, Amazon Pinpoint does the following:</p> <ul><li><p>For a get operation, retrieves information about the active version of the template.</p></li> <li><p>For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.</p></li> <li><p>For a delete operation, deletes the template, including all versions of the template.</p></li></ul>
    #
    #   @return [String]
    #
    # @!attribute voice_template_request
    #   <p>Specifies the content and settings for a message template that can be used in messages that are sent through the voice channel.</p>
    #
    #   @return [VoiceTemplateRequest]
    #
    UpdateVoiceTemplateInput = ::Struct.new(
      :create_new_version,
      :template_name,
      :version,
      :voice_template_request,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.create_new_version ||= false
      end

    end

    # @!attribute message_body
    #   <p>Provides information about an API request or response.</p>
    #
    #   @return [MessageBody]
    #
    UpdateVoiceTemplateOutput = ::Struct.new(
      :message_body,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Verify OTP Message Response.</p>
    #
    # @!attribute valid
    #   <p>Specifies whether the OTP is valid or not.</p>
    #
    #   @return [Boolean]
    #
    VerificationResponse = ::Struct.new(
      :valid,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.valid ||= false
      end

    end

    # @!attribute application_id
    #   <p>The unique ID of your Amazon Pinpoint application.</p>
    #
    #   @return [String]
    #
    # @!attribute verify_otp_message_request_parameters
    #   <p>Verify OTP message request.</p>
    #
    #   @return [VerifyOTPMessageRequestParameters]
    #
    VerifyOTPMessageInput = ::Struct.new(
      :application_id,
      :verify_otp_message_request_parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute verification_response
    #   <p>Verify OTP Message Response.</p>
    #
    #   @return [VerificationResponse]
    #
    VerifyOTPMessageOutput = ::Struct.new(
      :verification_response,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Verify OTP message request.</p>
    #
    # @!attribute destination_identity
    #   <p>The destination identity to send OTP to.</p>
    #
    #   @return [String]
    #
    # @!attribute otp
    #   <p>The OTP the end user provided for verification.</p>
    #
    #   @return [String]
    #
    # @!attribute reference_id
    #   <p>The reference identifier provided when the OTP was previously sent.</p>
    #
    #   @return [String]
    #
    VerifyOTPMessageRequestParameters = ::Struct.new(
      :destination_identity,
      :otp,
      :reference_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the status and settings of the voice channel for an application.</p>
    #
    # @!attribute enabled
    #   <p>Specifies whether to enable the voice channel for the application.</p>
    #
    #   @return [Boolean]
    #
    VoiceChannelRequest = ::Struct.new(
      :enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.enabled ||= false
      end

    end

    # <p>Provides information about the status and settings of the voice channel for an application.</p>
    #
    # @!attribute application_id
    #   <p>The unique identifier for the application that the voice channel applies to.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date and time, in ISO 8601 format, when the voice channel was enabled.</p>
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p>Specifies whether the voice channel is enabled for the application.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute has_credential
    #   <p>(Not used) This property is retained only for backward compatibility.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute id
    #   <p>(Deprecated) An identifier for the voice channel. This property is retained only for backward compatibility.</p>
    #
    #   @return [String]
    #
    # @!attribute is_archived
    #   <p>Specifies whether the voice channel is archived.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute last_modified_by
    #   <p>The user who last modified the voice channel.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_date
    #   <p>The date and time, in ISO 8601 format, when the voice channel was last modified.</p>
    #
    #   @return [String]
    #
    # @!attribute platform
    #   <p>The type of messaging or notification platform for the channel. For the voice channel, this value is VOICE.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The current version of the voice channel.</p>
    #
    #   @return [Integer]
    #
    VoiceChannelResponse = ::Struct.new(
      :application_id,
      :creation_date,
      :enabled,
      :has_credential,
      :id,
      :is_archived,
      :last_modified_by,
      :last_modified_date,
      :platform,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.enabled ||= false
        self.has_credential ||= false
        self.is_archived ||= false
        self.version ||= 0
      end

    end

    # <p>Specifies the settings for a one-time voice message that's sent directly to an endpoint through the voice channel.</p>
    #
    # @!attribute body
    #   <p>The text of the script to use for the voice message.</p>
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>The code for the language to use when synthesizing the text of the message script. For a list of supported languages and the code for each one, see the <a href="https://docs.aws.amazon.com/polly/latest/dg/what-is.html">Amazon Polly Developer Guide</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute origination_number
    #   <p>The long code to send the voice message from. This value should be one of the dedicated long codes that's assigned to your AWS account. Although it isn't required, we recommend that you specify the long code in E.164 format, for example +12065550100, to ensure prompt and accurate delivery of the message.</p>
    #
    #   @return [String]
    #
    # @!attribute substitutions
    #   <p>The default message variables to use in the voice message. You can override the default variables with individual address variables.</p>
    #
    #   @return [Hash<String, Array<String>>]
    #
    # @!attribute voice_id
    #   <p>The name of the voice to use when delivering the message. For a list of supported voices, see the <a href="https://docs.aws.amazon.com/polly/latest/dg/what-is.html">Amazon Polly Developer Guide</a>.</p>
    #
    #   @return [String]
    #
    VoiceMessage = ::Struct.new(
      :body,
      :language_code,
      :origination_number,
      :substitutions,
      :voice_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the content and settings for a message template that can be used in messages that are sent through the voice channel.</p>
    #
    # @!attribute body
    #   <p>The text of the script to use in messages that are based on the message template, in plain text format.</p>
    #
    #   @return [String]
    #
    # @!attribute default_substitutions
    #   <p>A JSON object that specifies the default values to use for message variables in the message template. This object is a set of key-value pairs. Each key defines a message variable in the template. The corresponding value defines the default value for that variable. When you create a message that's based on the template, you can override these defaults with message-specific and address-specific variables and values.</p>
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>The code for the language to use when synthesizing the text of the script in messages that are based on the message template. For a list of supported languages and the code for each one, see the <a href="https://docs.aws.amazon.com/polly/latest/dg/what-is.html">Amazon Polly Developer Guide</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A string-to-string map of key-value pairs that defines the tags to associate with the message template. Each tag consists of a required tag key and an associated tag value.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute template_description
    #   <p>A custom description of the message template.</p>
    #
    #   @return [String]
    #
    # @!attribute voice_id
    #   <p>The name of the voice to use when delivering messages that are based on the message template. For a list of supported voices, see the <a href="https://docs.aws.amazon.com/polly/latest/dg/what-is.html">Amazon Polly Developer Guide</a>.</p>
    #
    #   @return [String]
    #
    VoiceTemplateRequest = ::Struct.new(
      :body,
      :default_substitutions,
      :language_code,
      :tags,
      :template_description,
      :voice_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about the content and settings for a message template that can be used in messages that are sent through the voice channel.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the message template.</p>
    #
    #   @return [String]
    #
    # @!attribute body
    #   <p>The text of the script that's used in messages that are based on the message template, in plain text format.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date, in ISO 8601 format, when the message template was created.</p>
    #
    #   @return [String]
    #
    # @!attribute default_substitutions
    #   <p>The JSON object that specifies the default values that are used for message variables in the message template. This object is a set of key-value pairs. Each key defines a message variable in the template. The corresponding value defines the default value for that variable.</p>
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>The code for the language that's used when synthesizing the text of the script in messages that are based on the message template. For a list of supported languages and the code for each one, see the <a href="https://docs.aws.amazon.com/polly/latest/dg/what-is.html">Amazon Polly Developer Guide</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_date
    #   <p>The date, in ISO 8601 format, when the message template was last modified.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A string-to-string map of key-value pairs that identifies the tags that are associated with the message template. Each tag consists of a required tag key and an associated tag value.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute template_description
    #   <p>The custom description of the message template.</p>
    #
    #   @return [String]
    #
    # @!attribute template_name
    #   <p>The name of the message template.</p>
    #
    #   @return [String]
    #
    # @!attribute template_type
    #   <p>The type of channel that the message template is designed for. For a voice template, this value is VOICE.</p>
    #
    #   Enum, one of: ["EMAIL", "SMS", "VOICE", "PUSH", "INAPP"]
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The unique identifier, as an integer, for the active version of the message template, or the version of the template that you specified by using the version parameter in your request.</p>
    #
    #   @return [String]
    #
    # @!attribute voice_id
    #   <p>The name of the voice that's used when delivering messages that are based on the message template. For a list of supported voices, see the <a href="https://docs.aws.amazon.com/polly/latest/dg/what-is.html">Amazon Polly Developer Guide</a>.</p>
    #
    #   @return [String]
    #
    VoiceTemplateResponse = ::Struct.new(
      :arn,
      :body,
      :creation_date,
      :default_substitutions,
      :language_code,
      :last_modified_date,
      :tags,
      :template_description,
      :template_name,
      :template_type,
      :version,
      :voice_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the settings for a wait activity in a journey. This type of activity waits for a certain amount of time or until a specific date and time before moving participants to the next activity in a journey.</p>
    #
    # @!attribute next_activity
    #   <p>The unique identifier for the next activity to perform, after performing the wait activity.</p>
    #
    #   @return [String]
    #
    # @!attribute wait_time
    #   <p>The amount of time to wait or the date and time when the activity moves participants to the next activity in the journey.</p>
    #
    #   @return [WaitTime]
    #
    WaitActivity = ::Struct.new(
      :next_activity,
      :wait_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a duration or a date and time that indicates when Amazon Pinpoint determines whether an activity's conditions have been met or an activity moves participants to the next activity in a journey.</p>
    #
    # @!attribute wait_for
    #   <p>The amount of time to wait, as a duration in ISO 8601 format, before determining whether the activity's conditions have been met or moving participants to the next activity in the journey.</p>
    #
    #   @return [String]
    #
    # @!attribute wait_until
    #   <p>The date and time, in ISO 8601 format, when Amazon Pinpoint determines whether the activity's conditions have been met or the activity moves participants to the next activity in the journey.</p>
    #
    #   @return [String]
    #
    WaitTime = ::Struct.new(
      :wait_for,
      :wait_until,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the default settings for an application.</p>
    #
    # @!attribute campaign_hook
    #   <p>The settings for the AWS Lambda function to invoke by default as a code hook for campaigns in the application. You can use this hook to customize segments that are used by campaigns in the application.</p> <p>To override these settings and define custom settings for a specific campaign, use the CampaignHook object of the <link  linkend="apps-application-id-campaigns-campaign-id">Campaign</link> resource.</p>
    #
    #   @return [CampaignHook]
    #
    # @!attribute cloud_watch_metrics_enabled
    #   <p>Specifies whether to enable application-related alarms in Amazon CloudWatch.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute event_tagging_enabled
    #
    #   @return [Boolean]
    #
    # @!attribute limits
    #   <p>The default sending limits for campaigns in the application. To override these limits and define custom limits for a specific campaign or journey, use the <link  linkend="apps-application-id-campaigns-campaign-id">Campaign</link> resource or the <link  linkend="apps-application-id-journeys-journey-id">Journey</link> resource, respectively.</p>
    #
    #   @return [CampaignLimits]
    #
    # @!attribute quiet_time
    #   <p>The default quiet time for campaigns in the application. Quiet time is a specific time range when messages aren't sent to endpoints, if all the following conditions are met:</p> <ul><li><p>The EndpointDemographic.Timezone property of the endpoint is set to a valid value.</p></li> <li><p>The current time in the endpoint's time zone is later than or equal to the time specified by the QuietTime.Start property for the application (or a campaign or journey that has custom quiet time settings).</p></li> <li><p>The current time in the endpoint's time zone is earlier than or equal to the time specified by the QuietTime.End property for the application (or a campaign or journey that has custom quiet time settings).</p></li></ul> <p>If any of the preceding conditions isn't met, the endpoint will receive messages from a campaign or journey, even if quiet time is enabled.</p> <p>To override the default quiet time settings for a specific campaign or journey, use the <link  linkend="apps-application-id-campaigns-campaign-id">Campaign</link> resource or the <link  linkend="apps-application-id-journeys-journey-id">Journey</link> resource to define a custom quiet time for the campaign or journey.</p>
    #
    #   @return [QuietTime]
    #
    WriteApplicationSettingsRequest = ::Struct.new(
      :campaign_hook,
      :cloud_watch_metrics_enabled,
      :event_tagging_enabled,
      :limits,
      :quiet_time,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.cloud_watch_metrics_enabled ||= false
        self.event_tagging_enabled ||= false
      end

    end

    # <p>Specifies the configuration and other settings for a campaign.</p>
    #
    # @!attribute additional_treatments
    #   <p>An array of requests that defines additional treatments for the campaign, in addition to the default treatment for the campaign.</p>
    #
    #   @return [Array<WriteTreatmentResource>]
    #
    # @!attribute custom_delivery_configuration
    #   <p>The delivery configuration settings for sending the campaign through a custom channel. This object is required if the MessageConfiguration object for the campaign specifies a CustomMessage object.</p>
    #
    #   @return [CustomDeliveryConfiguration]
    #
    # @!attribute description
    #   <p>A custom description of the campaign.</p>
    #
    #   @return [String]
    #
    # @!attribute holdout_percent
    #   <p>The allocated percentage of users (segment members) who shouldn't receive messages from the campaign.</p>
    #
    #   @return [Integer]
    #
    # @!attribute hook
    #   <p>The settings for the AWS Lambda function to invoke as a code hook for the campaign. You can use this hook to customize the segment that's used by the campaign.</p>
    #
    #   @return [CampaignHook]
    #
    # @!attribute is_paused
    #   <p>Specifies whether to pause the campaign. A paused campaign doesn't run unless you resume it by changing this value to false.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute limits
    #   <p>The messaging limits for the campaign.</p>
    #
    #   @return [CampaignLimits]
    #
    # @!attribute message_configuration
    #   <p>The message configuration settings for the campaign.</p>
    #
    #   @return [MessageConfiguration]
    #
    # @!attribute name
    #   <p>A custom name for the campaign.</p>
    #
    #   @return [String]
    #
    # @!attribute schedule
    #   <p>The schedule settings for the campaign.</p>
    #
    #   @return [Schedule]
    #
    # @!attribute segment_id
    #   <p>The unique identifier for the segment to associate with the campaign.</p>
    #
    #   @return [String]
    #
    # @!attribute segment_version
    #   <p>The version of the segment to associate with the campaign.</p>
    #
    #   @return [Integer]
    #
    # @!attribute tags
    #   <p>A string-to-string map of key-value pairs that defines the tags to associate with the campaign. Each tag consists of a required tag key and an associated tag value.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute template_configuration
    #   <p>The message template to use for the campaign.</p>
    #
    #   @return [TemplateConfiguration]
    #
    # @!attribute treatment_description
    #   <p>A custom description of the default treatment for the campaign.</p>
    #
    #   @return [String]
    #
    # @!attribute treatment_name
    #   <p>A custom name of the default treatment for the campaign, if the campaign has multiple treatments. A <i>treatment</i> is a variation of a campaign that's used for A/B testing.</p>
    #
    #   @return [String]
    #
    # @!attribute priority
    #   <p>Defines the priority of the campaign, used to decide the order of messages displayed to user if there are multiple messages scheduled to be displayed at the same moment.</p>
    #
    #   @return [Integer]
    #
    WriteCampaignRequest = ::Struct.new(
      :additional_treatments,
      :custom_delivery_configuration,
      :description,
      :holdout_percent,
      :hook,
      :is_paused,
      :limits,
      :message_configuration,
      :name,
      :schedule,
      :segment_id,
      :segment_version,
      :tags,
      :template_configuration,
      :treatment_description,
      :treatment_name,
      :priority,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.holdout_percent ||= 0
        self.is_paused ||= false
        self.segment_version ||= 0
        self.priority ||= 0
      end

    end

    # <p>Specifies the Amazon Resource Name (ARN) of an event stream to publish events to and the AWS Identity and Access Management (IAM) role to use when publishing those events.</p>
    #
    # @!attribute destination_stream_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Kinesis data stream or Amazon Kinesis Data Firehose delivery stream that you want to publish event data to.</p> <p>For a Kinesis data stream, the ARN format is: arn:aws:kinesis:<replaceable>region</replaceable>:<replaceable>account-id</replaceable>:stream/<replaceable>stream_name</replaceable>
    #                  </p> <p>For a Kinesis Data Firehose delivery stream, the ARN format is: arn:aws:firehose:<replaceable>region</replaceable>:<replaceable>account-id</replaceable>:deliverystream/<replaceable>stream_name</replaceable>
    #                  </p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The AWS Identity and Access Management (IAM) role that authorizes Amazon Pinpoint to publish event data to the stream in your AWS account.</p>
    #
    #   @return [String]
    #
    WriteEventStream = ::Struct.new(
      :destination_stream_arn,
      :role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the configuration and other settings for a journey.</p>
    #
    # @!attribute activities
    #   <p>A map that contains a set of Activity objects, one object for each activity in the journey. For each Activity object, the key is the unique identifier (string) for an activity and the value is the settings for the activity. An activity identifier can contain a maximum of 100 characters. The characters must be alphanumeric characters.</p>
    #
    #   @return [Hash<String, Activity>]
    #
    # @!attribute creation_date
    #   <p>The date, in ISO 8601 format, when the journey was created.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_date
    #   <p>The date, in ISO 8601 format, when the journey was last modified.</p>
    #
    #   @return [String]
    #
    # @!attribute limits
    #   <p>The messaging and entry limits for the journey.</p>
    #
    #   @return [JourneyLimits]
    #
    # @!attribute local_time
    #   <p>Specifies whether the journey's scheduled start and end times use each participant's local time. To base the schedule on each participant's local time, set this value to true.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute name
    #   <p>The name of the journey. A journey name can contain a maximum of 150 characters. The characters can be alphanumeric characters or symbols, such as underscores (_) or hyphens (-). A journey name can't contain any spaces.</p>
    #
    #   @return [String]
    #
    # @!attribute quiet_time
    #   <p>The quiet time settings for the journey. Quiet time is a specific time range when a journey doesn't send messages to participants, if all the following conditions are met:</p> <ul><li><p>The EndpointDemographic.Timezone property of the endpoint for the participant is set to a valid value.</p></li> <li><p>The current time in the participant's time zone is later than or equal to the time specified by the QuietTime.Start property for the journey.</p></li> <li><p>The current time in the participant's time zone is earlier than or equal to the time specified by the QuietTime.End property for the journey.</p></li></ul> <p>If any of the preceding conditions isn't met, the participant will receive messages from the journey, even if quiet time is enabled.</p>
    #
    #   @return [QuietTime]
    #
    # @!attribute refresh_frequency
    #   <p>The frequency with which Amazon Pinpoint evaluates segment and event data for the journey, as a duration in ISO 8601 format.</p>
    #
    #   @return [String]
    #
    # @!attribute schedule
    #   <p>The schedule settings for the journey.</p>
    #
    #   @return [JourneySchedule]
    #
    # @!attribute start_activity
    #   <p>The unique identifier for the first activity in the journey. The identifier for this activity can contain a maximum of 128 characters. The characters must be alphanumeric characters.</p>
    #
    #   @return [String]
    #
    # @!attribute start_condition
    #   <p>The segment that defines which users are participants in the journey.</p>
    #
    #   @return [StartCondition]
    #
    # @!attribute state
    #   <p>The status of the journey. Valid values are:</p> <ul><li><p>DRAFT - Saves the journey and doesn't publish it.</p></li> <li><p>ACTIVE - Saves and publishes the journey. Depending on the journey's schedule, the journey starts running immediately or at the scheduled start time. If a journey's status is ACTIVE, you can't add, change, or remove activities from it.</p></li></ul> <p>PAUSED, CANCELLED, COMPLETED, and CLOSED states are not supported in requests to create or update a journey. To cancel, pause, or resume a journey, use the <link  linkend="apps-application-id-journeys-journey-id-state">Journey State</link> resource.</p>
    #
    #   Enum, one of: ["DRAFT", "ACTIVE", "COMPLETED", "CANCELLED", "CLOSED", "PAUSED"]
    #
    #   @return [String]
    #
    # @!attribute wait_for_quiet_time
    #   <p>Specifies whether endpoints in quiet hours should enter a wait till the end of their quiet hours.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute refresh_on_segment_update
    #   <p>Specifies whether a journey should be refreshed on segment update.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute journey_channel_settings
    #   <p>The channel-specific configurations for the journey.</p>
    #
    #   @return [JourneyChannelSettings]
    #
    WriteJourneyRequest = ::Struct.new(
      :activities,
      :creation_date,
      :last_modified_date,
      :limits,
      :local_time,
      :name,
      :quiet_time,
      :refresh_frequency,
      :schedule,
      :start_activity,
      :start_condition,
      :state,
      :wait_for_quiet_time,
      :refresh_on_segment_update,
      :journey_channel_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.local_time ||= false
        self.wait_for_quiet_time ||= false
        self.refresh_on_segment_update ||= false
      end

    end

    # <p>Specifies the configuration, dimension, and other settings for a segment. A WriteSegmentRequest object can include a Dimensions object or a SegmentGroups object, but not both.</p>
    #
    # @!attribute dimensions
    #   <p>The criteria that define the dimensions for the segment.</p>
    #
    #   @return [SegmentDimensions]
    #
    # @!attribute name
    #   <p>The name of the segment.</p>
    #
    #   @return [String]
    #
    # @!attribute segment_groups
    #   <p>The segment group to use and the dimensions to apply to the group's base segments in order to build the segment. A segment group can consist of zero or more base segments. Your request can include only one segment group.</p>
    #
    #   @return [SegmentGroupList]
    #
    # @!attribute tags
    #   <p>A string-to-string map of key-value pairs that defines the tags to associate with the segment. Each tag consists of a required tag key and an associated tag value.</p>
    #
    #   @return [Hash<String, String>]
    #
    WriteSegmentRequest = ::Struct.new(
      :dimensions,
      :name,
      :segment_groups,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the settings for a campaign treatment. A <i>treatment</i> is a variation of a campaign that's used for A/B testing of a campaign.</p>
    #
    # @!attribute custom_delivery_configuration
    #   <p>The delivery configuration settings for sending the treatment through a custom channel. This object is required if the MessageConfiguration object for the treatment specifies a CustomMessage object.</p>
    #
    #   @return [CustomDeliveryConfiguration]
    #
    # @!attribute message_configuration
    #   <p>The message configuration settings for the treatment.</p>
    #
    #   @return [MessageConfiguration]
    #
    # @!attribute schedule
    #   <p>The schedule settings for the treatment.</p>
    #
    #   @return [Schedule]
    #
    # @!attribute size_percent
    #   <p>The allocated percentage of users (segment members) to send the treatment to.</p>
    #
    #   @return [Integer]
    #
    # @!attribute template_configuration
    #   <p>The message template to use for the treatment.</p>
    #
    #   @return [TemplateConfiguration]
    #
    # @!attribute treatment_description
    #   <p>A custom description of the treatment.</p>
    #
    #   @return [String]
    #
    # @!attribute treatment_name
    #   <p>A custom name for the treatment.</p>
    #
    #   @return [String]
    #
    WriteTreatmentResource = ::Struct.new(
      :custom_delivery_configuration,
      :message_configuration,
      :schedule,
      :size_percent,
      :template_configuration,
      :treatment_description,
      :treatment_name,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.size_percent ||= 0
      end

    end

    # Includes enum constants for String____EndpointTypesElement
    #
    module String____EndpointTypesElement
      # No documentation available.
      #
      PUSH = "PUSH"

      # No documentation available.
      #
      GCM = "GCM"

      # No documentation available.
      #
      APNS = "APNS"

      # No documentation available.
      #
      APNS_SANDBOX = "APNS_SANDBOX"

      # No documentation available.
      #
      APNS_VOIP = "APNS_VOIP"

      # No documentation available.
      #
      APNS_VOIP_SANDBOX = "APNS_VOIP_SANDBOX"

      # No documentation available.
      #
      ADM = "ADM"

      # No documentation available.
      #
      SMS = "SMS"

      # No documentation available.
      #
      VOICE = "VOICE"

      # No documentation available.
      #
      EMAIL = "EMAIL"

      # No documentation available.
      #
      BAIDU = "BAIDU"

      # No documentation available.
      #
      CUSTOM = "CUSTOM"

      # No documentation available.
      #
      IN_APP = "IN_APP"
    end

  end
end
