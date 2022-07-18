# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::LicenseManager
  module Types

    # @!attribute grant_arn
    #   <p>Amazon Resource Name (ARN) of the grant.</p>
    #
    #   @return [String]
    #
    AcceptGrantInput = ::Struct.new(
      :grant_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute grant_arn
    #   <p>Grant ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Grant status.</p>
    #
    #   Enum, one of: ["PENDING_WORKFLOW", "PENDING_ACCEPT", "REJECTED", "ACTIVE", "FAILED_WORKFLOW", "DELETED", "PENDING_DELETE", "DISABLED", "WORKFLOW_COMPLETED"]
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>Grant version.</p>
    #
    #   @return [String]
    #
    AcceptGrantOutput = ::Struct.new(
      :grant_arn,
      :status,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Access to resource denied.</p>
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

    # Includes enum constants for AllowedOperation
    #
    module AllowedOperation
      # No documentation available.
      #
      CREATE_GRANT = "CreateGrant"

      # No documentation available.
      #
      CHECKOUT_LICENSE = "CheckoutLicense"

      # No documentation available.
      #
      CHECKOUT_BORROW_LICENSE = "CheckoutBorrowLicense"

      # No documentation available.
      #
      CHECK_IN_LICENSE = "CheckInLicense"

      # No documentation available.
      #
      EXTEND_CONSUMPTION_LICENSE = "ExtendConsumptionLicense"

      # No documentation available.
      #
      LIST_PURCHASED_LICENSES = "ListPurchasedLicenses"

      # No documentation available.
      #
      CREATE_TOKEN = "CreateToken"
    end

    # <p>The Amazon Web Services user account does not have permission to perform the action. Check the IAM
    #          policy associated with this account.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AuthorizationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes automated discovery.</p>
    #
    # @!attribute last_run_time
    #   <p>Time that automated discovery last ran.</p>
    #
    #   @return [Time]
    #
    AutomatedDiscoveryInformation = ::Struct.new(
      :last_run_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about a borrow configuration.</p>
    #
    # @!attribute allow_early_check_in
    #   <p>Indicates whether early check-ins are allowed.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute max_time_to_live_in_minutes
    #   <p>Maximum time for the borrow configuration, in minutes.</p>
    #
    #   @return [Integer]
    #
    BorrowConfiguration = ::Struct.new(
      :allow_early_check_in,
      :max_time_to_live_in_minutes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute license_consumption_token
    #   <p>License consumption token.</p>
    #
    #   @return [String]
    #
    # @!attribute beneficiary
    #   <p>License beneficiary.</p>
    #
    #   @return [String]
    #
    CheckInLicenseInput = ::Struct.new(
      :license_consumption_token,
      :beneficiary,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CheckInLicenseOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute license_arn
    #   <p>Amazon Resource Name (ARN) of the license. The license must use the borrow consumption configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute entitlements
    #   <p>License entitlements. Partial checkouts are not supported.</p>
    #
    #   @return [Array<EntitlementData>]
    #
    # @!attribute digital_signature_method
    #   <p>Digital signature method. The possible value is JSON Web Signature (JWS) algorithm PS384.
    #            For more information, see <a href="https://tools.ietf.org/html/rfc7518 section-3.5">RFC 7518 Digital Signature with RSASSA-PSS</a>.</p>
    #
    #   Enum, one of: ["JWT_PS384"]
    #
    #   @return [String]
    #
    # @!attribute node_id
    #   <p>Node ID.</p>
    #
    #   @return [String]
    #
    # @!attribute checkout_metadata
    #   <p>Information about constraints.</p>
    #
    #   @return [Array<Metadata>]
    #
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    #
    #   @return [String]
    #
    CheckoutBorrowLicenseInput = ::Struct.new(
      :license_arn,
      :entitlements,
      :digital_signature_method,
      :node_id,
      :checkout_metadata,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute license_arn
    #   <p>Amazon Resource Name (ARN) of the license.</p>
    #
    #   @return [String]
    #
    # @!attribute license_consumption_token
    #   <p>License consumption token.</p>
    #
    #   @return [String]
    #
    # @!attribute entitlements_allowed
    #   <p>Allowed license entitlements.</p>
    #
    #   @return [Array<EntitlementData>]
    #
    # @!attribute node_id
    #   <p>Node ID.</p>
    #
    #   @return [String]
    #
    # @!attribute signed_token
    #   <p>Signed token.</p>
    #
    #   @return [String]
    #
    # @!attribute issued_at
    #   <p>Date and time at which the license checkout is issued.</p>
    #
    #   @return [String]
    #
    # @!attribute expiration
    #   <p>Date and time at which the license checkout expires.</p>
    #
    #   @return [String]
    #
    # @!attribute checkout_metadata
    #   <p>Information about constraints.</p>
    #
    #   @return [Array<Metadata>]
    #
    CheckoutBorrowLicenseOutput = ::Struct.new(
      :license_arn,
      :license_consumption_token,
      :entitlements_allowed,
      :node_id,
      :signed_token,
      :issued_at,
      :expiration,
      :checkout_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute product_sku
    #   <p>Product SKU.</p>
    #
    #   @return [String]
    #
    # @!attribute checkout_type
    #   <p>Checkout type.</p>
    #
    #   Enum, one of: ["PROVISIONAL", "PERPETUAL"]
    #
    #   @return [String]
    #
    # @!attribute key_fingerprint
    #   <p>Key fingerprint identifying the license.</p>
    #
    #   @return [String]
    #
    # @!attribute entitlements
    #   <p>License entitlements.</p>
    #
    #   @return [Array<EntitlementData>]
    #
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    #
    #   @return [String]
    #
    # @!attribute beneficiary
    #   <p>License beneficiary.</p>
    #
    #   @return [String]
    #
    # @!attribute node_id
    #   <p>Node ID.</p>
    #
    #   @return [String]
    #
    CheckoutLicenseInput = ::Struct.new(
      :product_sku,
      :checkout_type,
      :key_fingerprint,
      :entitlements,
      :client_token,
      :beneficiary,
      :node_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute checkout_type
    #   <p>Checkout type.</p>
    #
    #   Enum, one of: ["PROVISIONAL", "PERPETUAL"]
    #
    #   @return [String]
    #
    # @!attribute license_consumption_token
    #   <p>License consumption token.</p>
    #
    #   @return [String]
    #
    # @!attribute entitlements_allowed
    #   <p>Allowed license entitlements.</p>
    #
    #   @return [Array<EntitlementData>]
    #
    # @!attribute signed_token
    #   <p>Signed token.</p>
    #
    #   @return [String]
    #
    # @!attribute node_id
    #   <p>Node ID.</p>
    #
    #   @return [String]
    #
    # @!attribute issued_at
    #   <p>Date and time at which the license checkout is issued.</p>
    #
    #   @return [String]
    #
    # @!attribute expiration
    #   <p>Date and time at which the license checkout expires.</p>
    #
    #   @return [String]
    #
    # @!attribute license_arn
    #   <p>Amazon Resource Name (ARN) of the checkout license.</p>
    #
    #   @return [String]
    #
    CheckoutLicenseOutput = ::Struct.new(
      :checkout_type,
      :license_consumption_token,
      :entitlements_allowed,
      :signed_token,
      :node_id,
      :issued_at,
      :expiration,
      :license_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CheckoutType
    #
    module CheckoutType
      # No documentation available.
      #
      PROVISIONAL = "PROVISIONAL"

      # No documentation available.
      #
      PERPETUAL = "PERPETUAL"
    end

    # <p>There was a conflict processing the request. Try your request again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about license consumption.</p>
    #
    # @!attribute resource_type
    #   <p>Resource type of the resource consuming a license.</p>
    #
    #   Enum, one of: ["EC2_INSTANCE", "EC2_HOST", "EC2_AMI", "RDS", "SYSTEMS_MANAGER_MANAGED_INSTANCE"]
    #
    #   @return [String]
    #
    # @!attribute consumed_licenses
    #   <p>Number of licenses consumed by the resource.</p>
    #
    #   @return [Integer]
    #
    ConsumedLicenseSummary = ::Struct.new(
      :resource_type,
      :consumed_licenses,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about a consumption configuration.</p>
    #
    # @!attribute renew_type
    #   <p>Renewal frequency.</p>
    #
    #   Enum, one of: ["None", "Weekly", "Monthly"]
    #
    #   @return [String]
    #
    # @!attribute provisional_configuration
    #   <p>Details about a provisional configuration.</p>
    #
    #   @return [ProvisionalConfiguration]
    #
    # @!attribute borrow_configuration
    #   <p>Details about a borrow configuration.</p>
    #
    #   @return [BorrowConfiguration]
    #
    ConsumptionConfiguration = ::Struct.new(
      :renew_type,
      :provisional_configuration,
      :borrow_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    #
    #   @return [String]
    #
    # @!attribute grant_name
    #   <p>Grant name.</p>
    #
    #   @return [String]
    #
    # @!attribute license_arn
    #   <p>Amazon Resource Name (ARN) of the license.</p>
    #
    #   @return [String]
    #
    # @!attribute principals
    #   <p>The grant principals.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute home_region
    #   <p>Home Region of the grant.</p>
    #
    #   @return [String]
    #
    # @!attribute allowed_operations
    #   <p>Allowed operations for the grant.</p>
    #
    #   @return [Array<String>]
    #
    CreateGrantInput = ::Struct.new(
      :client_token,
      :grant_name,
      :license_arn,
      :principals,
      :home_region,
      :allowed_operations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute grant_arn
    #   <p>Grant ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Grant status.</p>
    #
    #   Enum, one of: ["PENDING_WORKFLOW", "PENDING_ACCEPT", "REJECTED", "ACTIVE", "FAILED_WORKFLOW", "DELETED", "PENDING_DELETE", "DISABLED", "WORKFLOW_COMPLETED"]
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>Grant version.</p>
    #
    #   @return [String]
    #
    CreateGrantOutput = ::Struct.new(
      :grant_arn,
      :status,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    #
    #   @return [String]
    #
    # @!attribute grant_arn
    #   <p>Amazon Resource Name (ARN) of the grant.</p>
    #
    #   @return [String]
    #
    # @!attribute grant_name
    #   <p>Grant name.</p>
    #
    #   @return [String]
    #
    # @!attribute allowed_operations
    #   <p>Allowed operations for the grant.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute status
    #   <p>Grant status.</p>
    #
    #   Enum, one of: ["PENDING_WORKFLOW", "PENDING_ACCEPT", "REJECTED", "ACTIVE", "FAILED_WORKFLOW", "DELETED", "PENDING_DELETE", "DISABLED", "WORKFLOW_COMPLETED"]
    #
    #   @return [String]
    #
    # @!attribute status_reason
    #   <p>Grant status reason.</p>
    #
    #   @return [String]
    #
    # @!attribute source_version
    #   <p>Current version of the grant.</p>
    #
    #   @return [String]
    #
    CreateGrantVersionInput = ::Struct.new(
      :client_token,
      :grant_arn,
      :grant_name,
      :allowed_operations,
      :status,
      :status_reason,
      :source_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute grant_arn
    #   <p>Grant ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Grant status.</p>
    #
    #   Enum, one of: ["PENDING_WORKFLOW", "PENDING_ACCEPT", "REJECTED", "ACTIVE", "FAILED_WORKFLOW", "DELETED", "PENDING_DELETE", "DISABLED", "WORKFLOW_COMPLETED"]
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>New version of the grant.</p>
    #
    #   @return [String]
    #
    CreateGrantVersionOutput = ::Struct.new(
      :grant_arn,
      :status,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>Name of the license configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>Description of the license configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute license_counting_type
    #   <p>Dimension used to track the license inventory.</p>
    #
    #   Enum, one of: ["vCPU", "Instance", "Core", "Socket"]
    #
    #   @return [String]
    #
    # @!attribute license_count
    #   <p>Number of licenses managed by the license configuration.</p>
    #
    #   @return [Integer]
    #
    # @!attribute license_count_hard_limit
    #   <p>Indicates whether hard or soft license enforcement is used. Exceeding a hard limit
    #            blocks the launch of new instances.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute license_rules
    #   <p>License rules. The syntax is  name=value (for example,  allowedTenancy=EC2-DedicatedHost). The available rules
    #            vary by dimension, as follows.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Cores</code> dimension: <code>allowedTenancy</code> |
    #                  <code>licenseAffinityToHost</code> |
    #                  <code>maximumCores</code> | <code>minimumCores</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Instances</code> dimension: <code>allowedTenancy</code> |
    #                  <code>maximumCores</code> | <code>minimumCores</code> |
    #                  <code>maximumSockets</code> | <code>minimumSockets</code> |
    #                  <code>maximumVcpus</code> | <code>minimumVcpus</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Sockets</code> dimension: <code>allowedTenancy</code> |
    #                  <code>licenseAffinityToHost</code> |
    #                  <code>maximumSockets</code> | <code>minimumSockets</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>vCPUs</code> dimension: <code>allowedTenancy</code> |
    #                  <code>honorVcpuOptimization</code> |
    #                  <code>maximumVcpus</code> | <code>minimumVcpus</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The unit for <code>licenseAffinityToHost</code> is days and the range is 1 to 180. The possible
    #            values for <code>allowedTenancy</code> are <code>EC2-Default</code>, <code>EC2-DedicatedHost</code>, and
    #            <code>EC2-DedicatedInstance</code>. The possible values for <code>honorVcpuOptimization</code> are
    #            <code>True</code> and <code>False</code>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tags
    #   <p>Tags to add to the license configuration.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute disassociate_when_not_found
    #   <p>When true, disassociates a resource when software is uninstalled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute product_information_list
    #   <p>Product information.</p>
    #
    #   @return [Array<ProductInformation>]
    #
    CreateLicenseConfigurationInput = ::Struct.new(
      :name,
      :description,
      :license_counting_type,
      :license_count,
      :license_count_hard_limit,
      :license_rules,
      :tags,
      :disassociate_when_not_found,
      :product_information_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute license_configuration_arn
    #   <p>Amazon Resource Name (ARN) of the license configuration.</p>
    #
    #   @return [String]
    #
    CreateLicenseConfigurationOutput = ::Struct.new(
      :license_configuration_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>Amazon Resource Name (ARN) of the resource you are converting the license type for.</p>
    #
    #   @return [String]
    #
    # @!attribute source_license_context
    #   <p>Information that identifies the license type you are converting from.
    #            For the structure of the source license, see <a href="https://docs.aws.amazon.com/license-manager/latest/userguide/conversion-procedures.html conversion-cli">Convert a license type using the AWS CLI</a> in the <i>License Manager User Guide</i>.</p>
    #
    #   @return [LicenseConversionContext]
    #
    # @!attribute destination_license_context
    #   <p>Information that identifies the license type you are converting to. For the structure of the destination license, see <a href="https://docs.aws.amazon.com/license-manager/latest/userguide/conversion-procedures.html conversion-cli">Convert a license type using the AWS CLI</a> in the <i>License Manager User Guide</i>.</p>
    #
    #   @return [LicenseConversionContext]
    #
    CreateLicenseConversionTaskForResourceInput = ::Struct.new(
      :resource_arn,
      :source_license_context,
      :destination_license_context,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute license_conversion_task_id
    #   <p>The ID of the created license type conversion task.</p>
    #
    #   @return [String]
    #
    CreateLicenseConversionTaskForResourceOutput = ::Struct.new(
      :license_conversion_task_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute license_name
    #   <p>License name.</p>
    #
    #   @return [String]
    #
    # @!attribute product_name
    #   <p>Product name.</p>
    #
    #   @return [String]
    #
    # @!attribute product_sku
    #   <p>Product SKU.</p>
    #
    #   @return [String]
    #
    # @!attribute issuer
    #   <p>License issuer.</p>
    #
    #   @return [Issuer]
    #
    # @!attribute home_region
    #   <p>Home Region for the license.</p>
    #
    #   @return [String]
    #
    # @!attribute validity
    #   <p>Date and time range during which the license is valid, in ISO8601-UTC format.</p>
    #
    #   @return [DatetimeRange]
    #
    # @!attribute entitlements
    #   <p>License entitlements.</p>
    #
    #   @return [Array<Entitlement>]
    #
    # @!attribute beneficiary
    #   <p>License beneficiary.</p>
    #
    #   @return [String]
    #
    # @!attribute consumption_configuration
    #   <p>Configuration for consumption of the license. Choose a provisional configuration for workloads
    #             running with continuous connectivity. Choose a borrow configuration for workloads with offline
    #             usage.</p>
    #
    #   @return [ConsumptionConfiguration]
    #
    # @!attribute license_metadata
    #   <p>Information about the license.</p>
    #
    #   @return [Array<Metadata>]
    #
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    #
    #   @return [String]
    #
    CreateLicenseInput = ::Struct.new(
      :license_name,
      :product_name,
      :product_sku,
      :issuer,
      :home_region,
      :validity,
      :entitlements,
      :beneficiary,
      :consumption_configuration,
      :license_metadata,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute report_generator_name
    #   <p>Name of the report generator.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>Type of reports to generate. The following report types an be generated:</p>
    #            <ul>
    #               <li>
    #                  <p>License configuration report - Reports the number and details of consumed licenses for a license configuration.</p>
    #               </li>
    #               <li>
    #                  <p>Resource report - Reports the tracked licenses and resource consumption for a license configuration.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    # @!attribute report_context
    #   <p>Defines the type of license configuration the report generator tracks.</p>
    #
    #   @return [ReportContext]
    #
    # @!attribute report_frequency
    #   <p>Frequency by which reports are generated.  Reports can be generated daily, monthly, or weekly.</p>
    #
    #   @return [ReportFrequency]
    #
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>Description of the report generator.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Tags to add to the report generator.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateLicenseManagerReportGeneratorInput = ::Struct.new(
      :report_generator_name,
      :type,
      :report_context,
      :report_frequency,
      :client_token,
      :description,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute license_manager_report_generator_arn
    #   <p>The Amazon Resource Name (ARN) of the new report generator.</p>
    #
    #   @return [String]
    #
    CreateLicenseManagerReportGeneratorOutput = ::Struct.new(
      :license_manager_report_generator_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute license_arn
    #   <p>Amazon Resource Name (ARN) of the license.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>License status.</p>
    #
    #   Enum, one of: ["AVAILABLE", "PENDING_AVAILABLE", "DEACTIVATED", "SUSPENDED", "EXPIRED", "PENDING_DELETE", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>License version.</p>
    #
    #   @return [String]
    #
    CreateLicenseOutput = ::Struct.new(
      :license_arn,
      :status,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute license_arn
    #   <p>Amazon Resource Name (ARN) of the license.</p>
    #
    #   @return [String]
    #
    # @!attribute license_name
    #   <p>License name.</p>
    #
    #   @return [String]
    #
    # @!attribute product_name
    #   <p>Product name.</p>
    #
    #   @return [String]
    #
    # @!attribute issuer
    #   <p>License issuer.</p>
    #
    #   @return [Issuer]
    #
    # @!attribute home_region
    #   <p>Home Region of the license.</p>
    #
    #   @return [String]
    #
    # @!attribute validity
    #   <p>Date and time range during which the license is valid, in ISO8601-UTC format.</p>
    #
    #   @return [DatetimeRange]
    #
    # @!attribute license_metadata
    #   <p>Information about the license.</p>
    #
    #   @return [Array<Metadata>]
    #
    # @!attribute entitlements
    #   <p>License entitlements.</p>
    #
    #   @return [Array<Entitlement>]
    #
    # @!attribute consumption_configuration
    #   <p>Configuration for consumption of the license. Choose a provisional configuration for workloads
    #            running with continuous connectivity. Choose a borrow configuration for workloads with offline
    #            usage.</p>
    #
    #   @return [ConsumptionConfiguration]
    #
    # @!attribute status
    #   <p>License status.</p>
    #
    #   Enum, one of: ["AVAILABLE", "PENDING_AVAILABLE", "DEACTIVATED", "SUSPENDED", "EXPIRED", "PENDING_DELETE", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    #
    #   @return [String]
    #
    # @!attribute source_version
    #   <p>Current version of the license.</p>
    #
    #   @return [String]
    #
    CreateLicenseVersionInput = ::Struct.new(
      :license_arn,
      :license_name,
      :product_name,
      :issuer,
      :home_region,
      :validity,
      :license_metadata,
      :entitlements,
      :consumption_configuration,
      :status,
      :client_token,
      :source_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute license_arn
    #   <p>License ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>New version of the license.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>License status.</p>
    #
    #   Enum, one of: ["AVAILABLE", "PENDING_AVAILABLE", "DEACTIVATED", "SUSPENDED", "EXPIRED", "PENDING_DELETE", "DELETED"]
    #
    #   @return [String]
    #
    CreateLicenseVersionOutput = ::Struct.new(
      :license_arn,
      :version,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute license_arn
    #   <p>Amazon Resource Name (ARN) of the license. The ARN is mapped to the aud claim of the
    #             JWT token.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arns
    #   <p>Amazon Resource Name (ARN) of the IAM roles to embed in the token.
    #            License Manager does not check whether the roles are in use.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute expiration_in_days
    #   <p>Token expiration, in days, counted from token creation. The default is 365 days.</p>
    #
    #   @return [Integer]
    #
    # @!attribute token_properties
    #   <p>Data specified by the caller to be included in the JWT token. The data is mapped
    #             to the amr claim of the JWT token.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute client_token
    #   <p>Idempotency token, valid for 10 minutes.</p>
    #
    #   @return [String]
    #
    CreateTokenInput = ::Struct.new(
      :license_arn,
      :role_arns,
      :expiration_in_days,
      :token_properties,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute token_id
    #   <p>Token ID.</p>
    #
    #   @return [String]
    #
    # @!attribute token_type
    #   <p>Token type.</p>
    #
    #   Enum, one of: ["REFRESH_TOKEN"]
    #
    #   @return [String]
    #
    # @!attribute token
    #   <p>Refresh token, encoded as a JWT token.</p>
    #
    #   @return [String]
    #
    CreateTokenOutput = ::Struct.new(
      :token_id,
      :token_type,
      :token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a time range, in ISO8601-UTC format.</p>
    #
    # @!attribute begin
    #   <p>Start of the time range.</p>
    #
    #   @return [String]
    #
    # @!attribute end
    #   <p>End of the time range.</p>
    #
    #   @return [String]
    #
    DatetimeRange = ::Struct.new(
      :begin,
      :end,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute grant_arn
    #   <p>Amazon Resource Name (ARN) of the grant.</p>
    #
    #   @return [String]
    #
    # @!attribute status_reason
    #   <p>The Status reason for the delete request.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>Current version of the grant.</p>
    #
    #   @return [String]
    #
    DeleteGrantInput = ::Struct.new(
      :grant_arn,
      :status_reason,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute grant_arn
    #   <p>Grant ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Grant status.</p>
    #
    #   Enum, one of: ["PENDING_WORKFLOW", "PENDING_ACCEPT", "REJECTED", "ACTIVE", "FAILED_WORKFLOW", "DELETED", "PENDING_DELETE", "DISABLED", "WORKFLOW_COMPLETED"]
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>Grant version.</p>
    #
    #   @return [String]
    #
    DeleteGrantOutput = ::Struct.new(
      :grant_arn,
      :status,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute license_configuration_arn
    #   <p>ID of the license configuration.</p>
    #
    #   @return [String]
    #
    DeleteLicenseConfigurationInput = ::Struct.new(
      :license_configuration_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteLicenseConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute license_arn
    #   <p>Amazon Resource Name (ARN) of the license.</p>
    #
    #   @return [String]
    #
    # @!attribute source_version
    #   <p>Current version of the license.</p>
    #
    #   @return [String]
    #
    DeleteLicenseInput = ::Struct.new(
      :license_arn,
      :source_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute license_manager_report_generator_arn
    #   <p>Amazon Resource Name (ARN) of the report generator to be deleted.</p>
    #
    #   @return [String]
    #
    DeleteLicenseManagerReportGeneratorInput = ::Struct.new(
      :license_manager_report_generator_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteLicenseManagerReportGeneratorOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute status
    #   <p>License status.</p>
    #
    #   Enum, one of: ["PENDING_DELETE", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute deletion_date
    #   <p>Date when the license is deleted.</p>
    #
    #   @return [String]
    #
    DeleteLicenseOutput = ::Struct.new(
      :status,
      :deletion_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute token_id
    #   <p>Token ID.</p>
    #
    #   @return [String]
    #
    DeleteTokenInput = ::Struct.new(
      :token_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteTokenOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DigitalSignatureMethod
    #
    module DigitalSignatureMethod
      # No documentation available.
      #
      JWT_PS384 = "JWT_PS384"
    end

    # <p>Describes a resource entitled for use with a license.</p>
    #
    # @!attribute name
    #   <p>Entitlement name.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>Entitlement resource. Use only if the unit is None.</p>
    #
    #   @return [String]
    #
    # @!attribute max_count
    #   <p>Maximum entitlement count. Use if the unit is not None.</p>
    #
    #   @return [Integer]
    #
    # @!attribute overage
    #   <p>Indicates whether overages are allowed.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute unit
    #   <p>Entitlement unit.</p>
    #
    #   Enum, one of: ["Count", "None", "Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second"]
    #
    #   @return [String]
    #
    # @!attribute allow_check_in
    #   <p>Indicates whether check-ins are allowed.</p>
    #
    #   @return [Boolean]
    #
    Entitlement = ::Struct.new(
      :name,
      :value,
      :max_count,
      :overage,
      :unit,
      :allow_check_in,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Data associated with an entitlement resource.</p>
    #
    # @!attribute name
    #   <p>Entitlement data name.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>Entitlement data value.</p>
    #
    #   @return [String]
    #
    # @!attribute unit
    #   <p>Entitlement data unit.</p>
    #
    #   Enum, one of: ["Count", "None", "Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second"]
    #
    #   @return [String]
    #
    EntitlementData = ::Struct.new(
      :name,
      :value,
      :unit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EntitlementDataUnit
    #
    module EntitlementDataUnit
      # No documentation available.
      #
      COUNT = "Count"

      # No documentation available.
      #
      NONE = "None"

      # No documentation available.
      #
      SECONDS = "Seconds"

      # No documentation available.
      #
      MICROSECONDS = "Microseconds"

      # No documentation available.
      #
      MILLISECONDS = "Milliseconds"

      # No documentation available.
      #
      BYTES = "Bytes"

      # No documentation available.
      #
      KILOBYTES = "Kilobytes"

      # No documentation available.
      #
      MEGABYTES = "Megabytes"

      # No documentation available.
      #
      GIGABYTES = "Gigabytes"

      # No documentation available.
      #
      TERABYTES = "Terabytes"

      # No documentation available.
      #
      BITS = "Bits"

      # No documentation available.
      #
      KILOBITS = "Kilobits"

      # No documentation available.
      #
      MEGABITS = "Megabits"

      # No documentation available.
      #
      GIGABITS = "Gigabits"

      # No documentation available.
      #
      TERABITS = "Terabits"

      # No documentation available.
      #
      PERCENT = "Percent"

      # No documentation available.
      #
      BYTES_PER_SECOND = "Bytes/Second"

      # No documentation available.
      #
      KILOBYTES_PER_SECOND = "Kilobytes/Second"

      # No documentation available.
      #
      MEGABYTES_PER_SECOND = "Megabytes/Second"

      # No documentation available.
      #
      GIGABYTES_PER_SECOND = "Gigabytes/Second"

      # No documentation available.
      #
      TERABYTES_PER_SECOND = "Terabytes/Second"

      # No documentation available.
      #
      BITS_PER_SECOND = "Bits/Second"

      # No documentation available.
      #
      KILOBITS_PER_SECOND = "Kilobits/Second"

      # No documentation available.
      #
      MEGABITS_PER_SECOND = "Megabits/Second"

      # No documentation available.
      #
      GIGABITS_PER_SECOND = "Gigabits/Second"

      # No documentation available.
      #
      TERABITS_PER_SECOND = "Terabits/Second"

      # No documentation available.
      #
      COUNT_PER_SECOND = "Count/Second"
    end

    # <p>The entitlement is not allowed.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    EntitlementNotAllowedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EntitlementUnit
    #
    module EntitlementUnit
      # No documentation available.
      #
      COUNT = "Count"

      # No documentation available.
      #
      NONE = "None"

      # No documentation available.
      #
      SECONDS = "Seconds"

      # No documentation available.
      #
      MICROSECONDS = "Microseconds"

      # No documentation available.
      #
      MILLISECONDS = "Milliseconds"

      # No documentation available.
      #
      BYTES = "Bytes"

      # No documentation available.
      #
      KILOBYTES = "Kilobytes"

      # No documentation available.
      #
      MEGABYTES = "Megabytes"

      # No documentation available.
      #
      GIGABYTES = "Gigabytes"

      # No documentation available.
      #
      TERABYTES = "Terabytes"

      # No documentation available.
      #
      BITS = "Bits"

      # No documentation available.
      #
      KILOBITS = "Kilobits"

      # No documentation available.
      #
      MEGABITS = "Megabits"

      # No documentation available.
      #
      GIGABITS = "Gigabits"

      # No documentation available.
      #
      TERABITS = "Terabits"

      # No documentation available.
      #
      PERCENT = "Percent"

      # No documentation available.
      #
      BYTES_PER_SECOND = "Bytes/Second"

      # No documentation available.
      #
      KILOBYTES_PER_SECOND = "Kilobytes/Second"

      # No documentation available.
      #
      MEGABYTES_PER_SECOND = "Megabytes/Second"

      # No documentation available.
      #
      GIGABYTES_PER_SECOND = "Gigabytes/Second"

      # No documentation available.
      #
      TERABYTES_PER_SECOND = "Terabytes/Second"

      # No documentation available.
      #
      BITS_PER_SECOND = "Bits/Second"

      # No documentation available.
      #
      KILOBITS_PER_SECOND = "Kilobits/Second"

      # No documentation available.
      #
      MEGABITS_PER_SECOND = "Megabits/Second"

      # No documentation available.
      #
      GIGABITS_PER_SECOND = "Gigabits/Second"

      # No documentation available.
      #
      TERABITS_PER_SECOND = "Terabits/Second"

      # No documentation available.
      #
      COUNT_PER_SECOND = "Count/Second"
    end

    # <p>Usage associated with an entitlement resource.</p>
    #
    # @!attribute name
    #   <p>Entitlement usage name.</p>
    #
    #   @return [String]
    #
    # @!attribute consumed_value
    #   <p>Resource usage consumed.</p>
    #
    #   @return [String]
    #
    # @!attribute max_count
    #   <p>Maximum entitlement usage count.</p>
    #
    #   @return [String]
    #
    # @!attribute unit
    #   <p>Entitlement usage unit.</p>
    #
    #   Enum, one of: ["Count", "None", "Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second"]
    #
    #   @return [String]
    #
    EntitlementUsage = ::Struct.new(
      :name,
      :consumed_value,
      :max_count,
      :unit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute license_consumption_token
    #   <p>License consumption token.</p>
    #
    #   @return [String]
    #
    # @!attribute dry_run
    #   <p>Checks whether you have the required permissions for the action, without actually making the request. Provides an error response if you do not have the required permissions.</p>
    #
    #   @return [Boolean]
    #
    ExtendLicenseConsumptionInput = ::Struct.new(
      :license_consumption_token,
      :dry_run,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.dry_run ||= false
      end
    end

    # @!attribute license_consumption_token
    #   <p>License consumption token.</p>
    #
    #   @return [String]
    #
    # @!attribute expiration
    #   <p>Date and time at which the license consumption expires.</p>
    #
    #   @return [String]
    #
    ExtendLicenseConsumptionOutput = ::Struct.new(
      :license_consumption_token,
      :expiration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A dependency required to run the API is missing.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute error_code
    #
    #   @return [String]
    #
    FailedDependencyException = ::Struct.new(
      :message,
      :error_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A filter name and value pair that is used to return more specific results from a
    #          describe operation. Filters can be used to match a set of resources by specific criteria,
    #          such as tags, attributes, or IDs.</p>
    #
    # @!attribute name
    #   <p>Name of the filter. Filter names are case-sensitive.</p>
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>Filter values. Filter values are case-sensitive.</p>
    #
    #   @return [Array<String>]
    #
    Filter = ::Struct.new(
      :name,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request uses too many filters or too many filter values.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    FilterLimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute token
    #   <p>Refresh token, encoded as a JWT token.</p>
    #
    #   @return [String]
    #
    # @!attribute token_properties
    #   <p>Token properties to validate against those present in the JWT token.</p>
    #
    #   @return [Array<String>]
    #
    GetAccessTokenInput = ::Struct.new(
      :token,
      :token_properties,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute access_token
    #   <p>Temporary access token.</p>
    #
    #   @return [String]
    #
    GetAccessTokenOutput = ::Struct.new(
      :access_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute grant_arn
    #   <p>Amazon Resource Name (ARN) of the grant.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>Grant version.</p>
    #
    #   @return [String]
    #
    GetGrantInput = ::Struct.new(
      :grant_arn,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute grant
    #   <p>Grant details.</p>
    #
    #   @return [Grant]
    #
    GetGrantOutput = ::Struct.new(
      :grant,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute license_configuration_arn
    #   <p>Amazon Resource Name (ARN) of the license configuration.</p>
    #
    #   @return [String]
    #
    GetLicenseConfigurationInput = ::Struct.new(
      :license_configuration_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute license_configuration_id
    #   <p>Unique ID for the license configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute license_configuration_arn
    #   <p>Amazon Resource Name (ARN) of the license configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>Name of the license configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>Description of the license configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute license_counting_type
    #   <p>Dimension for which the licenses are counted.</p>
    #
    #   Enum, one of: ["vCPU", "Instance", "Core", "Socket"]
    #
    #   @return [String]
    #
    # @!attribute license_rules
    #   <p>License rules.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute license_count
    #   <p>Number of available licenses.</p>
    #
    #   @return [Integer]
    #
    # @!attribute license_count_hard_limit
    #   <p>Sets the number of available licenses as a hard limit.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute consumed_licenses
    #   <p>Number of licenses assigned to resources.</p>
    #
    #   @return [Integer]
    #
    # @!attribute status
    #   <p>License configuration status.</p>
    #
    #   @return [String]
    #
    # @!attribute owner_account_id
    #   <p>Account ID of the owner of the license configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute consumed_license_summary_list
    #   <p>Summaries of the licenses consumed by resources.</p>
    #
    #   @return [Array<ConsumedLicenseSummary>]
    #
    # @!attribute managed_resource_summary_list
    #   <p>Summaries of the managed resources.</p>
    #
    #   @return [Array<ManagedResourceSummary>]
    #
    # @!attribute tags
    #   <p>Tags for the license configuration.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute product_information_list
    #   <p>Product information.</p>
    #
    #   @return [Array<ProductInformation>]
    #
    # @!attribute automated_discovery_information
    #   <p>Automated discovery information.</p>
    #
    #   @return [AutomatedDiscoveryInformation]
    #
    # @!attribute disassociate_when_not_found
    #   <p>When true, disassociates a resource when software is uninstalled.</p>
    #
    #   @return [Boolean]
    #
    GetLicenseConfigurationOutput = ::Struct.new(
      :license_configuration_id,
      :license_configuration_arn,
      :name,
      :description,
      :license_counting_type,
      :license_rules,
      :license_count,
      :license_count_hard_limit,
      :consumed_licenses,
      :status,
      :owner_account_id,
      :consumed_license_summary_list,
      :managed_resource_summary_list,
      :tags,
      :product_information_list,
      :automated_discovery_information,
      :disassociate_when_not_found,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute license_conversion_task_id
    #   <p>ID of the license type conversion task to retrieve information on.</p>
    #
    #   @return [String]
    #
    GetLicenseConversionTaskInput = ::Struct.new(
      :license_conversion_task_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute license_conversion_task_id
    #   <p>ID of the license type conversion task.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_arn
    #   <p>Amazon Resource Names (ARN) of the resources the license conversion task is associated with.</p>
    #
    #   @return [String]
    #
    # @!attribute source_license_context
    #   <p>Information about the license type converted from.</p>
    #
    #   @return [LicenseConversionContext]
    #
    # @!attribute destination_license_context
    #   <p>Information about the license type converted to.</p>
    #
    #   @return [LicenseConversionContext]
    #
    # @!attribute status_message
    #   <p>The status message for the conversion task.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Status of the license type conversion task.</p>
    #
    #   Enum, one of: ["IN_PROGRESS", "SUCCEEDED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>Time at which the license type conversion task was started .</p>
    #
    #   @return [Time]
    #
    # @!attribute license_conversion_time
    #   <p>Amount of time to complete the license type conversion.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>Time at which the license type conversion task was completed.</p>
    #
    #   @return [Time]
    #
    GetLicenseConversionTaskOutput = ::Struct.new(
      :license_conversion_task_id,
      :resource_arn,
      :source_license_context,
      :destination_license_context,
      :status_message,
      :status,
      :start_time,
      :license_conversion_time,
      :end_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute license_arn
    #   <p>Amazon Resource Name (ARN) of the license.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>License version.</p>
    #
    #   @return [String]
    #
    GetLicenseInput = ::Struct.new(
      :license_arn,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute license_manager_report_generator_arn
    #   <p>Amazon Resource Name (ARN) of the report generator.</p>
    #
    #   @return [String]
    #
    GetLicenseManagerReportGeneratorInput = ::Struct.new(
      :license_manager_report_generator_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute report_generator
    #   <p>A report generator that creates periodic reports about your license configurations.</p>
    #
    #   @return [ReportGenerator]
    #
    GetLicenseManagerReportGeneratorOutput = ::Struct.new(
      :report_generator,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute license
    #   <p>License details.</p>
    #
    #   @return [License]
    #
    GetLicenseOutput = ::Struct.new(
      :license,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute license_arn
    #   <p>Amazon Resource Name (ARN) of the license.</p>
    #
    #   @return [String]
    #
    GetLicenseUsageInput = ::Struct.new(
      :license_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute license_usage
    #   <p>License usage details.</p>
    #
    #   @return [LicenseUsage]
    #
    GetLicenseUsageOutput = ::Struct.new(
      :license_usage,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    GetServiceSettingsInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute s3_bucket_arn
    #   <p>Regional S3 bucket path for storing reports, license trail event data, discovery data,
    #            and so on.</p>
    #
    #   @return [String]
    #
    # @!attribute sns_topic_arn
    #   <p>SNS topic configured to receive notifications from License Manager.</p>
    #
    #   @return [String]
    #
    # @!attribute organization_configuration
    #   <p>Indicates whether Organizations is integrated with License Manager for
    #            cross-account discovery.</p>
    #
    #   @return [OrganizationConfiguration]
    #
    # @!attribute enable_cross_accounts_discovery
    #   <p>Indicates whether cross-account discovery is enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute license_manager_resource_share_arn
    #   <p>Amazon Resource Name (ARN) of the resource share. The License Manager management account
    #            provides member accounts with access to this share.</p>
    #
    #   @return [String]
    #
    GetServiceSettingsOutput = ::Struct.new(
      :s3_bucket_arn,
      :sns_topic_arn,
      :organization_configuration,
      :enable_cross_accounts_discovery,
      :license_manager_resource_share_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a grant.</p>
    #
    # @!attribute grant_arn
    #   <p>Amazon Resource Name (ARN) of the grant.</p>
    #
    #   @return [String]
    #
    # @!attribute grant_name
    #   <p>Grant name.</p>
    #
    #   @return [String]
    #
    # @!attribute parent_arn
    #   <p>Parent ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute license_arn
    #   <p>License ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute grantee_principal_arn
    #   <p>The grantee principal ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute home_region
    #   <p>Home Region of the grant.</p>
    #
    #   @return [String]
    #
    # @!attribute grant_status
    #   <p>Grant status.</p>
    #
    #   Enum, one of: ["PENDING_WORKFLOW", "PENDING_ACCEPT", "REJECTED", "ACTIVE", "FAILED_WORKFLOW", "DELETED", "PENDING_DELETE", "DISABLED", "WORKFLOW_COMPLETED"]
    #
    #   @return [String]
    #
    # @!attribute status_reason
    #   <p>Grant status reason.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>Grant version.</p>
    #
    #   @return [String]
    #
    # @!attribute granted_operations
    #   <p>Granted operations.</p>
    #
    #   @return [Array<String>]
    #
    Grant = ::Struct.new(
      :grant_arn,
      :grant_name,
      :parent_arn,
      :license_arn,
      :grantee_principal_arn,
      :home_region,
      :grant_status,
      :status_reason,
      :version,
      :granted_operations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for GrantStatus
    #
    module GrantStatus
      # No documentation available.
      #
      PENDING_WORKFLOW = "PENDING_WORKFLOW"

      # No documentation available.
      #
      PENDING_ACCEPT = "PENDING_ACCEPT"

      # No documentation available.
      #
      REJECTED = "REJECTED"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      FAILED_WORKFLOW = "FAILED_WORKFLOW"

      # No documentation available.
      #
      DELETED = "DELETED"

      # No documentation available.
      #
      PENDING_DELETE = "PENDING_DELETE"

      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      WORKFLOW_COMPLETED = "WORKFLOW_COMPLETED"
    end

    # <p>Describes a license that is granted to a grantee.</p>
    #
    # @!attribute license_arn
    #   <p>Amazon Resource Name (ARN) of the license.</p>
    #
    #   @return [String]
    #
    # @!attribute license_name
    #   <p>License name.</p>
    #
    #   @return [String]
    #
    # @!attribute product_name
    #   <p>Product name.</p>
    #
    #   @return [String]
    #
    # @!attribute product_sku
    #   <p>Product SKU.</p>
    #
    #   @return [String]
    #
    # @!attribute issuer
    #   <p>Granted license issuer.</p>
    #
    #   @return [IssuerDetails]
    #
    # @!attribute home_region
    #   <p>Home Region of the granted license.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Granted license status.</p>
    #
    #   Enum, one of: ["AVAILABLE", "PENDING_AVAILABLE", "DEACTIVATED", "SUSPENDED", "EXPIRED", "PENDING_DELETE", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute validity
    #   <p>Date and time range during which the granted license is valid, in ISO8601-UTC format.</p>
    #
    #   @return [DatetimeRange]
    #
    # @!attribute beneficiary
    #   <p>Granted license beneficiary.</p>
    #
    #   @return [String]
    #
    # @!attribute entitlements
    #   <p>License entitlements.</p>
    #
    #   @return [Array<Entitlement>]
    #
    # @!attribute consumption_configuration
    #   <p>Configuration for consumption of the license.</p>
    #
    #   @return [ConsumptionConfiguration]
    #
    # @!attribute license_metadata
    #   <p>Granted license metadata.</p>
    #
    #   @return [Array<Metadata>]
    #
    # @!attribute create_time
    #   <p>Creation time of the granted license.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>Version of the granted license.</p>
    #
    #   @return [String]
    #
    # @!attribute received_metadata
    #   <p>Granted license received metadata.</p>
    #
    #   @return [ReceivedMetadata]
    #
    GrantedLicense = ::Struct.new(
      :license_arn,
      :license_name,
      :product_name,
      :product_sku,
      :issuer,
      :home_region,
      :status,
      :validity,
      :beneficiary,
      :entitlements,
      :consumption_configuration,
      :license_metadata,
      :create_time,
      :version,
      :received_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>One or more parameter values are not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidParameterValueException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>License Manager cannot allocate a license to a resource because of its state. </p>
    #          <p>For example, you cannot allocate a license to an instance in the process of shutting
    #          down.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidResourceStateException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An inventory filter.</p>
    #
    # @!attribute name
    #   <p>Name of the filter.</p>
    #
    #   @return [String]
    #
    # @!attribute condition
    #   <p>Condition of the filter.</p>
    #
    #   Enum, one of: ["EQUALS", "NOT_EQUALS", "BEGINS_WITH", "CONTAINS"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>Value of the filter.</p>
    #
    #   @return [String]
    #
    InventoryFilter = ::Struct.new(
      :name,
      :condition,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for InventoryFilterCondition
    #
    module InventoryFilterCondition
      # No documentation available.
      #
      EQUALS = "EQUALS"

      # No documentation available.
      #
      NOT_EQUALS = "NOT_EQUALS"

      # No documentation available.
      #
      BEGINS_WITH = "BEGINS_WITH"

      # No documentation available.
      #
      CONTAINS = "CONTAINS"
    end

    # <p>Details about the issuer of a license.</p>
    #
    # @!attribute name
    #   <p>Issuer name.</p>
    #
    #   @return [String]
    #
    # @!attribute sign_key
    #   <p>Asymmetric KMS key from Key Management Service. The KMS key must have a key usage of sign and verify,
    #            and support the RSASSA-PSS SHA-256 signing algorithm.</p>
    #
    #   @return [String]
    #
    Issuer = ::Struct.new(
      :name,
      :sign_key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details associated with the issuer of a license.</p>
    #
    # @!attribute name
    #   <p>Issuer name.</p>
    #
    #   @return [String]
    #
    # @!attribute sign_key
    #   <p>Asymmetric KMS key from Key Management Service. The KMS key must have a key usage of sign and verify,
    #            and support the RSASSA-PSS SHA-256 signing algorithm.</p>
    #
    #   @return [String]
    #
    # @!attribute key_fingerprint
    #   <p>Issuer key fingerprint.</p>
    #
    #   @return [String]
    #
    IssuerDetails = ::Struct.new(
      :name,
      :sign_key,
      :key_fingerprint,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Software license that is managed in License Manager.</p>
    #
    # @!attribute license_arn
    #   <p>Amazon Resource Name (ARN) of the license.</p>
    #
    #   @return [String]
    #
    # @!attribute license_name
    #   <p>License name.</p>
    #
    #   @return [String]
    #
    # @!attribute product_name
    #   <p>Product name.</p>
    #
    #   @return [String]
    #
    # @!attribute product_sku
    #   <p>Product SKU.</p>
    #
    #   @return [String]
    #
    # @!attribute issuer
    #   <p>License issuer.</p>
    #
    #   @return [IssuerDetails]
    #
    # @!attribute home_region
    #   <p>Home Region of the license.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>License status.</p>
    #
    #   Enum, one of: ["AVAILABLE", "PENDING_AVAILABLE", "DEACTIVATED", "SUSPENDED", "EXPIRED", "PENDING_DELETE", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute validity
    #   <p>Date and time range during which the license is valid, in ISO8601-UTC format.</p>
    #
    #   @return [DatetimeRange]
    #
    # @!attribute beneficiary
    #   <p>License beneficiary.</p>
    #
    #   @return [String]
    #
    # @!attribute entitlements
    #   <p>License entitlements.</p>
    #
    #   @return [Array<Entitlement>]
    #
    # @!attribute consumption_configuration
    #   <p>Configuration for consumption of the license.</p>
    #
    #   @return [ConsumptionConfiguration]
    #
    # @!attribute license_metadata
    #   <p>License metadata.</p>
    #
    #   @return [Array<Metadata>]
    #
    # @!attribute create_time
    #   <p>License creation time.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>License version.</p>
    #
    #   @return [String]
    #
    License = ::Struct.new(
      :license_arn,
      :license_name,
      :product_name,
      :product_sku,
      :issuer,
      :home_region,
      :status,
      :validity,
      :beneficiary,
      :entitlements,
      :consumption_configuration,
      :license_metadata,
      :create_time,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A license configuration is an abstraction of a customer license agreement that can be
    #          consumed and enforced by License Manager. Components include specifications for the license
    #          type (licensing by instance, socket, CPU, or vCPU), allowed tenancy (shared tenancy,
    #          Dedicated Instance, Dedicated Host, or all of these), host affinity (how long a VM
    #          must be associated with a host), and the number of licenses purchased and used.</p>
    #
    # @!attribute license_configuration_id
    #   <p>Unique ID of the license configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute license_configuration_arn
    #   <p>Amazon Resource Name (ARN) of the license configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>Name of the license configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>Description of the license configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute license_counting_type
    #   <p>Dimension to use to track the license inventory.</p>
    #
    #   Enum, one of: ["vCPU", "Instance", "Core", "Socket"]
    #
    #   @return [String]
    #
    # @!attribute license_rules
    #   <p>License rules.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute license_count
    #   <p>Number of licenses managed by the license configuration.</p>
    #
    #   @return [Integer]
    #
    # @!attribute license_count_hard_limit
    #   <p>Number of available licenses as a hard limit.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute disassociate_when_not_found
    #   <p>When true, disassociates a resource when software is uninstalled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute consumed_licenses
    #   <p>Number of licenses consumed. </p>
    #
    #   @return [Integer]
    #
    # @!attribute status
    #   <p>Status of the license configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute owner_account_id
    #   <p>Account ID of the license configuration's owner.</p>
    #
    #   @return [String]
    #
    # @!attribute consumed_license_summary_list
    #   <p>Summaries for licenses consumed by various resources.</p>
    #
    #   @return [Array<ConsumedLicenseSummary>]
    #
    # @!attribute managed_resource_summary_list
    #   <p>Summaries for managed resources.</p>
    #
    #   @return [Array<ManagedResourceSummary>]
    #
    # @!attribute product_information_list
    #   <p>Product information.</p>
    #
    #   @return [Array<ProductInformation>]
    #
    # @!attribute automated_discovery_information
    #   <p>Automated discovery information.</p>
    #
    #   @return [AutomatedDiscoveryInformation]
    #
    LicenseConfiguration = ::Struct.new(
      :license_configuration_id,
      :license_configuration_arn,
      :name,
      :description,
      :license_counting_type,
      :license_rules,
      :license_count,
      :license_count_hard_limit,
      :disassociate_when_not_found,
      :consumed_licenses,
      :status,
      :owner_account_id,
      :consumed_license_summary_list,
      :managed_resource_summary_list,
      :product_information_list,
      :automated_discovery_information,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes an association with a license configuration.</p>
    #
    # @!attribute resource_arn
    #   <p>Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>Type of server resource.</p>
    #
    #   Enum, one of: ["EC2_INSTANCE", "EC2_HOST", "EC2_AMI", "RDS", "SYSTEMS_MANAGER_MANAGED_INSTANCE"]
    #
    #   @return [String]
    #
    # @!attribute resource_owner_id
    #   <p>ID of the Amazon Web Services account that owns the resource consuming licenses.</p>
    #
    #   @return [String]
    #
    # @!attribute association_time
    #   <p>Time when the license configuration was associated with the resource.</p>
    #
    #   @return [Time]
    #
    # @!attribute ami_association_scope
    #   <p>Scope of AMI associations. The possible value is <code>cross-account</code>.</p>
    #
    #   @return [String]
    #
    LicenseConfigurationAssociation = ::Struct.new(
      :resource_arn,
      :resource_type,
      :resource_owner_id,
      :association_time,
      :ami_association_scope,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LicenseConfigurationStatus
    #
    module LicenseConfigurationStatus
      # No documentation available.
      #
      AVAILABLE = "AVAILABLE"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # <p>Details about the usage of a resource associated with a license configuration.</p>
    #
    # @!attribute resource_arn
    #   <p>Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>Type of resource.</p>
    #
    #   Enum, one of: ["EC2_INSTANCE", "EC2_HOST", "EC2_AMI", "RDS", "SYSTEMS_MANAGER_MANAGED_INSTANCE"]
    #
    #   @return [String]
    #
    # @!attribute resource_status
    #   <p>Status of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_owner_id
    #   <p>ID of the account that owns the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute association_time
    #   <p>Time when the license configuration was initially associated with the resource.</p>
    #
    #   @return [Time]
    #
    # @!attribute consumed_licenses
    #   <p>Number of licenses consumed by the resource.</p>
    #
    #   @return [Integer]
    #
    LicenseConfigurationUsage = ::Struct.new(
      :resource_arn,
      :resource_type,
      :resource_status,
      :resource_owner_id,
      :association_time,
      :consumed_licenses,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a license type conversion task.</p>
    #
    # @!attribute usage_operation
    #   <p>The Usage operation value that corresponds to the license type you are converting your resource from.  For more information about which platforms correspond to which usage operation values see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/billing-info-fields.html billing-info">Sample data: usage operation by platform
    #         </a>
    #            </p>
    #
    #   @return [String]
    #
    LicenseConversionContext = ::Struct.new(
      :usage_operation,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a license type conversion task.</p>
    #
    # @!attribute license_conversion_task_id
    #   <p>The ID of the license type conversion task.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource associated with the license type
    #            conversion task.</p>
    #
    #   @return [String]
    #
    # @!attribute source_license_context
    #   <p>Information about the license type this conversion task converted from.</p>
    #
    #   @return [LicenseConversionContext]
    #
    # @!attribute destination_license_context
    #   <p>Information about the license type this conversion task converted to.</p>
    #
    #   @return [LicenseConversionContext]
    #
    # @!attribute status
    #   <p>The status of the conversion task.</p>
    #
    #   Enum, one of: ["IN_PROGRESS", "SUCCEEDED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>The status message for the conversion task.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The time the conversion task was started at.</p>
    #
    #   @return [Time]
    #
    # @!attribute license_conversion_time
    #   <p>The time the usage operation value of the resource was changed.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The time the conversion task was completed.</p>
    #
    #   @return [Time]
    #
    LicenseConversionTask = ::Struct.new(
      :license_conversion_task_id,
      :resource_arn,
      :source_license_context,
      :destination_license_context,
      :status,
      :status_message,
      :start_time,
      :license_conversion_time,
      :end_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LicenseConversionTaskStatus
    #
    module LicenseConversionTaskStatus
      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      SUCCEEDED = "SUCCEEDED"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # Includes enum constants for LicenseCountingType
    #
    module LicenseCountingType
      # No documentation available.
      #
      VCPU = "vCPU"

      # No documentation available.
      #
      INSTANCE = "Instance"

      # No documentation available.
      #
      CORE = "Core"

      # No documentation available.
      #
      SOCKET = "Socket"
    end

    # Includes enum constants for LicenseDeletionStatus
    #
    module LicenseDeletionStatus
      # No documentation available.
      #
      PENDING_DELETE = "PENDING_DELETE"

      # No documentation available.
      #
      DELETED = "DELETED"
    end

    # <p>Describes the failure of a license operation.</p>
    #
    # @!attribute resource_arn
    #   <p>Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>Resource type.</p>
    #
    #   Enum, one of: ["EC2_INSTANCE", "EC2_HOST", "EC2_AMI", "RDS", "SYSTEMS_MANAGER_MANAGED_INSTANCE"]
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>Error message.</p>
    #
    #   @return [String]
    #
    # @!attribute failure_time
    #   <p>Failure time.</p>
    #
    #   @return [Time]
    #
    # @!attribute operation_name
    #   <p>Name of the operation.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_owner_id
    #   <p>ID of the Amazon Web Services account that owns the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute operation_requested_by
    #   <p>The requester is "License Manager Automated Discovery".</p>
    #
    #   @return [String]
    #
    # @!attribute metadata_list
    #   <p>Reserved.</p>
    #
    #   @return [Array<Metadata>]
    #
    LicenseOperationFailure = ::Struct.new(
      :resource_arn,
      :resource_type,
      :error_message,
      :failure_time,
      :operation_name,
      :resource_owner_id,
      :operation_requested_by,
      :metadata_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details for associating a license configuration with a resource.</p>
    #
    # @!attribute license_configuration_arn
    #   <p>Amazon Resource Name (ARN) of the license configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute ami_association_scope
    #   <p>Scope of AMI associations. The possible value is <code>cross-account</code>.</p>
    #
    #   @return [String]
    #
    LicenseSpecification = ::Struct.new(
      :license_configuration_arn,
      :ami_association_scope,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LicenseStatus
    #
    module LicenseStatus
      # No documentation available.
      #
      AVAILABLE = "AVAILABLE"

      # No documentation available.
      #
      PENDING_AVAILABLE = "PENDING_AVAILABLE"

      # No documentation available.
      #
      DEACTIVATED = "DEACTIVATED"

      # No documentation available.
      #
      SUSPENDED = "SUSPENDED"

      # No documentation available.
      #
      EXPIRED = "EXPIRED"

      # No documentation available.
      #
      PENDING_DELETE = "PENDING_DELETE"

      # No documentation available.
      #
      DELETED = "DELETED"
    end

    # <p>Describes the entitlement usage associated with a license.</p>
    #
    # @!attribute entitlement_usages
    #   <p>License entitlement usages.</p>
    #
    #   @return [Array<EntitlementUsage>]
    #
    LicenseUsage = ::Struct.new(
      :entitlement_usages,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You do not have enough licenses available to support a new resource launch.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    LicenseUsageException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute license_configuration_arn
    #   <p>Amazon Resource Name (ARN) of a license configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Maximum number of results to return in a single call.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>Token for the next set of results.</p>
    #
    #   @return [String]
    #
    ListAssociationsForLicenseConfigurationInput = ::Struct.new(
      :license_configuration_arn,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute license_configuration_associations
    #   <p>Information about the associations for the license configuration.</p>
    #
    #   @return [Array<LicenseConfigurationAssociation>]
    #
    # @!attribute next_token
    #   <p>Token for the next set of results.</p>
    #
    #   @return [String]
    #
    ListAssociationsForLicenseConfigurationOutput = ::Struct.new(
      :license_configuration_associations,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute grant_arns
    #   <p>Amazon Resource Names (ARNs) of the grants.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute filters
    #   <p>Filters to scope the results. The following filters are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>LicenseArn</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GrantStatus</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GranteePrincipalARN</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ProductSKU</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LicenseIssuerName</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute next_token
    #   <p>Token for the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Maximum number of results to return in a single call.</p>
    #
    #   @return [Integer]
    #
    ListDistributedGrantsInput = ::Struct.new(
      :grant_arns,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute grants
    #   <p>Distributed grant details.</p>
    #
    #   @return [Array<Grant>]
    #
    # @!attribute next_token
    #   <p>Token for the next set of results.</p>
    #
    #   @return [String]
    #
    ListDistributedGrantsOutput = ::Struct.new(
      :grants,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute license_configuration_arn
    #   <p>Amazon Resource Name of the license configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Maximum number of results to return in a single call.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>Token for the next set of results.</p>
    #
    #   @return [String]
    #
    ListFailuresForLicenseConfigurationOperationsInput = ::Struct.new(
      :license_configuration_arn,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute license_operation_failure_list
    #   <p>License configuration operations that failed.</p>
    #
    #   @return [Array<LicenseOperationFailure>]
    #
    # @!attribute next_token
    #   <p>Token for the next set of results.</p>
    #
    #   @return [String]
    #
    ListFailuresForLicenseConfigurationOperationsOutput = ::Struct.new(
      :license_operation_failure_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute license_configuration_arns
    #   <p>Amazon Resource Names (ARN) of the license configurations.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute max_results
    #   <p>Maximum number of results to return in a single call.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>Token for the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>Filters to scope the results. The following filters and logical operators
    #           are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>licenseCountingType</code> - The dimension for which licenses are counted.
    #                  Possible values are <code>vCPU</code> | <code>Instance</code> | <code>Core</code> | <code>Socket</code>.
    #                  Logical operators are <code>EQUALS</code> | <code>NOT_EQUALS</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>enforceLicenseCount</code> - A Boolean value that indicates whether hard license enforcement is used.
    #                  Logical operators are <code>EQUALS</code> | <code>NOT_EQUALS</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>usagelimitExceeded</code> - A Boolean value that indicates whether the available licenses have been exceeded.
    #                  Logical operators are <code>EQUALS</code> | <code>NOT_EQUALS</code>.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<Filter>]
    #
    ListLicenseConfigurationsInput = ::Struct.new(
      :license_configuration_arns,
      :max_results,
      :next_token,
      :filters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute license_configurations
    #   <p>Information about the license configurations.</p>
    #
    #   @return [Array<LicenseConfiguration>]
    #
    # @!attribute next_token
    #   <p>Token for the next set of results.</p>
    #
    #   @return [String]
    #
    ListLicenseConfigurationsOutput = ::Struct.new(
      :license_configurations,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>Token for the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Maximum number of results to return in a single call.</p>
    #
    #   @return [Integer]
    #
    # @!attribute filters
    #   <p>
    #            Filters to scope the results. Valid filters are <code>ResourceArns</code> and <code>Status</code>.
    #         </p>
    #
    #   @return [Array<Filter>]
    #
    ListLicenseConversionTasksInput = ::Struct.new(
      :next_token,
      :max_results,
      :filters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute license_conversion_tasks
    #   <p>Information about the license configuration tasks for your account.</p>
    #
    #   @return [Array<LicenseConversionTask>]
    #
    # @!attribute next_token
    #   <p>Token for the next set of results.</p>
    #
    #   @return [String]
    #
    ListLicenseConversionTasksOutput = ::Struct.new(
      :license_conversion_tasks,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filters
    #   <p>Filters to scope the results. The following filters are supported: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>LicenseConfigurationArn</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute next_token
    #   <p>Token for the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Maximum number of results to return in a single call.</p>
    #
    #   @return [Integer]
    #
    ListLicenseManagerReportGeneratorsInput = ::Struct.new(
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute report_generators
    #   <p>A report generator that creates periodic reports about your license configurations.</p>
    #
    #   @return [Array<ReportGenerator>]
    #
    # @!attribute next_token
    #   <p>Token for the next set of results.</p>
    #
    #   @return [String]
    #
    ListLicenseManagerReportGeneratorsOutput = ::Struct.new(
      :report_generators,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>Amazon Resource Name (ARN) of a resource that has an associated license configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Maximum number of results to return in a single call.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>Token for the next set of results.</p>
    #
    #   @return [String]
    #
    ListLicenseSpecificationsForResourceInput = ::Struct.new(
      :resource_arn,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute license_specifications
    #   <p>License configurations associated with a resource.</p>
    #
    #   @return [Array<LicenseSpecification>]
    #
    # @!attribute next_token
    #   <p>Token for the next set of results.</p>
    #
    #   @return [String]
    #
    ListLicenseSpecificationsForResourceOutput = ::Struct.new(
      :license_specifications,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute license_arn
    #   <p>Amazon Resource Name (ARN) of the license.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>Token for the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Maximum number of results to return in a single call.</p>
    #
    #   @return [Integer]
    #
    ListLicenseVersionsInput = ::Struct.new(
      :license_arn,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute licenses
    #   <p>License details.</p>
    #
    #   @return [Array<License>]
    #
    # @!attribute next_token
    #   <p>Token for the next set of results.</p>
    #
    #   @return [String]
    #
    ListLicenseVersionsOutput = ::Struct.new(
      :licenses,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute license_arns
    #   <p>Amazon Resource Names (ARNs) of the licenses.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute filters
    #   <p>Filters to scope the results. The following filters are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Beneficiary</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ProductSKU</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Fingerprint</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Status</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute next_token
    #   <p>Token for the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Maximum number of results to return in a single call.</p>
    #
    #   @return [Integer]
    #
    ListLicensesInput = ::Struct.new(
      :license_arns,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute licenses
    #   <p>License details.</p>
    #
    #   @return [Array<License>]
    #
    # @!attribute next_token
    #   <p>Token for the next set of results.</p>
    #
    #   @return [String]
    #
    ListLicensesOutput = ::Struct.new(
      :licenses,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute grant_arns
    #   <p>Amazon Resource Names (ARNs) of the grants.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute filters
    #   <p>Filters to scope the results. The following filters are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ProductSKU</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LicenseIssuerName</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LicenseArn</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GrantStatus</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GranterAccountId</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute next_token
    #   <p>Token for the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Maximum number of results to return in a single call.</p>
    #
    #   @return [Integer]
    #
    ListReceivedGrantsInput = ::Struct.new(
      :grant_arns,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute grants
    #   <p>Received grant details.</p>
    #
    #   @return [Array<Grant>]
    #
    # @!attribute next_token
    #   <p>Token for the next set of results.</p>
    #
    #   @return [String]
    #
    ListReceivedGrantsOutput = ::Struct.new(
      :grants,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute license_arns
    #   <p>Amazon Resource Names (ARNs) of the licenses.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute filters
    #   <p>Filters to scope the results. The following filters are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ProductSKU</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Status</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Fingerprint</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IssuerName</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Beneficiary</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute next_token
    #   <p>Token for the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Maximum number of results to return in a single call.</p>
    #
    #   @return [Integer]
    #
    ListReceivedLicensesInput = ::Struct.new(
      :license_arns,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute licenses
    #   <p>Received license details.</p>
    #
    #   @return [Array<GrantedLicense>]
    #
    # @!attribute next_token
    #   <p>Token for the next set of results.</p>
    #
    #   @return [String]
    #
    ListReceivedLicensesOutput = ::Struct.new(
      :licenses,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>Maximum number of results to return in a single call.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>Token for the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>Filters to scope the results. The following filters and logical operators
    #           are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>account_id</code> - The ID of the Amazon Web Services account that owns the resource.
    #                  Logical operators are <code>EQUALS</code> | <code>NOT_EQUALS</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>application_name</code> - The name of the application.
    #                  Logical operators are <code>EQUALS</code> | <code>BEGINS_WITH</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>license_included</code> - The type of license included.
    #                  Logical operators are <code>EQUALS</code> | <code>NOT_EQUALS</code>.
    #                  Possible values are <code>sql-server-enterprise</code> |
    #                  <code>sql-server-standard</code> |
    #                  <code>sql-server-web</code> |
    #                  <code>windows-server-datacenter</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>platform</code> - The platform of the resource.
    #                  Logical operators are <code>EQUALS</code> | <code>BEGINS_WITH</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>resource_id</code> - The ID of the resource.
    #                  Logical operators are <code>EQUALS</code> | <code>NOT_EQUALS</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>tag:<key></code> - The key/value combination of a tag assigned
    #                  to the resource. Logical operators are <code>EQUALS</code> (single account) or
    #                  <code>EQUALS</code> | <code>NOT_EQUALS</code> (cross account).</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<InventoryFilter>]
    #
    ListResourceInventoryInput = ::Struct.new(
      :max_results,
      :next_token,
      :filters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_inventory_list
    #   <p>Information about the resources.</p>
    #
    #   @return [Array<ResourceInventory>]
    #
    # @!attribute next_token
    #   <p>Token for the next set of results.</p>
    #
    #   @return [String]
    #
    ListResourceInventoryOutput = ::Struct.new(
      :resource_inventory_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>Amazon Resource Name (ARN) of the license configuration.</p>
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
    #   <p>Information about the tags.</p>
    #
    #   @return [Array<Tag>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute token_ids
    #   <p>Token IDs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute filters
    #   <p>Filters to scope the results. The following filter is supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>LicenseArns</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute next_token
    #   <p>Token for the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Maximum number of results to return in a single call.</p>
    #
    #   @return [Integer]
    #
    ListTokensInput = ::Struct.new(
      :token_ids,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tokens
    #   <p>Received token details.</p>
    #
    #   @return [Array<TokenData>]
    #
    # @!attribute next_token
    #   <p>Token for the next set of results.</p>
    #
    #   @return [String]
    #
    ListTokensOutput = ::Struct.new(
      :tokens,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute license_configuration_arn
    #   <p>Amazon Resource Name (ARN) of the license configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Maximum number of results to return in a single call.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>Token for the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>Filters to scope the results. The following filters and logical operators
    #           are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>resourceArn</code> - The ARN of the license configuration resource.
    #                  Logical operators are <code>EQUALS</code> | <code>NOT_EQUALS</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>resourceType</code> - The resource type (<code>EC2_INSTANCE</code> | <code>EC2_HOST</code> | <code>EC2_AMI</code> | <code>SYSTEMS_MANAGER_MANAGED_INSTANCE</code>).
    #                  Logical operators are <code>EQUALS</code> | <code>NOT_EQUALS</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>resourceAccount</code> - The ID of the account that owns the resource.
    #                  Logical operators are <code>EQUALS</code> | <code>NOT_EQUALS</code>.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<Filter>]
    #
    ListUsageForLicenseConfigurationInput = ::Struct.new(
      :license_configuration_arn,
      :max_results,
      :next_token,
      :filters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute license_configuration_usage_list
    #   <p>Information about the license configurations.</p>
    #
    #   @return [Array<LicenseConfigurationUsage>]
    #
    # @!attribute next_token
    #   <p>Token for the next set of results.</p>
    #
    #   @return [String]
    #
    ListUsageForLicenseConfigurationOutput = ::Struct.new(
      :license_configuration_usage_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Summary information about a managed resource.</p>
    #
    # @!attribute resource_type
    #   <p>Type of resource associated with a license.</p>
    #
    #   Enum, one of: ["EC2_INSTANCE", "EC2_HOST", "EC2_AMI", "RDS", "SYSTEMS_MANAGER_MANAGED_INSTANCE"]
    #
    #   @return [String]
    #
    # @!attribute association_count
    #   <p>Number of resources associated with licenses.</p>
    #
    #   @return [Integer]
    #
    ManagedResourceSummary = ::Struct.new(
      :resource_type,
      :association_count,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes key/value pairs.</p>
    #
    # @!attribute name
    #   <p>The key name.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value.</p>
    #
    #   @return [String]
    #
    Metadata = ::Struct.new(
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>There are no entitlements found for this license, or the entitlement maximum count is reached.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    NoEntitlementsAllowedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Configuration information for Organizations.</p>
    #
    # @!attribute enable_integration
    #   <p>Enables Organizations integration.</p>
    #
    #   @return [Boolean]
    #
    OrganizationConfiguration = ::Struct.new(
      :enable_integration,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.enable_integration ||= false
      end
    end

    # <p>Describes product information for a license configuration.</p>
    #
    # @!attribute resource_type
    #   <p>Resource type. The possible values are <code>SSM_MANAGED</code> | <code>RDS</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute product_information_filter_list
    #   <p>A Product information filter consists of a <code>ProductInformationFilterComparator</code> which is a logical operator, a <code>ProductInformationFilterName</code> which specifies the type of filter being declared, and a <code>ProductInformationFilterValue</code> that specifies the value to filter on. </p>
    #            <p>Accepted values for <code>ProductInformationFilterName</code> are listed here along with descriptions and valid options for <code>ProductInformationFilterComparator</code>. </p>
    #            <p>The following filters and are supported when the resource type
    #            is <code>SSM_MANAGED</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Application Name</code> - The name of the application.
    #                  Logical operator is <code>EQUALS</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Application Publisher</code> - The publisher of the application.
    #                  Logical operator is <code>EQUALS</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Application Version</code> - The version of the application.
    #                  Logical operator is <code>EQUALS</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Platform Name</code> - The name of the platform.
    #                  Logical operator is <code>EQUALS</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Platform Type</code> - The platform type.
    #                  Logical operator is <code>EQUALS</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Tag:key</code> - The key of a tag attached to an Amazon Web Services resource you wish to exclude from automated discovery. Logical operator is <code>NOT_EQUALS</code>.  The key for your tag must be appended to <code>Tag:</code> following the example: <code>Tag:name-of-your-key</code>. <code>ProductInformationFilterValue</code> is optional if you are not using values for the key.
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AccountId</code> - The 12-digit ID of an Amazon Web Services account you wish to exclude from automated discovery.
    #                  Logical operator is <code>NOT_EQUALS</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>License Included</code> - The type of license included.
    #                  Logical operators are <code>EQUALS</code> and <code>NOT_EQUALS</code>.
    #                  Possible values are: <code>sql-server-enterprise</code> |
    #                  <code>sql-server-standard</code> |
    #                  <code>sql-server-web</code> |
    #                  <code>windows-server-datacenter</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The following filters and logical operators are supported when the resource type
    #            is <code>RDS</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Engine Edition</code> - The edition of the database engine.
    #                  Logical operator is <code>EQUALS</code>.
    #                  Possible values are: <code>oracle-ee</code> | <code>oracle-se</code> | <code>oracle-se1</code> | <code>oracle-se2</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>License Pack</code> - The license pack.
    #                  Logical operator is <code>EQUALS</code>.
    #                  Possible values are: <code>data guard</code> |
    #                  <code>diagnostic pack sqlt</code> |
    #                  <code>tuning pack sqlt</code> |
    #                  <code>ols</code> |
    #                  <code>olap</code>.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<ProductInformationFilter>]
    #
    ProductInformation = ::Struct.new(
      :resource_type,
      :product_information_filter_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes product information filters.</p>
    #
    # @!attribute product_information_filter_name
    #   <p>Filter name.</p>
    #
    #   @return [String]
    #
    # @!attribute product_information_filter_value
    #   <p>Filter value.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute product_information_filter_comparator
    #   <p>Logical operator.</p>
    #
    #   @return [String]
    #
    ProductInformationFilter = ::Struct.new(
      :product_information_filter_name,
      :product_information_filter_value,
      :product_information_filter_comparator,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about a provisional configuration.</p>
    #
    # @!attribute max_time_to_live_in_minutes
    #   <p>Maximum time for the provisional configuration, in minutes.</p>
    #
    #   @return [Integer]
    #
    ProvisionalConfiguration = ::Struct.new(
      :max_time_to_live_in_minutes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Too many requests have been submitted. Try again after a brief wait.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    RateLimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Metadata associated with received licenses and grants.</p>
    #
    # @!attribute received_status
    #   <p>Received status.</p>
    #
    #   Enum, one of: ["PENDING_WORKFLOW", "PENDING_ACCEPT", "REJECTED", "ACTIVE", "FAILED_WORKFLOW", "DELETED", "DISABLED", "WORKFLOW_COMPLETED"]
    #
    #   @return [String]
    #
    # @!attribute received_status_reason
    #   <p>Received status reason.</p>
    #
    #   @return [String]
    #
    # @!attribute allowed_operations
    #   <p>Allowed operations.</p>
    #
    #   @return [Array<String>]
    #
    ReceivedMetadata = ::Struct.new(
      :received_status,
      :received_status_reason,
      :allowed_operations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ReceivedStatus
    #
    module ReceivedStatus
      # No documentation available.
      #
      PENDING_WORKFLOW = "PENDING_WORKFLOW"

      # No documentation available.
      #
      PENDING_ACCEPT = "PENDING_ACCEPT"

      # No documentation available.
      #
      REJECTED = "REJECTED"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      FAILED_WORKFLOW = "FAILED_WORKFLOW"

      # No documentation available.
      #
      DELETED = "DELETED"

      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      WORKFLOW_COMPLETED = "WORKFLOW_COMPLETED"
    end

    # <p>This is not the correct Region for the resource. Try again.</p>
    #
    # @!attribute location
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    RedirectException = ::Struct.new(
      :location,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute grant_arn
    #   <p>Amazon Resource Name (ARN) of the grant.</p>
    #
    #   @return [String]
    #
    RejectGrantInput = ::Struct.new(
      :grant_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute grant_arn
    #   <p>Grant ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Grant status.</p>
    #
    #   Enum, one of: ["PENDING_WORKFLOW", "PENDING_ACCEPT", "REJECTED", "ACTIVE", "FAILED_WORKFLOW", "DELETED", "PENDING_DELETE", "DISABLED", "WORKFLOW_COMPLETED"]
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>Grant version.</p>
    #
    #   @return [String]
    #
    RejectGrantOutput = ::Struct.new(
      :grant_arn,
      :status,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RenewType
    #
    module RenewType
      # No documentation available.
      #
      NONE = "None"

      # No documentation available.
      #
      WEEKLY = "Weekly"

      # No documentation available.
      #
      MONTHLY = "Monthly"
    end

    # <p>Details of the license configuration that this generator reports on.</p>
    #
    # @!attribute license_configuration_arns
    #   <p>Amazon Resource Name (ARN) of the license configuration that this generator reports on.</p>
    #
    #   @return [Array<String>]
    #
    ReportContext = ::Struct.new(
      :license_configuration_arns,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about how frequently reports are generated.</p>
    #
    # @!attribute value
    #   <p>Number of times within the frequency period that a report is generated.
    #            The only supported value is <code>1</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute period
    #   <p>Time period between each report. The period can be daily, weekly, or monthly.</p>
    #
    #   Enum, one of: ["DAY", "WEEK", "MONTH"]
    #
    #   @return [String]
    #
    ReportFrequency = ::Struct.new(
      :value,
      :period,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ReportFrequencyType
    #
    module ReportFrequencyType
      # No documentation available.
      #
      DAY = "DAY"

      # No documentation available.
      #
      WEEK = "WEEK"

      # No documentation available.
      #
      MONTH = "MONTH"
    end

    # <p>Describe the details of a report generator.</p>
    #
    # @!attribute report_generator_name
    #   <p>Name of the report generator.</p>
    #
    #   @return [String]
    #
    # @!attribute report_type
    #   <p>Type of reports that are generated.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute report_context
    #   <p>License configuration type for this generator.</p>
    #
    #   @return [ReportContext]
    #
    # @!attribute report_frequency
    #   <p>Details about how frequently reports are generated.</p>
    #
    #   @return [ReportFrequency]
    #
    # @!attribute license_manager_report_generator_arn
    #   <p>Amazon Resource Name (ARN) of the report generator.</p>
    #
    #   @return [String]
    #
    # @!attribute last_run_status
    #   <p>Status of the last report generation attempt.</p>
    #
    #   @return [String]
    #
    # @!attribute last_run_failure_reason
    #   <p>Failure message for the last report generation attempt.</p>
    #
    #   @return [String]
    #
    # @!attribute last_report_generation_time
    #   <p>Time the last report was generated at.</p>
    #
    #   @return [String]
    #
    # @!attribute report_creator_account
    #   <p>The Amazon Web Services account ID used to create the report generator.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>Description of the report generator.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_location
    #   <p>Details of the S3 bucket that report generator reports are published to.</p>
    #
    #   @return [S3Location]
    #
    # @!attribute create_time
    #   <p>Time the report was created.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Tags associated with the report generator.</p>
    #
    #   @return [Array<Tag>]
    #
    ReportGenerator = ::Struct.new(
      :report_generator_name,
      :report_type,
      :report_context,
      :report_frequency,
      :license_manager_report_generator_arn,
      :last_run_status,
      :last_run_failure_reason,
      :last_report_generation_time,
      :report_creator_account,
      :description,
      :s3_location,
      :create_time,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ReportType
    #
    module ReportType
      # No documentation available.
      #
      LICENSE_CONFIGURATION_SUMMARY_REPORT = "LicenseConfigurationSummaryReport"

      # No documentation available.
      #
      LICENSE_CONFIGURATION_USAGE_REPORT = "LicenseConfigurationUsageReport"
    end

    # <p>Details about a resource.</p>
    #
    # @!attribute resource_id
    #   <p>ID of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>Type of resource.</p>
    #
    #   Enum, one of: ["EC2_INSTANCE", "EC2_HOST", "EC2_AMI", "RDS", "SYSTEMS_MANAGER_MANAGED_INSTANCE"]
    #
    #   @return [String]
    #
    # @!attribute resource_arn
    #   <p>Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute platform
    #   <p>Platform of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute platform_version
    #   <p>Platform version of the resource in the inventory.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_owning_account_id
    #   <p>ID of the account that owns the resource.</p>
    #
    #   @return [String]
    #
    ResourceInventory = ::Struct.new(
      :resource_id,
      :resource_type,
      :resource_arn,
      :platform,
      :platform_version,
      :resource_owning_account_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Your resource limits have been exceeded.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceLimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The resource cannot be found.</p>
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

    # Includes enum constants for ResourceType
    #
    module ResourceType
      # No documentation available.
      #
      EC2_INSTANCE = "EC2_INSTANCE"

      # No documentation available.
      #
      EC2_HOST = "EC2_HOST"

      # No documentation available.
      #
      EC2_AMI = "EC2_AMI"

      # No documentation available.
      #
      RDS = "RDS"

      # No documentation available.
      #
      SYSTEMS_MANAGER_MANAGED_INSTANCE = "SYSTEMS_MANAGER_MANAGED_INSTANCE"
    end

    # <p>Details of the S3 bucket that report generator reports are published to.</p>
    #
    # @!attribute bucket
    #   <p>Name of the S3 bucket reports are published to.</p>
    #
    #   @return [String]
    #
    # @!attribute key_prefix
    #   <p>Prefix of the S3 bucket reports are published to.</p>
    #
    #   @return [String]
    #
    S3Location = ::Struct.new(
      :bucket,
      :key_prefix,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The server experienced an internal error. Try again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ServerInternalException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about a tag for a license configuration.</p>
    #
    # @!attribute key
    #   <p>Tag key.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>Tag value.</p>
    #
    #   @return [String]
    #
    Tag = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>Amazon Resource Name (ARN) of the license configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>One or more tags.</p>
    #
    #   @return [Array<Tag>]
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

    # <p>Describes a token.</p>
    #
    # @!attribute token_id
    #   <p>Token ID.</p>
    #
    #   @return [String]
    #
    # @!attribute token_type
    #   <p>Type of token generated. The supported value is <code>REFRESH_TOKEN</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute license_arn
    #   <p>Amazon Resource Name (ARN) of the license.</p>
    #
    #   @return [String]
    #
    # @!attribute expiration_time
    #   <p>Token expiration time, in ISO8601-UTC format.</p>
    #
    #   @return [String]
    #
    # @!attribute token_properties
    #   <p>Data specified by the caller.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute role_arns
    #   <p>Amazon Resource Names (ARN) of the roles included in the token.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute status
    #   <p>Token status. The possible values are <code>AVAILABLE</code> and <code>DELETED</code>.</p>
    #
    #   @return [String]
    #
    TokenData = ::Struct.new(
      :token_id,
      :token_type,
      :license_arn,
      :expiration_time,
      :token_properties,
      :role_arns,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TokenType
    #
    module TokenType
      # No documentation available.
      #
      REFRESH_TOKEN = "REFRESH_TOKEN"
    end

    # <p>The digital signature method is unsupported. Try your request again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UnsupportedDigitalSignatureMethodException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>Amazon Resource Name (ARN) of the license configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>Keys identifying the tags to remove.</p>
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

    # @!attribute license_configuration_arn
    #   <p>Amazon Resource Name (ARN) of the license configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute license_configuration_status
    #   <p>New status of the license configuration.</p>
    #
    #   Enum, one of: ["AVAILABLE", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute license_rules
    #   <p>New license rule. The only rule that you can add after you create a license
    #             configuration is licenseAffinityToHost.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute license_count
    #   <p>New number of licenses managed by the license configuration.</p>
    #
    #   @return [Integer]
    #
    # @!attribute license_count_hard_limit
    #   <p>New hard limit of the number of available licenses.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute name
    #   <p>New name of the license configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>New description of the license configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute product_information_list
    #   <p>New product information.</p>
    #
    #   @return [Array<ProductInformation>]
    #
    # @!attribute disassociate_when_not_found
    #   <p>When true, disassociates a resource when software is uninstalled.</p>
    #
    #   @return [Boolean]
    #
    UpdateLicenseConfigurationInput = ::Struct.new(
      :license_configuration_arn,
      :license_configuration_status,
      :license_rules,
      :license_count,
      :license_count_hard_limit,
      :name,
      :description,
      :product_information_list,
      :disassociate_when_not_found,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateLicenseConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute license_manager_report_generator_arn
    #   <p>Amazon Resource Name (ARN) of the report generator to update.</p>
    #
    #   @return [String]
    #
    # @!attribute report_generator_name
    #   <p>Name of the report generator.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>Type of reports to generate. The following report types are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>License configuration report - Reports the number and details of consumed licenses for a license configuration.</p>
    #               </li>
    #               <li>
    #                  <p>Resource report - Reports the tracked licenses and resource consumption for a license configuration.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    # @!attribute report_context
    #   <p>The report context.</p>
    #
    #   @return [ReportContext]
    #
    # @!attribute report_frequency
    #   <p>Frequency by which reports are generated.</p>
    #
    #   @return [ReportFrequency]
    #
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>Description of the report generator.</p>
    #
    #   @return [String]
    #
    UpdateLicenseManagerReportGeneratorInput = ::Struct.new(
      :license_manager_report_generator_arn,
      :report_generator_name,
      :type,
      :report_context,
      :report_frequency,
      :client_token,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateLicenseManagerReportGeneratorOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>Amazon Resource Name (ARN) of the Amazon Web Services resource.</p>
    #
    #   @return [String]
    #
    # @!attribute add_license_specifications
    #   <p>ARNs of the license configurations to add.</p>
    #
    #   @return [Array<LicenseSpecification>]
    #
    # @!attribute remove_license_specifications
    #   <p>ARNs of the license configurations to remove.</p>
    #
    #   @return [Array<LicenseSpecification>]
    #
    UpdateLicenseSpecificationsForResourceInput = ::Struct.new(
      :resource_arn,
      :add_license_specifications,
      :remove_license_specifications,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateLicenseSpecificationsForResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute s3_bucket_arn
    #   <p>Amazon Resource Name (ARN) of the Amazon S3 bucket where the License Manager information is stored.</p>
    #
    #   @return [String]
    #
    # @!attribute sns_topic_arn
    #   <p>Amazon Resource Name (ARN) of the Amazon SNS topic used for License Manager alerts.</p>
    #
    #   @return [String]
    #
    # @!attribute organization_configuration
    #   <p>Enables integration with Organizations for cross-account discovery.</p>
    #
    #   @return [OrganizationConfiguration]
    #
    # @!attribute enable_cross_accounts_discovery
    #   <p>Activates cross-account discovery.</p>
    #
    #   @return [Boolean]
    #
    UpdateServiceSettingsInput = ::Struct.new(
      :s3_bucket_arn,
      :sns_topic_arn,
      :organization_configuration,
      :enable_cross_accounts_discovery,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateServiceSettingsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The provided input is not valid. Try your request again.</p>
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
