# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::WorkLink
  module Types

    # @!attribute fleet_arn
    #   <p>The Amazon Resource Name (ARN) of the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute domain_name
    #   <p>The fully qualified domain name (FQDN).</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The name to display.</p>
    #
    #   @return [String]
    #
    # @!attribute acm_certificate_arn
    #   <p>The ARN of an issued ACM certificate that is valid for the domain being associated.</p>
    #
    #   @return [String]
    #
    AssociateDomainInput = ::Struct.new(
      :fleet_arn,
      :domain_name,
      :display_name,
      :acm_certificate_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AssociateDomainOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute fleet_arn
    #   <p>The ARN of the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute authorization_provider_type
    #   <p>The authorization provider type.</p>
    #
    #   Enum, one of: ["SAML"]
    #
    #   @return [String]
    #
    # @!attribute domain_name
    #   <p>The domain name of the authorization provider. This applies only to SAML-based
    #               authorization providers.</p>
    #
    #   @return [String]
    #
    AssociateWebsiteAuthorizationProviderInput = ::Struct.new(
      :fleet_arn,
      :authorization_provider_type,
      :domain_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute authorization_provider_id
    #   <p>A unique identifier for the authorization provider.</p>
    #
    #   @return [String]
    #
    AssociateWebsiteAuthorizationProviderOutput = ::Struct.new(
      :authorization_provider_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute fleet_arn
    #   <p>The ARN of the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute certificate
    #   <p>The root certificate of the CA.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The certificate name to display.</p>
    #
    #   @return [String]
    #
    AssociateWebsiteCertificateAuthorityInput = ::Struct.new(
      :fleet_arn,
      :certificate,
      :display_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute website_ca_id
    #   <p>A unique identifier for the CA.</p>
    #
    #   @return [String]
    #
    AssociateWebsiteCertificateAuthorityOutput = ::Struct.new(
      :website_ca_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AuthorizationProviderType
    #
    module AuthorizationProviderType
      # No documentation available.
      #
      SAML = "SAML"
    end

    # @!attribute fleet_name
    #   <p>A unique name for the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The fleet name to display.</p>
    #
    #   @return [String]
    #
    # @!attribute optimize_for_end_user_location
    #   <p>The option to optimize for better performance by routing traffic through the closest
    #               AWS Region to users, which may be outside of your home Region.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute tags
    #   <p> The tags to add to the resource. A tag is a key-value pair.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateFleetInput = ::Struct.new(
      :fleet_name,
      :display_name,
      :optimize_for_end_user_location,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute fleet_arn
    #   <p>The Amazon Resource Name (ARN) of the fleet.</p>
    #
    #   @return [String]
    #
    CreateFleetOutput = ::Struct.new(
      :fleet_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute fleet_arn
    #   <p>The ARN of the fleet.</p>
    #
    #   @return [String]
    #
    DeleteFleetInput = ::Struct.new(
      :fleet_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteFleetOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute fleet_arn
    #   <p>The ARN of the fleet.</p>
    #
    #   @return [String]
    #
    DescribeAuditStreamConfigurationInput = ::Struct.new(
      :fleet_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute audit_stream_arn
    #   <p>The ARN of the Amazon Kinesis data stream that will receive the audit events.</p>
    #
    #   @return [String]
    #
    DescribeAuditStreamConfigurationOutput = ::Struct.new(
      :audit_stream_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute fleet_arn
    #   <p>The ARN of the fleet.</p>
    #
    #   @return [String]
    #
    DescribeCompanyNetworkConfigurationInput = ::Struct.new(
      :fleet_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute vpc_id
    #   <p>The VPC with connectivity to associated websites.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_ids
    #   <p>The subnets used for X-ENI connections from Amazon WorkLink rendering containers.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute security_group_ids
    #   <p>The security groups associated with access to the provided subnets.</p>
    #
    #   @return [Array<String>]
    #
    DescribeCompanyNetworkConfigurationOutput = ::Struct.new(
      :vpc_id,
      :subnet_ids,
      :security_group_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute fleet_arn
    #   <p>The ARN of the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute device_id
    #   <p>A unique identifier for a registered user's device.</p>
    #
    #   @return [String]
    #
    DescribeDeviceInput = ::Struct.new(
      :fleet_arn,
      :device_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute status
    #   <p>The current state of the device.</p>
    #
    #   Enum, one of: ["ACTIVE", "SIGNED_OUT"]
    #
    #   @return [String]
    #
    # @!attribute model
    #   <p>The model of the device.</p>
    #
    #   @return [String]
    #
    # @!attribute manufacturer
    #   <p>The manufacturer of the device.</p>
    #
    #   @return [String]
    #
    # @!attribute operating_system
    #   <p>The operating system of the device.</p>
    #
    #   @return [String]
    #
    # @!attribute operating_system_version
    #   <p>The operating system version of the device.</p>
    #
    #   @return [String]
    #
    # @!attribute patch_level
    #   <p>The operating system patch level of the device.</p>
    #
    #   @return [String]
    #
    # @!attribute first_accessed_time
    #   <p>The date that the device first signed in to Amazon WorkLink.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_accessed_time
    #   <p>The date that the device last accessed Amazon WorkLink.</p>
    #
    #   @return [Time]
    #
    # @!attribute username
    #   <p>The user name associated with the device.</p>
    #
    #   @return [String]
    #
    DescribeDeviceOutput = ::Struct.new(
      :status,
      :model,
      :manufacturer,
      :operating_system,
      :operating_system_version,
      :patch_level,
      :first_accessed_time,
      :last_accessed_time,
      :username,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute fleet_arn
    #   <p>The ARN of the fleet.</p>
    #
    #   @return [String]
    #
    DescribeDevicePolicyConfigurationInput = ::Struct.new(
      :fleet_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute device_ca_certificate
    #   <p>The certificate chain, including intermediate certificates and the root certificate authority certificate used to issue device certificates.</p>
    #
    #   @return [String]
    #
    DescribeDevicePolicyConfigurationOutput = ::Struct.new(
      :device_ca_certificate,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute fleet_arn
    #   <p>The ARN of the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute domain_name
    #   <p>The name of the domain.</p>
    #
    #   @return [String]
    #
    DescribeDomainInput = ::Struct.new(
      :fleet_arn,
      :domain_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_name
    #   <p>The name of the domain.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The name to display.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>The time that the domain was added.</p>
    #
    #   @return [Time]
    #
    # @!attribute domain_status
    #   <p>The current state for the domain.</p>
    #
    #   Enum, one of: ["PENDING_VALIDATION", "ASSOCIATING", "ACTIVE", "INACTIVE", "DISASSOCIATING", "DISASSOCIATED", "FAILED_TO_ASSOCIATE", "FAILED_TO_DISASSOCIATE"]
    #
    #   @return [String]
    #
    # @!attribute acm_certificate_arn
    #   <p>The ARN of an issued ACM certificate that is valid for the domain being associated.</p>
    #
    #   @return [String]
    #
    DescribeDomainOutput = ::Struct.new(
      :domain_name,
      :display_name,
      :created_time,
      :domain_status,
      :acm_certificate_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute fleet_arn
    #   <p>The Amazon Resource Name (ARN) of the fleet.</p>
    #
    #   @return [String]
    #
    DescribeFleetMetadataInput = ::Struct.new(
      :fleet_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute created_time
    #   <p>The time that the fleet was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_time
    #   <p>The time that the fleet was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute fleet_name
    #   <p>The name of the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The name to display.</p>
    #
    #   @return [String]
    #
    # @!attribute optimize_for_end_user_location
    #   <p>The option to optimize for better performance by routing traffic through the closest
    #               AWS Region to users, which may be outside of your home Region.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute company_code
    #   <p>The identifier used by users to sign in to the Amazon WorkLink app.</p>
    #
    #   @return [String]
    #
    # @!attribute fleet_status
    #   <p>The current state of the fleet.</p>
    #
    #   Enum, one of: ["CREATING", "ACTIVE", "DELETING", "DELETED", "FAILED_TO_CREATE", "FAILED_TO_DELETE"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags attached to the resource. A tag is a key-value pair.</p>
    #
    #   @return [Hash<String, String>]
    #
    DescribeFleetMetadataOutput = ::Struct.new(
      :created_time,
      :last_updated_time,
      :fleet_name,
      :display_name,
      :optimize_for_end_user_location,
      :company_code,
      :fleet_status,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute fleet_arn
    #   <p>The ARN of the fleet.</p>
    #
    #   @return [String]
    #
    DescribeIdentityProviderConfigurationInput = ::Struct.new(
      :fleet_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute identity_provider_type
    #   <p>The type of identity provider.</p>
    #
    #   Enum, one of: ["SAML"]
    #
    #   @return [String]
    #
    # @!attribute service_provider_saml_metadata
    #   <p>The SAML metadata document uploaded to the user’s identity provider.</p>
    #
    #   @return [String]
    #
    # @!attribute identity_provider_saml_metadata
    #   <p>The SAML metadata document provided by the user’s identity provider.</p>
    #
    #   @return [String]
    #
    DescribeIdentityProviderConfigurationOutput = ::Struct.new(
      :identity_provider_type,
      :service_provider_saml_metadata,
      :identity_provider_saml_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute fleet_arn
    #   <p>The ARN of the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute website_ca_id
    #   <p>A unique identifier for the certificate authority.</p>
    #
    #   @return [String]
    #
    DescribeWebsiteCertificateAuthorityInput = ::Struct.new(
      :fleet_arn,
      :website_ca_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute certificate
    #   <p>The root certificate of the certificate authority.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>The time that the certificate authority was added.</p>
    #
    #   @return [Time]
    #
    # @!attribute display_name
    #   <p>The certificate name to display.</p>
    #
    #   @return [String]
    #
    DescribeWebsiteCertificateAuthorityOutput = ::Struct.new(
      :certificate,
      :created_time,
      :display_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DeviceStatus
    #
    module DeviceStatus
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      SIGNED_OUT = "SIGNED_OUT"
    end

    # <p>The summary of devices.</p>
    #
    # @!attribute device_id
    #   <p>The ID of the device.</p>
    #
    #   @return [String]
    #
    # @!attribute device_status
    #   <p>The status of the device.</p>
    #
    #   Enum, one of: ["ACTIVE", "SIGNED_OUT"]
    #
    #   @return [String]
    #
    DeviceSummary = ::Struct.new(
      :device_id,
      :device_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute fleet_arn
    #   <p>The ARN of the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute domain_name
    #   <p>The name of the domain.</p>
    #
    #   @return [String]
    #
    DisassociateDomainInput = ::Struct.new(
      :fleet_arn,
      :domain_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateDomainOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute fleet_arn
    #   <p>The ARN of the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute authorization_provider_id
    #   <p>A unique identifier for the authorization provider.</p>
    #
    #   @return [String]
    #
    DisassociateWebsiteAuthorizationProviderInput = ::Struct.new(
      :fleet_arn,
      :authorization_provider_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateWebsiteAuthorizationProviderOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute fleet_arn
    #   <p>The ARN of the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute website_ca_id
    #   <p>A unique identifier for the CA.</p>
    #
    #   @return [String]
    #
    DisassociateWebsiteCertificateAuthorityInput = ::Struct.new(
      :fleet_arn,
      :website_ca_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateWebsiteCertificateAuthorityOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DomainStatus
    #
    module DomainStatus
      # No documentation available.
      #
      PENDING_VALIDATION = "PENDING_VALIDATION"

      # No documentation available.
      #
      ASSOCIATING = "ASSOCIATING"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      INACTIVE = "INACTIVE"

      # No documentation available.
      #
      DISASSOCIATING = "DISASSOCIATING"

      # No documentation available.
      #
      DISASSOCIATED = "DISASSOCIATED"

      # No documentation available.
      #
      FAILED_TO_ASSOCIATE = "FAILED_TO_ASSOCIATE"

      # No documentation available.
      #
      FAILED_TO_DISASSOCIATE = "FAILED_TO_DISASSOCIATE"
    end

    # <p>The summary of the domain.</p>
    #
    # @!attribute domain_name
    #   <p>The name of the domain.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The name to display.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>The time that the domain was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute domain_status
    #   <p>The status of the domain.</p>
    #
    #   Enum, one of: ["PENDING_VALIDATION", "ASSOCIATING", "ACTIVE", "INACTIVE", "DISASSOCIATING", "DISASSOCIATED", "FAILED_TO_ASSOCIATE", "FAILED_TO_DISASSOCIATE"]
    #
    #   @return [String]
    #
    DomainSummary = ::Struct.new(
      :domain_name,
      :display_name,
      :created_time,
      :domain_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FleetStatus
    #
    module FleetStatus
      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      DELETED = "DELETED"

      # No documentation available.
      #
      FAILED_TO_CREATE = "FAILED_TO_CREATE"

      # No documentation available.
      #
      FAILED_TO_DELETE = "FAILED_TO_DELETE"
    end

    # <p>The summary of the fleet.</p>
    #
    # @!attribute fleet_arn
    #   <p>The Amazon Resource Name (ARN) of the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>The time when the fleet was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_time
    #   <p>The time when the fleet was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute fleet_name
    #   <p>The name of the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The name of the fleet to display.</p>
    #
    #   @return [String]
    #
    # @!attribute company_code
    #   <p>The identifier used by users to sign into the Amazon WorkLink app.</p>
    #
    #   @return [String]
    #
    # @!attribute fleet_status
    #   <p>The status of the fleet.</p>
    #
    #   Enum, one of: ["CREATING", "ACTIVE", "DELETING", "DELETED", "FAILED_TO_CREATE", "FAILED_TO_DELETE"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags attached to the resource. A tag is a key-value pair.</p>
    #
    #   @return [Hash<String, String>]
    #
    FleetSummary = ::Struct.new(
      :fleet_arn,
      :created_time,
      :last_updated_time,
      :fleet_name,
      :display_name,
      :company_code,
      :fleet_status,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for IdentityProviderType
    #
    module IdentityProviderType
      # No documentation available.
      #
      SAML = "SAML"
    end

    # <p>The service is temporarily unavailable.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalServerErrorException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request is not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidRequestException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute fleet_arn
    #   <p>The ARN of the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this operation. If
    #               this value is null, it retrieves the first page.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to be included in the next page.</p>
    #
    #   @return [Integer]
    #
    ListDevicesInput = ::Struct.new(
      :fleet_arn,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute devices
    #   <p>Information about the devices.</p>
    #
    #   @return [Array<DeviceSummary>]
    #
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this operation. If
    #               there are no more pages, this value is null.</p>
    #
    #   @return [String]
    #
    ListDevicesOutput = ::Struct.new(
      :devices,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute fleet_arn
    #   <p>The ARN of the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this operation. If
    #               this value is null, it retrieves the first page.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to be included in the next page.</p>
    #
    #   @return [Integer]
    #
    ListDomainsInput = ::Struct.new(
      :fleet_arn,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domains
    #   <p>Information about the domains.</p>
    #
    #   @return [Array<DomainSummary>]
    #
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this operation. If
    #               there are no more pages, this value is null.</p>
    #
    #   @return [String]
    #
    ListDomainsOutput = ::Struct.new(
      :domains,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this operation. If
    #               this value is null, it retrieves the first page.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to be included in the next page.</p>
    #
    #   @return [Integer]
    #
    ListFleetsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute fleet_summary_list
    #   <p>The summary list of the fleets.</p>
    #
    #   @return [Array<FleetSummary>]
    #
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this operation. If
    #               there are no more pages, this value is null.</p>
    #
    #   @return [String]
    #
    ListFleetsOutput = ::Struct.new(
      :fleet_summary_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the fleet.</p>
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
    #   <p>The tags attached to the resource. A tag is a key-value pair.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute fleet_arn
    #   <p>The ARN of the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to be included in the next page.</p>
    #
    #   @return [Integer]
    #
    ListWebsiteAuthorizationProvidersInput = ::Struct.new(
      :fleet_arn,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute website_authorization_providers
    #   <p>The website authorization providers.</p>
    #
    #   @return [Array<WebsiteAuthorizationProviderSummary>]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #
    #   @return [String]
    #
    ListWebsiteAuthorizationProvidersOutput = ::Struct.new(
      :website_authorization_providers,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute fleet_arn
    #   <p>The ARN of the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to be included in the next page.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this operation. If
    #               this value is null, it retrieves the first page.</p>
    #
    #   @return [String]
    #
    ListWebsiteCertificateAuthoritiesInput = ::Struct.new(
      :fleet_arn,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute website_certificate_authorities
    #   <p>Information about the certificates.</p>
    #
    #   @return [Array<WebsiteCaSummary>]
    #
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this operation. If
    #               there are no more pages, this value is null.</p>
    #
    #   @return [String]
    #
    ListWebsiteCertificateAuthoritiesOutput = ::Struct.new(
      :website_certificate_authorities,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The resource already exists.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceAlreadyExistsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The requested resource was not found.</p>
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

    # @!attribute fleet_arn
    #   <p>The ARN of the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute domain_name
    #   <p>The name of the domain.</p>
    #
    #   @return [String]
    #
    RestoreDomainAccessInput = ::Struct.new(
      :fleet_arn,
      :domain_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    RestoreDomainAccessOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute fleet_arn
    #   <p>The ARN of the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute domain_name
    #   <p>The name of the domain.</p>
    #
    #   @return [String]
    #
    RevokeDomainAccessInput = ::Struct.new(
      :fleet_arn,
      :domain_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    RevokeDomainAccessOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute fleet_arn
    #   <p>The ARN of the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute username
    #   <p>The name of the user.</p>
    #
    #   @return [String]
    #
    SignOutUserInput = ::Struct.new(
      :fleet_arn,
      :username,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    SignOutUserOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to add to the resource. A tag is a key-value pair.</p>
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

    # <p>The number of requests exceeds the limit.</p>
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

    # <p>You are not authorized to perform this action.</p>
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

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The list of tag keys to remove from the resource.</p>
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

    # @!attribute fleet_arn
    #   <p>The ARN of the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute audit_stream_arn
    #   <p>The ARN of the Amazon Kinesis data stream that receives the audit events.</p>
    #
    #   @return [String]
    #
    UpdateAuditStreamConfigurationInput = ::Struct.new(
      :fleet_arn,
      :audit_stream_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateAuditStreamConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute fleet_arn
    #   <p>The ARN of the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>The VPC with connectivity to associated websites.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_ids
    #   <p>The subnets used for X-ENI connections from Amazon WorkLink rendering containers.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute security_group_ids
    #   <p>The security groups associated with access to the provided subnets.</p>
    #
    #   @return [Array<String>]
    #
    UpdateCompanyNetworkConfigurationInput = ::Struct.new(
      :fleet_arn,
      :vpc_id,
      :subnet_ids,
      :security_group_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateCompanyNetworkConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute fleet_arn
    #   <p>The ARN of the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute device_ca_certificate
    #   <p>The certificate chain, including intermediate certificates and the root certificate authority certificate used to issue device certificates.</p>
    #
    #   @return [String]
    #
    UpdateDevicePolicyConfigurationInput = ::Struct.new(
      :fleet_arn,
      :device_ca_certificate,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateDevicePolicyConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute fleet_arn
    #   <p>The ARN of the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute domain_name
    #   <p>The name of the domain.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The name to display.</p>
    #
    #   @return [String]
    #
    UpdateDomainMetadataInput = ::Struct.new(
      :fleet_arn,
      :domain_name,
      :display_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateDomainMetadataOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute fleet_arn
    #   <p>The ARN of the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The fleet name to display. The existing DisplayName is unset if null is passed.</p>
    #
    #   @return [String]
    #
    # @!attribute optimize_for_end_user_location
    #   <p>The option to optimize for better performance by routing traffic through the closest
    #               AWS Region to users, which may be outside of your home Region.</p>
    #
    #   @return [Boolean]
    #
    UpdateFleetMetadataInput = ::Struct.new(
      :fleet_arn,
      :display_name,
      :optimize_for_end_user_location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateFleetMetadataOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute fleet_arn
    #   <p>The ARN of the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute identity_provider_type
    #   <p>The type of identity provider.</p>
    #
    #   Enum, one of: ["SAML"]
    #
    #   @return [String]
    #
    # @!attribute identity_provider_saml_metadata
    #   <p>The SAML metadata document provided by the customer’s identity provider. The existing
    #               IdentityProviderSamlMetadata is unset if null is passed.</p>
    #
    #   @return [String]
    #
    UpdateIdentityProviderConfigurationInput = ::Struct.new(
      :fleet_arn,
      :identity_provider_type,
      :identity_provider_saml_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateIdentityProviderConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The summary of the website authorization provider.</p>
    #
    # @!attribute authorization_provider_id
    #   <p>A unique identifier for the authorization provider.</p>
    #
    #   @return [String]
    #
    # @!attribute authorization_provider_type
    #   <p>The authorization provider type.</p>
    #
    #   Enum, one of: ["SAML"]
    #
    #   @return [String]
    #
    # @!attribute domain_name
    #   <p>The domain name of the authorization provider. This applies only to SAML-based
    #               authorization providers.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>The time of creation.</p>
    #
    #   @return [Time]
    #
    WebsiteAuthorizationProviderSummary = ::Struct.new(
      :authorization_provider_id,
      :authorization_provider_type,
      :domain_name,
      :created_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The summary of the certificate authority (CA).</p>
    #
    # @!attribute website_ca_id
    #   <p>A unique identifier for the CA.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>The time when the CA was added.</p>
    #
    #   @return [Time]
    #
    # @!attribute display_name
    #   <p>The name to display.</p>
    #
    #   @return [String]
    #
    WebsiteCaSummary = ::Struct.new(
      :website_ca_id,
      :created_time,
      :display_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
