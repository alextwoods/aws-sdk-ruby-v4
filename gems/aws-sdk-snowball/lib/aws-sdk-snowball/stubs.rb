# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Snowball
  module Stubs

    # Operation Stubber for CancelCluster
    class CancelCluster
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CancelJob
    class CancelJob
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateAddress
    class CreateAddress
      def self.default(visited=[])
        {
          address_id: 'address_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AddressId'] = stub[:address_id] unless stub[:address_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateCluster
    class CreateCluster
      def self.default(visited=[])
        {
          cluster_id: 'cluster_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ClusterId'] = stub[:cluster_id] unless stub[:cluster_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateJob
    class CreateJob
      def self.default(visited=[])
        {
          job_id: 'job_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateLongTermPricing
    class CreateLongTermPricing
      def self.default(visited=[])
        {
          long_term_pricing_id: 'long_term_pricing_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LongTermPricingId'] = stub[:long_term_pricing_id] unless stub[:long_term_pricing_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateReturnShippingLabel
    class CreateReturnShippingLabel
      def self.default(visited=[])
        {
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeAddress
    class DescribeAddress
      def self.default(visited=[])
        {
          address: Address.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Address'] = Stubs::Address.stub(stub[:address]) unless stub[:address].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Address
    class Address
      def self.default(visited=[])
        return nil if visited.include?('Address')
        visited = visited + ['Address']
        {
          address_id: 'address_id',
          name: 'name',
          company: 'company',
          street1: 'street1',
          street2: 'street2',
          street3: 'street3',
          city: 'city',
          state_or_province: 'state_or_province',
          prefecture_or_district: 'prefecture_or_district',
          landmark: 'landmark',
          country: 'country',
          postal_code: 'postal_code',
          phone_number: 'phone_number',
          is_restricted: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::Address.new
        data = {}
        data['AddressId'] = stub[:address_id] unless stub[:address_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Company'] = stub[:company] unless stub[:company].nil?
        data['Street1'] = stub[:street1] unless stub[:street1].nil?
        data['Street2'] = stub[:street2] unless stub[:street2].nil?
        data['Street3'] = stub[:street3] unless stub[:street3].nil?
        data['City'] = stub[:city] unless stub[:city].nil?
        data['StateOrProvince'] = stub[:state_or_province] unless stub[:state_or_province].nil?
        data['PrefectureOrDistrict'] = stub[:prefecture_or_district] unless stub[:prefecture_or_district].nil?
        data['Landmark'] = stub[:landmark] unless stub[:landmark].nil?
        data['Country'] = stub[:country] unless stub[:country].nil?
        data['PostalCode'] = stub[:postal_code] unless stub[:postal_code].nil?
        data['PhoneNumber'] = stub[:phone_number] unless stub[:phone_number].nil?
        data['IsRestricted'] = stub[:is_restricted] unless stub[:is_restricted].nil?
        data
      end
    end

    # Operation Stubber for DescribeAddresses
    class DescribeAddresses
      def self.default(visited=[])
        {
          addresses: AddressList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Addresses'] = Stubs::AddressList.stub(stub[:addresses]) unless stub[:addresses].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AddressList
    class AddressList
      def self.default(visited=[])
        return nil if visited.include?('AddressList')
        visited = visited + ['AddressList']
        [
          Address.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Address.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeCluster
    class DescribeCluster
      def self.default(visited=[])
        {
          cluster_metadata: ClusterMetadata.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ClusterMetadata'] = Stubs::ClusterMetadata.stub(stub[:cluster_metadata]) unless stub[:cluster_metadata].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ClusterMetadata
    class ClusterMetadata
      def self.default(visited=[])
        return nil if visited.include?('ClusterMetadata')
        visited = visited + ['ClusterMetadata']
        {
          cluster_id: 'cluster_id',
          description: 'description',
          kms_key_arn: 'kms_key_arn',
          role_arn: 'role_arn',
          cluster_state: 'cluster_state',
          job_type: 'job_type',
          snowball_type: 'snowball_type',
          creation_date: Time.now,
          resources: JobResource.default(visited),
          address_id: 'address_id',
          shipping_option: 'shipping_option',
          notification: Notification.default(visited),
          forwarding_address_id: 'forwarding_address_id',
          tax_documents: TaxDocuments.default(visited),
          on_device_service_configuration: OnDeviceServiceConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ClusterMetadata.new
        data = {}
        data['ClusterId'] = stub[:cluster_id] unless stub[:cluster_id].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['KmsKeyARN'] = stub[:kms_key_arn] unless stub[:kms_key_arn].nil?
        data['RoleARN'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['ClusterState'] = stub[:cluster_state] unless stub[:cluster_state].nil?
        data['JobType'] = stub[:job_type] unless stub[:job_type].nil?
        data['SnowballType'] = stub[:snowball_type] unless stub[:snowball_type].nil?
        data['CreationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['Resources'] = Stubs::JobResource.stub(stub[:resources]) unless stub[:resources].nil?
        data['AddressId'] = stub[:address_id] unless stub[:address_id].nil?
        data['ShippingOption'] = stub[:shipping_option] unless stub[:shipping_option].nil?
        data['Notification'] = Stubs::Notification.stub(stub[:notification]) unless stub[:notification].nil?
        data['ForwardingAddressId'] = stub[:forwarding_address_id] unless stub[:forwarding_address_id].nil?
        data['TaxDocuments'] = Stubs::TaxDocuments.stub(stub[:tax_documents]) unless stub[:tax_documents].nil?
        data['OnDeviceServiceConfiguration'] = Stubs::OnDeviceServiceConfiguration.stub(stub[:on_device_service_configuration]) unless stub[:on_device_service_configuration].nil?
        data
      end
    end

    # Structure Stubber for OnDeviceServiceConfiguration
    class OnDeviceServiceConfiguration
      def self.default(visited=[])
        return nil if visited.include?('OnDeviceServiceConfiguration')
        visited = visited + ['OnDeviceServiceConfiguration']
        {
          nfs_on_device_service: NFSOnDeviceServiceConfiguration.default(visited),
          tgw_on_device_service: TGWOnDeviceServiceConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::OnDeviceServiceConfiguration.new
        data = {}
        data['NFSOnDeviceService'] = Stubs::NFSOnDeviceServiceConfiguration.stub(stub[:nfs_on_device_service]) unless stub[:nfs_on_device_service].nil?
        data['TGWOnDeviceService'] = Stubs::TGWOnDeviceServiceConfiguration.stub(stub[:tgw_on_device_service]) unless stub[:tgw_on_device_service].nil?
        data
      end
    end

    # Structure Stubber for TGWOnDeviceServiceConfiguration
    class TGWOnDeviceServiceConfiguration
      def self.default(visited=[])
        return nil if visited.include?('TGWOnDeviceServiceConfiguration')
        visited = visited + ['TGWOnDeviceServiceConfiguration']
        {
          storage_limit: 1,
          storage_unit: 'storage_unit',
        }
      end

      def self.stub(stub)
        stub ||= Types::TGWOnDeviceServiceConfiguration.new
        data = {}
        data['StorageLimit'] = stub[:storage_limit] unless stub[:storage_limit].nil?
        data['StorageUnit'] = stub[:storage_unit] unless stub[:storage_unit].nil?
        data
      end
    end

    # Structure Stubber for NFSOnDeviceServiceConfiguration
    class NFSOnDeviceServiceConfiguration
      def self.default(visited=[])
        return nil if visited.include?('NFSOnDeviceServiceConfiguration')
        visited = visited + ['NFSOnDeviceServiceConfiguration']
        {
          storage_limit: 1,
          storage_unit: 'storage_unit',
        }
      end

      def self.stub(stub)
        stub ||= Types::NFSOnDeviceServiceConfiguration.new
        data = {}
        data['StorageLimit'] = stub[:storage_limit] unless stub[:storage_limit].nil?
        data['StorageUnit'] = stub[:storage_unit] unless stub[:storage_unit].nil?
        data
      end
    end

    # Structure Stubber for TaxDocuments
    class TaxDocuments
      def self.default(visited=[])
        return nil if visited.include?('TaxDocuments')
        visited = visited + ['TaxDocuments']
        {
          ind: INDTaxDocuments.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TaxDocuments.new
        data = {}
        data['IND'] = Stubs::INDTaxDocuments.stub(stub[:ind]) unless stub[:ind].nil?
        data
      end
    end

    # Structure Stubber for INDTaxDocuments
    class INDTaxDocuments
      def self.default(visited=[])
        return nil if visited.include?('INDTaxDocuments')
        visited = visited + ['INDTaxDocuments']
        {
          gstin: 'gstin',
        }
      end

      def self.stub(stub)
        stub ||= Types::INDTaxDocuments.new
        data = {}
        data['GSTIN'] = stub[:gstin] unless stub[:gstin].nil?
        data
      end
    end

    # Structure Stubber for Notification
    class Notification
      def self.default(visited=[])
        return nil if visited.include?('Notification')
        visited = visited + ['Notification']
        {
          sns_topic_arn: 'sns_topic_arn',
          job_states_to_notify: JobStateList.default(visited),
          notify_all: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::Notification.new
        data = {}
        data['SnsTopicARN'] = stub[:sns_topic_arn] unless stub[:sns_topic_arn].nil?
        data['JobStatesToNotify'] = Stubs::JobStateList.stub(stub[:job_states_to_notify]) unless stub[:job_states_to_notify].nil?
        data['NotifyAll'] = stub[:notify_all] unless stub[:notify_all].nil?
        data
      end
    end

    # List Stubber for JobStateList
    class JobStateList
      def self.default(visited=[])
        return nil if visited.include?('JobStateList')
        visited = visited + ['JobStateList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for JobResource
    class JobResource
      def self.default(visited=[])
        return nil if visited.include?('JobResource')
        visited = visited + ['JobResource']
        {
          s3_resources: S3ResourceList.default(visited),
          lambda_resources: LambdaResourceList.default(visited),
          ec2_ami_resources: Ec2AmiResourceList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::JobResource.new
        data = {}
        data['S3Resources'] = Stubs::S3ResourceList.stub(stub[:s3_resources]) unless stub[:s3_resources].nil?
        data['LambdaResources'] = Stubs::LambdaResourceList.stub(stub[:lambda_resources]) unless stub[:lambda_resources].nil?
        data['Ec2AmiResources'] = Stubs::Ec2AmiResourceList.stub(stub[:ec2_ami_resources]) unless stub[:ec2_ami_resources].nil?
        data
      end
    end

    # List Stubber for Ec2AmiResourceList
    class Ec2AmiResourceList
      def self.default(visited=[])
        return nil if visited.include?('Ec2AmiResourceList')
        visited = visited + ['Ec2AmiResourceList']
        [
          Ec2AmiResource.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Ec2AmiResource.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Ec2AmiResource
    class Ec2AmiResource
      def self.default(visited=[])
        return nil if visited.include?('Ec2AmiResource')
        visited = visited + ['Ec2AmiResource']
        {
          ami_id: 'ami_id',
          snowball_ami_id: 'snowball_ami_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::Ec2AmiResource.new
        data = {}
        data['AmiId'] = stub[:ami_id] unless stub[:ami_id].nil?
        data['SnowballAmiId'] = stub[:snowball_ami_id] unless stub[:snowball_ami_id].nil?
        data
      end
    end

    # List Stubber for LambdaResourceList
    class LambdaResourceList
      def self.default(visited=[])
        return nil if visited.include?('LambdaResourceList')
        visited = visited + ['LambdaResourceList']
        [
          LambdaResource.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::LambdaResource.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LambdaResource
    class LambdaResource
      def self.default(visited=[])
        return nil if visited.include?('LambdaResource')
        visited = visited + ['LambdaResource']
        {
          lambda_arn: 'lambda_arn',
          event_triggers: EventTriggerDefinitionList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LambdaResource.new
        data = {}
        data['LambdaArn'] = stub[:lambda_arn] unless stub[:lambda_arn].nil?
        data['EventTriggers'] = Stubs::EventTriggerDefinitionList.stub(stub[:event_triggers]) unless stub[:event_triggers].nil?
        data
      end
    end

    # List Stubber for EventTriggerDefinitionList
    class EventTriggerDefinitionList
      def self.default(visited=[])
        return nil if visited.include?('EventTriggerDefinitionList')
        visited = visited + ['EventTriggerDefinitionList']
        [
          EventTriggerDefinition.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::EventTriggerDefinition.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EventTriggerDefinition
    class EventTriggerDefinition
      def self.default(visited=[])
        return nil if visited.include?('EventTriggerDefinition')
        visited = visited + ['EventTriggerDefinition']
        {
          event_resource_arn: 'event_resource_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::EventTriggerDefinition.new
        data = {}
        data['EventResourceARN'] = stub[:event_resource_arn] unless stub[:event_resource_arn].nil?
        data
      end
    end

    # List Stubber for S3ResourceList
    class S3ResourceList
      def self.default(visited=[])
        return nil if visited.include?('S3ResourceList')
        visited = visited + ['S3ResourceList']
        [
          S3Resource.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::S3Resource.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for S3Resource
    class S3Resource
      def self.default(visited=[])
        return nil if visited.include?('S3Resource')
        visited = visited + ['S3Resource']
        {
          bucket_arn: 'bucket_arn',
          key_range: KeyRange.default(visited),
          target_on_device_services: TargetOnDeviceServiceList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::S3Resource.new
        data = {}
        data['BucketArn'] = stub[:bucket_arn] unless stub[:bucket_arn].nil?
        data['KeyRange'] = Stubs::KeyRange.stub(stub[:key_range]) unless stub[:key_range].nil?
        data['TargetOnDeviceServices'] = Stubs::TargetOnDeviceServiceList.stub(stub[:target_on_device_services]) unless stub[:target_on_device_services].nil?
        data
      end
    end

    # List Stubber for TargetOnDeviceServiceList
    class TargetOnDeviceServiceList
      def self.default(visited=[])
        return nil if visited.include?('TargetOnDeviceServiceList')
        visited = visited + ['TargetOnDeviceServiceList']
        [
          TargetOnDeviceService.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TargetOnDeviceService.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TargetOnDeviceService
    class TargetOnDeviceService
      def self.default(visited=[])
        return nil if visited.include?('TargetOnDeviceService')
        visited = visited + ['TargetOnDeviceService']
        {
          service_name: 'service_name',
          transfer_option: 'transfer_option',
        }
      end

      def self.stub(stub)
        stub ||= Types::TargetOnDeviceService.new
        data = {}
        data['ServiceName'] = stub[:service_name] unless stub[:service_name].nil?
        data['TransferOption'] = stub[:transfer_option] unless stub[:transfer_option].nil?
        data
      end
    end

    # Structure Stubber for KeyRange
    class KeyRange
      def self.default(visited=[])
        return nil if visited.include?('KeyRange')
        visited = visited + ['KeyRange']
        {
          begin_marker: 'begin_marker',
          end_marker: 'end_marker',
        }
      end

      def self.stub(stub)
        stub ||= Types::KeyRange.new
        data = {}
        data['BeginMarker'] = stub[:begin_marker] unless stub[:begin_marker].nil?
        data['EndMarker'] = stub[:end_marker] unless stub[:end_marker].nil?
        data
      end
    end

    # Operation Stubber for DescribeJob
    class DescribeJob
      def self.default(visited=[])
        {
          job_metadata: JobMetadata.default(visited),
          sub_job_metadata: JobMetadataList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobMetadata'] = Stubs::JobMetadata.stub(stub[:job_metadata]) unless stub[:job_metadata].nil?
        data['SubJobMetadata'] = Stubs::JobMetadataList.stub(stub[:sub_job_metadata]) unless stub[:sub_job_metadata].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for JobMetadataList
    class JobMetadataList
      def self.default(visited=[])
        return nil if visited.include?('JobMetadataList')
        visited = visited + ['JobMetadataList']
        [
          JobMetadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::JobMetadata.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for JobMetadata
    class JobMetadata
      def self.default(visited=[])
        return nil if visited.include?('JobMetadata')
        visited = visited + ['JobMetadata']
        {
          job_id: 'job_id',
          job_state: 'job_state',
          job_type: 'job_type',
          snowball_type: 'snowball_type',
          creation_date: Time.now,
          resources: JobResource.default(visited),
          description: 'description',
          kms_key_arn: 'kms_key_arn',
          role_arn: 'role_arn',
          address_id: 'address_id',
          shipping_details: ShippingDetails.default(visited),
          snowball_capacity_preference: 'snowball_capacity_preference',
          notification: Notification.default(visited),
          data_transfer_progress: DataTransfer.default(visited),
          job_log_info: JobLogs.default(visited),
          cluster_id: 'cluster_id',
          forwarding_address_id: 'forwarding_address_id',
          tax_documents: TaxDocuments.default(visited),
          device_configuration: DeviceConfiguration.default(visited),
          remote_management: 'remote_management',
          long_term_pricing_id: 'long_term_pricing_id',
          on_device_service_configuration: OnDeviceServiceConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::JobMetadata.new
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['JobState'] = stub[:job_state] unless stub[:job_state].nil?
        data['JobType'] = stub[:job_type] unless stub[:job_type].nil?
        data['SnowballType'] = stub[:snowball_type] unless stub[:snowball_type].nil?
        data['CreationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['Resources'] = Stubs::JobResource.stub(stub[:resources]) unless stub[:resources].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['KmsKeyARN'] = stub[:kms_key_arn] unless stub[:kms_key_arn].nil?
        data['RoleARN'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['AddressId'] = stub[:address_id] unless stub[:address_id].nil?
        data['ShippingDetails'] = Stubs::ShippingDetails.stub(stub[:shipping_details]) unless stub[:shipping_details].nil?
        data['SnowballCapacityPreference'] = stub[:snowball_capacity_preference] unless stub[:snowball_capacity_preference].nil?
        data['Notification'] = Stubs::Notification.stub(stub[:notification]) unless stub[:notification].nil?
        data['DataTransferProgress'] = Stubs::DataTransfer.stub(stub[:data_transfer_progress]) unless stub[:data_transfer_progress].nil?
        data['JobLogInfo'] = Stubs::JobLogs.stub(stub[:job_log_info]) unless stub[:job_log_info].nil?
        data['ClusterId'] = stub[:cluster_id] unless stub[:cluster_id].nil?
        data['ForwardingAddressId'] = stub[:forwarding_address_id] unless stub[:forwarding_address_id].nil?
        data['TaxDocuments'] = Stubs::TaxDocuments.stub(stub[:tax_documents]) unless stub[:tax_documents].nil?
        data['DeviceConfiguration'] = Stubs::DeviceConfiguration.stub(stub[:device_configuration]) unless stub[:device_configuration].nil?
        data['RemoteManagement'] = stub[:remote_management] unless stub[:remote_management].nil?
        data['LongTermPricingId'] = stub[:long_term_pricing_id] unless stub[:long_term_pricing_id].nil?
        data['OnDeviceServiceConfiguration'] = Stubs::OnDeviceServiceConfiguration.stub(stub[:on_device_service_configuration]) unless stub[:on_device_service_configuration].nil?
        data
      end
    end

    # Structure Stubber for DeviceConfiguration
    class DeviceConfiguration
      def self.default(visited=[])
        return nil if visited.include?('DeviceConfiguration')
        visited = visited + ['DeviceConfiguration']
        {
          snowcone_device_configuration: SnowconeDeviceConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DeviceConfiguration.new
        data = {}
        data['SnowconeDeviceConfiguration'] = Stubs::SnowconeDeviceConfiguration.stub(stub[:snowcone_device_configuration]) unless stub[:snowcone_device_configuration].nil?
        data
      end
    end

    # Structure Stubber for SnowconeDeviceConfiguration
    class SnowconeDeviceConfiguration
      def self.default(visited=[])
        return nil if visited.include?('SnowconeDeviceConfiguration')
        visited = visited + ['SnowconeDeviceConfiguration']
        {
          wireless_connection: WirelessConnection.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SnowconeDeviceConfiguration.new
        data = {}
        data['WirelessConnection'] = Stubs::WirelessConnection.stub(stub[:wireless_connection]) unless stub[:wireless_connection].nil?
        data
      end
    end

    # Structure Stubber for WirelessConnection
    class WirelessConnection
      def self.default(visited=[])
        return nil if visited.include?('WirelessConnection')
        visited = visited + ['WirelessConnection']
        {
          is_wifi_enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::WirelessConnection.new
        data = {}
        data['IsWifiEnabled'] = stub[:is_wifi_enabled] unless stub[:is_wifi_enabled].nil?
        data
      end
    end

    # Structure Stubber for JobLogs
    class JobLogs
      def self.default(visited=[])
        return nil if visited.include?('JobLogs')
        visited = visited + ['JobLogs']
        {
          job_completion_report_uri: 'job_completion_report_uri',
          job_success_log_uri: 'job_success_log_uri',
          job_failure_log_uri: 'job_failure_log_uri',
        }
      end

      def self.stub(stub)
        stub ||= Types::JobLogs.new
        data = {}
        data['JobCompletionReportURI'] = stub[:job_completion_report_uri] unless stub[:job_completion_report_uri].nil?
        data['JobSuccessLogURI'] = stub[:job_success_log_uri] unless stub[:job_success_log_uri].nil?
        data['JobFailureLogURI'] = stub[:job_failure_log_uri] unless stub[:job_failure_log_uri].nil?
        data
      end
    end

    # Structure Stubber for DataTransfer
    class DataTransfer
      def self.default(visited=[])
        return nil if visited.include?('DataTransfer')
        visited = visited + ['DataTransfer']
        {
          bytes_transferred: 1,
          objects_transferred: 1,
          total_bytes: 1,
          total_objects: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::DataTransfer.new
        data = {}
        data['BytesTransferred'] = stub[:bytes_transferred] unless stub[:bytes_transferred].nil?
        data['ObjectsTransferred'] = stub[:objects_transferred] unless stub[:objects_transferred].nil?
        data['TotalBytes'] = stub[:total_bytes] unless stub[:total_bytes].nil?
        data['TotalObjects'] = stub[:total_objects] unless stub[:total_objects].nil?
        data
      end
    end

    # Structure Stubber for ShippingDetails
    class ShippingDetails
      def self.default(visited=[])
        return nil if visited.include?('ShippingDetails')
        visited = visited + ['ShippingDetails']
        {
          shipping_option: 'shipping_option',
          inbound_shipment: Shipment.default(visited),
          outbound_shipment: Shipment.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ShippingDetails.new
        data = {}
        data['ShippingOption'] = stub[:shipping_option] unless stub[:shipping_option].nil?
        data['InboundShipment'] = Stubs::Shipment.stub(stub[:inbound_shipment]) unless stub[:inbound_shipment].nil?
        data['OutboundShipment'] = Stubs::Shipment.stub(stub[:outbound_shipment]) unless stub[:outbound_shipment].nil?
        data
      end
    end

    # Structure Stubber for Shipment
    class Shipment
      def self.default(visited=[])
        return nil if visited.include?('Shipment')
        visited = visited + ['Shipment']
        {
          status: 'status',
          tracking_number: 'tracking_number',
        }
      end

      def self.stub(stub)
        stub ||= Types::Shipment.new
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['TrackingNumber'] = stub[:tracking_number] unless stub[:tracking_number].nil?
        data
      end
    end

    # Operation Stubber for DescribeReturnShippingLabel
    class DescribeReturnShippingLabel
      def self.default(visited=[])
        {
          status: 'status',
          expiration_date: Time.now,
          return_shipping_label_uri: 'return_shipping_label_uri',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['ExpirationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:expiration_date]).to_i unless stub[:expiration_date].nil?
        data['ReturnShippingLabelURI'] = stub[:return_shipping_label_uri] unless stub[:return_shipping_label_uri].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetJobManifest
    class GetJobManifest
      def self.default(visited=[])
        {
          manifest_uri: 'manifest_uri',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ManifestURI'] = stub[:manifest_uri] unless stub[:manifest_uri].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetJobUnlockCode
    class GetJobUnlockCode
      def self.default(visited=[])
        {
          unlock_code: 'unlock_code',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['UnlockCode'] = stub[:unlock_code] unless stub[:unlock_code].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetSnowballUsage
    class GetSnowballUsage
      def self.default(visited=[])
        {
          snowball_limit: 1,
          snowballs_in_use: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SnowballLimit'] = stub[:snowball_limit] unless stub[:snowball_limit].nil?
        data['SnowballsInUse'] = stub[:snowballs_in_use] unless stub[:snowballs_in_use].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetSoftwareUpdates
    class GetSoftwareUpdates
      def self.default(visited=[])
        {
          updates_uri: 'updates_uri',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['UpdatesURI'] = stub[:updates_uri] unless stub[:updates_uri].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListClusterJobs
    class ListClusterJobs
      def self.default(visited=[])
        {
          job_list_entries: JobListEntryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobListEntries'] = Stubs::JobListEntryList.stub(stub[:job_list_entries]) unless stub[:job_list_entries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for JobListEntryList
    class JobListEntryList
      def self.default(visited=[])
        return nil if visited.include?('JobListEntryList')
        visited = visited + ['JobListEntryList']
        [
          JobListEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::JobListEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for JobListEntry
    class JobListEntry
      def self.default(visited=[])
        return nil if visited.include?('JobListEntry')
        visited = visited + ['JobListEntry']
        {
          job_id: 'job_id',
          job_state: 'job_state',
          is_master: false,
          job_type: 'job_type',
          snowball_type: 'snowball_type',
          creation_date: Time.now,
          description: 'description',
        }
      end

      def self.stub(stub)
        stub ||= Types::JobListEntry.new
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['JobState'] = stub[:job_state] unless stub[:job_state].nil?
        data['IsMaster'] = stub[:is_master] unless stub[:is_master].nil?
        data['JobType'] = stub[:job_type] unless stub[:job_type].nil?
        data['SnowballType'] = stub[:snowball_type] unless stub[:snowball_type].nil?
        data['CreationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data
      end
    end

    # Operation Stubber for ListClusters
    class ListClusters
      def self.default(visited=[])
        {
          cluster_list_entries: ClusterListEntryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ClusterListEntries'] = Stubs::ClusterListEntryList.stub(stub[:cluster_list_entries]) unless stub[:cluster_list_entries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ClusterListEntryList
    class ClusterListEntryList
      def self.default(visited=[])
        return nil if visited.include?('ClusterListEntryList')
        visited = visited + ['ClusterListEntryList']
        [
          ClusterListEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ClusterListEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ClusterListEntry
    class ClusterListEntry
      def self.default(visited=[])
        return nil if visited.include?('ClusterListEntry')
        visited = visited + ['ClusterListEntry']
        {
          cluster_id: 'cluster_id',
          cluster_state: 'cluster_state',
          creation_date: Time.now,
          description: 'description',
        }
      end

      def self.stub(stub)
        stub ||= Types::ClusterListEntry.new
        data = {}
        data['ClusterId'] = stub[:cluster_id] unless stub[:cluster_id].nil?
        data['ClusterState'] = stub[:cluster_state] unless stub[:cluster_state].nil?
        data['CreationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data
      end
    end

    # Operation Stubber for ListCompatibleImages
    class ListCompatibleImages
      def self.default(visited=[])
        {
          compatible_images: CompatibleImageList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CompatibleImages'] = Stubs::CompatibleImageList.stub(stub[:compatible_images]) unless stub[:compatible_images].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for CompatibleImageList
    class CompatibleImageList
      def self.default(visited=[])
        return nil if visited.include?('CompatibleImageList')
        visited = visited + ['CompatibleImageList']
        [
          CompatibleImage.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CompatibleImage.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CompatibleImage
    class CompatibleImage
      def self.default(visited=[])
        return nil if visited.include?('CompatibleImage')
        visited = visited + ['CompatibleImage']
        {
          ami_id: 'ami_id',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::CompatibleImage.new
        data = {}
        data['AmiId'] = stub[:ami_id] unless stub[:ami_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Operation Stubber for ListJobs
    class ListJobs
      def self.default(visited=[])
        {
          job_list_entries: JobListEntryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobListEntries'] = Stubs::JobListEntryList.stub(stub[:job_list_entries]) unless stub[:job_list_entries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListLongTermPricing
    class ListLongTermPricing
      def self.default(visited=[])
        {
          long_term_pricing_entries: LongTermPricingEntryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LongTermPricingEntries'] = Stubs::LongTermPricingEntryList.stub(stub[:long_term_pricing_entries]) unless stub[:long_term_pricing_entries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for LongTermPricingEntryList
    class LongTermPricingEntryList
      def self.default(visited=[])
        return nil if visited.include?('LongTermPricingEntryList')
        visited = visited + ['LongTermPricingEntryList']
        [
          LongTermPricingListEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::LongTermPricingListEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LongTermPricingListEntry
    class LongTermPricingListEntry
      def self.default(visited=[])
        return nil if visited.include?('LongTermPricingListEntry')
        visited = visited + ['LongTermPricingListEntry']
        {
          long_term_pricing_id: 'long_term_pricing_id',
          long_term_pricing_end_date: Time.now,
          long_term_pricing_start_date: Time.now,
          long_term_pricing_type: 'long_term_pricing_type',
          current_active_job: 'current_active_job',
          replacement_job: 'replacement_job',
          is_long_term_pricing_auto_renew: false,
          long_term_pricing_status: 'long_term_pricing_status',
          snowball_type: 'snowball_type',
          job_ids: LongTermPricingAssociatedJobIdList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LongTermPricingListEntry.new
        data = {}
        data['LongTermPricingId'] = stub[:long_term_pricing_id] unless stub[:long_term_pricing_id].nil?
        data['LongTermPricingEndDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:long_term_pricing_end_date]).to_i unless stub[:long_term_pricing_end_date].nil?
        data['LongTermPricingStartDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:long_term_pricing_start_date]).to_i unless stub[:long_term_pricing_start_date].nil?
        data['LongTermPricingType'] = stub[:long_term_pricing_type] unless stub[:long_term_pricing_type].nil?
        data['CurrentActiveJob'] = stub[:current_active_job] unless stub[:current_active_job].nil?
        data['ReplacementJob'] = stub[:replacement_job] unless stub[:replacement_job].nil?
        data['IsLongTermPricingAutoRenew'] = stub[:is_long_term_pricing_auto_renew] unless stub[:is_long_term_pricing_auto_renew].nil?
        data['LongTermPricingStatus'] = stub[:long_term_pricing_status] unless stub[:long_term_pricing_status].nil?
        data['SnowballType'] = stub[:snowball_type] unless stub[:snowball_type].nil?
        data['JobIds'] = Stubs::LongTermPricingAssociatedJobIdList.stub(stub[:job_ids]) unless stub[:job_ids].nil?
        data
      end
    end

    # List Stubber for LongTermPricingAssociatedJobIdList
    class LongTermPricingAssociatedJobIdList
      def self.default(visited=[])
        return nil if visited.include?('LongTermPricingAssociatedJobIdList')
        visited = visited + ['LongTermPricingAssociatedJobIdList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for UpdateCluster
    class UpdateCluster
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateJob
    class UpdateJob
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateJobShipmentState
    class UpdateJobShipmentState
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateLongTermPricing
    class UpdateLongTermPricing
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
