# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Snowball
  module Parsers

    # Operation Parser for CancelCluster
    class CancelCluster
      def self.parse(http_resp)
        data = Types::CancelClusterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for KMSRequestFailedException
    class KMSRequestFailedException
      def self.parse(http_resp)
        data = Types::KMSRequestFailedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidJobStateException
    class InvalidJobStateException
      def self.parse(http_resp)
        data = Types::InvalidJobStateException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidResourceException
    class InvalidResourceException
      def self.parse(http_resp)
        data = Types::InvalidResourceException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.resource_type = map['ResourceType']
        data
      end
    end

    # Operation Parser for CancelJob
    class CancelJob
      def self.parse(http_resp)
        data = Types::CancelJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for CreateAddress
    class CreateAddress
      def self.parse(http_resp)
        data = Types::CreateAddressOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.address_id = map['AddressId']
        data
      end
    end

    # Error Parser for UnsupportedAddressException
    class UnsupportedAddressException
      def self.parse(http_resp)
        data = Types::UnsupportedAddressException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidAddressException
    class InvalidAddressException
      def self.parse(http_resp)
        data = Types::InvalidAddressException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateCluster
    class CreateCluster
      def self.parse(http_resp)
        data = Types::CreateClusterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.cluster_id = map['ClusterId']
        data
      end
    end

    # Error Parser for Ec2RequestFailedException
    class Ec2RequestFailedException
      def self.parse(http_resp)
        data = Types::Ec2RequestFailedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidInputCombinationException
    class InvalidInputCombinationException
      def self.parse(http_resp)
        data = Types::InvalidInputCombinationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateJob
    class CreateJob
      def self.parse(http_resp)
        data = Types::CreateJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_id = map['JobId']
        data
      end
    end

    # Error Parser for ClusterLimitExceededException
    class ClusterLimitExceededException
      def self.parse(http_resp)
        data = Types::ClusterLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateLongTermPricing
    class CreateLongTermPricing
      def self.parse(http_resp)
        data = Types::CreateLongTermPricingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.long_term_pricing_id = map['LongTermPricingId']
        data
      end
    end

    # Operation Parser for CreateReturnShippingLabel
    class CreateReturnShippingLabel
      def self.parse(http_resp)
        data = Types::CreateReturnShippingLabelOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.status = map['Status']
        data
      end
    end

    # Error Parser for ReturnShippingLabelAlreadyExistsException
    class ReturnShippingLabelAlreadyExistsException
      def self.parse(http_resp)
        data = Types::ReturnShippingLabelAlreadyExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.conflict_resource = map['ConflictResource']
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DescribeAddress
    class DescribeAddress
      def self.parse(http_resp)
        data = Types::DescribeAddressOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.address = (Parsers::Address.parse(map['Address']) unless map['Address'].nil?)
        data
      end
    end

    class Address
      def self.parse(map)
        data = Types::Address.new
        data.address_id = map['AddressId']
        data.name = map['Name']
        data.company = map['Company']
        data.street1 = map['Street1']
        data.street2 = map['Street2']
        data.street3 = map['Street3']
        data.city = map['City']
        data.state_or_province = map['StateOrProvince']
        data.prefecture_or_district = map['PrefectureOrDistrict']
        data.landmark = map['Landmark']
        data.country = map['Country']
        data.postal_code = map['PostalCode']
        data.phone_number = map['PhoneNumber']
        data.is_restricted = map['IsRestricted']
        return data
      end
    end

    # Operation Parser for DescribeAddresses
    class DescribeAddresses
      def self.parse(http_resp)
        data = Types::DescribeAddressesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.addresses = (Parsers::AddressList.parse(map['Addresses']) unless map['Addresses'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class AddressList
      def self.parse(list)
        list.map do |value|
          Parsers::Address.parse(value) unless value.nil?
        end
      end
    end

    # Error Parser for InvalidNextTokenException
    class InvalidNextTokenException
      def self.parse(http_resp)
        data = Types::InvalidNextTokenException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DescribeCluster
    class DescribeCluster
      def self.parse(http_resp)
        data = Types::DescribeClusterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.cluster_metadata = (Parsers::ClusterMetadata.parse(map['ClusterMetadata']) unless map['ClusterMetadata'].nil?)
        data
      end
    end

    class ClusterMetadata
      def self.parse(map)
        data = Types::ClusterMetadata.new
        data.cluster_id = map['ClusterId']
        data.description = map['Description']
        data.kms_key_arn = map['KmsKeyARN']
        data.role_arn = map['RoleARN']
        data.cluster_state = map['ClusterState']
        data.job_type = map['JobType']
        data.snowball_type = map['SnowballType']
        data.creation_date = Time.at(map['CreationDate'].to_i) if map['CreationDate']
        data.resources = (Parsers::JobResource.parse(map['Resources']) unless map['Resources'].nil?)
        data.address_id = map['AddressId']
        data.shipping_option = map['ShippingOption']
        data.notification = (Parsers::Notification.parse(map['Notification']) unless map['Notification'].nil?)
        data.forwarding_address_id = map['ForwardingAddressId']
        data.tax_documents = (Parsers::TaxDocuments.parse(map['TaxDocuments']) unless map['TaxDocuments'].nil?)
        data.on_device_service_configuration = (Parsers::OnDeviceServiceConfiguration.parse(map['OnDeviceServiceConfiguration']) unless map['OnDeviceServiceConfiguration'].nil?)
        return data
      end
    end

    class OnDeviceServiceConfiguration
      def self.parse(map)
        data = Types::OnDeviceServiceConfiguration.new
        data.nfs_on_device_service = (Parsers::NFSOnDeviceServiceConfiguration.parse(map['NFSOnDeviceService']) unless map['NFSOnDeviceService'].nil?)
        data.tgw_on_device_service = (Parsers::TGWOnDeviceServiceConfiguration.parse(map['TGWOnDeviceService']) unless map['TGWOnDeviceService'].nil?)
        return data
      end
    end

    class TGWOnDeviceServiceConfiguration
      def self.parse(map)
        data = Types::TGWOnDeviceServiceConfiguration.new
        data.storage_limit = map['StorageLimit']
        data.storage_unit = map['StorageUnit']
        return data
      end
    end

    class NFSOnDeviceServiceConfiguration
      def self.parse(map)
        data = Types::NFSOnDeviceServiceConfiguration.new
        data.storage_limit = map['StorageLimit']
        data.storage_unit = map['StorageUnit']
        return data
      end
    end

    class TaxDocuments
      def self.parse(map)
        data = Types::TaxDocuments.new
        data.ind = (Parsers::INDTaxDocuments.parse(map['IND']) unless map['IND'].nil?)
        return data
      end
    end

    class INDTaxDocuments
      def self.parse(map)
        data = Types::INDTaxDocuments.new
        data.gstin = map['GSTIN']
        return data
      end
    end

    class Notification
      def self.parse(map)
        data = Types::Notification.new
        data.sns_topic_arn = map['SnsTopicARN']
        data.job_states_to_notify = (Parsers::JobStateList.parse(map['JobStatesToNotify']) unless map['JobStatesToNotify'].nil?)
        data.notify_all = map['NotifyAll']
        return data
      end
    end

    class JobStateList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class JobResource
      def self.parse(map)
        data = Types::JobResource.new
        data.s3_resources = (Parsers::S3ResourceList.parse(map['S3Resources']) unless map['S3Resources'].nil?)
        data.lambda_resources = (Parsers::LambdaResourceList.parse(map['LambdaResources']) unless map['LambdaResources'].nil?)
        data.ec2_ami_resources = (Parsers::Ec2AmiResourceList.parse(map['Ec2AmiResources']) unless map['Ec2AmiResources'].nil?)
        return data
      end
    end

    class Ec2AmiResourceList
      def self.parse(list)
        list.map do |value|
          Parsers::Ec2AmiResource.parse(value) unless value.nil?
        end
      end
    end

    class Ec2AmiResource
      def self.parse(map)
        data = Types::Ec2AmiResource.new
        data.ami_id = map['AmiId']
        data.snowball_ami_id = map['SnowballAmiId']
        return data
      end
    end

    class LambdaResourceList
      def self.parse(list)
        list.map do |value|
          Parsers::LambdaResource.parse(value) unless value.nil?
        end
      end
    end

    class LambdaResource
      def self.parse(map)
        data = Types::LambdaResource.new
        data.lambda_arn = map['LambdaArn']
        data.event_triggers = (Parsers::EventTriggerDefinitionList.parse(map['EventTriggers']) unless map['EventTriggers'].nil?)
        return data
      end
    end

    class EventTriggerDefinitionList
      def self.parse(list)
        list.map do |value|
          Parsers::EventTriggerDefinition.parse(value) unless value.nil?
        end
      end
    end

    class EventTriggerDefinition
      def self.parse(map)
        data = Types::EventTriggerDefinition.new
        data.event_resource_arn = map['EventResourceARN']
        return data
      end
    end

    class S3ResourceList
      def self.parse(list)
        list.map do |value|
          Parsers::S3Resource.parse(value) unless value.nil?
        end
      end
    end

    class S3Resource
      def self.parse(map)
        data = Types::S3Resource.new
        data.bucket_arn = map['BucketArn']
        data.key_range = (Parsers::KeyRange.parse(map['KeyRange']) unless map['KeyRange'].nil?)
        data.target_on_device_services = (Parsers::TargetOnDeviceServiceList.parse(map['TargetOnDeviceServices']) unless map['TargetOnDeviceServices'].nil?)
        return data
      end
    end

    class TargetOnDeviceServiceList
      def self.parse(list)
        list.map do |value|
          Parsers::TargetOnDeviceService.parse(value) unless value.nil?
        end
      end
    end

    class TargetOnDeviceService
      def self.parse(map)
        data = Types::TargetOnDeviceService.new
        data.service_name = map['ServiceName']
        data.transfer_option = map['TransferOption']
        return data
      end
    end

    class KeyRange
      def self.parse(map)
        data = Types::KeyRange.new
        data.begin_marker = map['BeginMarker']
        data.end_marker = map['EndMarker']
        return data
      end
    end

    # Operation Parser for DescribeJob
    class DescribeJob
      def self.parse(http_resp)
        data = Types::DescribeJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_metadata = (Parsers::JobMetadata.parse(map['JobMetadata']) unless map['JobMetadata'].nil?)
        data.sub_job_metadata = (Parsers::JobMetadataList.parse(map['SubJobMetadata']) unless map['SubJobMetadata'].nil?)
        data
      end
    end

    class JobMetadataList
      def self.parse(list)
        list.map do |value|
          Parsers::JobMetadata.parse(value) unless value.nil?
        end
      end
    end

    class JobMetadata
      def self.parse(map)
        data = Types::JobMetadata.new
        data.job_id = map['JobId']
        data.job_state = map['JobState']
        data.job_type = map['JobType']
        data.snowball_type = map['SnowballType']
        data.creation_date = Time.at(map['CreationDate'].to_i) if map['CreationDate']
        data.resources = (Parsers::JobResource.parse(map['Resources']) unless map['Resources'].nil?)
        data.description = map['Description']
        data.kms_key_arn = map['KmsKeyARN']
        data.role_arn = map['RoleARN']
        data.address_id = map['AddressId']
        data.shipping_details = (Parsers::ShippingDetails.parse(map['ShippingDetails']) unless map['ShippingDetails'].nil?)
        data.snowball_capacity_preference = map['SnowballCapacityPreference']
        data.notification = (Parsers::Notification.parse(map['Notification']) unless map['Notification'].nil?)
        data.data_transfer_progress = (Parsers::DataTransfer.parse(map['DataTransferProgress']) unless map['DataTransferProgress'].nil?)
        data.job_log_info = (Parsers::JobLogs.parse(map['JobLogInfo']) unless map['JobLogInfo'].nil?)
        data.cluster_id = map['ClusterId']
        data.forwarding_address_id = map['ForwardingAddressId']
        data.tax_documents = (Parsers::TaxDocuments.parse(map['TaxDocuments']) unless map['TaxDocuments'].nil?)
        data.device_configuration = (Parsers::DeviceConfiguration.parse(map['DeviceConfiguration']) unless map['DeviceConfiguration'].nil?)
        data.remote_management = map['RemoteManagement']
        data.long_term_pricing_id = map['LongTermPricingId']
        data.on_device_service_configuration = (Parsers::OnDeviceServiceConfiguration.parse(map['OnDeviceServiceConfiguration']) unless map['OnDeviceServiceConfiguration'].nil?)
        return data
      end
    end

    class DeviceConfiguration
      def self.parse(map)
        data = Types::DeviceConfiguration.new
        data.snowcone_device_configuration = (Parsers::SnowconeDeviceConfiguration.parse(map['SnowconeDeviceConfiguration']) unless map['SnowconeDeviceConfiguration'].nil?)
        return data
      end
    end

    class SnowconeDeviceConfiguration
      def self.parse(map)
        data = Types::SnowconeDeviceConfiguration.new
        data.wireless_connection = (Parsers::WirelessConnection.parse(map['WirelessConnection']) unless map['WirelessConnection'].nil?)
        return data
      end
    end

    class WirelessConnection
      def self.parse(map)
        data = Types::WirelessConnection.new
        data.is_wifi_enabled = map['IsWifiEnabled']
        return data
      end
    end

    class JobLogs
      def self.parse(map)
        data = Types::JobLogs.new
        data.job_completion_report_uri = map['JobCompletionReportURI']
        data.job_success_log_uri = map['JobSuccessLogURI']
        data.job_failure_log_uri = map['JobFailureLogURI']
        return data
      end
    end

    class DataTransfer
      def self.parse(map)
        data = Types::DataTransfer.new
        data.bytes_transferred = map['BytesTransferred']
        data.objects_transferred = map['ObjectsTransferred']
        data.total_bytes = map['TotalBytes']
        data.total_objects = map['TotalObjects']
        return data
      end
    end

    class ShippingDetails
      def self.parse(map)
        data = Types::ShippingDetails.new
        data.shipping_option = map['ShippingOption']
        data.inbound_shipment = (Parsers::Shipment.parse(map['InboundShipment']) unless map['InboundShipment'].nil?)
        data.outbound_shipment = (Parsers::Shipment.parse(map['OutboundShipment']) unless map['OutboundShipment'].nil?)
        return data
      end
    end

    class Shipment
      def self.parse(map)
        data = Types::Shipment.new
        data.status = map['Status']
        data.tracking_number = map['TrackingNumber']
        return data
      end
    end

    # Operation Parser for DescribeReturnShippingLabel
    class DescribeReturnShippingLabel
      def self.parse(http_resp)
        data = Types::DescribeReturnShippingLabelOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.status = map['Status']
        data.expiration_date = Time.at(map['ExpirationDate'].to_i) if map['ExpirationDate']
        data.return_shipping_label_uri = map['ReturnShippingLabelURI']
        data
      end
    end

    # Operation Parser for GetJobManifest
    class GetJobManifest
      def self.parse(http_resp)
        data = Types::GetJobManifestOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.manifest_uri = map['ManifestURI']
        data
      end
    end

    # Operation Parser for GetJobUnlockCode
    class GetJobUnlockCode
      def self.parse(http_resp)
        data = Types::GetJobUnlockCodeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.unlock_code = map['UnlockCode']
        data
      end
    end

    # Operation Parser for GetSnowballUsage
    class GetSnowballUsage
      def self.parse(http_resp)
        data = Types::GetSnowballUsageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.snowball_limit = map['SnowballLimit']
        data.snowballs_in_use = map['SnowballsInUse']
        data
      end
    end

    # Operation Parser for GetSoftwareUpdates
    class GetSoftwareUpdates
      def self.parse(http_resp)
        data = Types::GetSoftwareUpdatesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.updates_uri = map['UpdatesURI']
        data
      end
    end

    # Operation Parser for ListClusterJobs
    class ListClusterJobs
      def self.parse(http_resp)
        data = Types::ListClusterJobsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_list_entries = (Parsers::JobListEntryList.parse(map['JobListEntries']) unless map['JobListEntries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class JobListEntryList
      def self.parse(list)
        list.map do |value|
          Parsers::JobListEntry.parse(value) unless value.nil?
        end
      end
    end

    class JobListEntry
      def self.parse(map)
        data = Types::JobListEntry.new
        data.job_id = map['JobId']
        data.job_state = map['JobState']
        data.is_master = map['IsMaster']
        data.job_type = map['JobType']
        data.snowball_type = map['SnowballType']
        data.creation_date = Time.at(map['CreationDate'].to_i) if map['CreationDate']
        data.description = map['Description']
        return data
      end
    end

    # Operation Parser for ListClusters
    class ListClusters
      def self.parse(http_resp)
        data = Types::ListClustersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.cluster_list_entries = (Parsers::ClusterListEntryList.parse(map['ClusterListEntries']) unless map['ClusterListEntries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ClusterListEntryList
      def self.parse(list)
        list.map do |value|
          Parsers::ClusterListEntry.parse(value) unless value.nil?
        end
      end
    end

    class ClusterListEntry
      def self.parse(map)
        data = Types::ClusterListEntry.new
        data.cluster_id = map['ClusterId']
        data.cluster_state = map['ClusterState']
        data.creation_date = Time.at(map['CreationDate'].to_i) if map['CreationDate']
        data.description = map['Description']
        return data
      end
    end

    # Operation Parser for ListCompatibleImages
    class ListCompatibleImages
      def self.parse(http_resp)
        data = Types::ListCompatibleImagesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.compatible_images = (Parsers::CompatibleImageList.parse(map['CompatibleImages']) unless map['CompatibleImages'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class CompatibleImageList
      def self.parse(list)
        list.map do |value|
          Parsers::CompatibleImage.parse(value) unless value.nil?
        end
      end
    end

    class CompatibleImage
      def self.parse(map)
        data = Types::CompatibleImage.new
        data.ami_id = map['AmiId']
        data.name = map['Name']
        return data
      end
    end

    # Operation Parser for ListJobs
    class ListJobs
      def self.parse(http_resp)
        data = Types::ListJobsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_list_entries = (Parsers::JobListEntryList.parse(map['JobListEntries']) unless map['JobListEntries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ListLongTermPricing
    class ListLongTermPricing
      def self.parse(http_resp)
        data = Types::ListLongTermPricingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.long_term_pricing_entries = (Parsers::LongTermPricingEntryList.parse(map['LongTermPricingEntries']) unless map['LongTermPricingEntries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class LongTermPricingEntryList
      def self.parse(list)
        list.map do |value|
          Parsers::LongTermPricingListEntry.parse(value) unless value.nil?
        end
      end
    end

    class LongTermPricingListEntry
      def self.parse(map)
        data = Types::LongTermPricingListEntry.new
        data.long_term_pricing_id = map['LongTermPricingId']
        data.long_term_pricing_end_date = Time.at(map['LongTermPricingEndDate'].to_i) if map['LongTermPricingEndDate']
        data.long_term_pricing_start_date = Time.at(map['LongTermPricingStartDate'].to_i) if map['LongTermPricingStartDate']
        data.long_term_pricing_type = map['LongTermPricingType']
        data.current_active_job = map['CurrentActiveJob']
        data.replacement_job = map['ReplacementJob']
        data.is_long_term_pricing_auto_renew = map['IsLongTermPricingAutoRenew']
        data.long_term_pricing_status = map['LongTermPricingStatus']
        data.snowball_type = map['SnowballType']
        data.job_ids = (Parsers::LongTermPricingAssociatedJobIdList.parse(map['JobIds']) unless map['JobIds'].nil?)
        return data
      end
    end

    class LongTermPricingAssociatedJobIdList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for UpdateCluster
    class UpdateCluster
      def self.parse(http_resp)
        data = Types::UpdateClusterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateJob
    class UpdateJob
      def self.parse(http_resp)
        data = Types::UpdateJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateJobShipmentState
    class UpdateJobShipmentState
      def self.parse(http_resp)
        data = Types::UpdateJobShipmentStateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateLongTermPricing
    class UpdateLongTermPricing
      def self.parse(http_resp)
        data = Types::UpdateLongTermPricingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end
  end
end
