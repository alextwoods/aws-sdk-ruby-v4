# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::Snowball
  module Builders

    # Operation Builder for CancelCluster
    class CancelCluster
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSIESnowballJobManagementService.CancelCluster'
        data = {}
        data['ClusterId'] = input[:cluster_id] unless input[:cluster_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CancelJob
    class CancelJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSIESnowballJobManagementService.CancelJob'
        data = {}
        data['JobId'] = input[:job_id] unless input[:job_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateAddress
    class CreateAddress
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSIESnowballJobManagementService.CreateAddress'
        data = {}
        data['Address'] = Builders::Address.build(input[:address]) unless input[:address].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for Address
    class Address
      def self.build(input)
        data = {}
        data['AddressId'] = input[:address_id] unless input[:address_id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Company'] = input[:company] unless input[:company].nil?
        data['Street1'] = input[:street1] unless input[:street1].nil?
        data['Street2'] = input[:street2] unless input[:street2].nil?
        data['Street3'] = input[:street3] unless input[:street3].nil?
        data['City'] = input[:city] unless input[:city].nil?
        data['StateOrProvince'] = input[:state_or_province] unless input[:state_or_province].nil?
        data['PrefectureOrDistrict'] = input[:prefecture_or_district] unless input[:prefecture_or_district].nil?
        data['Landmark'] = input[:landmark] unless input[:landmark].nil?
        data['Country'] = input[:country] unless input[:country].nil?
        data['PostalCode'] = input[:postal_code] unless input[:postal_code].nil?
        data['PhoneNumber'] = input[:phone_number] unless input[:phone_number].nil?
        data['IsRestricted'] = input[:is_restricted] unless input[:is_restricted].nil?
        data
      end
    end

    # Operation Builder for CreateCluster
    class CreateCluster
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSIESnowballJobManagementService.CreateCluster'
        data = {}
        data['JobType'] = input[:job_type] unless input[:job_type].nil?
        data['Resources'] = Builders::JobResource.build(input[:resources]) unless input[:resources].nil?
        data['OnDeviceServiceConfiguration'] = Builders::OnDeviceServiceConfiguration.build(input[:on_device_service_configuration]) unless input[:on_device_service_configuration].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['AddressId'] = input[:address_id] unless input[:address_id].nil?
        data['KmsKeyARN'] = input[:kms_key_arn] unless input[:kms_key_arn].nil?
        data['RoleARN'] = input[:role_arn] unless input[:role_arn].nil?
        data['SnowballType'] = input[:snowball_type] unless input[:snowball_type].nil?
        data['ShippingOption'] = input[:shipping_option] unless input[:shipping_option].nil?
        data['Notification'] = Builders::Notification.build(input[:notification]) unless input[:notification].nil?
        data['ForwardingAddressId'] = input[:forwarding_address_id] unless input[:forwarding_address_id].nil?
        data['TaxDocuments'] = Builders::TaxDocuments.build(input[:tax_documents]) unless input[:tax_documents].nil?
        data['RemoteManagement'] = input[:remote_management] unless input[:remote_management].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for TaxDocuments
    class TaxDocuments
      def self.build(input)
        data = {}
        data['IND'] = Builders::INDTaxDocuments.build(input[:ind]) unless input[:ind].nil?
        data
      end
    end

    # Structure Builder for INDTaxDocuments
    class INDTaxDocuments
      def self.build(input)
        data = {}
        data['GSTIN'] = input[:gstin] unless input[:gstin].nil?
        data
      end
    end

    # Structure Builder for Notification
    class Notification
      def self.build(input)
        data = {}
        data['SnsTopicARN'] = input[:sns_topic_arn] unless input[:sns_topic_arn].nil?
        data['JobStatesToNotify'] = Builders::JobStateList.build(input[:job_states_to_notify]) unless input[:job_states_to_notify].nil?
        data['NotifyAll'] = input[:notify_all] unless input[:notify_all].nil?
        data
      end
    end

    # List Builder for JobStateList
    class JobStateList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for OnDeviceServiceConfiguration
    class OnDeviceServiceConfiguration
      def self.build(input)
        data = {}
        data['NFSOnDeviceService'] = Builders::NFSOnDeviceServiceConfiguration.build(input[:nfs_on_device_service]) unless input[:nfs_on_device_service].nil?
        data['TGWOnDeviceService'] = Builders::TGWOnDeviceServiceConfiguration.build(input[:tgw_on_device_service]) unless input[:tgw_on_device_service].nil?
        data
      end
    end

    # Structure Builder for TGWOnDeviceServiceConfiguration
    class TGWOnDeviceServiceConfiguration
      def self.build(input)
        data = {}
        data['StorageLimit'] = input[:storage_limit] unless input[:storage_limit].nil?
        data['StorageUnit'] = input[:storage_unit] unless input[:storage_unit].nil?
        data
      end
    end

    # Structure Builder for NFSOnDeviceServiceConfiguration
    class NFSOnDeviceServiceConfiguration
      def self.build(input)
        data = {}
        data['StorageLimit'] = input[:storage_limit] unless input[:storage_limit].nil?
        data['StorageUnit'] = input[:storage_unit] unless input[:storage_unit].nil?
        data
      end
    end

    # Structure Builder for JobResource
    class JobResource
      def self.build(input)
        data = {}
        data['S3Resources'] = Builders::S3ResourceList.build(input[:s3_resources]) unless input[:s3_resources].nil?
        data['LambdaResources'] = Builders::LambdaResourceList.build(input[:lambda_resources]) unless input[:lambda_resources].nil?
        data['Ec2AmiResources'] = Builders::Ec2AmiResourceList.build(input[:ec2_ami_resources]) unless input[:ec2_ami_resources].nil?
        data
      end
    end

    # List Builder for Ec2AmiResourceList
    class Ec2AmiResourceList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Ec2AmiResource.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Ec2AmiResource
    class Ec2AmiResource
      def self.build(input)
        data = {}
        data['AmiId'] = input[:ami_id] unless input[:ami_id].nil?
        data['SnowballAmiId'] = input[:snowball_ami_id] unless input[:snowball_ami_id].nil?
        data
      end
    end

    # List Builder for LambdaResourceList
    class LambdaResourceList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::LambdaResource.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for LambdaResource
    class LambdaResource
      def self.build(input)
        data = {}
        data['LambdaArn'] = input[:lambda_arn] unless input[:lambda_arn].nil?
        data['EventTriggers'] = Builders::EventTriggerDefinitionList.build(input[:event_triggers]) unless input[:event_triggers].nil?
        data
      end
    end

    # List Builder for EventTriggerDefinitionList
    class EventTriggerDefinitionList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::EventTriggerDefinition.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for EventTriggerDefinition
    class EventTriggerDefinition
      def self.build(input)
        data = {}
        data['EventResourceARN'] = input[:event_resource_arn] unless input[:event_resource_arn].nil?
        data
      end
    end

    # List Builder for S3ResourceList
    class S3ResourceList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::S3Resource.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for S3Resource
    class S3Resource
      def self.build(input)
        data = {}
        data['BucketArn'] = input[:bucket_arn] unless input[:bucket_arn].nil?
        data['KeyRange'] = Builders::KeyRange.build(input[:key_range]) unless input[:key_range].nil?
        data['TargetOnDeviceServices'] = Builders::TargetOnDeviceServiceList.build(input[:target_on_device_services]) unless input[:target_on_device_services].nil?
        data
      end
    end

    # List Builder for TargetOnDeviceServiceList
    class TargetOnDeviceServiceList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::TargetOnDeviceService.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for TargetOnDeviceService
    class TargetOnDeviceService
      def self.build(input)
        data = {}
        data['ServiceName'] = input[:service_name] unless input[:service_name].nil?
        data['TransferOption'] = input[:transfer_option] unless input[:transfer_option].nil?
        data
      end
    end

    # Structure Builder for KeyRange
    class KeyRange
      def self.build(input)
        data = {}
        data['BeginMarker'] = input[:begin_marker] unless input[:begin_marker].nil?
        data['EndMarker'] = input[:end_marker] unless input[:end_marker].nil?
        data
      end
    end

    # Operation Builder for CreateJob
    class CreateJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSIESnowballJobManagementService.CreateJob'
        data = {}
        data['JobType'] = input[:job_type] unless input[:job_type].nil?
        data['Resources'] = Builders::JobResource.build(input[:resources]) unless input[:resources].nil?
        data['OnDeviceServiceConfiguration'] = Builders::OnDeviceServiceConfiguration.build(input[:on_device_service_configuration]) unless input[:on_device_service_configuration].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['AddressId'] = input[:address_id] unless input[:address_id].nil?
        data['KmsKeyARN'] = input[:kms_key_arn] unless input[:kms_key_arn].nil?
        data['RoleARN'] = input[:role_arn] unless input[:role_arn].nil?
        data['SnowballCapacityPreference'] = input[:snowball_capacity_preference] unless input[:snowball_capacity_preference].nil?
        data['ShippingOption'] = input[:shipping_option] unless input[:shipping_option].nil?
        data['Notification'] = Builders::Notification.build(input[:notification]) unless input[:notification].nil?
        data['ClusterId'] = input[:cluster_id] unless input[:cluster_id].nil?
        data['SnowballType'] = input[:snowball_type] unless input[:snowball_type].nil?
        data['ForwardingAddressId'] = input[:forwarding_address_id] unless input[:forwarding_address_id].nil?
        data['TaxDocuments'] = Builders::TaxDocuments.build(input[:tax_documents]) unless input[:tax_documents].nil?
        data['DeviceConfiguration'] = Builders::DeviceConfiguration.build(input[:device_configuration]) unless input[:device_configuration].nil?
        data['RemoteManagement'] = input[:remote_management] unless input[:remote_management].nil?
        data['LongTermPricingId'] = input[:long_term_pricing_id] unless input[:long_term_pricing_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DeviceConfiguration
    class DeviceConfiguration
      def self.build(input)
        data = {}
        data['SnowconeDeviceConfiguration'] = Builders::SnowconeDeviceConfiguration.build(input[:snowcone_device_configuration]) unless input[:snowcone_device_configuration].nil?
        data
      end
    end

    # Structure Builder for SnowconeDeviceConfiguration
    class SnowconeDeviceConfiguration
      def self.build(input)
        data = {}
        data['WirelessConnection'] = Builders::WirelessConnection.build(input[:wireless_connection]) unless input[:wireless_connection].nil?
        data
      end
    end

    # Structure Builder for WirelessConnection
    class WirelessConnection
      def self.build(input)
        data = {}
        data['IsWifiEnabled'] = input[:is_wifi_enabled] unless input[:is_wifi_enabled].nil?
        data
      end
    end

    # Operation Builder for CreateLongTermPricing
    class CreateLongTermPricing
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSIESnowballJobManagementService.CreateLongTermPricing'
        data = {}
        data['LongTermPricingType'] = input[:long_term_pricing_type] unless input[:long_term_pricing_type].nil?
        data['IsLongTermPricingAutoRenew'] = input[:is_long_term_pricing_auto_renew] unless input[:is_long_term_pricing_auto_renew].nil?
        data['SnowballType'] = input[:snowball_type] unless input[:snowball_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateReturnShippingLabel
    class CreateReturnShippingLabel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSIESnowballJobManagementService.CreateReturnShippingLabel'
        data = {}
        data['JobId'] = input[:job_id] unless input[:job_id].nil?
        data['ShippingOption'] = input[:shipping_option] unless input[:shipping_option].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeAddress
    class DescribeAddress
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSIESnowballJobManagementService.DescribeAddress'
        data = {}
        data['AddressId'] = input[:address_id] unless input[:address_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeAddresses
    class DescribeAddresses
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSIESnowballJobManagementService.DescribeAddresses'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeCluster
    class DescribeCluster
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSIESnowballJobManagementService.DescribeCluster'
        data = {}
        data['ClusterId'] = input[:cluster_id] unless input[:cluster_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeJob
    class DescribeJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSIESnowballJobManagementService.DescribeJob'
        data = {}
        data['JobId'] = input[:job_id] unless input[:job_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeReturnShippingLabel
    class DescribeReturnShippingLabel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSIESnowballJobManagementService.DescribeReturnShippingLabel'
        data = {}
        data['JobId'] = input[:job_id] unless input[:job_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetJobManifest
    class GetJobManifest
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSIESnowballJobManagementService.GetJobManifest'
        data = {}
        data['JobId'] = input[:job_id] unless input[:job_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetJobUnlockCode
    class GetJobUnlockCode
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSIESnowballJobManagementService.GetJobUnlockCode'
        data = {}
        data['JobId'] = input[:job_id] unless input[:job_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetSnowballUsage
    class GetSnowballUsage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSIESnowballJobManagementService.GetSnowballUsage'
        data = {}
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetSoftwareUpdates
    class GetSoftwareUpdates
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSIESnowballJobManagementService.GetSoftwareUpdates'
        data = {}
        data['JobId'] = input[:job_id] unless input[:job_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListClusterJobs
    class ListClusterJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSIESnowballJobManagementService.ListClusterJobs'
        data = {}
        data['ClusterId'] = input[:cluster_id] unless input[:cluster_id].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListClusters
    class ListClusters
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSIESnowballJobManagementService.ListClusters'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListCompatibleImages
    class ListCompatibleImages
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSIESnowballJobManagementService.ListCompatibleImages'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListJobs
    class ListJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSIESnowballJobManagementService.ListJobs'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListLongTermPricing
    class ListLongTermPricing
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSIESnowballJobManagementService.ListLongTermPricing'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateCluster
    class UpdateCluster
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSIESnowballJobManagementService.UpdateCluster'
        data = {}
        data['ClusterId'] = input[:cluster_id] unless input[:cluster_id].nil?
        data['RoleARN'] = input[:role_arn] unless input[:role_arn].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Resources'] = Builders::JobResource.build(input[:resources]) unless input[:resources].nil?
        data['OnDeviceServiceConfiguration'] = Builders::OnDeviceServiceConfiguration.build(input[:on_device_service_configuration]) unless input[:on_device_service_configuration].nil?
        data['AddressId'] = input[:address_id] unless input[:address_id].nil?
        data['ShippingOption'] = input[:shipping_option] unless input[:shipping_option].nil?
        data['Notification'] = Builders::Notification.build(input[:notification]) unless input[:notification].nil?
        data['ForwardingAddressId'] = input[:forwarding_address_id] unless input[:forwarding_address_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateJob
    class UpdateJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSIESnowballJobManagementService.UpdateJob'
        data = {}
        data['JobId'] = input[:job_id] unless input[:job_id].nil?
        data['RoleARN'] = input[:role_arn] unless input[:role_arn].nil?
        data['Notification'] = Builders::Notification.build(input[:notification]) unless input[:notification].nil?
        data['Resources'] = Builders::JobResource.build(input[:resources]) unless input[:resources].nil?
        data['OnDeviceServiceConfiguration'] = Builders::OnDeviceServiceConfiguration.build(input[:on_device_service_configuration]) unless input[:on_device_service_configuration].nil?
        data['AddressId'] = input[:address_id] unless input[:address_id].nil?
        data['ShippingOption'] = input[:shipping_option] unless input[:shipping_option].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['SnowballCapacityPreference'] = input[:snowball_capacity_preference] unless input[:snowball_capacity_preference].nil?
        data['ForwardingAddressId'] = input[:forwarding_address_id] unless input[:forwarding_address_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateJobShipmentState
    class UpdateJobShipmentState
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSIESnowballJobManagementService.UpdateJobShipmentState'
        data = {}
        data['JobId'] = input[:job_id] unless input[:job_id].nil?
        data['ShipmentState'] = input[:shipment_state] unless input[:shipment_state].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateLongTermPricing
    class UpdateLongTermPricing
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSIESnowballJobManagementService.UpdateLongTermPricing'
        data = {}
        data['LongTermPricingId'] = input[:long_term_pricing_id] unless input[:long_term_pricing_id].nil?
        data['ReplacementJob'] = input[:replacement_job] unless input[:replacement_job].nil?
        data['IsLongTermPricingAutoRenew'] = input[:is_long_term_pricing_auto_renew] unless input[:is_long_term_pricing_auto_renew].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
