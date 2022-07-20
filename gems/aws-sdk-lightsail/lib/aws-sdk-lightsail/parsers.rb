# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Lightsail
  module Parsers

    # Operation Parser for AllocateStaticIp
    class AllocateStaticIp
      def self.parse(http_resp)
        data = Types::AllocateStaticIpOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    class OperationList
      def self.parse(list)
        list.map do |value|
          Operation.parse(value) unless value.nil?
        end
      end
    end

    class Operation
      def self.parse(map)
        data = Types::Operation.new
        data.id = map['id']
        data.resource_name = map['resourceName']
        data.resource_type = map['resourceType']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.location = (ResourceLocation.parse(map['location']) unless map['location'].nil?)
        data.is_terminal = map['isTerminal']
        data.operation_details = map['operationDetails']
        data.operation_type = map['operationType']
        data.status = map['status']
        data.status_changed_at = Time.at(map['statusChangedAt'].to_i) if map['statusChangedAt']
        data.error_code = map['errorCode']
        data.error_details = map['errorDetails']
        return data
      end
    end

    class ResourceLocation
      def self.parse(map)
        data = Types::ResourceLocation.new
        data.availability_zone = map['availabilityZone']
        data.region_name = map['regionName']
        return data
      end
    end

    # Error Parser for OperationFailureException
    class OperationFailureException
      def self.parse(http_resp)
        data = Types::OperationFailureException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.code = map['code']
        data.docs = map['docs']
        data.message = map['message']
        data.tip = map['tip']
        data
      end
    end

    # Error Parser for ServiceException
    class ServiceException
      def self.parse(http_resp)
        data = Types::ServiceException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.code = map['code']
        data.docs = map['docs']
        data.message = map['message']
        data.tip = map['tip']
        data
      end
    end

    # Error Parser for UnauthenticatedException
    class UnauthenticatedException
      def self.parse(http_resp)
        data = Types::UnauthenticatedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.code = map['code']
        data.docs = map['docs']
        data.message = map['message']
        data.tip = map['tip']
        data
      end
    end

    # Error Parser for InvalidInputException
    class InvalidInputException
      def self.parse(http_resp)
        data = Types::InvalidInputException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.code = map['code']
        data.docs = map['docs']
        data.message = map['message']
        data.tip = map['tip']
        data
      end
    end

    # Error Parser for AccountSetupInProgressException
    class AccountSetupInProgressException
      def self.parse(http_resp)
        data = Types::AccountSetupInProgressException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.code = map['code']
        data.docs = map['docs']
        data.message = map['message']
        data.tip = map['tip']
        data
      end
    end

    # Error Parser for NotFoundException
    class NotFoundException
      def self.parse(http_resp)
        data = Types::NotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.code = map['code']
        data.docs = map['docs']
        data.message = map['message']
        data.tip = map['tip']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.code = map['code']
        data.docs = map['docs']
        data.message = map['message']
        data.tip = map['tip']
        data
      end
    end

    # Operation Parser for AttachCertificateToDistribution
    class AttachCertificateToDistribution
      def self.parse(http_resp)
        data = Types::AttachCertificateToDistributionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operation = (Operation.parse(map['operation']) unless map['operation'].nil?)
        data
      end
    end

    # Operation Parser for AttachDisk
    class AttachDisk
      def self.parse(http_resp)
        data = Types::AttachDiskOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    # Operation Parser for AttachInstancesToLoadBalancer
    class AttachInstancesToLoadBalancer
      def self.parse(http_resp)
        data = Types::AttachInstancesToLoadBalancerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    # Operation Parser for AttachLoadBalancerTlsCertificate
    class AttachLoadBalancerTlsCertificate
      def self.parse(http_resp)
        data = Types::AttachLoadBalancerTlsCertificateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    # Operation Parser for AttachStaticIp
    class AttachStaticIp
      def self.parse(http_resp)
        data = Types::AttachStaticIpOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    # Operation Parser for CloseInstancePublicPorts
    class CloseInstancePublicPorts
      def self.parse(http_resp)
        data = Types::CloseInstancePublicPortsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operation = (Operation.parse(map['operation']) unless map['operation'].nil?)
        data
      end
    end

    # Operation Parser for CopySnapshot
    class CopySnapshot
      def self.parse(http_resp)
        data = Types::CopySnapshotOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    # Operation Parser for CreateBucket
    class CreateBucket
      def self.parse(http_resp)
        data = Types::CreateBucketOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.bucket = (Bucket.parse(map['bucket']) unless map['bucket'].nil?)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    class Bucket
      def self.parse(map)
        data = Types::Bucket.new
        data.resource_type = map['resourceType']
        data.access_rules = (AccessRules.parse(map['accessRules']) unless map['accessRules'].nil?)
        data.arn = map['arn']
        data.bundle_id = map['bundleId']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.url = map['url']
        data.location = (ResourceLocation.parse(map['location']) unless map['location'].nil?)
        data.name = map['name']
        data.support_code = map['supportCode']
        data.tags = (TagList.parse(map['tags']) unless map['tags'].nil?)
        data.object_versioning = map['objectVersioning']
        data.able_to_update_bundle = map['ableToUpdateBundle']
        data.readonly_access_accounts = (PartnerIdList.parse(map['readonlyAccessAccounts']) unless map['readonlyAccessAccounts'].nil?)
        data.resources_receiving_access = (AccessReceiverList.parse(map['resourcesReceivingAccess']) unless map['resourcesReceivingAccess'].nil?)
        data.state = (BucketState.parse(map['state']) unless map['state'].nil?)
        data.access_log_config = (BucketAccessLogConfig.parse(map['accessLogConfig']) unless map['accessLogConfig'].nil?)
        return data
      end
    end

    class BucketAccessLogConfig
      def self.parse(map)
        data = Types::BucketAccessLogConfig.new
        data.enabled = map['enabled']
        data.destination = map['destination']
        data.prefix = map['prefix']
        return data
      end
    end

    class BucketState
      def self.parse(map)
        data = Types::BucketState.new
        data.code = map['code']
        data.message = map['message']
        return data
      end
    end

    class AccessReceiverList
      def self.parse(list)
        list.map do |value|
          ResourceReceivingAccess.parse(value) unless value.nil?
        end
      end
    end

    class ResourceReceivingAccess
      def self.parse(map)
        data = Types::ResourceReceivingAccess.new
        data.name = map['name']
        data.resource_type = map['resourceType']
        return data
      end
    end

    class PartnerIdList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class TagList
      def self.parse(list)
        list.map do |value|
          Tag.parse(value) unless value.nil?
        end
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['key']
        data.value = map['value']
        return data
      end
    end

    class AccessRules
      def self.parse(map)
        data = Types::AccessRules.new
        data.get_object = map['getObject']
        data.allow_public_overrides = map['allowPublicOverrides']
        return data
      end
    end

    # Operation Parser for CreateBucketAccessKey
    class CreateBucketAccessKey
      def self.parse(http_resp)
        data = Types::CreateBucketAccessKeyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.access_key = (AccessKey.parse(map['accessKey']) unless map['accessKey'].nil?)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    class AccessKey
      def self.parse(map)
        data = Types::AccessKey.new
        data.access_key_id = map['accessKeyId']
        data.secret_access_key = map['secretAccessKey']
        data.status = map['status']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.last_used = (AccessKeyLastUsed.parse(map['lastUsed']) unless map['lastUsed'].nil?)
        return data
      end
    end

    class AccessKeyLastUsed
      def self.parse(map)
        data = Types::AccessKeyLastUsed.new
        data.last_used_date = Time.at(map['lastUsedDate'].to_i) if map['lastUsedDate']
        data.region = map['region']
        data.service_name = map['serviceName']
        return data
      end
    end

    # Operation Parser for CreateCertificate
    class CreateCertificate
      def self.parse(http_resp)
        data = Types::CreateCertificateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.certificate = (CertificateSummary.parse(map['certificate']) unless map['certificate'].nil?)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    class CertificateSummary
      def self.parse(map)
        data = Types::CertificateSummary.new
        data.certificate_arn = map['certificateArn']
        data.certificate_name = map['certificateName']
        data.domain_name = map['domainName']
        data.certificate_detail = (Certificate.parse(map['certificateDetail']) unless map['certificateDetail'].nil?)
        data.tags = (TagList.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    class Certificate
      def self.parse(map)
        data = Types::Certificate.new
        data.arn = map['arn']
        data.name = map['name']
        data.domain_name = map['domainName']
        data.status = map['status']
        data.serial_number = map['serialNumber']
        data.subject_alternative_names = (SubjectAlternativeNameList.parse(map['subjectAlternativeNames']) unless map['subjectAlternativeNames'].nil?)
        data.domain_validation_records = (DomainValidationRecordList.parse(map['domainValidationRecords']) unless map['domainValidationRecords'].nil?)
        data.request_failure_reason = map['requestFailureReason']
        data.in_use_resource_count = map['inUseResourceCount']
        data.key_algorithm = map['keyAlgorithm']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.issued_at = Time.at(map['issuedAt'].to_i) if map['issuedAt']
        data.issuer_ca = map['issuerCA']
        data.not_before = Time.at(map['notBefore'].to_i) if map['notBefore']
        data.not_after = Time.at(map['notAfter'].to_i) if map['notAfter']
        data.eligible_to_renew = map['eligibleToRenew']
        data.renewal_summary = (RenewalSummary.parse(map['renewalSummary']) unless map['renewalSummary'].nil?)
        data.revoked_at = Time.at(map['revokedAt'].to_i) if map['revokedAt']
        data.revocation_reason = map['revocationReason']
        data.tags = (TagList.parse(map['tags']) unless map['tags'].nil?)
        data.support_code = map['supportCode']
        return data
      end
    end

    class RenewalSummary
      def self.parse(map)
        data = Types::RenewalSummary.new
        data.domain_validation_records = (DomainValidationRecordList.parse(map['domainValidationRecords']) unless map['domainValidationRecords'].nil?)
        data.renewal_status = map['renewalStatus']
        data.renewal_status_reason = map['renewalStatusReason']
        data.updated_at = Time.at(map['updatedAt'].to_i) if map['updatedAt']
        return data
      end
    end

    class DomainValidationRecordList
      def self.parse(list)
        list.map do |value|
          DomainValidationRecord.parse(value) unless value.nil?
        end
      end
    end

    class DomainValidationRecord
      def self.parse(map)
        data = Types::DomainValidationRecord.new
        data.domain_name = map['domainName']
        data.resource_record = (ResourceRecord.parse(map['resourceRecord']) unless map['resourceRecord'].nil?)
        return data
      end
    end

    class ResourceRecord
      def self.parse(map)
        data = Types::ResourceRecord.new
        data.name = map['name']
        data.type = map['type']
        data.value = map['value']
        return data
      end
    end

    class SubjectAlternativeNameList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for CreateCloudFormationStack
    class CreateCloudFormationStack
      def self.parse(http_resp)
        data = Types::CreateCloudFormationStackOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    # Operation Parser for CreateContactMethod
    class CreateContactMethod
      def self.parse(http_resp)
        data = Types::CreateContactMethodOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    # Operation Parser for CreateContainerService
    class CreateContainerService
      def self.parse(http_resp)
        data = Types::CreateContainerServiceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.container_service = (ContainerService.parse(map['containerService']) unless map['containerService'].nil?)
        data
      end
    end

    class ContainerService
      def self.parse(map)
        data = Types::ContainerService.new
        data.container_service_name = map['containerServiceName']
        data.arn = map['arn']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.location = (ResourceLocation.parse(map['location']) unless map['location'].nil?)
        data.resource_type = map['resourceType']
        data.tags = (TagList.parse(map['tags']) unless map['tags'].nil?)
        data.power = map['power']
        data.power_id = map['powerId']
        data.state = map['state']
        data.state_detail = (ContainerServiceStateDetail.parse(map['stateDetail']) unless map['stateDetail'].nil?)
        data.scale = map['scale']
        data.current_deployment = (ContainerServiceDeployment.parse(map['currentDeployment']) unless map['currentDeployment'].nil?)
        data.next_deployment = (ContainerServiceDeployment.parse(map['nextDeployment']) unless map['nextDeployment'].nil?)
        data.is_disabled = map['isDisabled']
        data.principal_arn = map['principalArn']
        data.private_domain_name = map['privateDomainName']
        data.public_domain_names = (ContainerServicePublicDomains.parse(map['publicDomainNames']) unless map['publicDomainNames'].nil?)
        data.url = map['url']
        data.private_registry_access = (PrivateRegistryAccess.parse(map['privateRegistryAccess']) unless map['privateRegistryAccess'].nil?)
        return data
      end
    end

    class PrivateRegistryAccess
      def self.parse(map)
        data = Types::PrivateRegistryAccess.new
        data.ecr_image_puller_role = (ContainerServiceECRImagePullerRole.parse(map['ecrImagePullerRole']) unless map['ecrImagePullerRole'].nil?)
        return data
      end
    end

    class ContainerServiceECRImagePullerRole
      def self.parse(map)
        data = Types::ContainerServiceECRImagePullerRole.new
        data.is_active = map['isActive']
        data.principal_arn = map['principalArn']
        return data
      end
    end

    class ContainerServicePublicDomains
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = ContainerServicePublicDomainsList.parse(value) unless value.nil?
        end
        data
      end
    end

    class ContainerServicePublicDomainsList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ContainerServiceDeployment
      def self.parse(map)
        data = Types::ContainerServiceDeployment.new
        data.version = map['version']
        data.state = map['state']
        data.containers = (ContainerMap.parse(map['containers']) unless map['containers'].nil?)
        data.public_endpoint = (ContainerServiceEndpoint.parse(map['publicEndpoint']) unless map['publicEndpoint'].nil?)
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        return data
      end
    end

    class ContainerServiceEndpoint
      def self.parse(map)
        data = Types::ContainerServiceEndpoint.new
        data.container_name = map['containerName']
        data.container_port = map['containerPort']
        data.health_check = (ContainerServiceHealthCheckConfig.parse(map['healthCheck']) unless map['healthCheck'].nil?)
        return data
      end
    end

    class ContainerServiceHealthCheckConfig
      def self.parse(map)
        data = Types::ContainerServiceHealthCheckConfig.new
        data.healthy_threshold = map['healthyThreshold']
        data.unhealthy_threshold = map['unhealthyThreshold']
        data.timeout_seconds = map['timeoutSeconds']
        data.interval_seconds = map['intervalSeconds']
        data.path = map['path']
        data.success_codes = map['successCodes']
        return data
      end
    end

    class ContainerMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Container.parse(value) unless value.nil?
        end
        data
      end
    end

    class Container
      def self.parse(map)
        data = Types::Container.new
        data.image = map['image']
        data.command = (StringList.parse(map['command']) unless map['command'].nil?)
        data.environment = (Environment.parse(map['environment']) unless map['environment'].nil?)
        data.ports = (PortMap.parse(map['ports']) unless map['ports'].nil?)
        return data
      end
    end

    class PortMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class Environment
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class StringList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ContainerServiceStateDetail
      def self.parse(map)
        data = Types::ContainerServiceStateDetail.new
        data.code = map['code']
        data.message = map['message']
        return data
      end
    end

    # Operation Parser for CreateContainerServiceDeployment
    class CreateContainerServiceDeployment
      def self.parse(http_resp)
        data = Types::CreateContainerServiceDeploymentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.container_service = (ContainerService.parse(map['containerService']) unless map['containerService'].nil?)
        data
      end
    end

    # Operation Parser for CreateContainerServiceRegistryLogin
    class CreateContainerServiceRegistryLogin
      def self.parse(http_resp)
        data = Types::CreateContainerServiceRegistryLoginOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.registry_login = (ContainerServiceRegistryLogin.parse(map['registryLogin']) unless map['registryLogin'].nil?)
        data
      end
    end

    class ContainerServiceRegistryLogin
      def self.parse(map)
        data = Types::ContainerServiceRegistryLogin.new
        data.username = map['username']
        data.password = map['password']
        data.expires_at = Time.at(map['expiresAt'].to_i) if map['expiresAt']
        data.registry = map['registry']
        return data
      end
    end

    # Operation Parser for CreateDisk
    class CreateDisk
      def self.parse(http_resp)
        data = Types::CreateDiskOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    # Operation Parser for CreateDiskFromSnapshot
    class CreateDiskFromSnapshot
      def self.parse(http_resp)
        data = Types::CreateDiskFromSnapshotOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    # Operation Parser for CreateDiskSnapshot
    class CreateDiskSnapshot
      def self.parse(http_resp)
        data = Types::CreateDiskSnapshotOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    # Operation Parser for CreateDistribution
    class CreateDistribution
      def self.parse(http_resp)
        data = Types::CreateDistributionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.distribution = (LightsailDistribution.parse(map['distribution']) unless map['distribution'].nil?)
        data.operation = (Operation.parse(map['operation']) unless map['operation'].nil?)
        data
      end
    end

    class LightsailDistribution
      def self.parse(map)
        data = Types::LightsailDistribution.new
        data.name = map['name']
        data.arn = map['arn']
        data.support_code = map['supportCode']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.location = (ResourceLocation.parse(map['location']) unless map['location'].nil?)
        data.resource_type = map['resourceType']
        data.alternative_domain_names = (StringList.parse(map['alternativeDomainNames']) unless map['alternativeDomainNames'].nil?)
        data.status = map['status']
        data.is_enabled = map['isEnabled']
        data.domain_name = map['domainName']
        data.bundle_id = map['bundleId']
        data.certificate_name = map['certificateName']
        data.origin = (Origin.parse(map['origin']) unless map['origin'].nil?)
        data.origin_public_dns = map['originPublicDNS']
        data.default_cache_behavior = (CacheBehavior.parse(map['defaultCacheBehavior']) unless map['defaultCacheBehavior'].nil?)
        data.cache_behavior_settings = (CacheSettings.parse(map['cacheBehaviorSettings']) unless map['cacheBehaviorSettings'].nil?)
        data.cache_behaviors = (CacheBehaviorList.parse(map['cacheBehaviors']) unless map['cacheBehaviors'].nil?)
        data.able_to_update_bundle = map['ableToUpdateBundle']
        data.ip_address_type = map['ipAddressType']
        data.tags = (TagList.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    class CacheBehaviorList
      def self.parse(list)
        list.map do |value|
          CacheBehaviorPerPath.parse(value) unless value.nil?
        end
      end
    end

    class CacheBehaviorPerPath
      def self.parse(map)
        data = Types::CacheBehaviorPerPath.new
        data.path = map['path']
        data.behavior = map['behavior']
        return data
      end
    end

    class CacheSettings
      def self.parse(map)
        data = Types::CacheSettings.new
        data.default_ttl = map['defaultTTL']
        data.minimum_ttl = map['minimumTTL']
        data.maximum_ttl = map['maximumTTL']
        data.allowed_http_methods = map['allowedHTTPMethods']
        data.cached_http_methods = map['cachedHTTPMethods']
        data.forwarded_cookies = (CookieObject.parse(map['forwardedCookies']) unless map['forwardedCookies'].nil?)
        data.forwarded_headers = (HeaderObject.parse(map['forwardedHeaders']) unless map['forwardedHeaders'].nil?)
        data.forwarded_query_strings = (QueryStringObject.parse(map['forwardedQueryStrings']) unless map['forwardedQueryStrings'].nil?)
        return data
      end
    end

    class QueryStringObject
      def self.parse(map)
        data = Types::QueryStringObject.new
        data.option = map['option']
        data.query_strings_allow_list = (StringList.parse(map['queryStringsAllowList']) unless map['queryStringsAllowList'].nil?)
        return data
      end
    end

    class HeaderObject
      def self.parse(map)
        data = Types::HeaderObject.new
        data.option = map['option']
        data.headers_allow_list = (HeaderForwardList.parse(map['headersAllowList']) unless map['headersAllowList'].nil?)
        return data
      end
    end

    class HeaderForwardList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class CookieObject
      def self.parse(map)
        data = Types::CookieObject.new
        data.option = map['option']
        data.cookies_allow_list = (StringList.parse(map['cookiesAllowList']) unless map['cookiesAllowList'].nil?)
        return data
      end
    end

    class CacheBehavior
      def self.parse(map)
        data = Types::CacheBehavior.new
        data.behavior = map['behavior']
        return data
      end
    end

    class Origin
      def self.parse(map)
        data = Types::Origin.new
        data.name = map['name']
        data.resource_type = map['resourceType']
        data.region_name = map['regionName']
        data.protocol_policy = map['protocolPolicy']
        return data
      end
    end

    # Operation Parser for CreateDomain
    class CreateDomain
      def self.parse(http_resp)
        data = Types::CreateDomainOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operation = (Operation.parse(map['operation']) unless map['operation'].nil?)
        data
      end
    end

    # Operation Parser for CreateDomainEntry
    class CreateDomainEntry
      def self.parse(http_resp)
        data = Types::CreateDomainEntryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operation = (Operation.parse(map['operation']) unless map['operation'].nil?)
        data
      end
    end

    # Operation Parser for CreateInstanceSnapshot
    class CreateInstanceSnapshot
      def self.parse(http_resp)
        data = Types::CreateInstanceSnapshotOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    # Operation Parser for CreateInstances
    class CreateInstances
      def self.parse(http_resp)
        data = Types::CreateInstancesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    # Operation Parser for CreateInstancesFromSnapshot
    class CreateInstancesFromSnapshot
      def self.parse(http_resp)
        data = Types::CreateInstancesFromSnapshotOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    # Operation Parser for CreateKeyPair
    class CreateKeyPair
      def self.parse(http_resp)
        data = Types::CreateKeyPairOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.key_pair = (KeyPair.parse(map['keyPair']) unless map['keyPair'].nil?)
        data.public_key_base64 = map['publicKeyBase64']
        data.private_key_base64 = map['privateKeyBase64']
        data.operation = (Operation.parse(map['operation']) unless map['operation'].nil?)
        data
      end
    end

    class KeyPair
      def self.parse(map)
        data = Types::KeyPair.new
        data.name = map['name']
        data.arn = map['arn']
        data.support_code = map['supportCode']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.location = (ResourceLocation.parse(map['location']) unless map['location'].nil?)
        data.resource_type = map['resourceType']
        data.tags = (TagList.parse(map['tags']) unless map['tags'].nil?)
        data.fingerprint = map['fingerprint']
        return data
      end
    end

    # Operation Parser for CreateLoadBalancer
    class CreateLoadBalancer
      def self.parse(http_resp)
        data = Types::CreateLoadBalancerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    # Operation Parser for CreateLoadBalancerTlsCertificate
    class CreateLoadBalancerTlsCertificate
      def self.parse(http_resp)
        data = Types::CreateLoadBalancerTlsCertificateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    # Operation Parser for CreateRelationalDatabase
    class CreateRelationalDatabase
      def self.parse(http_resp)
        data = Types::CreateRelationalDatabaseOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    # Operation Parser for CreateRelationalDatabaseFromSnapshot
    class CreateRelationalDatabaseFromSnapshot
      def self.parse(http_resp)
        data = Types::CreateRelationalDatabaseFromSnapshotOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    # Operation Parser for CreateRelationalDatabaseSnapshot
    class CreateRelationalDatabaseSnapshot
      def self.parse(http_resp)
        data = Types::CreateRelationalDatabaseSnapshotOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    # Operation Parser for DeleteAlarm
    class DeleteAlarm
      def self.parse(http_resp)
        data = Types::DeleteAlarmOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    # Operation Parser for DeleteAutoSnapshot
    class DeleteAutoSnapshot
      def self.parse(http_resp)
        data = Types::DeleteAutoSnapshotOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    # Operation Parser for DeleteBucket
    class DeleteBucket
      def self.parse(http_resp)
        data = Types::DeleteBucketOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    # Operation Parser for DeleteBucketAccessKey
    class DeleteBucketAccessKey
      def self.parse(http_resp)
        data = Types::DeleteBucketAccessKeyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    # Operation Parser for DeleteCertificate
    class DeleteCertificate
      def self.parse(http_resp)
        data = Types::DeleteCertificateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    # Operation Parser for DeleteContactMethod
    class DeleteContactMethod
      def self.parse(http_resp)
        data = Types::DeleteContactMethodOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    # Operation Parser for DeleteContainerImage
    class DeleteContainerImage
      def self.parse(http_resp)
        data = Types::DeleteContainerImageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteContainerService
    class DeleteContainerService
      def self.parse(http_resp)
        data = Types::DeleteContainerServiceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteDisk
    class DeleteDisk
      def self.parse(http_resp)
        data = Types::DeleteDiskOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    # Operation Parser for DeleteDiskSnapshot
    class DeleteDiskSnapshot
      def self.parse(http_resp)
        data = Types::DeleteDiskSnapshotOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    # Operation Parser for DeleteDistribution
    class DeleteDistribution
      def self.parse(http_resp)
        data = Types::DeleteDistributionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operation = (Operation.parse(map['operation']) unless map['operation'].nil?)
        data
      end
    end

    # Operation Parser for DeleteDomain
    class DeleteDomain
      def self.parse(http_resp)
        data = Types::DeleteDomainOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operation = (Operation.parse(map['operation']) unless map['operation'].nil?)
        data
      end
    end

    # Operation Parser for DeleteDomainEntry
    class DeleteDomainEntry
      def self.parse(http_resp)
        data = Types::DeleteDomainEntryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operation = (Operation.parse(map['operation']) unless map['operation'].nil?)
        data
      end
    end

    # Operation Parser for DeleteInstance
    class DeleteInstance
      def self.parse(http_resp)
        data = Types::DeleteInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    # Operation Parser for DeleteInstanceSnapshot
    class DeleteInstanceSnapshot
      def self.parse(http_resp)
        data = Types::DeleteInstanceSnapshotOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    # Operation Parser for DeleteKeyPair
    class DeleteKeyPair
      def self.parse(http_resp)
        data = Types::DeleteKeyPairOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operation = (Operation.parse(map['operation']) unless map['operation'].nil?)
        data
      end
    end

    # Operation Parser for DeleteKnownHostKeys
    class DeleteKnownHostKeys
      def self.parse(http_resp)
        data = Types::DeleteKnownHostKeysOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    # Operation Parser for DeleteLoadBalancer
    class DeleteLoadBalancer
      def self.parse(http_resp)
        data = Types::DeleteLoadBalancerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    # Operation Parser for DeleteLoadBalancerTlsCertificate
    class DeleteLoadBalancerTlsCertificate
      def self.parse(http_resp)
        data = Types::DeleteLoadBalancerTlsCertificateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    # Operation Parser for DeleteRelationalDatabase
    class DeleteRelationalDatabase
      def self.parse(http_resp)
        data = Types::DeleteRelationalDatabaseOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    # Operation Parser for DeleteRelationalDatabaseSnapshot
    class DeleteRelationalDatabaseSnapshot
      def self.parse(http_resp)
        data = Types::DeleteRelationalDatabaseSnapshotOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    # Operation Parser for DetachCertificateFromDistribution
    class DetachCertificateFromDistribution
      def self.parse(http_resp)
        data = Types::DetachCertificateFromDistributionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operation = (Operation.parse(map['operation']) unless map['operation'].nil?)
        data
      end
    end

    # Operation Parser for DetachDisk
    class DetachDisk
      def self.parse(http_resp)
        data = Types::DetachDiskOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    # Operation Parser for DetachInstancesFromLoadBalancer
    class DetachInstancesFromLoadBalancer
      def self.parse(http_resp)
        data = Types::DetachInstancesFromLoadBalancerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    # Operation Parser for DetachStaticIp
    class DetachStaticIp
      def self.parse(http_resp)
        data = Types::DetachStaticIpOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    # Operation Parser for DisableAddOn
    class DisableAddOn
      def self.parse(http_resp)
        data = Types::DisableAddOnOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    # Operation Parser for DownloadDefaultKeyPair
    class DownloadDefaultKeyPair
      def self.parse(http_resp)
        data = Types::DownloadDefaultKeyPairOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.public_key_base64 = map['publicKeyBase64']
        data.private_key_base64 = map['privateKeyBase64']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data
      end
    end

    # Operation Parser for EnableAddOn
    class EnableAddOn
      def self.parse(http_resp)
        data = Types::EnableAddOnOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    # Operation Parser for ExportSnapshot
    class ExportSnapshot
      def self.parse(http_resp)
        data = Types::ExportSnapshotOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    # Operation Parser for GetActiveNames
    class GetActiveNames
      def self.parse(http_resp)
        data = Types::GetActiveNamesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.active_names = (StringList.parse(map['activeNames']) unless map['activeNames'].nil?)
        data.next_page_token = map['nextPageToken']
        data
      end
    end

    # Operation Parser for GetAlarms
    class GetAlarms
      def self.parse(http_resp)
        data = Types::GetAlarmsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.alarms = (AlarmsList.parse(map['alarms']) unless map['alarms'].nil?)
        data.next_page_token = map['nextPageToken']
        data
      end
    end

    class AlarmsList
      def self.parse(list)
        list.map do |value|
          Alarm.parse(value) unless value.nil?
        end
      end
    end

    class Alarm
      def self.parse(map)
        data = Types::Alarm.new
        data.name = map['name']
        data.arn = map['arn']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.location = (ResourceLocation.parse(map['location']) unless map['location'].nil?)
        data.resource_type = map['resourceType']
        data.support_code = map['supportCode']
        data.monitored_resource_info = (MonitoredResourceInfo.parse(map['monitoredResourceInfo']) unless map['monitoredResourceInfo'].nil?)
        data.comparison_operator = map['comparisonOperator']
        data.evaluation_periods = map['evaluationPeriods']
        data.period = map['period']
        data.threshold = Hearth::NumberHelper.deserialize(map['threshold'])
        data.datapoints_to_alarm = map['datapointsToAlarm']
        data.treat_missing_data = map['treatMissingData']
        data.statistic = map['statistic']
        data.metric_name = map['metricName']
        data.state = map['state']
        data.unit = map['unit']
        data.contact_protocols = (ContactProtocolsList.parse(map['contactProtocols']) unless map['contactProtocols'].nil?)
        data.notification_triggers = (NotificationTriggerList.parse(map['notificationTriggers']) unless map['notificationTriggers'].nil?)
        data.notification_enabled = map['notificationEnabled']
        return data
      end
    end

    class NotificationTriggerList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ContactProtocolsList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class MonitoredResourceInfo
      def self.parse(map)
        data = Types::MonitoredResourceInfo.new
        data.arn = map['arn']
        data.name = map['name']
        data.resource_type = map['resourceType']
        return data
      end
    end

    # Operation Parser for GetAutoSnapshots
    class GetAutoSnapshots
      def self.parse(http_resp)
        data = Types::GetAutoSnapshotsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resource_name = map['resourceName']
        data.resource_type = map['resourceType']
        data.auto_snapshots = (AutoSnapshotDetailsList.parse(map['autoSnapshots']) unless map['autoSnapshots'].nil?)
        data
      end
    end

    class AutoSnapshotDetailsList
      def self.parse(list)
        list.map do |value|
          AutoSnapshotDetails.parse(value) unless value.nil?
        end
      end
    end

    class AutoSnapshotDetails
      def self.parse(map)
        data = Types::AutoSnapshotDetails.new
        data.date = map['date']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.status = map['status']
        data.from_attached_disks = (AttachedDiskList.parse(map['fromAttachedDisks']) unless map['fromAttachedDisks'].nil?)
        return data
      end
    end

    class AttachedDiskList
      def self.parse(list)
        list.map do |value|
          AttachedDisk.parse(value) unless value.nil?
        end
      end
    end

    class AttachedDisk
      def self.parse(map)
        data = Types::AttachedDisk.new
        data.path = map['path']
        data.size_in_gb = map['sizeInGb']
        return data
      end
    end

    # Operation Parser for GetBlueprints
    class GetBlueprints
      def self.parse(http_resp)
        data = Types::GetBlueprintsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.blueprints = (BlueprintList.parse(map['blueprints']) unless map['blueprints'].nil?)
        data.next_page_token = map['nextPageToken']
        data
      end
    end

    class BlueprintList
      def self.parse(list)
        list.map do |value|
          Blueprint.parse(value) unless value.nil?
        end
      end
    end

    class Blueprint
      def self.parse(map)
        data = Types::Blueprint.new
        data.blueprint_id = map['blueprintId']
        data.name = map['name']
        data.group = map['group']
        data.type = map['type']
        data.description = map['description']
        data.is_active = map['isActive']
        data.min_power = map['minPower']
        data.version = map['version']
        data.version_code = map['versionCode']
        data.product_url = map['productUrl']
        data.license_url = map['licenseUrl']
        data.platform = map['platform']
        return data
      end
    end

    # Operation Parser for GetBucketAccessKeys
    class GetBucketAccessKeys
      def self.parse(http_resp)
        data = Types::GetBucketAccessKeysOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.access_keys = (AccessKeyList.parse(map['accessKeys']) unless map['accessKeys'].nil?)
        data
      end
    end

    class AccessKeyList
      def self.parse(list)
        list.map do |value|
          AccessKey.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for GetBucketBundles
    class GetBucketBundles
      def self.parse(http_resp)
        data = Types::GetBucketBundlesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.bundles = (BucketBundleList.parse(map['bundles']) unless map['bundles'].nil?)
        data
      end
    end

    class BucketBundleList
      def self.parse(list)
        list.map do |value|
          BucketBundle.parse(value) unless value.nil?
        end
      end
    end

    class BucketBundle
      def self.parse(map)
        data = Types::BucketBundle.new
        data.bundle_id = map['bundleId']
        data.name = map['name']
        data.price = Hearth::NumberHelper.deserialize(map['price'])
        data.storage_per_month_in_gb = map['storagePerMonthInGb']
        data.transfer_per_month_in_gb = map['transferPerMonthInGb']
        data.is_active = map['isActive']
        return data
      end
    end

    # Operation Parser for GetBucketMetricData
    class GetBucketMetricData
      def self.parse(http_resp)
        data = Types::GetBucketMetricDataOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.metric_name = map['metricName']
        data.metric_data = (MetricDatapointList.parse(map['metricData']) unless map['metricData'].nil?)
        data
      end
    end

    class MetricDatapointList
      def self.parse(list)
        list.map do |value|
          MetricDatapoint.parse(value) unless value.nil?
        end
      end
    end

    class MetricDatapoint
      def self.parse(map)
        data = Types::MetricDatapoint.new
        data.average = Hearth::NumberHelper.deserialize(map['average'])
        data.maximum = Hearth::NumberHelper.deserialize(map['maximum'])
        data.minimum = Hearth::NumberHelper.deserialize(map['minimum'])
        data.sample_count = Hearth::NumberHelper.deserialize(map['sampleCount'])
        data.sum = Hearth::NumberHelper.deserialize(map['sum'])
        data.timestamp = Time.at(map['timestamp'].to_i) if map['timestamp']
        data.unit = map['unit']
        return data
      end
    end

    # Operation Parser for GetBuckets
    class GetBuckets
      def self.parse(http_resp)
        data = Types::GetBucketsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.buckets = (BucketList.parse(map['buckets']) unless map['buckets'].nil?)
        data.next_page_token = map['nextPageToken']
        data.account_level_bpa_sync = (AccountLevelBpaSync.parse(map['accountLevelBpaSync']) unless map['accountLevelBpaSync'].nil?)
        data
      end
    end

    class AccountLevelBpaSync
      def self.parse(map)
        data = Types::AccountLevelBpaSync.new
        data.status = map['status']
        data.last_synced_at = Time.at(map['lastSyncedAt'].to_i) if map['lastSyncedAt']
        data.message = map['message']
        data.bpa_impacts_lightsail = map['bpaImpactsLightsail']
        return data
      end
    end

    class BucketList
      def self.parse(list)
        list.map do |value|
          Bucket.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for GetBundles
    class GetBundles
      def self.parse(http_resp)
        data = Types::GetBundlesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.bundles = (BundleList.parse(map['bundles']) unless map['bundles'].nil?)
        data.next_page_token = map['nextPageToken']
        data
      end
    end

    class BundleList
      def self.parse(list)
        list.map do |value|
          Bundle.parse(value) unless value.nil?
        end
      end
    end

    class Bundle
      def self.parse(map)
        data = Types::Bundle.new
        data.price = Hearth::NumberHelper.deserialize(map['price'])
        data.cpu_count = map['cpuCount']
        data.disk_size_in_gb = map['diskSizeInGb']
        data.bundle_id = map['bundleId']
        data.instance_type = map['instanceType']
        data.is_active = map['isActive']
        data.name = map['name']
        data.power = map['power']
        data.ram_size_in_gb = Hearth::NumberHelper.deserialize(map['ramSizeInGb'])
        data.transfer_per_month_in_gb = map['transferPerMonthInGb']
        data.supported_platforms = (InstancePlatformList.parse(map['supportedPlatforms']) unless map['supportedPlatforms'].nil?)
        return data
      end
    end

    class InstancePlatformList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for GetCertificates
    class GetCertificates
      def self.parse(http_resp)
        data = Types::GetCertificatesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.certificates = (CertificateSummaryList.parse(map['certificates']) unless map['certificates'].nil?)
        data
      end
    end

    class CertificateSummaryList
      def self.parse(list)
        list.map do |value|
          CertificateSummary.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for GetCloudFormationStackRecords
    class GetCloudFormationStackRecords
      def self.parse(http_resp)
        data = Types::GetCloudFormationStackRecordsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.cloud_formation_stack_records = (CloudFormationStackRecordList.parse(map['cloudFormationStackRecords']) unless map['cloudFormationStackRecords'].nil?)
        data.next_page_token = map['nextPageToken']
        data
      end
    end

    class CloudFormationStackRecordList
      def self.parse(list)
        list.map do |value|
          CloudFormationStackRecord.parse(value) unless value.nil?
        end
      end
    end

    class CloudFormationStackRecord
      def self.parse(map)
        data = Types::CloudFormationStackRecord.new
        data.name = map['name']
        data.arn = map['arn']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.location = (ResourceLocation.parse(map['location']) unless map['location'].nil?)
        data.resource_type = map['resourceType']
        data.state = map['state']
        data.source_info = (CloudFormationStackRecordSourceInfoList.parse(map['sourceInfo']) unless map['sourceInfo'].nil?)
        data.destination_info = (DestinationInfo.parse(map['destinationInfo']) unless map['destinationInfo'].nil?)
        return data
      end
    end

    class DestinationInfo
      def self.parse(map)
        data = Types::DestinationInfo.new
        data.id = map['id']
        data.service = map['service']
        return data
      end
    end

    class CloudFormationStackRecordSourceInfoList
      def self.parse(list)
        list.map do |value|
          CloudFormationStackRecordSourceInfo.parse(value) unless value.nil?
        end
      end
    end

    class CloudFormationStackRecordSourceInfo
      def self.parse(map)
        data = Types::CloudFormationStackRecordSourceInfo.new
        data.resource_type = map['resourceType']
        data.name = map['name']
        data.arn = map['arn']
        return data
      end
    end

    # Operation Parser for GetContactMethods
    class GetContactMethods
      def self.parse(http_resp)
        data = Types::GetContactMethodsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.contact_methods = (ContactMethodsList.parse(map['contactMethods']) unless map['contactMethods'].nil?)
        data
      end
    end

    class ContactMethodsList
      def self.parse(list)
        list.map do |value|
          ContactMethod.parse(value) unless value.nil?
        end
      end
    end

    class ContactMethod
      def self.parse(map)
        data = Types::ContactMethod.new
        data.contact_endpoint = map['contactEndpoint']
        data.status = map['status']
        data.protocol = map['protocol']
        data.name = map['name']
        data.arn = map['arn']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.location = (ResourceLocation.parse(map['location']) unless map['location'].nil?)
        data.resource_type = map['resourceType']
        data.support_code = map['supportCode']
        return data
      end
    end

    # Operation Parser for GetContainerAPIMetadata
    class GetContainerAPIMetadata
      def self.parse(http_resp)
        data = Types::GetContainerAPIMetadataOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.metadata = (ContainerServiceMetadataEntryList.parse(map['metadata']) unless map['metadata'].nil?)
        data
      end
    end

    class ContainerServiceMetadataEntryList
      def self.parse(list)
        list.map do |value|
          ContainerServiceMetadataEntry.parse(value) unless value.nil?
        end
      end
    end

    class ContainerServiceMetadataEntry
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetContainerImages
    class GetContainerImages
      def self.parse(http_resp)
        data = Types::GetContainerImagesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.container_images = (ContainerImageList.parse(map['containerImages']) unless map['containerImages'].nil?)
        data
      end
    end

    class ContainerImageList
      def self.parse(list)
        list.map do |value|
          ContainerImage.parse(value) unless value.nil?
        end
      end
    end

    class ContainerImage
      def self.parse(map)
        data = Types::ContainerImage.new
        data.image = map['image']
        data.digest = map['digest']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        return data
      end
    end

    # Operation Parser for GetContainerLog
    class GetContainerLog
      def self.parse(http_resp)
        data = Types::GetContainerLogOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.log_events = (ContainerServiceLogEventList.parse(map['logEvents']) unless map['logEvents'].nil?)
        data.next_page_token = map['nextPageToken']
        data
      end
    end

    class ContainerServiceLogEventList
      def self.parse(list)
        list.map do |value|
          ContainerServiceLogEvent.parse(value) unless value.nil?
        end
      end
    end

    class ContainerServiceLogEvent
      def self.parse(map)
        data = Types::ContainerServiceLogEvent.new
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.message = map['message']
        return data
      end
    end

    # Operation Parser for GetContainerServiceDeployments
    class GetContainerServiceDeployments
      def self.parse(http_resp)
        data = Types::GetContainerServiceDeploymentsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.deployments = (ContainerServiceDeploymentList.parse(map['deployments']) unless map['deployments'].nil?)
        data
      end
    end

    class ContainerServiceDeploymentList
      def self.parse(list)
        list.map do |value|
          ContainerServiceDeployment.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for GetContainerServiceMetricData
    class GetContainerServiceMetricData
      def self.parse(http_resp)
        data = Types::GetContainerServiceMetricDataOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.metric_name = map['metricName']
        data.metric_data = (MetricDatapointList.parse(map['metricData']) unless map['metricData'].nil?)
        data
      end
    end

    # Operation Parser for GetContainerServicePowers
    class GetContainerServicePowers
      def self.parse(http_resp)
        data = Types::GetContainerServicePowersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.powers = (ContainerServicePowerList.parse(map['powers']) unless map['powers'].nil?)
        data
      end
    end

    class ContainerServicePowerList
      def self.parse(list)
        list.map do |value|
          ContainerServicePower.parse(value) unless value.nil?
        end
      end
    end

    class ContainerServicePower
      def self.parse(map)
        data = Types::ContainerServicePower.new
        data.power_id = map['powerId']
        data.price = Hearth::NumberHelper.deserialize(map['price'])
        data.cpu_count = Hearth::NumberHelper.deserialize(map['cpuCount'])
        data.ram_size_in_gb = Hearth::NumberHelper.deserialize(map['ramSizeInGb'])
        data.name = map['name']
        data.is_active = map['isActive']
        return data
      end
    end

    # Operation Parser for GetContainerServices
    class GetContainerServices
      def self.parse(http_resp)
        data = Types::GetContainerServicesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.container_services = (ContainerServiceList.parse(map['containerServices']) unless map['containerServices'].nil?)
        data
      end
    end

    class ContainerServiceList
      def self.parse(list)
        list.map do |value|
          ContainerService.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for GetDisk
    class GetDisk
      def self.parse(http_resp)
        data = Types::GetDiskOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.disk = (Disk.parse(map['disk']) unless map['disk'].nil?)
        data
      end
    end

    class Disk
      def self.parse(map)
        data = Types::Disk.new
        data.name = map['name']
        data.arn = map['arn']
        data.support_code = map['supportCode']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.location = (ResourceLocation.parse(map['location']) unless map['location'].nil?)
        data.resource_type = map['resourceType']
        data.tags = (TagList.parse(map['tags']) unless map['tags'].nil?)
        data.add_ons = (AddOnList.parse(map['addOns']) unless map['addOns'].nil?)
        data.size_in_gb = map['sizeInGb']
        data.is_system_disk = map['isSystemDisk']
        data.iops = map['iops']
        data.path = map['path']
        data.state = map['state']
        data.attached_to = map['attachedTo']
        data.is_attached = map['isAttached']
        data.attachment_state = map['attachmentState']
        data.gb_in_use = map['gbInUse']
        return data
      end
    end

    class AddOnList
      def self.parse(list)
        list.map do |value|
          AddOn.parse(value) unless value.nil?
        end
      end
    end

    class AddOn
      def self.parse(map)
        data = Types::AddOn.new
        data.name = map['name']
        data.status = map['status']
        data.snapshot_time_of_day = map['snapshotTimeOfDay']
        data.next_snapshot_time_of_day = map['nextSnapshotTimeOfDay']
        return data
      end
    end

    # Operation Parser for GetDiskSnapshot
    class GetDiskSnapshot
      def self.parse(http_resp)
        data = Types::GetDiskSnapshotOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.disk_snapshot = (DiskSnapshot.parse(map['diskSnapshot']) unless map['diskSnapshot'].nil?)
        data
      end
    end

    class DiskSnapshot
      def self.parse(map)
        data = Types::DiskSnapshot.new
        data.name = map['name']
        data.arn = map['arn']
        data.support_code = map['supportCode']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.location = (ResourceLocation.parse(map['location']) unless map['location'].nil?)
        data.resource_type = map['resourceType']
        data.tags = (TagList.parse(map['tags']) unless map['tags'].nil?)
        data.size_in_gb = map['sizeInGb']
        data.state = map['state']
        data.progress = map['progress']
        data.from_disk_name = map['fromDiskName']
        data.from_disk_arn = map['fromDiskArn']
        data.from_instance_name = map['fromInstanceName']
        data.from_instance_arn = map['fromInstanceArn']
        data.is_from_auto_snapshot = map['isFromAutoSnapshot']
        return data
      end
    end

    # Operation Parser for GetDiskSnapshots
    class GetDiskSnapshots
      def self.parse(http_resp)
        data = Types::GetDiskSnapshotsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.disk_snapshots = (DiskSnapshotList.parse(map['diskSnapshots']) unless map['diskSnapshots'].nil?)
        data.next_page_token = map['nextPageToken']
        data
      end
    end

    class DiskSnapshotList
      def self.parse(list)
        list.map do |value|
          DiskSnapshot.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for GetDisks
    class GetDisks
      def self.parse(http_resp)
        data = Types::GetDisksOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.disks = (DiskList.parse(map['disks']) unless map['disks'].nil?)
        data.next_page_token = map['nextPageToken']
        data
      end
    end

    class DiskList
      def self.parse(list)
        list.map do |value|
          Disk.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for GetDistributionBundles
    class GetDistributionBundles
      def self.parse(http_resp)
        data = Types::GetDistributionBundlesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.bundles = (DistributionBundleList.parse(map['bundles']) unless map['bundles'].nil?)
        data
      end
    end

    class DistributionBundleList
      def self.parse(list)
        list.map do |value|
          DistributionBundle.parse(value) unless value.nil?
        end
      end
    end

    class DistributionBundle
      def self.parse(map)
        data = Types::DistributionBundle.new
        data.bundle_id = map['bundleId']
        data.name = map['name']
        data.price = Hearth::NumberHelper.deserialize(map['price'])
        data.transfer_per_month_in_gb = map['transferPerMonthInGb']
        data.is_active = map['isActive']
        return data
      end
    end

    # Operation Parser for GetDistributionLatestCacheReset
    class GetDistributionLatestCacheReset
      def self.parse(http_resp)
        data = Types::GetDistributionLatestCacheResetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.status = map['status']
        data.create_time = Time.at(map['createTime'].to_i) if map['createTime']
        data
      end
    end

    # Operation Parser for GetDistributionMetricData
    class GetDistributionMetricData
      def self.parse(http_resp)
        data = Types::GetDistributionMetricDataOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.metric_name = map['metricName']
        data.metric_data = (MetricDatapointList.parse(map['metricData']) unless map['metricData'].nil?)
        data
      end
    end

    # Operation Parser for GetDistributions
    class GetDistributions
      def self.parse(http_resp)
        data = Types::GetDistributionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.distributions = (DistributionList.parse(map['distributions']) unless map['distributions'].nil?)
        data.next_page_token = map['nextPageToken']
        data
      end
    end

    class DistributionList
      def self.parse(list)
        list.map do |value|
          LightsailDistribution.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for GetDomain
    class GetDomain
      def self.parse(http_resp)
        data = Types::GetDomainOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.domain = (Domain.parse(map['domain']) unless map['domain'].nil?)
        data
      end
    end

    class Domain
      def self.parse(map)
        data = Types::Domain.new
        data.name = map['name']
        data.arn = map['arn']
        data.support_code = map['supportCode']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.location = (ResourceLocation.parse(map['location']) unless map['location'].nil?)
        data.resource_type = map['resourceType']
        data.tags = (TagList.parse(map['tags']) unless map['tags'].nil?)
        data.domain_entries = (DomainEntryList.parse(map['domainEntries']) unless map['domainEntries'].nil?)
        return data
      end
    end

    class DomainEntryList
      def self.parse(list)
        list.map do |value|
          DomainEntry.parse(value) unless value.nil?
        end
      end
    end

    class DomainEntry
      def self.parse(map)
        data = Types::DomainEntry.new
        data.id = map['id']
        data.name = map['name']
        data.target = map['target']
        data.is_alias = map['isAlias']
        data.type = map['type']
        data.options = (DomainEntryOptions.parse(map['options']) unless map['options'].nil?)
        return data
      end
    end

    class DomainEntryOptions
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetDomains
    class GetDomains
      def self.parse(http_resp)
        data = Types::GetDomainsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.domains = (DomainList.parse(map['domains']) unless map['domains'].nil?)
        data.next_page_token = map['nextPageToken']
        data
      end
    end

    class DomainList
      def self.parse(list)
        list.map do |value|
          Domain.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for GetExportSnapshotRecords
    class GetExportSnapshotRecords
      def self.parse(http_resp)
        data = Types::GetExportSnapshotRecordsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.export_snapshot_records = (ExportSnapshotRecordList.parse(map['exportSnapshotRecords']) unless map['exportSnapshotRecords'].nil?)
        data.next_page_token = map['nextPageToken']
        data
      end
    end

    class ExportSnapshotRecordList
      def self.parse(list)
        list.map do |value|
          ExportSnapshotRecord.parse(value) unless value.nil?
        end
      end
    end

    class ExportSnapshotRecord
      def self.parse(map)
        data = Types::ExportSnapshotRecord.new
        data.name = map['name']
        data.arn = map['arn']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.location = (ResourceLocation.parse(map['location']) unless map['location'].nil?)
        data.resource_type = map['resourceType']
        data.state = map['state']
        data.source_info = (ExportSnapshotRecordSourceInfo.parse(map['sourceInfo']) unless map['sourceInfo'].nil?)
        data.destination_info = (DestinationInfo.parse(map['destinationInfo']) unless map['destinationInfo'].nil?)
        return data
      end
    end

    class ExportSnapshotRecordSourceInfo
      def self.parse(map)
        data = Types::ExportSnapshotRecordSourceInfo.new
        data.resource_type = map['resourceType']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.name = map['name']
        data.arn = map['arn']
        data.from_resource_name = map['fromResourceName']
        data.from_resource_arn = map['fromResourceArn']
        data.instance_snapshot_info = (InstanceSnapshotInfo.parse(map['instanceSnapshotInfo']) unless map['instanceSnapshotInfo'].nil?)
        data.disk_snapshot_info = (DiskSnapshotInfo.parse(map['diskSnapshotInfo']) unless map['diskSnapshotInfo'].nil?)
        return data
      end
    end

    class DiskSnapshotInfo
      def self.parse(map)
        data = Types::DiskSnapshotInfo.new
        data.size_in_gb = map['sizeInGb']
        return data
      end
    end

    class InstanceSnapshotInfo
      def self.parse(map)
        data = Types::InstanceSnapshotInfo.new
        data.from_bundle_id = map['fromBundleId']
        data.from_blueprint_id = map['fromBlueprintId']
        data.from_disk_info = (DiskInfoList.parse(map['fromDiskInfo']) unless map['fromDiskInfo'].nil?)
        return data
      end
    end

    class DiskInfoList
      def self.parse(list)
        list.map do |value|
          DiskInfo.parse(value) unless value.nil?
        end
      end
    end

    class DiskInfo
      def self.parse(map)
        data = Types::DiskInfo.new
        data.name = map['name']
        data.path = map['path']
        data.size_in_gb = map['sizeInGb']
        data.is_system_disk = map['isSystemDisk']
        return data
      end
    end

    # Operation Parser for GetInstance
    class GetInstance
      def self.parse(http_resp)
        data = Types::GetInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.instance = (Instance.parse(map['instance']) unless map['instance'].nil?)
        data
      end
    end

    class Instance
      def self.parse(map)
        data = Types::Instance.new
        data.name = map['name']
        data.arn = map['arn']
        data.support_code = map['supportCode']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.location = (ResourceLocation.parse(map['location']) unless map['location'].nil?)
        data.resource_type = map['resourceType']
        data.tags = (TagList.parse(map['tags']) unless map['tags'].nil?)
        data.blueprint_id = map['blueprintId']
        data.blueprint_name = map['blueprintName']
        data.bundle_id = map['bundleId']
        data.add_ons = (AddOnList.parse(map['addOns']) unless map['addOns'].nil?)
        data.is_static_ip = map['isStaticIp']
        data.private_ip_address = map['privateIpAddress']
        data.public_ip_address = map['publicIpAddress']
        data.ipv6_addresses = (Ipv6AddressList.parse(map['ipv6Addresses']) unless map['ipv6Addresses'].nil?)
        data.ip_address_type = map['ipAddressType']
        data.hardware = (InstanceHardware.parse(map['hardware']) unless map['hardware'].nil?)
        data.networking = (InstanceNetworking.parse(map['networking']) unless map['networking'].nil?)
        data.state = (InstanceState.parse(map['state']) unless map['state'].nil?)
        data.username = map['username']
        data.ssh_key_name = map['sshKeyName']
        return data
      end
    end

    class InstanceState
      def self.parse(map)
        data = Types::InstanceState.new
        data.code = map['code']
        data.name = map['name']
        return data
      end
    end

    class InstanceNetworking
      def self.parse(map)
        data = Types::InstanceNetworking.new
        data.monthly_transfer = (MonthlyTransfer.parse(map['monthlyTransfer']) unless map['monthlyTransfer'].nil?)
        data.ports = (InstancePortInfoList.parse(map['ports']) unless map['ports'].nil?)
        return data
      end
    end

    class InstancePortInfoList
      def self.parse(list)
        list.map do |value|
          InstancePortInfo.parse(value) unless value.nil?
        end
      end
    end

    class InstancePortInfo
      def self.parse(map)
        data = Types::InstancePortInfo.new
        data.from_port = map['fromPort']
        data.to_port = map['toPort']
        data.protocol = map['protocol']
        data.access_from = map['accessFrom']
        data.access_type = map['accessType']
        data.common_name = map['commonName']
        data.access_direction = map['accessDirection']
        data.cidrs = (StringList.parse(map['cidrs']) unless map['cidrs'].nil?)
        data.ipv6_cidrs = (StringList.parse(map['ipv6Cidrs']) unless map['ipv6Cidrs'].nil?)
        data.cidr_list_aliases = (StringList.parse(map['cidrListAliases']) unless map['cidrListAliases'].nil?)
        return data
      end
    end

    class MonthlyTransfer
      def self.parse(map)
        data = Types::MonthlyTransfer.new
        data.gb_per_month_allocated = map['gbPerMonthAllocated']
        return data
      end
    end

    class InstanceHardware
      def self.parse(map)
        data = Types::InstanceHardware.new
        data.cpu_count = map['cpuCount']
        data.disks = (DiskList.parse(map['disks']) unless map['disks'].nil?)
        data.ram_size_in_gb = Hearth::NumberHelper.deserialize(map['ramSizeInGb'])
        return data
      end
    end

    class Ipv6AddressList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for GetInstanceAccessDetails
    class GetInstanceAccessDetails
      def self.parse(http_resp)
        data = Types::GetInstanceAccessDetailsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.access_details = (InstanceAccessDetails.parse(map['accessDetails']) unless map['accessDetails'].nil?)
        data
      end
    end

    class InstanceAccessDetails
      def self.parse(map)
        data = Types::InstanceAccessDetails.new
        data.cert_key = map['certKey']
        data.expires_at = Time.at(map['expiresAt'].to_i) if map['expiresAt']
        data.ip_address = map['ipAddress']
        data.password = map['password']
        data.password_data = (PasswordData.parse(map['passwordData']) unless map['passwordData'].nil?)
        data.private_key = map['privateKey']
        data.protocol = map['protocol']
        data.instance_name = map['instanceName']
        data.username = map['username']
        data.host_keys = (HostKeysList.parse(map['hostKeys']) unless map['hostKeys'].nil?)
        return data
      end
    end

    class HostKeysList
      def self.parse(list)
        list.map do |value|
          HostKeyAttributes.parse(value) unless value.nil?
        end
      end
    end

    class HostKeyAttributes
      def self.parse(map)
        data = Types::HostKeyAttributes.new
        data.algorithm = map['algorithm']
        data.public_key = map['publicKey']
        data.witnessed_at = Time.at(map['witnessedAt'].to_i) if map['witnessedAt']
        data.fingerprint_sha1 = map['fingerprintSHA1']
        data.fingerprint_sha256 = map['fingerprintSHA256']
        data.not_valid_before = Time.at(map['notValidBefore'].to_i) if map['notValidBefore']
        data.not_valid_after = Time.at(map['notValidAfter'].to_i) if map['notValidAfter']
        return data
      end
    end

    class PasswordData
      def self.parse(map)
        data = Types::PasswordData.new
        data.ciphertext = map['ciphertext']
        data.key_pair_name = map['keyPairName']
        return data
      end
    end

    # Operation Parser for GetInstanceMetricData
    class GetInstanceMetricData
      def self.parse(http_resp)
        data = Types::GetInstanceMetricDataOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.metric_name = map['metricName']
        data.metric_data = (MetricDatapointList.parse(map['metricData']) unless map['metricData'].nil?)
        data
      end
    end

    # Operation Parser for GetInstancePortStates
    class GetInstancePortStates
      def self.parse(http_resp)
        data = Types::GetInstancePortStatesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.port_states = (InstancePortStateList.parse(map['portStates']) unless map['portStates'].nil?)
        data
      end
    end

    class InstancePortStateList
      def self.parse(list)
        list.map do |value|
          InstancePortState.parse(value) unless value.nil?
        end
      end
    end

    class InstancePortState
      def self.parse(map)
        data = Types::InstancePortState.new
        data.from_port = map['fromPort']
        data.to_port = map['toPort']
        data.protocol = map['protocol']
        data.state = map['state']
        data.cidrs = (StringList.parse(map['cidrs']) unless map['cidrs'].nil?)
        data.ipv6_cidrs = (StringList.parse(map['ipv6Cidrs']) unless map['ipv6Cidrs'].nil?)
        data.cidr_list_aliases = (StringList.parse(map['cidrListAliases']) unless map['cidrListAliases'].nil?)
        return data
      end
    end

    # Operation Parser for GetInstanceSnapshot
    class GetInstanceSnapshot
      def self.parse(http_resp)
        data = Types::GetInstanceSnapshotOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.instance_snapshot = (InstanceSnapshot.parse(map['instanceSnapshot']) unless map['instanceSnapshot'].nil?)
        data
      end
    end

    class InstanceSnapshot
      def self.parse(map)
        data = Types::InstanceSnapshot.new
        data.name = map['name']
        data.arn = map['arn']
        data.support_code = map['supportCode']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.location = (ResourceLocation.parse(map['location']) unless map['location'].nil?)
        data.resource_type = map['resourceType']
        data.tags = (TagList.parse(map['tags']) unless map['tags'].nil?)
        data.state = map['state']
        data.progress = map['progress']
        data.from_attached_disks = (DiskList.parse(map['fromAttachedDisks']) unless map['fromAttachedDisks'].nil?)
        data.from_instance_name = map['fromInstanceName']
        data.from_instance_arn = map['fromInstanceArn']
        data.from_blueprint_id = map['fromBlueprintId']
        data.from_bundle_id = map['fromBundleId']
        data.is_from_auto_snapshot = map['isFromAutoSnapshot']
        data.size_in_gb = map['sizeInGb']
        return data
      end
    end

    # Operation Parser for GetInstanceSnapshots
    class GetInstanceSnapshots
      def self.parse(http_resp)
        data = Types::GetInstanceSnapshotsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.instance_snapshots = (InstanceSnapshotList.parse(map['instanceSnapshots']) unless map['instanceSnapshots'].nil?)
        data.next_page_token = map['nextPageToken']
        data
      end
    end

    class InstanceSnapshotList
      def self.parse(list)
        list.map do |value|
          InstanceSnapshot.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for GetInstanceState
    class GetInstanceState
      def self.parse(http_resp)
        data = Types::GetInstanceStateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.state = (InstanceState.parse(map['state']) unless map['state'].nil?)
        data
      end
    end

    # Operation Parser for GetInstances
    class GetInstances
      def self.parse(http_resp)
        data = Types::GetInstancesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.instances = (InstanceList.parse(map['instances']) unless map['instances'].nil?)
        data.next_page_token = map['nextPageToken']
        data
      end
    end

    class InstanceList
      def self.parse(list)
        list.map do |value|
          Instance.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for GetKeyPair
    class GetKeyPair
      def self.parse(http_resp)
        data = Types::GetKeyPairOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.key_pair = (KeyPair.parse(map['keyPair']) unless map['keyPair'].nil?)
        data
      end
    end

    # Operation Parser for GetKeyPairs
    class GetKeyPairs
      def self.parse(http_resp)
        data = Types::GetKeyPairsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.key_pairs = (KeyPairList.parse(map['keyPairs']) unless map['keyPairs'].nil?)
        data.next_page_token = map['nextPageToken']
        data
      end
    end

    class KeyPairList
      def self.parse(list)
        list.map do |value|
          KeyPair.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for GetLoadBalancer
    class GetLoadBalancer
      def self.parse(http_resp)
        data = Types::GetLoadBalancerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.load_balancer = (LoadBalancer.parse(map['loadBalancer']) unless map['loadBalancer'].nil?)
        data
      end
    end

    class LoadBalancer
      def self.parse(map)
        data = Types::LoadBalancer.new
        data.name = map['name']
        data.arn = map['arn']
        data.support_code = map['supportCode']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.location = (ResourceLocation.parse(map['location']) unless map['location'].nil?)
        data.resource_type = map['resourceType']
        data.tags = (TagList.parse(map['tags']) unless map['tags'].nil?)
        data.dns_name = map['dnsName']
        data.state = map['state']
        data.protocol = map['protocol']
        data.public_ports = (PortList.parse(map['publicPorts']) unless map['publicPorts'].nil?)
        data.health_check_path = map['healthCheckPath']
        data.instance_port = map['instancePort']
        data.instance_health_summary = (InstanceHealthSummaryList.parse(map['instanceHealthSummary']) unless map['instanceHealthSummary'].nil?)
        data.tls_certificate_summaries = (LoadBalancerTlsCertificateSummaryList.parse(map['tlsCertificateSummaries']) unless map['tlsCertificateSummaries'].nil?)
        data.configuration_options = (LoadBalancerConfigurationOptions.parse(map['configurationOptions']) unless map['configurationOptions'].nil?)
        data.ip_address_type = map['ipAddressType']
        data.https_redirection_enabled = map['httpsRedirectionEnabled']
        data.tls_policy_name = map['tlsPolicyName']
        return data
      end
    end

    class LoadBalancerConfigurationOptions
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class LoadBalancerTlsCertificateSummaryList
      def self.parse(list)
        list.map do |value|
          LoadBalancerTlsCertificateSummary.parse(value) unless value.nil?
        end
      end
    end

    class LoadBalancerTlsCertificateSummary
      def self.parse(map)
        data = Types::LoadBalancerTlsCertificateSummary.new
        data.name = map['name']
        data.is_attached = map['isAttached']
        return data
      end
    end

    class InstanceHealthSummaryList
      def self.parse(list)
        list.map do |value|
          InstanceHealthSummary.parse(value) unless value.nil?
        end
      end
    end

    class InstanceHealthSummary
      def self.parse(map)
        data = Types::InstanceHealthSummary.new
        data.instance_name = map['instanceName']
        data.instance_health = map['instanceHealth']
        data.instance_health_reason = map['instanceHealthReason']
        return data
      end
    end

    class PortList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for GetLoadBalancerMetricData
    class GetLoadBalancerMetricData
      def self.parse(http_resp)
        data = Types::GetLoadBalancerMetricDataOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.metric_name = map['metricName']
        data.metric_data = (MetricDatapointList.parse(map['metricData']) unless map['metricData'].nil?)
        data
      end
    end

    # Operation Parser for GetLoadBalancerTlsCertificates
    class GetLoadBalancerTlsCertificates
      def self.parse(http_resp)
        data = Types::GetLoadBalancerTlsCertificatesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tls_certificates = (LoadBalancerTlsCertificateList.parse(map['tlsCertificates']) unless map['tlsCertificates'].nil?)
        data
      end
    end

    class LoadBalancerTlsCertificateList
      def self.parse(list)
        list.map do |value|
          LoadBalancerTlsCertificate.parse(value) unless value.nil?
        end
      end
    end

    class LoadBalancerTlsCertificate
      def self.parse(map)
        data = Types::LoadBalancerTlsCertificate.new
        data.name = map['name']
        data.arn = map['arn']
        data.support_code = map['supportCode']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.location = (ResourceLocation.parse(map['location']) unless map['location'].nil?)
        data.resource_type = map['resourceType']
        data.tags = (TagList.parse(map['tags']) unless map['tags'].nil?)
        data.load_balancer_name = map['loadBalancerName']
        data.is_attached = map['isAttached']
        data.status = map['status']
        data.domain_name = map['domainName']
        data.domain_validation_records = (LoadBalancerTlsCertificateDomainValidationRecordList.parse(map['domainValidationRecords']) unless map['domainValidationRecords'].nil?)
        data.failure_reason = map['failureReason']
        data.issued_at = Time.at(map['issuedAt'].to_i) if map['issuedAt']
        data.issuer = map['issuer']
        data.key_algorithm = map['keyAlgorithm']
        data.not_after = Time.at(map['notAfter'].to_i) if map['notAfter']
        data.not_before = Time.at(map['notBefore'].to_i) if map['notBefore']
        data.renewal_summary = (LoadBalancerTlsCertificateRenewalSummary.parse(map['renewalSummary']) unless map['renewalSummary'].nil?)
        data.revocation_reason = map['revocationReason']
        data.revoked_at = Time.at(map['revokedAt'].to_i) if map['revokedAt']
        data.serial = map['serial']
        data.signature_algorithm = map['signatureAlgorithm']
        data.subject = map['subject']
        data.subject_alternative_names = (StringList.parse(map['subjectAlternativeNames']) unless map['subjectAlternativeNames'].nil?)
        return data
      end
    end

    class LoadBalancerTlsCertificateRenewalSummary
      def self.parse(map)
        data = Types::LoadBalancerTlsCertificateRenewalSummary.new
        data.renewal_status = map['renewalStatus']
        data.domain_validation_options = (LoadBalancerTlsCertificateDomainValidationOptionList.parse(map['domainValidationOptions']) unless map['domainValidationOptions'].nil?)
        return data
      end
    end

    class LoadBalancerTlsCertificateDomainValidationOptionList
      def self.parse(list)
        list.map do |value|
          LoadBalancerTlsCertificateDomainValidationOption.parse(value) unless value.nil?
        end
      end
    end

    class LoadBalancerTlsCertificateDomainValidationOption
      def self.parse(map)
        data = Types::LoadBalancerTlsCertificateDomainValidationOption.new
        data.domain_name = map['domainName']
        data.validation_status = map['validationStatus']
        return data
      end
    end

    class LoadBalancerTlsCertificateDomainValidationRecordList
      def self.parse(list)
        list.map do |value|
          LoadBalancerTlsCertificateDomainValidationRecord.parse(value) unless value.nil?
        end
      end
    end

    class LoadBalancerTlsCertificateDomainValidationRecord
      def self.parse(map)
        data = Types::LoadBalancerTlsCertificateDomainValidationRecord.new
        data.name = map['name']
        data.type = map['type']
        data.value = map['value']
        data.validation_status = map['validationStatus']
        data.domain_name = map['domainName']
        return data
      end
    end

    # Operation Parser for GetLoadBalancerTlsPolicies
    class GetLoadBalancerTlsPolicies
      def self.parse(http_resp)
        data = Types::GetLoadBalancerTlsPoliciesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tls_policies = (LoadBalancerTlsPolicyList.parse(map['tlsPolicies']) unless map['tlsPolicies'].nil?)
        data.next_page_token = map['nextPageToken']
        data
      end
    end

    class LoadBalancerTlsPolicyList
      def self.parse(list)
        list.map do |value|
          LoadBalancerTlsPolicy.parse(value) unless value.nil?
        end
      end
    end

    class LoadBalancerTlsPolicy
      def self.parse(map)
        data = Types::LoadBalancerTlsPolicy.new
        data.name = map['name']
        data.is_default = map['isDefault']
        data.description = map['description']
        data.protocols = (StringList.parse(map['protocols']) unless map['protocols'].nil?)
        data.ciphers = (StringList.parse(map['ciphers']) unless map['ciphers'].nil?)
        return data
      end
    end

    # Operation Parser for GetLoadBalancers
    class GetLoadBalancers
      def self.parse(http_resp)
        data = Types::GetLoadBalancersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.load_balancers = (LoadBalancerList.parse(map['loadBalancers']) unless map['loadBalancers'].nil?)
        data.next_page_token = map['nextPageToken']
        data
      end
    end

    class LoadBalancerList
      def self.parse(list)
        list.map do |value|
          LoadBalancer.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for GetOperation
    class GetOperation
      def self.parse(http_resp)
        data = Types::GetOperationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operation = (Operation.parse(map['operation']) unless map['operation'].nil?)
        data
      end
    end

    # Operation Parser for GetOperations
    class GetOperations
      def self.parse(http_resp)
        data = Types::GetOperationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data.next_page_token = map['nextPageToken']
        data
      end
    end

    # Operation Parser for GetOperationsForResource
    class GetOperationsForResource
      def self.parse(http_resp)
        data = Types::GetOperationsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data.next_page_count = map['nextPageCount']
        data.next_page_token = map['nextPageToken']
        data
      end
    end

    # Operation Parser for GetRegions
    class GetRegions
      def self.parse(http_resp)
        data = Types::GetRegionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.regions = (RegionList.parse(map['regions']) unless map['regions'].nil?)
        data
      end
    end

    class RegionList
      def self.parse(list)
        list.map do |value|
          Region.parse(value) unless value.nil?
        end
      end
    end

    class Region
      def self.parse(map)
        data = Types::Region.new
        data.continent_code = map['continentCode']
        data.description = map['description']
        data.display_name = map['displayName']
        data.name = map['name']
        data.availability_zones = (AvailabilityZoneList.parse(map['availabilityZones']) unless map['availabilityZones'].nil?)
        data.relational_database_availability_zones = (AvailabilityZoneList.parse(map['relationalDatabaseAvailabilityZones']) unless map['relationalDatabaseAvailabilityZones'].nil?)
        return data
      end
    end

    class AvailabilityZoneList
      def self.parse(list)
        list.map do |value|
          AvailabilityZone.parse(value) unless value.nil?
        end
      end
    end

    class AvailabilityZone
      def self.parse(map)
        data = Types::AvailabilityZone.new
        data.zone_name = map['zoneName']
        data.state = map['state']
        return data
      end
    end

    # Operation Parser for GetRelationalDatabase
    class GetRelationalDatabase
      def self.parse(http_resp)
        data = Types::GetRelationalDatabaseOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.relational_database = (RelationalDatabase.parse(map['relationalDatabase']) unless map['relationalDatabase'].nil?)
        data
      end
    end

    class RelationalDatabase
      def self.parse(map)
        data = Types::RelationalDatabase.new
        data.name = map['name']
        data.arn = map['arn']
        data.support_code = map['supportCode']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.location = (ResourceLocation.parse(map['location']) unless map['location'].nil?)
        data.resource_type = map['resourceType']
        data.tags = (TagList.parse(map['tags']) unless map['tags'].nil?)
        data.relational_database_blueprint_id = map['relationalDatabaseBlueprintId']
        data.relational_database_bundle_id = map['relationalDatabaseBundleId']
        data.master_database_name = map['masterDatabaseName']
        data.hardware = (RelationalDatabaseHardware.parse(map['hardware']) unless map['hardware'].nil?)
        data.state = map['state']
        data.secondary_availability_zone = map['secondaryAvailabilityZone']
        data.backup_retention_enabled = map['backupRetentionEnabled']
        data.pending_modified_values = (PendingModifiedRelationalDatabaseValues.parse(map['pendingModifiedValues']) unless map['pendingModifiedValues'].nil?)
        data.engine = map['engine']
        data.engine_version = map['engineVersion']
        data.latest_restorable_time = Time.at(map['latestRestorableTime'].to_i) if map['latestRestorableTime']
        data.master_username = map['masterUsername']
        data.parameter_apply_status = map['parameterApplyStatus']
        data.preferred_backup_window = map['preferredBackupWindow']
        data.preferred_maintenance_window = map['preferredMaintenanceWindow']
        data.publicly_accessible = map['publiclyAccessible']
        data.master_endpoint = (RelationalDatabaseEndpoint.parse(map['masterEndpoint']) unless map['masterEndpoint'].nil?)
        data.pending_maintenance_actions = (PendingMaintenanceActionList.parse(map['pendingMaintenanceActions']) unless map['pendingMaintenanceActions'].nil?)
        data.ca_certificate_identifier = map['caCertificateIdentifier']
        return data
      end
    end

    class PendingMaintenanceActionList
      def self.parse(list)
        list.map do |value|
          PendingMaintenanceAction.parse(value) unless value.nil?
        end
      end
    end

    class PendingMaintenanceAction
      def self.parse(map)
        data = Types::PendingMaintenanceAction.new
        data.action = map['action']
        data.description = map['description']
        data.current_apply_date = Time.at(map['currentApplyDate'].to_i) if map['currentApplyDate']
        return data
      end
    end

    class RelationalDatabaseEndpoint
      def self.parse(map)
        data = Types::RelationalDatabaseEndpoint.new
        data.port = map['port']
        data.address = map['address']
        return data
      end
    end

    class PendingModifiedRelationalDatabaseValues
      def self.parse(map)
        data = Types::PendingModifiedRelationalDatabaseValues.new
        data.master_user_password = map['masterUserPassword']
        data.engine_version = map['engineVersion']
        data.backup_retention_enabled = map['backupRetentionEnabled']
        return data
      end
    end

    class RelationalDatabaseHardware
      def self.parse(map)
        data = Types::RelationalDatabaseHardware.new
        data.cpu_count = map['cpuCount']
        data.disk_size_in_gb = map['diskSizeInGb']
        data.ram_size_in_gb = Hearth::NumberHelper.deserialize(map['ramSizeInGb'])
        return data
      end
    end

    # Operation Parser for GetRelationalDatabaseBlueprints
    class GetRelationalDatabaseBlueprints
      def self.parse(http_resp)
        data = Types::GetRelationalDatabaseBlueprintsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.blueprints = (RelationalDatabaseBlueprintList.parse(map['blueprints']) unless map['blueprints'].nil?)
        data.next_page_token = map['nextPageToken']
        data
      end
    end

    class RelationalDatabaseBlueprintList
      def self.parse(list)
        list.map do |value|
          RelationalDatabaseBlueprint.parse(value) unless value.nil?
        end
      end
    end

    class RelationalDatabaseBlueprint
      def self.parse(map)
        data = Types::RelationalDatabaseBlueprint.new
        data.blueprint_id = map['blueprintId']
        data.engine = map['engine']
        data.engine_version = map['engineVersion']
        data.engine_description = map['engineDescription']
        data.engine_version_description = map['engineVersionDescription']
        data.is_engine_default = map['isEngineDefault']
        return data
      end
    end

    # Operation Parser for GetRelationalDatabaseBundles
    class GetRelationalDatabaseBundles
      def self.parse(http_resp)
        data = Types::GetRelationalDatabaseBundlesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.bundles = (RelationalDatabaseBundleList.parse(map['bundles']) unless map['bundles'].nil?)
        data.next_page_token = map['nextPageToken']
        data
      end
    end

    class RelationalDatabaseBundleList
      def self.parse(list)
        list.map do |value|
          RelationalDatabaseBundle.parse(value) unless value.nil?
        end
      end
    end

    class RelationalDatabaseBundle
      def self.parse(map)
        data = Types::RelationalDatabaseBundle.new
        data.bundle_id = map['bundleId']
        data.name = map['name']
        data.price = Hearth::NumberHelper.deserialize(map['price'])
        data.ram_size_in_gb = Hearth::NumberHelper.deserialize(map['ramSizeInGb'])
        data.disk_size_in_gb = map['diskSizeInGb']
        data.transfer_per_month_in_gb = map['transferPerMonthInGb']
        data.cpu_count = map['cpuCount']
        data.is_encrypted = map['isEncrypted']
        data.is_active = map['isActive']
        return data
      end
    end

    # Operation Parser for GetRelationalDatabaseEvents
    class GetRelationalDatabaseEvents
      def self.parse(http_resp)
        data = Types::GetRelationalDatabaseEventsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.relational_database_events = (RelationalDatabaseEventList.parse(map['relationalDatabaseEvents']) unless map['relationalDatabaseEvents'].nil?)
        data.next_page_token = map['nextPageToken']
        data
      end
    end

    class RelationalDatabaseEventList
      def self.parse(list)
        list.map do |value|
          RelationalDatabaseEvent.parse(value) unless value.nil?
        end
      end
    end

    class RelationalDatabaseEvent
      def self.parse(map)
        data = Types::RelationalDatabaseEvent.new
        data.resource = map['resource']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.message = map['message']
        data.event_categories = (StringList.parse(map['eventCategories']) unless map['eventCategories'].nil?)
        return data
      end
    end

    # Operation Parser for GetRelationalDatabaseLogEvents
    class GetRelationalDatabaseLogEvents
      def self.parse(http_resp)
        data = Types::GetRelationalDatabaseLogEventsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resource_log_events = (LogEventList.parse(map['resourceLogEvents']) unless map['resourceLogEvents'].nil?)
        data.next_backward_token = map['nextBackwardToken']
        data.next_forward_token = map['nextForwardToken']
        data
      end
    end

    class LogEventList
      def self.parse(list)
        list.map do |value|
          LogEvent.parse(value) unless value.nil?
        end
      end
    end

    class LogEvent
      def self.parse(map)
        data = Types::LogEvent.new
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.message = map['message']
        return data
      end
    end

    # Operation Parser for GetRelationalDatabaseLogStreams
    class GetRelationalDatabaseLogStreams
      def self.parse(http_resp)
        data = Types::GetRelationalDatabaseLogStreamsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.log_streams = (StringList.parse(map['logStreams']) unless map['logStreams'].nil?)
        data
      end
    end

    # Operation Parser for GetRelationalDatabaseMasterUserPassword
    class GetRelationalDatabaseMasterUserPassword
      def self.parse(http_resp)
        data = Types::GetRelationalDatabaseMasterUserPasswordOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.master_user_password = map['masterUserPassword']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data
      end
    end

    # Operation Parser for GetRelationalDatabaseMetricData
    class GetRelationalDatabaseMetricData
      def self.parse(http_resp)
        data = Types::GetRelationalDatabaseMetricDataOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.metric_name = map['metricName']
        data.metric_data = (MetricDatapointList.parse(map['metricData']) unless map['metricData'].nil?)
        data
      end
    end

    # Operation Parser for GetRelationalDatabaseParameters
    class GetRelationalDatabaseParameters
      def self.parse(http_resp)
        data = Types::GetRelationalDatabaseParametersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.parameters = (RelationalDatabaseParameterList.parse(map['parameters']) unless map['parameters'].nil?)
        data.next_page_token = map['nextPageToken']
        data
      end
    end

    class RelationalDatabaseParameterList
      def self.parse(list)
        list.map do |value|
          RelationalDatabaseParameter.parse(value) unless value.nil?
        end
      end
    end

    class RelationalDatabaseParameter
      def self.parse(map)
        data = Types::RelationalDatabaseParameter.new
        data.allowed_values = map['allowedValues']
        data.apply_method = map['applyMethod']
        data.apply_type = map['applyType']
        data.data_type = map['dataType']
        data.description = map['description']
        data.is_modifiable = map['isModifiable']
        data.parameter_name = map['parameterName']
        data.parameter_value = map['parameterValue']
        return data
      end
    end

    # Operation Parser for GetRelationalDatabaseSnapshot
    class GetRelationalDatabaseSnapshot
      def self.parse(http_resp)
        data = Types::GetRelationalDatabaseSnapshotOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.relational_database_snapshot = (RelationalDatabaseSnapshot.parse(map['relationalDatabaseSnapshot']) unless map['relationalDatabaseSnapshot'].nil?)
        data
      end
    end

    class RelationalDatabaseSnapshot
      def self.parse(map)
        data = Types::RelationalDatabaseSnapshot.new
        data.name = map['name']
        data.arn = map['arn']
        data.support_code = map['supportCode']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.location = (ResourceLocation.parse(map['location']) unless map['location'].nil?)
        data.resource_type = map['resourceType']
        data.tags = (TagList.parse(map['tags']) unless map['tags'].nil?)
        data.engine = map['engine']
        data.engine_version = map['engineVersion']
        data.size_in_gb = map['sizeInGb']
        data.state = map['state']
        data.from_relational_database_name = map['fromRelationalDatabaseName']
        data.from_relational_database_arn = map['fromRelationalDatabaseArn']
        data.from_relational_database_bundle_id = map['fromRelationalDatabaseBundleId']
        data.from_relational_database_blueprint_id = map['fromRelationalDatabaseBlueprintId']
        return data
      end
    end

    # Operation Parser for GetRelationalDatabaseSnapshots
    class GetRelationalDatabaseSnapshots
      def self.parse(http_resp)
        data = Types::GetRelationalDatabaseSnapshotsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.relational_database_snapshots = (RelationalDatabaseSnapshotList.parse(map['relationalDatabaseSnapshots']) unless map['relationalDatabaseSnapshots'].nil?)
        data.next_page_token = map['nextPageToken']
        data
      end
    end

    class RelationalDatabaseSnapshotList
      def self.parse(list)
        list.map do |value|
          RelationalDatabaseSnapshot.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for GetRelationalDatabases
    class GetRelationalDatabases
      def self.parse(http_resp)
        data = Types::GetRelationalDatabasesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.relational_databases = (RelationalDatabaseList.parse(map['relationalDatabases']) unless map['relationalDatabases'].nil?)
        data.next_page_token = map['nextPageToken']
        data
      end
    end

    class RelationalDatabaseList
      def self.parse(list)
        list.map do |value|
          RelationalDatabase.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for GetStaticIp
    class GetStaticIp
      def self.parse(http_resp)
        data = Types::GetStaticIpOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.static_ip = (StaticIp.parse(map['staticIp']) unless map['staticIp'].nil?)
        data
      end
    end

    class StaticIp
      def self.parse(map)
        data = Types::StaticIp.new
        data.name = map['name']
        data.arn = map['arn']
        data.support_code = map['supportCode']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.location = (ResourceLocation.parse(map['location']) unless map['location'].nil?)
        data.resource_type = map['resourceType']
        data.ip_address = map['ipAddress']
        data.attached_to = map['attachedTo']
        data.is_attached = map['isAttached']
        return data
      end
    end

    # Operation Parser for GetStaticIps
    class GetStaticIps
      def self.parse(http_resp)
        data = Types::GetStaticIpsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.static_ips = (StaticIpList.parse(map['staticIps']) unless map['staticIps'].nil?)
        data.next_page_token = map['nextPageToken']
        data
      end
    end

    class StaticIpList
      def self.parse(list)
        list.map do |value|
          StaticIp.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ImportKeyPair
    class ImportKeyPair
      def self.parse(http_resp)
        data = Types::ImportKeyPairOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operation = (Operation.parse(map['operation']) unless map['operation'].nil?)
        data
      end
    end

    # Operation Parser for IsVpcPeered
    class IsVpcPeered
      def self.parse(http_resp)
        data = Types::IsVpcPeeredOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.is_peered = map['isPeered']
        data
      end
    end

    # Operation Parser for OpenInstancePublicPorts
    class OpenInstancePublicPorts
      def self.parse(http_resp)
        data = Types::OpenInstancePublicPortsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operation = (Operation.parse(map['operation']) unless map['operation'].nil?)
        data
      end
    end

    # Operation Parser for PeerVpc
    class PeerVpc
      def self.parse(http_resp)
        data = Types::PeerVpcOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operation = (Operation.parse(map['operation']) unless map['operation'].nil?)
        data
      end
    end

    # Operation Parser for PutAlarm
    class PutAlarm
      def self.parse(http_resp)
        data = Types::PutAlarmOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    # Operation Parser for PutInstancePublicPorts
    class PutInstancePublicPorts
      def self.parse(http_resp)
        data = Types::PutInstancePublicPortsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operation = (Operation.parse(map['operation']) unless map['operation'].nil?)
        data
      end
    end

    # Operation Parser for RebootInstance
    class RebootInstance
      def self.parse(http_resp)
        data = Types::RebootInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    # Operation Parser for RebootRelationalDatabase
    class RebootRelationalDatabase
      def self.parse(http_resp)
        data = Types::RebootRelationalDatabaseOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    # Operation Parser for RegisterContainerImage
    class RegisterContainerImage
      def self.parse(http_resp)
        data = Types::RegisterContainerImageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.container_image = (ContainerImage.parse(map['containerImage']) unless map['containerImage'].nil?)
        data
      end
    end

    # Operation Parser for ReleaseStaticIp
    class ReleaseStaticIp
      def self.parse(http_resp)
        data = Types::ReleaseStaticIpOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    # Operation Parser for ResetDistributionCache
    class ResetDistributionCache
      def self.parse(http_resp)
        data = Types::ResetDistributionCacheOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.status = map['status']
        data.create_time = Time.at(map['createTime'].to_i) if map['createTime']
        data.operation = (Operation.parse(map['operation']) unless map['operation'].nil?)
        data
      end
    end

    # Operation Parser for SendContactMethodVerification
    class SendContactMethodVerification
      def self.parse(http_resp)
        data = Types::SendContactMethodVerificationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    # Operation Parser for SetIpAddressType
    class SetIpAddressType
      def self.parse(http_resp)
        data = Types::SetIpAddressTypeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    # Operation Parser for SetResourceAccessForBucket
    class SetResourceAccessForBucket
      def self.parse(http_resp)
        data = Types::SetResourceAccessForBucketOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    # Operation Parser for StartInstance
    class StartInstance
      def self.parse(http_resp)
        data = Types::StartInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    # Operation Parser for StartRelationalDatabase
    class StartRelationalDatabase
      def self.parse(http_resp)
        data = Types::StartRelationalDatabaseOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    # Operation Parser for StopInstance
    class StopInstance
      def self.parse(http_resp)
        data = Types::StopInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    # Operation Parser for StopRelationalDatabase
    class StopRelationalDatabase
      def self.parse(http_resp)
        data = Types::StopRelationalDatabaseOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    # Operation Parser for TestAlarm
    class TestAlarm
      def self.parse(http_resp)
        data = Types::TestAlarmOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    # Operation Parser for UnpeerVpc
    class UnpeerVpc
      def self.parse(http_resp)
        data = Types::UnpeerVpcOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operation = (Operation.parse(map['operation']) unless map['operation'].nil?)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    # Operation Parser for UpdateBucket
    class UpdateBucket
      def self.parse(http_resp)
        data = Types::UpdateBucketOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.bucket = (Bucket.parse(map['bucket']) unless map['bucket'].nil?)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    # Operation Parser for UpdateBucketBundle
    class UpdateBucketBundle
      def self.parse(http_resp)
        data = Types::UpdateBucketBundleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    # Operation Parser for UpdateContainerService
    class UpdateContainerService
      def self.parse(http_resp)
        data = Types::UpdateContainerServiceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.container_service = (ContainerService.parse(map['containerService']) unless map['containerService'].nil?)
        data
      end
    end

    # Operation Parser for UpdateDistribution
    class UpdateDistribution
      def self.parse(http_resp)
        data = Types::UpdateDistributionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operation = (Operation.parse(map['operation']) unless map['operation'].nil?)
        data
      end
    end

    # Operation Parser for UpdateDistributionBundle
    class UpdateDistributionBundle
      def self.parse(http_resp)
        data = Types::UpdateDistributionBundleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operation = (Operation.parse(map['operation']) unless map['operation'].nil?)
        data
      end
    end

    # Operation Parser for UpdateDomainEntry
    class UpdateDomainEntry
      def self.parse(http_resp)
        data = Types::UpdateDomainEntryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    # Operation Parser for UpdateLoadBalancerAttribute
    class UpdateLoadBalancerAttribute
      def self.parse(http_resp)
        data = Types::UpdateLoadBalancerAttributeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    # Operation Parser for UpdateRelationalDatabase
    class UpdateRelationalDatabase
      def self.parse(http_resp)
        data = Types::UpdateRelationalDatabaseOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end

    # Operation Parser for UpdateRelationalDatabaseParameters
    class UpdateRelationalDatabaseParameters
      def self.parse(http_resp)
        data = Types::UpdateRelationalDatabaseParametersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operations = (OperationList.parse(map['operations']) unless map['operations'].nil?)
        data
      end
    end
  end
end
