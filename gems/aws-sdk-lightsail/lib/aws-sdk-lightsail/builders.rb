# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Lightsail
  module Builders

    # Operation Builder for AllocateStaticIp
    class AllocateStaticIp
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.AllocateStaticIp'
        data = {}
        data['staticIpName'] = input[:static_ip_name] unless input[:static_ip_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AttachCertificateToDistribution
    class AttachCertificateToDistribution
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.AttachCertificateToDistribution'
        data = {}
        data['distributionName'] = input[:distribution_name] unless input[:distribution_name].nil?
        data['certificateName'] = input[:certificate_name] unless input[:certificate_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AttachDisk
    class AttachDisk
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.AttachDisk'
        data = {}
        data['diskName'] = input[:disk_name] unless input[:disk_name].nil?
        data['instanceName'] = input[:instance_name] unless input[:instance_name].nil?
        data['diskPath'] = input[:disk_path] unless input[:disk_path].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AttachInstancesToLoadBalancer
    class AttachInstancesToLoadBalancer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.AttachInstancesToLoadBalancer'
        data = {}
        data['loadBalancerName'] = input[:load_balancer_name] unless input[:load_balancer_name].nil?
        data['instanceNames'] = Builders::ResourceNameList.build(input[:instance_names]) unless input[:instance_names].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ResourceNameList
    class ResourceNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for AttachLoadBalancerTlsCertificate
    class AttachLoadBalancerTlsCertificate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.AttachLoadBalancerTlsCertificate'
        data = {}
        data['loadBalancerName'] = input[:load_balancer_name] unless input[:load_balancer_name].nil?
        data['certificateName'] = input[:certificate_name] unless input[:certificate_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AttachStaticIp
    class AttachStaticIp
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.AttachStaticIp'
        data = {}
        data['staticIpName'] = input[:static_ip_name] unless input[:static_ip_name].nil?
        data['instanceName'] = input[:instance_name] unless input[:instance_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CloseInstancePublicPorts
    class CloseInstancePublicPorts
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.CloseInstancePublicPorts'
        data = {}
        data['portInfo'] = Builders::PortInfo.build(input[:port_info]) unless input[:port_info].nil?
        data['instanceName'] = input[:instance_name] unless input[:instance_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for PortInfo
    class PortInfo
      def self.build(input)
        data = {}
        data['fromPort'] = input[:from_port] unless input[:from_port].nil?
        data['toPort'] = input[:to_port] unless input[:to_port].nil?
        data['protocol'] = input[:protocol] unless input[:protocol].nil?
        data['cidrs'] = Builders::StringList.build(input[:cidrs]) unless input[:cidrs].nil?
        data['ipv6Cidrs'] = Builders::StringList.build(input[:ipv6_cidrs]) unless input[:ipv6_cidrs].nil?
        data['cidrListAliases'] = Builders::StringList.build(input[:cidr_list_aliases]) unless input[:cidr_list_aliases].nil?
        data
      end
    end

    # List Builder for StringList
    class StringList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CopySnapshot
    class CopySnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.CopySnapshot'
        data = {}
        data['sourceSnapshotName'] = input[:source_snapshot_name] unless input[:source_snapshot_name].nil?
        data['sourceResourceName'] = input[:source_resource_name] unless input[:source_resource_name].nil?
        data['restoreDate'] = input[:restore_date] unless input[:restore_date].nil?
        data['useLatestRestorableAutoSnapshot'] = input[:use_latest_restorable_auto_snapshot] unless input[:use_latest_restorable_auto_snapshot].nil?
        data['targetSnapshotName'] = input[:target_snapshot_name] unless input[:target_snapshot_name].nil?
        data['sourceRegion'] = input[:source_region] unless input[:source_region].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateBucket
    class CreateBucket
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.CreateBucket'
        data = {}
        data['bucketName'] = input[:bucket_name] unless input[:bucket_name].nil?
        data['bundleId'] = input[:bundle_id] unless input[:bundle_id].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['enableObjectVersioning'] = input[:enable_object_versioning] unless input[:enable_object_versioning].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['key'] = input[:key] unless input[:key].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for CreateBucketAccessKey
    class CreateBucketAccessKey
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.CreateBucketAccessKey'
        data = {}
        data['bucketName'] = input[:bucket_name] unless input[:bucket_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateCertificate
    class CreateCertificate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.CreateCertificate'
        data = {}
        data['certificateName'] = input[:certificate_name] unless input[:certificate_name].nil?
        data['domainName'] = input[:domain_name] unless input[:domain_name].nil?
        data['subjectAlternativeNames'] = Builders::SubjectAlternativeNameList.build(input[:subject_alternative_names]) unless input[:subject_alternative_names].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SubjectAlternativeNameList
    class SubjectAlternativeNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateCloudFormationStack
    class CreateCloudFormationStack
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.CreateCloudFormationStack'
        data = {}
        data['instances'] = Builders::InstanceEntryList.build(input[:instances]) unless input[:instances].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for InstanceEntryList
    class InstanceEntryList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::InstanceEntry.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for InstanceEntry
    class InstanceEntry
      def self.build(input)
        data = {}
        data['sourceName'] = input[:source_name] unless input[:source_name].nil?
        data['instanceType'] = input[:instance_type] unless input[:instance_type].nil?
        data['portInfoSource'] = input[:port_info_source] unless input[:port_info_source].nil?
        data['userData'] = input[:user_data] unless input[:user_data].nil?
        data['availabilityZone'] = input[:availability_zone] unless input[:availability_zone].nil?
        data
      end
    end

    # Operation Builder for CreateContactMethod
    class CreateContactMethod
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.CreateContactMethod'
        data = {}
        data['protocol'] = input[:protocol] unless input[:protocol].nil?
        data['contactEndpoint'] = input[:contact_endpoint] unless input[:contact_endpoint].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateContainerService
    class CreateContainerService
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.CreateContainerService'
        data = {}
        data['serviceName'] = input[:service_name] unless input[:service_name].nil?
        data['power'] = input[:power] unless input[:power].nil?
        data['scale'] = input[:scale] unless input[:scale].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['publicDomainNames'] = Builders::ContainerServicePublicDomains.build(input[:public_domain_names]) unless input[:public_domain_names].nil?
        data['deployment'] = Builders::ContainerServiceDeploymentRequest.build(input[:deployment]) unless input[:deployment].nil?
        data['privateRegistryAccess'] = Builders::PrivateRegistryAccessRequest.build(input[:private_registry_access]) unless input[:private_registry_access].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for PrivateRegistryAccessRequest
    class PrivateRegistryAccessRequest
      def self.build(input)
        data = {}
        data['ecrImagePullerRole'] = Builders::ContainerServiceECRImagePullerRoleRequest.build(input[:ecr_image_puller_role]) unless input[:ecr_image_puller_role].nil?
        data
      end
    end

    # Structure Builder for ContainerServiceECRImagePullerRoleRequest
    class ContainerServiceECRImagePullerRoleRequest
      def self.build(input)
        data = {}
        data['isActive'] = input[:is_active] unless input[:is_active].nil?
        data
      end
    end

    # Structure Builder for ContainerServiceDeploymentRequest
    class ContainerServiceDeploymentRequest
      def self.build(input)
        data = {}
        data['containers'] = Builders::ContainerMap.build(input[:containers]) unless input[:containers].nil?
        data['publicEndpoint'] = Builders::EndpointRequest.build(input[:public_endpoint]) unless input[:public_endpoint].nil?
        data
      end
    end

    # Structure Builder for EndpointRequest
    class EndpointRequest
      def self.build(input)
        data = {}
        data['containerName'] = input[:container_name] unless input[:container_name].nil?
        data['containerPort'] = input[:container_port] unless input[:container_port].nil?
        data['healthCheck'] = Builders::ContainerServiceHealthCheckConfig.build(input[:health_check]) unless input[:health_check].nil?
        data
      end
    end

    # Structure Builder for ContainerServiceHealthCheckConfig
    class ContainerServiceHealthCheckConfig
      def self.build(input)
        data = {}
        data['healthyThreshold'] = input[:healthy_threshold] unless input[:healthy_threshold].nil?
        data['unhealthyThreshold'] = input[:unhealthy_threshold] unless input[:unhealthy_threshold].nil?
        data['timeoutSeconds'] = input[:timeout_seconds] unless input[:timeout_seconds].nil?
        data['intervalSeconds'] = input[:interval_seconds] unless input[:interval_seconds].nil?
        data['path'] = input[:path] unless input[:path].nil?
        data['successCodes'] = input[:success_codes] unless input[:success_codes].nil?
        data
      end
    end

    # Map Builder for ContainerMap
    class ContainerMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::Container.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for Container
    class Container
      def self.build(input)
        data = {}
        data['image'] = input[:image] unless input[:image].nil?
        data['command'] = Builders::StringList.build(input[:command]) unless input[:command].nil?
        data['environment'] = Builders::Environment.build(input[:environment]) unless input[:environment].nil?
        data['ports'] = Builders::PortMap.build(input[:ports]) unless input[:ports].nil?
        data
      end
    end

    # Map Builder for PortMap
    class PortMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Map Builder for Environment
    class Environment
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Map Builder for ContainerServicePublicDomains
    class ContainerServicePublicDomains
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::ContainerServicePublicDomainsList.build(value) unless value.nil?
        end
        data
      end
    end

    # List Builder for ContainerServicePublicDomainsList
    class ContainerServicePublicDomainsList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateContainerServiceDeployment
    class CreateContainerServiceDeployment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.CreateContainerServiceDeployment'
        data = {}
        data['serviceName'] = input[:service_name] unless input[:service_name].nil?
        data['containers'] = Builders::ContainerMap.build(input[:containers]) unless input[:containers].nil?
        data['publicEndpoint'] = Builders::EndpointRequest.build(input[:public_endpoint]) unless input[:public_endpoint].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateContainerServiceRegistryLogin
    class CreateContainerServiceRegistryLogin
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.CreateContainerServiceRegistryLogin'
        data = {}
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateDisk
    class CreateDisk
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.CreateDisk'
        data = {}
        data['diskName'] = input[:disk_name] unless input[:disk_name].nil?
        data['availabilityZone'] = input[:availability_zone] unless input[:availability_zone].nil?
        data['sizeInGb'] = input[:size_in_gb] unless input[:size_in_gb].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['addOns'] = Builders::AddOnRequestList.build(input[:add_ons]) unless input[:add_ons].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for AddOnRequestList
    class AddOnRequestList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AddOnRequest.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AddOnRequest
    class AddOnRequest
      def self.build(input)
        data = {}
        data['addOnType'] = input[:add_on_type] unless input[:add_on_type].nil?
        data['autoSnapshotAddOnRequest'] = Builders::AutoSnapshotAddOnRequest.build(input[:auto_snapshot_add_on_request]) unless input[:auto_snapshot_add_on_request].nil?
        data
      end
    end

    # Structure Builder for AutoSnapshotAddOnRequest
    class AutoSnapshotAddOnRequest
      def self.build(input)
        data = {}
        data['snapshotTimeOfDay'] = input[:snapshot_time_of_day] unless input[:snapshot_time_of_day].nil?
        data
      end
    end

    # Operation Builder for CreateDiskFromSnapshot
    class CreateDiskFromSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.CreateDiskFromSnapshot'
        data = {}
        data['diskName'] = input[:disk_name] unless input[:disk_name].nil?
        data['diskSnapshotName'] = input[:disk_snapshot_name] unless input[:disk_snapshot_name].nil?
        data['availabilityZone'] = input[:availability_zone] unless input[:availability_zone].nil?
        data['sizeInGb'] = input[:size_in_gb] unless input[:size_in_gb].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['addOns'] = Builders::AddOnRequestList.build(input[:add_ons]) unless input[:add_ons].nil?
        data['sourceDiskName'] = input[:source_disk_name] unless input[:source_disk_name].nil?
        data['restoreDate'] = input[:restore_date] unless input[:restore_date].nil?
        data['useLatestRestorableAutoSnapshot'] = input[:use_latest_restorable_auto_snapshot] unless input[:use_latest_restorable_auto_snapshot].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateDiskSnapshot
    class CreateDiskSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.CreateDiskSnapshot'
        data = {}
        data['diskName'] = input[:disk_name] unless input[:disk_name].nil?
        data['diskSnapshotName'] = input[:disk_snapshot_name] unless input[:disk_snapshot_name].nil?
        data['instanceName'] = input[:instance_name] unless input[:instance_name].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateDistribution
    class CreateDistribution
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.CreateDistribution'
        data = {}
        data['distributionName'] = input[:distribution_name] unless input[:distribution_name].nil?
        data['origin'] = Builders::InputOrigin.build(input[:origin]) unless input[:origin].nil?
        data['defaultCacheBehavior'] = Builders::CacheBehavior.build(input[:default_cache_behavior]) unless input[:default_cache_behavior].nil?
        data['cacheBehaviorSettings'] = Builders::CacheSettings.build(input[:cache_behavior_settings]) unless input[:cache_behavior_settings].nil?
        data['cacheBehaviors'] = Builders::CacheBehaviorList.build(input[:cache_behaviors]) unless input[:cache_behaviors].nil?
        data['bundleId'] = input[:bundle_id] unless input[:bundle_id].nil?
        data['ipAddressType'] = input[:ip_address_type] unless input[:ip_address_type].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for CacheBehaviorList
    class CacheBehaviorList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::CacheBehaviorPerPath.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CacheBehaviorPerPath
    class CacheBehaviorPerPath
      def self.build(input)
        data = {}
        data['path'] = input[:path] unless input[:path].nil?
        data['behavior'] = input[:behavior] unless input[:behavior].nil?
        data
      end
    end

    # Structure Builder for CacheSettings
    class CacheSettings
      def self.build(input)
        data = {}
        data['defaultTTL'] = input[:default_ttl] unless input[:default_ttl].nil?
        data['minimumTTL'] = input[:minimum_ttl] unless input[:minimum_ttl].nil?
        data['maximumTTL'] = input[:maximum_ttl] unless input[:maximum_ttl].nil?
        data['allowedHTTPMethods'] = input[:allowed_http_methods] unless input[:allowed_http_methods].nil?
        data['cachedHTTPMethods'] = input[:cached_http_methods] unless input[:cached_http_methods].nil?
        data['forwardedCookies'] = Builders::CookieObject.build(input[:forwarded_cookies]) unless input[:forwarded_cookies].nil?
        data['forwardedHeaders'] = Builders::HeaderObject.build(input[:forwarded_headers]) unless input[:forwarded_headers].nil?
        data['forwardedQueryStrings'] = Builders::QueryStringObject.build(input[:forwarded_query_strings]) unless input[:forwarded_query_strings].nil?
        data
      end
    end

    # Structure Builder for QueryStringObject
    class QueryStringObject
      def self.build(input)
        data = {}
        data['option'] = input[:option] unless input[:option].nil?
        data['queryStringsAllowList'] = Builders::StringList.build(input[:query_strings_allow_list]) unless input[:query_strings_allow_list].nil?
        data
      end
    end

    # Structure Builder for HeaderObject
    class HeaderObject
      def self.build(input)
        data = {}
        data['option'] = input[:option] unless input[:option].nil?
        data['headersAllowList'] = Builders::HeaderForwardList.build(input[:headers_allow_list]) unless input[:headers_allow_list].nil?
        data
      end
    end

    # List Builder for HeaderForwardList
    class HeaderForwardList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CookieObject
    class CookieObject
      def self.build(input)
        data = {}
        data['option'] = input[:option] unless input[:option].nil?
        data['cookiesAllowList'] = Builders::StringList.build(input[:cookies_allow_list]) unless input[:cookies_allow_list].nil?
        data
      end
    end

    # Structure Builder for CacheBehavior
    class CacheBehavior
      def self.build(input)
        data = {}
        data['behavior'] = input[:behavior] unless input[:behavior].nil?
        data
      end
    end

    # Structure Builder for InputOrigin
    class InputOrigin
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['regionName'] = input[:region_name] unless input[:region_name].nil?
        data['protocolPolicy'] = input[:protocol_policy] unless input[:protocol_policy].nil?
        data
      end
    end

    # Operation Builder for CreateDomain
    class CreateDomain
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.CreateDomain'
        data = {}
        data['domainName'] = input[:domain_name] unless input[:domain_name].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateDomainEntry
    class CreateDomainEntry
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.CreateDomainEntry'
        data = {}
        data['domainName'] = input[:domain_name] unless input[:domain_name].nil?
        data['domainEntry'] = Builders::DomainEntry.build(input[:domain_entry]) unless input[:domain_entry].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DomainEntry
    class DomainEntry
      def self.build(input)
        data = {}
        data['id'] = input[:id] unless input[:id].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['target'] = input[:target] unless input[:target].nil?
        data['isAlias'] = input[:is_alias] unless input[:is_alias].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data['options'] = Builders::DomainEntryOptions.build(input[:options]) unless input[:options].nil?
        data
      end
    end

    # Map Builder for DomainEntryOptions
    class DomainEntryOptions
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for CreateInstanceSnapshot
    class CreateInstanceSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.CreateInstanceSnapshot'
        data = {}
        data['instanceSnapshotName'] = input[:instance_snapshot_name] unless input[:instance_snapshot_name].nil?
        data['instanceName'] = input[:instance_name] unless input[:instance_name].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateInstances
    class CreateInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.CreateInstances'
        data = {}
        data['instanceNames'] = Builders::StringList.build(input[:instance_names]) unless input[:instance_names].nil?
        data['availabilityZone'] = input[:availability_zone] unless input[:availability_zone].nil?
        data['customImageName'] = input[:custom_image_name] unless input[:custom_image_name].nil?
        data['blueprintId'] = input[:blueprint_id] unless input[:blueprint_id].nil?
        data['bundleId'] = input[:bundle_id] unless input[:bundle_id].nil?
        data['userData'] = input[:user_data] unless input[:user_data].nil?
        data['keyPairName'] = input[:key_pair_name] unless input[:key_pair_name].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['addOns'] = Builders::AddOnRequestList.build(input[:add_ons]) unless input[:add_ons].nil?
        data['ipAddressType'] = input[:ip_address_type] unless input[:ip_address_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateInstancesFromSnapshot
    class CreateInstancesFromSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.CreateInstancesFromSnapshot'
        data = {}
        data['instanceNames'] = Builders::StringList.build(input[:instance_names]) unless input[:instance_names].nil?
        data['attachedDiskMapping'] = Builders::AttachedDiskMap.build(input[:attached_disk_mapping]) unless input[:attached_disk_mapping].nil?
        data['availabilityZone'] = input[:availability_zone] unless input[:availability_zone].nil?
        data['instanceSnapshotName'] = input[:instance_snapshot_name] unless input[:instance_snapshot_name].nil?
        data['bundleId'] = input[:bundle_id] unless input[:bundle_id].nil?
        data['userData'] = input[:user_data] unless input[:user_data].nil?
        data['keyPairName'] = input[:key_pair_name] unless input[:key_pair_name].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['addOns'] = Builders::AddOnRequestList.build(input[:add_ons]) unless input[:add_ons].nil?
        data['ipAddressType'] = input[:ip_address_type] unless input[:ip_address_type].nil?
        data['sourceInstanceName'] = input[:source_instance_name] unless input[:source_instance_name].nil?
        data['restoreDate'] = input[:restore_date] unless input[:restore_date].nil?
        data['useLatestRestorableAutoSnapshot'] = input[:use_latest_restorable_auto_snapshot] unless input[:use_latest_restorable_auto_snapshot].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for AttachedDiskMap
    class AttachedDiskMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::DiskMapList.build(value) unless value.nil?
        end
        data
      end
    end

    # List Builder for DiskMapList
    class DiskMapList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::DiskMap.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DiskMap
    class DiskMap
      def self.build(input)
        data = {}
        data['originalDiskPath'] = input[:original_disk_path] unless input[:original_disk_path].nil?
        data['newDiskName'] = input[:new_disk_name] unless input[:new_disk_name].nil?
        data
      end
    end

    # Operation Builder for CreateKeyPair
    class CreateKeyPair
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.CreateKeyPair'
        data = {}
        data['keyPairName'] = input[:key_pair_name] unless input[:key_pair_name].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateLoadBalancer
    class CreateLoadBalancer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.CreateLoadBalancer'
        data = {}
        data['loadBalancerName'] = input[:load_balancer_name] unless input[:load_balancer_name].nil?
        data['instancePort'] = input[:instance_port] unless input[:instance_port].nil?
        data['healthCheckPath'] = input[:health_check_path] unless input[:health_check_path].nil?
        data['certificateName'] = input[:certificate_name] unless input[:certificate_name].nil?
        data['certificateDomainName'] = input[:certificate_domain_name] unless input[:certificate_domain_name].nil?
        data['certificateAlternativeNames'] = Builders::DomainNameList.build(input[:certificate_alternative_names]) unless input[:certificate_alternative_names].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['ipAddressType'] = input[:ip_address_type] unless input[:ip_address_type].nil?
        data['tlsPolicyName'] = input[:tls_policy_name] unless input[:tls_policy_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for DomainNameList
    class DomainNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateLoadBalancerTlsCertificate
    class CreateLoadBalancerTlsCertificate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.CreateLoadBalancerTlsCertificate'
        data = {}
        data['loadBalancerName'] = input[:load_balancer_name] unless input[:load_balancer_name].nil?
        data['certificateName'] = input[:certificate_name] unless input[:certificate_name].nil?
        data['certificateDomainName'] = input[:certificate_domain_name] unless input[:certificate_domain_name].nil?
        data['certificateAlternativeNames'] = Builders::DomainNameList.build(input[:certificate_alternative_names]) unless input[:certificate_alternative_names].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateRelationalDatabase
    class CreateRelationalDatabase
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.CreateRelationalDatabase'
        data = {}
        data['relationalDatabaseName'] = input[:relational_database_name] unless input[:relational_database_name].nil?
        data['availabilityZone'] = input[:availability_zone] unless input[:availability_zone].nil?
        data['relationalDatabaseBlueprintId'] = input[:relational_database_blueprint_id] unless input[:relational_database_blueprint_id].nil?
        data['relationalDatabaseBundleId'] = input[:relational_database_bundle_id] unless input[:relational_database_bundle_id].nil?
        data['masterDatabaseName'] = input[:master_database_name] unless input[:master_database_name].nil?
        data['masterUsername'] = input[:master_username] unless input[:master_username].nil?
        data['masterUserPassword'] = input[:master_user_password] unless input[:master_user_password].nil?
        data['preferredBackupWindow'] = input[:preferred_backup_window] unless input[:preferred_backup_window].nil?
        data['preferredMaintenanceWindow'] = input[:preferred_maintenance_window] unless input[:preferred_maintenance_window].nil?
        data['publiclyAccessible'] = input[:publicly_accessible] unless input[:publicly_accessible].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateRelationalDatabaseFromSnapshot
    class CreateRelationalDatabaseFromSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.CreateRelationalDatabaseFromSnapshot'
        data = {}
        data['relationalDatabaseName'] = input[:relational_database_name] unless input[:relational_database_name].nil?
        data['availabilityZone'] = input[:availability_zone] unless input[:availability_zone].nil?
        data['publiclyAccessible'] = input[:publicly_accessible] unless input[:publicly_accessible].nil?
        data['relationalDatabaseSnapshotName'] = input[:relational_database_snapshot_name] unless input[:relational_database_snapshot_name].nil?
        data['relationalDatabaseBundleId'] = input[:relational_database_bundle_id] unless input[:relational_database_bundle_id].nil?
        data['sourceRelationalDatabaseName'] = input[:source_relational_database_name] unless input[:source_relational_database_name].nil?
        data['restoreTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:restore_time]).to_i unless input[:restore_time].nil?
        data['useLatestRestorableTime'] = input[:use_latest_restorable_time] unless input[:use_latest_restorable_time].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateRelationalDatabaseSnapshot
    class CreateRelationalDatabaseSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.CreateRelationalDatabaseSnapshot'
        data = {}
        data['relationalDatabaseName'] = input[:relational_database_name] unless input[:relational_database_name].nil?
        data['relationalDatabaseSnapshotName'] = input[:relational_database_snapshot_name] unless input[:relational_database_snapshot_name].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteAlarm
    class DeleteAlarm
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.DeleteAlarm'
        data = {}
        data['alarmName'] = input[:alarm_name] unless input[:alarm_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteAutoSnapshot
    class DeleteAutoSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.DeleteAutoSnapshot'
        data = {}
        data['resourceName'] = input[:resource_name] unless input[:resource_name].nil?
        data['date'] = input[:date] unless input[:date].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteBucket
    class DeleteBucket
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.DeleteBucket'
        data = {}
        data['bucketName'] = input[:bucket_name] unless input[:bucket_name].nil?
        data['forceDelete'] = input[:force_delete] unless input[:force_delete].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteBucketAccessKey
    class DeleteBucketAccessKey
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.DeleteBucketAccessKey'
        data = {}
        data['bucketName'] = input[:bucket_name] unless input[:bucket_name].nil?
        data['accessKeyId'] = input[:access_key_id] unless input[:access_key_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteCertificate
    class DeleteCertificate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.DeleteCertificate'
        data = {}
        data['certificateName'] = input[:certificate_name] unless input[:certificate_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteContactMethod
    class DeleteContactMethod
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.DeleteContactMethod'
        data = {}
        data['protocol'] = input[:protocol] unless input[:protocol].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteContainerImage
    class DeleteContainerImage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.DeleteContainerImage'
        data = {}
        data['serviceName'] = input[:service_name] unless input[:service_name].nil?
        data['image'] = input[:image] unless input[:image].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteContainerService
    class DeleteContainerService
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.DeleteContainerService'
        data = {}
        data['serviceName'] = input[:service_name] unless input[:service_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteDisk
    class DeleteDisk
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.DeleteDisk'
        data = {}
        data['diskName'] = input[:disk_name] unless input[:disk_name].nil?
        data['forceDeleteAddOns'] = input[:force_delete_add_ons] unless input[:force_delete_add_ons].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteDiskSnapshot
    class DeleteDiskSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.DeleteDiskSnapshot'
        data = {}
        data['diskSnapshotName'] = input[:disk_snapshot_name] unless input[:disk_snapshot_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteDistribution
    class DeleteDistribution
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.DeleteDistribution'
        data = {}
        data['distributionName'] = input[:distribution_name] unless input[:distribution_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteDomain
    class DeleteDomain
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.DeleteDomain'
        data = {}
        data['domainName'] = input[:domain_name] unless input[:domain_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteDomainEntry
    class DeleteDomainEntry
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.DeleteDomainEntry'
        data = {}
        data['domainName'] = input[:domain_name] unless input[:domain_name].nil?
        data['domainEntry'] = Builders::DomainEntry.build(input[:domain_entry]) unless input[:domain_entry].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteInstance
    class DeleteInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.DeleteInstance'
        data = {}
        data['instanceName'] = input[:instance_name] unless input[:instance_name].nil?
        data['forceDeleteAddOns'] = input[:force_delete_add_ons] unless input[:force_delete_add_ons].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteInstanceSnapshot
    class DeleteInstanceSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.DeleteInstanceSnapshot'
        data = {}
        data['instanceSnapshotName'] = input[:instance_snapshot_name] unless input[:instance_snapshot_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteKeyPair
    class DeleteKeyPair
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.DeleteKeyPair'
        data = {}
        data['keyPairName'] = input[:key_pair_name] unless input[:key_pair_name].nil?
        data['expectedFingerprint'] = input[:expected_fingerprint] unless input[:expected_fingerprint].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteKnownHostKeys
    class DeleteKnownHostKeys
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.DeleteKnownHostKeys'
        data = {}
        data['instanceName'] = input[:instance_name] unless input[:instance_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteLoadBalancer
    class DeleteLoadBalancer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.DeleteLoadBalancer'
        data = {}
        data['loadBalancerName'] = input[:load_balancer_name] unless input[:load_balancer_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteLoadBalancerTlsCertificate
    class DeleteLoadBalancerTlsCertificate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.DeleteLoadBalancerTlsCertificate'
        data = {}
        data['loadBalancerName'] = input[:load_balancer_name] unless input[:load_balancer_name].nil?
        data['certificateName'] = input[:certificate_name] unless input[:certificate_name].nil?
        data['force'] = input[:force] unless input[:force].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteRelationalDatabase
    class DeleteRelationalDatabase
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.DeleteRelationalDatabase'
        data = {}
        data['relationalDatabaseName'] = input[:relational_database_name] unless input[:relational_database_name].nil?
        data['skipFinalSnapshot'] = input[:skip_final_snapshot] unless input[:skip_final_snapshot].nil?
        data['finalRelationalDatabaseSnapshotName'] = input[:final_relational_database_snapshot_name] unless input[:final_relational_database_snapshot_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteRelationalDatabaseSnapshot
    class DeleteRelationalDatabaseSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.DeleteRelationalDatabaseSnapshot'
        data = {}
        data['relationalDatabaseSnapshotName'] = input[:relational_database_snapshot_name] unless input[:relational_database_snapshot_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DetachCertificateFromDistribution
    class DetachCertificateFromDistribution
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.DetachCertificateFromDistribution'
        data = {}
        data['distributionName'] = input[:distribution_name] unless input[:distribution_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DetachDisk
    class DetachDisk
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.DetachDisk'
        data = {}
        data['diskName'] = input[:disk_name] unless input[:disk_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DetachInstancesFromLoadBalancer
    class DetachInstancesFromLoadBalancer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.DetachInstancesFromLoadBalancer'
        data = {}
        data['loadBalancerName'] = input[:load_balancer_name] unless input[:load_balancer_name].nil?
        data['instanceNames'] = Builders::ResourceNameList.build(input[:instance_names]) unless input[:instance_names].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DetachStaticIp
    class DetachStaticIp
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.DetachStaticIp'
        data = {}
        data['staticIpName'] = input[:static_ip_name] unless input[:static_ip_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisableAddOn
    class DisableAddOn
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.DisableAddOn'
        data = {}
        data['addOnType'] = input[:add_on_type] unless input[:add_on_type].nil?
        data['resourceName'] = input[:resource_name] unless input[:resource_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DownloadDefaultKeyPair
    class DownloadDefaultKeyPair
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.DownloadDefaultKeyPair'
        data = {}
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for EnableAddOn
    class EnableAddOn
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.EnableAddOn'
        data = {}
        data['resourceName'] = input[:resource_name] unless input[:resource_name].nil?
        data['addOnRequest'] = Builders::AddOnRequest.build(input[:add_on_request]) unless input[:add_on_request].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ExportSnapshot
    class ExportSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.ExportSnapshot'
        data = {}
        data['sourceSnapshotName'] = input[:source_snapshot_name] unless input[:source_snapshot_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetActiveNames
    class GetActiveNames
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetActiveNames'
        data = {}
        data['pageToken'] = input[:page_token] unless input[:page_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetAlarms
    class GetAlarms
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetAlarms'
        data = {}
        data['alarmName'] = input[:alarm_name] unless input[:alarm_name].nil?
        data['pageToken'] = input[:page_token] unless input[:page_token].nil?
        data['monitoredResourceName'] = input[:monitored_resource_name] unless input[:monitored_resource_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetAutoSnapshots
    class GetAutoSnapshots
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetAutoSnapshots'
        data = {}
        data['resourceName'] = input[:resource_name] unless input[:resource_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetBlueprints
    class GetBlueprints
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetBlueprints'
        data = {}
        data['includeInactive'] = input[:include_inactive] unless input[:include_inactive].nil?
        data['pageToken'] = input[:page_token] unless input[:page_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetBucketAccessKeys
    class GetBucketAccessKeys
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetBucketAccessKeys'
        data = {}
        data['bucketName'] = input[:bucket_name] unless input[:bucket_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetBucketBundles
    class GetBucketBundles
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetBucketBundles'
        data = {}
        data['includeInactive'] = input[:include_inactive] unless input[:include_inactive].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetBucketMetricData
    class GetBucketMetricData
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetBucketMetricData'
        data = {}
        data['bucketName'] = input[:bucket_name] unless input[:bucket_name].nil?
        data['metricName'] = input[:metric_name] unless input[:metric_name].nil?
        data['startTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_time]).to_i unless input[:start_time].nil?
        data['endTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_time]).to_i unless input[:end_time].nil?
        data['period'] = input[:period] unless input[:period].nil?
        data['statistics'] = Builders::MetricStatisticList.build(input[:statistics]) unless input[:statistics].nil?
        data['unit'] = input[:unit] unless input[:unit].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for MetricStatisticList
    class MetricStatisticList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for GetBuckets
    class GetBuckets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetBuckets'
        data = {}
        data['bucketName'] = input[:bucket_name] unless input[:bucket_name].nil?
        data['pageToken'] = input[:page_token] unless input[:page_token].nil?
        data['includeConnectedResources'] = input[:include_connected_resources] unless input[:include_connected_resources].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetBundles
    class GetBundles
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetBundles'
        data = {}
        data['includeInactive'] = input[:include_inactive] unless input[:include_inactive].nil?
        data['pageToken'] = input[:page_token] unless input[:page_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetCertificates
    class GetCertificates
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetCertificates'
        data = {}
        data['certificateStatuses'] = Builders::CertificateStatusList.build(input[:certificate_statuses]) unless input[:certificate_statuses].nil?
        data['includeCertificateDetails'] = input[:include_certificate_details] unless input[:include_certificate_details].nil?
        data['certificateName'] = input[:certificate_name] unless input[:certificate_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for CertificateStatusList
    class CertificateStatusList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for GetCloudFormationStackRecords
    class GetCloudFormationStackRecords
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetCloudFormationStackRecords'
        data = {}
        data['pageToken'] = input[:page_token] unless input[:page_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetContactMethods
    class GetContactMethods
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetContactMethods'
        data = {}
        data['protocols'] = Builders::ContactProtocolsList.build(input[:protocols]) unless input[:protocols].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ContactProtocolsList
    class ContactProtocolsList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for GetContainerAPIMetadata
    class GetContainerAPIMetadata
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetContainerAPIMetadata'
        data = {}
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetContainerImages
    class GetContainerImages
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetContainerImages'
        data = {}
        data['serviceName'] = input[:service_name] unless input[:service_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetContainerLog
    class GetContainerLog
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetContainerLog'
        data = {}
        data['serviceName'] = input[:service_name] unless input[:service_name].nil?
        data['containerName'] = input[:container_name] unless input[:container_name].nil?
        data['startTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_time]).to_i unless input[:start_time].nil?
        data['endTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_time]).to_i unless input[:end_time].nil?
        data['filterPattern'] = input[:filter_pattern] unless input[:filter_pattern].nil?
        data['pageToken'] = input[:page_token] unless input[:page_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetContainerServiceDeployments
    class GetContainerServiceDeployments
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetContainerServiceDeployments'
        data = {}
        data['serviceName'] = input[:service_name] unless input[:service_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetContainerServiceMetricData
    class GetContainerServiceMetricData
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetContainerServiceMetricData'
        data = {}
        data['serviceName'] = input[:service_name] unless input[:service_name].nil?
        data['metricName'] = input[:metric_name] unless input[:metric_name].nil?
        data['startTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_time]).to_i unless input[:start_time].nil?
        data['endTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_time]).to_i unless input[:end_time].nil?
        data['period'] = input[:period] unless input[:period].nil?
        data['statistics'] = Builders::MetricStatisticList.build(input[:statistics]) unless input[:statistics].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetContainerServicePowers
    class GetContainerServicePowers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetContainerServicePowers'
        data = {}
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetContainerServices
    class GetContainerServices
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetContainerServices'
        data = {}
        data['serviceName'] = input[:service_name] unless input[:service_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetDisk
    class GetDisk
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetDisk'
        data = {}
        data['diskName'] = input[:disk_name] unless input[:disk_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetDiskSnapshot
    class GetDiskSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetDiskSnapshot'
        data = {}
        data['diskSnapshotName'] = input[:disk_snapshot_name] unless input[:disk_snapshot_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetDiskSnapshots
    class GetDiskSnapshots
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetDiskSnapshots'
        data = {}
        data['pageToken'] = input[:page_token] unless input[:page_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetDisks
    class GetDisks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetDisks'
        data = {}
        data['pageToken'] = input[:page_token] unless input[:page_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetDistributionBundles
    class GetDistributionBundles
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetDistributionBundles'
        data = {}
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetDistributionLatestCacheReset
    class GetDistributionLatestCacheReset
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetDistributionLatestCacheReset'
        data = {}
        data['distributionName'] = input[:distribution_name] unless input[:distribution_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetDistributionMetricData
    class GetDistributionMetricData
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetDistributionMetricData'
        data = {}
        data['distributionName'] = input[:distribution_name] unless input[:distribution_name].nil?
        data['metricName'] = input[:metric_name] unless input[:metric_name].nil?
        data['startTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_time]).to_i unless input[:start_time].nil?
        data['endTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_time]).to_i unless input[:end_time].nil?
        data['period'] = input[:period] unless input[:period].nil?
        data['unit'] = input[:unit] unless input[:unit].nil?
        data['statistics'] = Builders::MetricStatisticList.build(input[:statistics]) unless input[:statistics].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetDistributions
    class GetDistributions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetDistributions'
        data = {}
        data['distributionName'] = input[:distribution_name] unless input[:distribution_name].nil?
        data['pageToken'] = input[:page_token] unless input[:page_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetDomain
    class GetDomain
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetDomain'
        data = {}
        data['domainName'] = input[:domain_name] unless input[:domain_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetDomains
    class GetDomains
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetDomains'
        data = {}
        data['pageToken'] = input[:page_token] unless input[:page_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetExportSnapshotRecords
    class GetExportSnapshotRecords
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetExportSnapshotRecords'
        data = {}
        data['pageToken'] = input[:page_token] unless input[:page_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetInstance
    class GetInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetInstance'
        data = {}
        data['instanceName'] = input[:instance_name] unless input[:instance_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetInstanceAccessDetails
    class GetInstanceAccessDetails
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetInstanceAccessDetails'
        data = {}
        data['instanceName'] = input[:instance_name] unless input[:instance_name].nil?
        data['protocol'] = input[:protocol] unless input[:protocol].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetInstanceMetricData
    class GetInstanceMetricData
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetInstanceMetricData'
        data = {}
        data['instanceName'] = input[:instance_name] unless input[:instance_name].nil?
        data['metricName'] = input[:metric_name] unless input[:metric_name].nil?
        data['period'] = input[:period] unless input[:period].nil?
        data['startTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_time]).to_i unless input[:start_time].nil?
        data['endTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_time]).to_i unless input[:end_time].nil?
        data['unit'] = input[:unit] unless input[:unit].nil?
        data['statistics'] = Builders::MetricStatisticList.build(input[:statistics]) unless input[:statistics].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetInstancePortStates
    class GetInstancePortStates
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetInstancePortStates'
        data = {}
        data['instanceName'] = input[:instance_name] unless input[:instance_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetInstanceSnapshot
    class GetInstanceSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetInstanceSnapshot'
        data = {}
        data['instanceSnapshotName'] = input[:instance_snapshot_name] unless input[:instance_snapshot_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetInstanceSnapshots
    class GetInstanceSnapshots
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetInstanceSnapshots'
        data = {}
        data['pageToken'] = input[:page_token] unless input[:page_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetInstanceState
    class GetInstanceState
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetInstanceState'
        data = {}
        data['instanceName'] = input[:instance_name] unless input[:instance_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetInstances
    class GetInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetInstances'
        data = {}
        data['pageToken'] = input[:page_token] unless input[:page_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetKeyPair
    class GetKeyPair
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetKeyPair'
        data = {}
        data['keyPairName'] = input[:key_pair_name] unless input[:key_pair_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetKeyPairs
    class GetKeyPairs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetKeyPairs'
        data = {}
        data['pageToken'] = input[:page_token] unless input[:page_token].nil?
        data['includeDefaultKeyPair'] = input[:include_default_key_pair] unless input[:include_default_key_pair].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetLoadBalancer
    class GetLoadBalancer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetLoadBalancer'
        data = {}
        data['loadBalancerName'] = input[:load_balancer_name] unless input[:load_balancer_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetLoadBalancerMetricData
    class GetLoadBalancerMetricData
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetLoadBalancerMetricData'
        data = {}
        data['loadBalancerName'] = input[:load_balancer_name] unless input[:load_balancer_name].nil?
        data['metricName'] = input[:metric_name] unless input[:metric_name].nil?
        data['period'] = input[:period] unless input[:period].nil?
        data['startTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_time]).to_i unless input[:start_time].nil?
        data['endTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_time]).to_i unless input[:end_time].nil?
        data['unit'] = input[:unit] unless input[:unit].nil?
        data['statistics'] = Builders::MetricStatisticList.build(input[:statistics]) unless input[:statistics].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetLoadBalancerTlsCertificates
    class GetLoadBalancerTlsCertificates
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetLoadBalancerTlsCertificates'
        data = {}
        data['loadBalancerName'] = input[:load_balancer_name] unless input[:load_balancer_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetLoadBalancerTlsPolicies
    class GetLoadBalancerTlsPolicies
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetLoadBalancerTlsPolicies'
        data = {}
        data['pageToken'] = input[:page_token] unless input[:page_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetLoadBalancers
    class GetLoadBalancers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetLoadBalancers'
        data = {}
        data['pageToken'] = input[:page_token] unless input[:page_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetOperation
    class GetOperation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetOperation'
        data = {}
        data['operationId'] = input[:operation_id] unless input[:operation_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetOperations
    class GetOperations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetOperations'
        data = {}
        data['pageToken'] = input[:page_token] unless input[:page_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetOperationsForResource
    class GetOperationsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetOperationsForResource'
        data = {}
        data['resourceName'] = input[:resource_name] unless input[:resource_name].nil?
        data['pageToken'] = input[:page_token] unless input[:page_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetRegions
    class GetRegions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetRegions'
        data = {}
        data['includeAvailabilityZones'] = input[:include_availability_zones] unless input[:include_availability_zones].nil?
        data['includeRelationalDatabaseAvailabilityZones'] = input[:include_relational_database_availability_zones] unless input[:include_relational_database_availability_zones].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetRelationalDatabase
    class GetRelationalDatabase
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetRelationalDatabase'
        data = {}
        data['relationalDatabaseName'] = input[:relational_database_name] unless input[:relational_database_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetRelationalDatabaseBlueprints
    class GetRelationalDatabaseBlueprints
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetRelationalDatabaseBlueprints'
        data = {}
        data['pageToken'] = input[:page_token] unless input[:page_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetRelationalDatabaseBundles
    class GetRelationalDatabaseBundles
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetRelationalDatabaseBundles'
        data = {}
        data['pageToken'] = input[:page_token] unless input[:page_token].nil?
        data['includeInactive'] = input[:include_inactive] unless input[:include_inactive].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetRelationalDatabaseEvents
    class GetRelationalDatabaseEvents
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetRelationalDatabaseEvents'
        data = {}
        data['relationalDatabaseName'] = input[:relational_database_name] unless input[:relational_database_name].nil?
        data['durationInMinutes'] = input[:duration_in_minutes] unless input[:duration_in_minutes].nil?
        data['pageToken'] = input[:page_token] unless input[:page_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetRelationalDatabaseLogEvents
    class GetRelationalDatabaseLogEvents
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetRelationalDatabaseLogEvents'
        data = {}
        data['relationalDatabaseName'] = input[:relational_database_name] unless input[:relational_database_name].nil?
        data['logStreamName'] = input[:log_stream_name] unless input[:log_stream_name].nil?
        data['startTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_time]).to_i unless input[:start_time].nil?
        data['endTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_time]).to_i unless input[:end_time].nil?
        data['startFromHead'] = input[:start_from_head] unless input[:start_from_head].nil?
        data['pageToken'] = input[:page_token] unless input[:page_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetRelationalDatabaseLogStreams
    class GetRelationalDatabaseLogStreams
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetRelationalDatabaseLogStreams'
        data = {}
        data['relationalDatabaseName'] = input[:relational_database_name] unless input[:relational_database_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetRelationalDatabaseMasterUserPassword
    class GetRelationalDatabaseMasterUserPassword
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetRelationalDatabaseMasterUserPassword'
        data = {}
        data['relationalDatabaseName'] = input[:relational_database_name] unless input[:relational_database_name].nil?
        data['passwordVersion'] = input[:password_version] unless input[:password_version].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetRelationalDatabaseMetricData
    class GetRelationalDatabaseMetricData
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetRelationalDatabaseMetricData'
        data = {}
        data['relationalDatabaseName'] = input[:relational_database_name] unless input[:relational_database_name].nil?
        data['metricName'] = input[:metric_name] unless input[:metric_name].nil?
        data['period'] = input[:period] unless input[:period].nil?
        data['startTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_time]).to_i unless input[:start_time].nil?
        data['endTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_time]).to_i unless input[:end_time].nil?
        data['unit'] = input[:unit] unless input[:unit].nil?
        data['statistics'] = Builders::MetricStatisticList.build(input[:statistics]) unless input[:statistics].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetRelationalDatabaseParameters
    class GetRelationalDatabaseParameters
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetRelationalDatabaseParameters'
        data = {}
        data['relationalDatabaseName'] = input[:relational_database_name] unless input[:relational_database_name].nil?
        data['pageToken'] = input[:page_token] unless input[:page_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetRelationalDatabaseSnapshot
    class GetRelationalDatabaseSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetRelationalDatabaseSnapshot'
        data = {}
        data['relationalDatabaseSnapshotName'] = input[:relational_database_snapshot_name] unless input[:relational_database_snapshot_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetRelationalDatabaseSnapshots
    class GetRelationalDatabaseSnapshots
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetRelationalDatabaseSnapshots'
        data = {}
        data['pageToken'] = input[:page_token] unless input[:page_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetRelationalDatabases
    class GetRelationalDatabases
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetRelationalDatabases'
        data = {}
        data['pageToken'] = input[:page_token] unless input[:page_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetStaticIp
    class GetStaticIp
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetStaticIp'
        data = {}
        data['staticIpName'] = input[:static_ip_name] unless input[:static_ip_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetStaticIps
    class GetStaticIps
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.GetStaticIps'
        data = {}
        data['pageToken'] = input[:page_token] unless input[:page_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ImportKeyPair
    class ImportKeyPair
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.ImportKeyPair'
        data = {}
        data['keyPairName'] = input[:key_pair_name] unless input[:key_pair_name].nil?
        data['publicKeyBase64'] = input[:public_key_base64] unless input[:public_key_base64].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for IsVpcPeered
    class IsVpcPeered
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.IsVpcPeered'
        data = {}
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for OpenInstancePublicPorts
    class OpenInstancePublicPorts
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.OpenInstancePublicPorts'
        data = {}
        data['portInfo'] = Builders::PortInfo.build(input[:port_info]) unless input[:port_info].nil?
        data['instanceName'] = input[:instance_name] unless input[:instance_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PeerVpc
    class PeerVpc
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.PeerVpc'
        data = {}
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutAlarm
    class PutAlarm
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.PutAlarm'
        data = {}
        data['alarmName'] = input[:alarm_name] unless input[:alarm_name].nil?
        data['metricName'] = input[:metric_name] unless input[:metric_name].nil?
        data['monitoredResourceName'] = input[:monitored_resource_name] unless input[:monitored_resource_name].nil?
        data['comparisonOperator'] = input[:comparison_operator] unless input[:comparison_operator].nil?
        data['threshold'] = Hearth::NumberHelper.serialize(input[:threshold]) unless input[:threshold].nil?
        data['evaluationPeriods'] = input[:evaluation_periods] unless input[:evaluation_periods].nil?
        data['datapointsToAlarm'] = input[:datapoints_to_alarm] unless input[:datapoints_to_alarm].nil?
        data['treatMissingData'] = input[:treat_missing_data] unless input[:treat_missing_data].nil?
        data['contactProtocols'] = Builders::ContactProtocolsList.build(input[:contact_protocols]) unless input[:contact_protocols].nil?
        data['notificationTriggers'] = Builders::NotificationTriggerList.build(input[:notification_triggers]) unless input[:notification_triggers].nil?
        data['notificationEnabled'] = input[:notification_enabled] unless input[:notification_enabled].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for NotificationTriggerList
    class NotificationTriggerList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for PutInstancePublicPorts
    class PutInstancePublicPorts
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.PutInstancePublicPorts'
        data = {}
        data['portInfos'] = Builders::PortInfoList.build(input[:port_infos]) unless input[:port_infos].nil?
        data['instanceName'] = input[:instance_name] unless input[:instance_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for PortInfoList
    class PortInfoList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::PortInfo.build(element) unless element.nil?
        end
        data
      end
    end

    # Operation Builder for RebootInstance
    class RebootInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.RebootInstance'
        data = {}
        data['instanceName'] = input[:instance_name] unless input[:instance_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RebootRelationalDatabase
    class RebootRelationalDatabase
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.RebootRelationalDatabase'
        data = {}
        data['relationalDatabaseName'] = input[:relational_database_name] unless input[:relational_database_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RegisterContainerImage
    class RegisterContainerImage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.RegisterContainerImage'
        data = {}
        data['serviceName'] = input[:service_name] unless input[:service_name].nil?
        data['label'] = input[:label] unless input[:label].nil?
        data['digest'] = input[:digest] unless input[:digest].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ReleaseStaticIp
    class ReleaseStaticIp
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.ReleaseStaticIp'
        data = {}
        data['staticIpName'] = input[:static_ip_name] unless input[:static_ip_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ResetDistributionCache
    class ResetDistributionCache
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.ResetDistributionCache'
        data = {}
        data['distributionName'] = input[:distribution_name] unless input[:distribution_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SendContactMethodVerification
    class SendContactMethodVerification
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.SendContactMethodVerification'
        data = {}
        data['protocol'] = input[:protocol] unless input[:protocol].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SetIpAddressType
    class SetIpAddressType
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.SetIpAddressType'
        data = {}
        data['resourceType'] = input[:resource_type] unless input[:resource_type].nil?
        data['resourceName'] = input[:resource_name] unless input[:resource_name].nil?
        data['ipAddressType'] = input[:ip_address_type] unless input[:ip_address_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SetResourceAccessForBucket
    class SetResourceAccessForBucket
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.SetResourceAccessForBucket'
        data = {}
        data['resourceName'] = input[:resource_name] unless input[:resource_name].nil?
        data['bucketName'] = input[:bucket_name] unless input[:bucket_name].nil?
        data['access'] = input[:access] unless input[:access].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartInstance
    class StartInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.StartInstance'
        data = {}
        data['instanceName'] = input[:instance_name] unless input[:instance_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartRelationalDatabase
    class StartRelationalDatabase
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.StartRelationalDatabase'
        data = {}
        data['relationalDatabaseName'] = input[:relational_database_name] unless input[:relational_database_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopInstance
    class StopInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.StopInstance'
        data = {}
        data['instanceName'] = input[:instance_name] unless input[:instance_name].nil?
        data['force'] = input[:force] unless input[:force].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopRelationalDatabase
    class StopRelationalDatabase
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.StopRelationalDatabase'
        data = {}
        data['relationalDatabaseName'] = input[:relational_database_name] unless input[:relational_database_name].nil?
        data['relationalDatabaseSnapshotName'] = input[:relational_database_snapshot_name] unless input[:relational_database_snapshot_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.TagResource'
        data = {}
        data['resourceName'] = input[:resource_name] unless input[:resource_name].nil?
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TestAlarm
    class TestAlarm
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.TestAlarm'
        data = {}
        data['alarmName'] = input[:alarm_name] unless input[:alarm_name].nil?
        data['state'] = input[:state] unless input[:state].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UnpeerVpc
    class UnpeerVpc
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.UnpeerVpc'
        data = {}
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.UntagResource'
        data = {}
        data['resourceName'] = input[:resource_name] unless input[:resource_name].nil?
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['tagKeys'] = Builders::TagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateBucket
    class UpdateBucket
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.UpdateBucket'
        data = {}
        data['bucketName'] = input[:bucket_name] unless input[:bucket_name].nil?
        data['accessRules'] = Builders::AccessRules.build(input[:access_rules]) unless input[:access_rules].nil?
        data['versioning'] = input[:versioning] unless input[:versioning].nil?
        data['readonlyAccessAccounts'] = Builders::PartnerIdList.build(input[:readonly_access_accounts]) unless input[:readonly_access_accounts].nil?
        data['accessLogConfig'] = Builders::BucketAccessLogConfig.build(input[:access_log_config]) unless input[:access_log_config].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for BucketAccessLogConfig
    class BucketAccessLogConfig
      def self.build(input)
        data = {}
        data['enabled'] = input[:enabled] unless input[:enabled].nil?
        data['destination'] = input[:destination] unless input[:destination].nil?
        data['prefix'] = input[:prefix] unless input[:prefix].nil?
        data
      end
    end

    # List Builder for PartnerIdList
    class PartnerIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AccessRules
    class AccessRules
      def self.build(input)
        data = {}
        data['getObject'] = input[:get_object] unless input[:get_object].nil?
        data['allowPublicOverrides'] = input[:allow_public_overrides] unless input[:allow_public_overrides].nil?
        data
      end
    end

    # Operation Builder for UpdateBucketBundle
    class UpdateBucketBundle
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.UpdateBucketBundle'
        data = {}
        data['bucketName'] = input[:bucket_name] unless input[:bucket_name].nil?
        data['bundleId'] = input[:bundle_id] unless input[:bundle_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateContainerService
    class UpdateContainerService
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.UpdateContainerService'
        data = {}
        data['serviceName'] = input[:service_name] unless input[:service_name].nil?
        data['power'] = input[:power] unless input[:power].nil?
        data['scale'] = input[:scale] unless input[:scale].nil?
        data['isDisabled'] = input[:is_disabled] unless input[:is_disabled].nil?
        data['publicDomainNames'] = Builders::ContainerServicePublicDomains.build(input[:public_domain_names]) unless input[:public_domain_names].nil?
        data['privateRegistryAccess'] = Builders::PrivateRegistryAccessRequest.build(input[:private_registry_access]) unless input[:private_registry_access].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateDistribution
    class UpdateDistribution
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.UpdateDistribution'
        data = {}
        data['distributionName'] = input[:distribution_name] unless input[:distribution_name].nil?
        data['origin'] = Builders::InputOrigin.build(input[:origin]) unless input[:origin].nil?
        data['defaultCacheBehavior'] = Builders::CacheBehavior.build(input[:default_cache_behavior]) unless input[:default_cache_behavior].nil?
        data['cacheBehaviorSettings'] = Builders::CacheSettings.build(input[:cache_behavior_settings]) unless input[:cache_behavior_settings].nil?
        data['cacheBehaviors'] = Builders::CacheBehaviorList.build(input[:cache_behaviors]) unless input[:cache_behaviors].nil?
        data['isEnabled'] = input[:is_enabled] unless input[:is_enabled].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateDistributionBundle
    class UpdateDistributionBundle
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.UpdateDistributionBundle'
        data = {}
        data['distributionName'] = input[:distribution_name] unless input[:distribution_name].nil?
        data['bundleId'] = input[:bundle_id] unless input[:bundle_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateDomainEntry
    class UpdateDomainEntry
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.UpdateDomainEntry'
        data = {}
        data['domainName'] = input[:domain_name] unless input[:domain_name].nil?
        data['domainEntry'] = Builders::DomainEntry.build(input[:domain_entry]) unless input[:domain_entry].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateLoadBalancerAttribute
    class UpdateLoadBalancerAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.UpdateLoadBalancerAttribute'
        data = {}
        data['loadBalancerName'] = input[:load_balancer_name] unless input[:load_balancer_name].nil?
        data['attributeName'] = input[:attribute_name] unless input[:attribute_name].nil?
        data['attributeValue'] = input[:attribute_value] unless input[:attribute_value].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateRelationalDatabase
    class UpdateRelationalDatabase
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.UpdateRelationalDatabase'
        data = {}
        data['relationalDatabaseName'] = input[:relational_database_name] unless input[:relational_database_name].nil?
        data['masterUserPassword'] = input[:master_user_password] unless input[:master_user_password].nil?
        data['rotateMasterUserPassword'] = input[:rotate_master_user_password] unless input[:rotate_master_user_password].nil?
        data['preferredBackupWindow'] = input[:preferred_backup_window] unless input[:preferred_backup_window].nil?
        data['preferredMaintenanceWindow'] = input[:preferred_maintenance_window] unless input[:preferred_maintenance_window].nil?
        data['enableBackupRetention'] = input[:enable_backup_retention] unless input[:enable_backup_retention].nil?
        data['disableBackupRetention'] = input[:disable_backup_retention] unless input[:disable_backup_retention].nil?
        data['publiclyAccessible'] = input[:publicly_accessible] unless input[:publicly_accessible].nil?
        data['applyImmediately'] = input[:apply_immediately] unless input[:apply_immediately].nil?
        data['caCertificateIdentifier'] = input[:ca_certificate_identifier] unless input[:ca_certificate_identifier].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateRelationalDatabaseParameters
    class UpdateRelationalDatabaseParameters
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Lightsail_20161128.UpdateRelationalDatabaseParameters'
        data = {}
        data['relationalDatabaseName'] = input[:relational_database_name] unless input[:relational_database_name].nil?
        data['parameters'] = Builders::RelationalDatabaseParameterList.build(input[:parameters]) unless input[:parameters].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for RelationalDatabaseParameterList
    class RelationalDatabaseParameterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::RelationalDatabaseParameter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RelationalDatabaseParameter
    class RelationalDatabaseParameter
      def self.build(input)
        data = {}
        data['allowedValues'] = input[:allowed_values] unless input[:allowed_values].nil?
        data['applyMethod'] = input[:apply_method] unless input[:apply_method].nil?
        data['applyType'] = input[:apply_type] unless input[:apply_type].nil?
        data['dataType'] = input[:data_type] unless input[:data_type].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['isModifiable'] = input[:is_modifiable] unless input[:is_modifiable].nil?
        data['parameterName'] = input[:parameter_name] unless input[:parameter_name].nil?
        data['parameterValue'] = input[:parameter_value] unless input[:parameter_value].nil?
        data
      end
    end
  end
end
