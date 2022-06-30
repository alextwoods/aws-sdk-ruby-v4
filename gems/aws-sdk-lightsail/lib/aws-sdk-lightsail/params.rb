# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::Lightsail
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.code = params[:code]
        type.docs = params[:docs]
        type.message = params[:message]
        type.tip = params[:tip]
        type
      end
    end

    module AccessKey
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessKey, context: context)
        type = Types::AccessKey.new
        type.access_key_id = params[:access_key_id]
        type.secret_access_key = params[:secret_access_key]
        type.status = params[:status]
        type.created_at = params[:created_at]
        type.last_used = AccessKeyLastUsed.build(params[:last_used], context: "#{context}[:last_used]") unless params[:last_used].nil?
        type
      end
    end

    module AccessKeyLastUsed
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessKeyLastUsed, context: context)
        type = Types::AccessKeyLastUsed.new
        type.last_used_date = params[:last_used_date]
        type.region = params[:region]
        type.service_name = params[:service_name]
        type
      end
    end

    module AccessKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AccessKey.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AccessReceiverList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourceReceivingAccess.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AccessRules
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessRules, context: context)
        type = Types::AccessRules.new
        type.get_object = params[:get_object]
        type.allow_public_overrides = params[:allow_public_overrides]
        type
      end
    end

    module AccountLevelBpaSync
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccountLevelBpaSync, context: context)
        type = Types::AccountLevelBpaSync.new
        type.status = params[:status]
        type.last_synced_at = params[:last_synced_at]
        type.message = params[:message]
        type.bpa_impacts_lightsail = params[:bpa_impacts_lightsail]
        type
      end
    end

    module AccountSetupInProgressException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccountSetupInProgressException, context: context)
        type = Types::AccountSetupInProgressException.new
        type.code = params[:code]
        type.docs = params[:docs]
        type.message = params[:message]
        type.tip = params[:tip]
        type
      end
    end

    module AddOn
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddOn, context: context)
        type = Types::AddOn.new
        type.name = params[:name]
        type.status = params[:status]
        type.snapshot_time_of_day = params[:snapshot_time_of_day]
        type.next_snapshot_time_of_day = params[:next_snapshot_time_of_day]
        type
      end
    end

    module AddOnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AddOn.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AddOnRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddOnRequest, context: context)
        type = Types::AddOnRequest.new
        type.add_on_type = params[:add_on_type]
        type.auto_snapshot_add_on_request = AutoSnapshotAddOnRequest.build(params[:auto_snapshot_add_on_request], context: "#{context}[:auto_snapshot_add_on_request]") unless params[:auto_snapshot_add_on_request].nil?
        type
      end
    end

    module AddOnRequestList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AddOnRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Alarm
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Alarm, context: context)
        type = Types::Alarm.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.created_at = params[:created_at]
        type.location = ResourceLocation.build(params[:location], context: "#{context}[:location]") unless params[:location].nil?
        type.resource_type = params[:resource_type]
        type.support_code = params[:support_code]
        type.monitored_resource_info = MonitoredResourceInfo.build(params[:monitored_resource_info], context: "#{context}[:monitored_resource_info]") unless params[:monitored_resource_info].nil?
        type.comparison_operator = params[:comparison_operator]
        type.evaluation_periods = params[:evaluation_periods]
        type.period = params[:period]
        type.threshold = params[:threshold]
        type.datapoints_to_alarm = params[:datapoints_to_alarm]
        type.treat_missing_data = params[:treat_missing_data]
        type.statistic = params[:statistic]
        type.metric_name = params[:metric_name]
        type.state = params[:state]
        type.unit = params[:unit]
        type.contact_protocols = ContactProtocolsList.build(params[:contact_protocols], context: "#{context}[:contact_protocols]") unless params[:contact_protocols].nil?
        type.notification_triggers = NotificationTriggerList.build(params[:notification_triggers], context: "#{context}[:notification_triggers]") unless params[:notification_triggers].nil?
        type.notification_enabled = params[:notification_enabled]
        type
      end
    end

    module AlarmsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Alarm.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AllocateStaticIpInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AllocateStaticIpInput, context: context)
        type = Types::AllocateStaticIpInput.new
        type.static_ip_name = params[:static_ip_name]
        type
      end
    end

    module AllocateStaticIpOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AllocateStaticIpOutput, context: context)
        type = Types::AllocateStaticIpOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module AttachCertificateToDistributionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachCertificateToDistributionInput, context: context)
        type = Types::AttachCertificateToDistributionInput.new
        type.distribution_name = params[:distribution_name]
        type.certificate_name = params[:certificate_name]
        type
      end
    end

    module AttachCertificateToDistributionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachCertificateToDistributionOutput, context: context)
        type = Types::AttachCertificateToDistributionOutput.new
        type.operation = Operation.build(params[:operation], context: "#{context}[:operation]") unless params[:operation].nil?
        type
      end
    end

    module AttachDiskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachDiskInput, context: context)
        type = Types::AttachDiskInput.new
        type.disk_name = params[:disk_name]
        type.instance_name = params[:instance_name]
        type.disk_path = params[:disk_path]
        type
      end
    end

    module AttachDiskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachDiskOutput, context: context)
        type = Types::AttachDiskOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module AttachInstancesToLoadBalancerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachInstancesToLoadBalancerInput, context: context)
        type = Types::AttachInstancesToLoadBalancerInput.new
        type.load_balancer_name = params[:load_balancer_name]
        type.instance_names = ResourceNameList.build(params[:instance_names], context: "#{context}[:instance_names]") unless params[:instance_names].nil?
        type
      end
    end

    module AttachInstancesToLoadBalancerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachInstancesToLoadBalancerOutput, context: context)
        type = Types::AttachInstancesToLoadBalancerOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module AttachLoadBalancerTlsCertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachLoadBalancerTlsCertificateInput, context: context)
        type = Types::AttachLoadBalancerTlsCertificateInput.new
        type.load_balancer_name = params[:load_balancer_name]
        type.certificate_name = params[:certificate_name]
        type
      end
    end

    module AttachLoadBalancerTlsCertificateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachLoadBalancerTlsCertificateOutput, context: context)
        type = Types::AttachLoadBalancerTlsCertificateOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module AttachStaticIpInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachStaticIpInput, context: context)
        type = Types::AttachStaticIpInput.new
        type.static_ip_name = params[:static_ip_name]
        type.instance_name = params[:instance_name]
        type
      end
    end

    module AttachStaticIpOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachStaticIpOutput, context: context)
        type = Types::AttachStaticIpOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module AttachedDisk
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachedDisk, context: context)
        type = Types::AttachedDisk.new
        type.path = params[:path]
        type.size_in_gb = params[:size_in_gb]
        type
      end
    end

    module AttachedDiskList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AttachedDisk.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AttachedDiskMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = DiskMapList.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module AutoSnapshotAddOnRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoSnapshotAddOnRequest, context: context)
        type = Types::AutoSnapshotAddOnRequest.new
        type.snapshot_time_of_day = params[:snapshot_time_of_day]
        type
      end
    end

    module AutoSnapshotDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoSnapshotDetails, context: context)
        type = Types::AutoSnapshotDetails.new
        type.date = params[:date]
        type.created_at = params[:created_at]
        type.status = params[:status]
        type.from_attached_disks = AttachedDiskList.build(params[:from_attached_disks], context: "#{context}[:from_attached_disks]") unless params[:from_attached_disks].nil?
        type
      end
    end

    module AutoSnapshotDetailsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AutoSnapshotDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AvailabilityZone
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AvailabilityZone, context: context)
        type = Types::AvailabilityZone.new
        type.zone_name = params[:zone_name]
        type.state = params[:state]
        type
      end
    end

    module AvailabilityZoneList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AvailabilityZone.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Blueprint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Blueprint, context: context)
        type = Types::Blueprint.new
        type.blueprint_id = params[:blueprint_id]
        type.name = params[:name]
        type.group = params[:group]
        type.type = params[:type]
        type.description = params[:description]
        type.is_active = params[:is_active]
        type.min_power = params[:min_power]
        type.version = params[:version]
        type.version_code = params[:version_code]
        type.product_url = params[:product_url]
        type.license_url = params[:license_url]
        type.platform = params[:platform]
        type
      end
    end

    module BlueprintList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Blueprint.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Bucket
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Bucket, context: context)
        type = Types::Bucket.new
        type.resource_type = params[:resource_type]
        type.access_rules = AccessRules.build(params[:access_rules], context: "#{context}[:access_rules]") unless params[:access_rules].nil?
        type.arn = params[:arn]
        type.bundle_id = params[:bundle_id]
        type.created_at = params[:created_at]
        type.url = params[:url]
        type.location = ResourceLocation.build(params[:location], context: "#{context}[:location]") unless params[:location].nil?
        type.name = params[:name]
        type.support_code = params[:support_code]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.object_versioning = params[:object_versioning]
        type.able_to_update_bundle = params[:able_to_update_bundle]
        type.readonly_access_accounts = PartnerIdList.build(params[:readonly_access_accounts], context: "#{context}[:readonly_access_accounts]") unless params[:readonly_access_accounts].nil?
        type.resources_receiving_access = AccessReceiverList.build(params[:resources_receiving_access], context: "#{context}[:resources_receiving_access]") unless params[:resources_receiving_access].nil?
        type.state = BucketState.build(params[:state], context: "#{context}[:state]") unless params[:state].nil?
        type.access_log_config = BucketAccessLogConfig.build(params[:access_log_config], context: "#{context}[:access_log_config]") unless params[:access_log_config].nil?
        type
      end
    end

    module BucketAccessLogConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BucketAccessLogConfig, context: context)
        type = Types::BucketAccessLogConfig.new
        type.enabled = params[:enabled]
        type.destination = params[:destination]
        type.prefix = params[:prefix]
        type
      end
    end

    module BucketBundle
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BucketBundle, context: context)
        type = Types::BucketBundle.new
        type.bundle_id = params[:bundle_id]
        type.name = params[:name]
        type.price = params[:price]
        type.storage_per_month_in_gb = params[:storage_per_month_in_gb]
        type.transfer_per_month_in_gb = params[:transfer_per_month_in_gb]
        type.is_active = params[:is_active]
        type
      end
    end

    module BucketBundleList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BucketBundle.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BucketList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Bucket.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BucketState
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BucketState, context: context)
        type = Types::BucketState.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module Bundle
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Bundle, context: context)
        type = Types::Bundle.new
        type.price = params[:price]
        type.cpu_count = params[:cpu_count]
        type.disk_size_in_gb = params[:disk_size_in_gb]
        type.bundle_id = params[:bundle_id]
        type.instance_type = params[:instance_type]
        type.is_active = params[:is_active]
        type.name = params[:name]
        type.power = params[:power]
        type.ram_size_in_gb = params[:ram_size_in_gb]
        type.transfer_per_month_in_gb = params[:transfer_per_month_in_gb]
        type.supported_platforms = InstancePlatformList.build(params[:supported_platforms], context: "#{context}[:supported_platforms]") unless params[:supported_platforms].nil?
        type
      end
    end

    module BundleList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Bundle.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CacheBehavior
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CacheBehavior, context: context)
        type = Types::CacheBehavior.new
        type.behavior = params[:behavior]
        type
      end
    end

    module CacheBehaviorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CacheBehaviorPerPath.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CacheBehaviorPerPath
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CacheBehaviorPerPath, context: context)
        type = Types::CacheBehaviorPerPath.new
        type.path = params[:path]
        type.behavior = params[:behavior]
        type
      end
    end

    module CacheSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CacheSettings, context: context)
        type = Types::CacheSettings.new
        type.default_ttl = params[:default_ttl]
        type.minimum_ttl = params[:minimum_ttl]
        type.maximum_ttl = params[:maximum_ttl]
        type.allowed_http_methods = params[:allowed_http_methods]
        type.cached_http_methods = params[:cached_http_methods]
        type.forwarded_cookies = CookieObject.build(params[:forwarded_cookies], context: "#{context}[:forwarded_cookies]") unless params[:forwarded_cookies].nil?
        type.forwarded_headers = HeaderObject.build(params[:forwarded_headers], context: "#{context}[:forwarded_headers]") unless params[:forwarded_headers].nil?
        type.forwarded_query_strings = QueryStringObject.build(params[:forwarded_query_strings], context: "#{context}[:forwarded_query_strings]") unless params[:forwarded_query_strings].nil?
        type
      end
    end

    module Certificate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Certificate, context: context)
        type = Types::Certificate.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.domain_name = params[:domain_name]
        type.status = params[:status]
        type.serial_number = params[:serial_number]
        type.subject_alternative_names = SubjectAlternativeNameList.build(params[:subject_alternative_names], context: "#{context}[:subject_alternative_names]") unless params[:subject_alternative_names].nil?
        type.domain_validation_records = DomainValidationRecordList.build(params[:domain_validation_records], context: "#{context}[:domain_validation_records]") unless params[:domain_validation_records].nil?
        type.request_failure_reason = params[:request_failure_reason]
        type.in_use_resource_count = params[:in_use_resource_count]
        type.key_algorithm = params[:key_algorithm]
        type.created_at = params[:created_at]
        type.issued_at = params[:issued_at]
        type.issuer_ca = params[:issuer_ca]
        type.not_before = params[:not_before]
        type.not_after = params[:not_after]
        type.eligible_to_renew = params[:eligible_to_renew]
        type.renewal_summary = RenewalSummary.build(params[:renewal_summary], context: "#{context}[:renewal_summary]") unless params[:renewal_summary].nil?
        type.revoked_at = params[:revoked_at]
        type.revocation_reason = params[:revocation_reason]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.support_code = params[:support_code]
        type
      end
    end

    module CertificateStatusList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CertificateSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CertificateSummary, context: context)
        type = Types::CertificateSummary.new
        type.certificate_arn = params[:certificate_arn]
        type.certificate_name = params[:certificate_name]
        type.domain_name = params[:domain_name]
        type.certificate_detail = Certificate.build(params[:certificate_detail], context: "#{context}[:certificate_detail]") unless params[:certificate_detail].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CertificateSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CertificateSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CloseInstancePublicPortsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloseInstancePublicPortsInput, context: context)
        type = Types::CloseInstancePublicPortsInput.new
        type.port_info = PortInfo.build(params[:port_info], context: "#{context}[:port_info]") unless params[:port_info].nil?
        type.instance_name = params[:instance_name]
        type
      end
    end

    module CloseInstancePublicPortsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloseInstancePublicPortsOutput, context: context)
        type = Types::CloseInstancePublicPortsOutput.new
        type.operation = Operation.build(params[:operation], context: "#{context}[:operation]") unless params[:operation].nil?
        type
      end
    end

    module CloudFormationStackRecord
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudFormationStackRecord, context: context)
        type = Types::CloudFormationStackRecord.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.created_at = params[:created_at]
        type.location = ResourceLocation.build(params[:location], context: "#{context}[:location]") unless params[:location].nil?
        type.resource_type = params[:resource_type]
        type.state = params[:state]
        type.source_info = CloudFormationStackRecordSourceInfoList.build(params[:source_info], context: "#{context}[:source_info]") unless params[:source_info].nil?
        type.destination_info = DestinationInfo.build(params[:destination_info], context: "#{context}[:destination_info]") unless params[:destination_info].nil?
        type
      end
    end

    module CloudFormationStackRecordList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CloudFormationStackRecord.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CloudFormationStackRecordSourceInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudFormationStackRecordSourceInfo, context: context)
        type = Types::CloudFormationStackRecordSourceInfo.new
        type.resource_type = params[:resource_type]
        type.name = params[:name]
        type.arn = params[:arn]
        type
      end
    end

    module CloudFormationStackRecordSourceInfoList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CloudFormationStackRecordSourceInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ContactMethod
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContactMethod, context: context)
        type = Types::ContactMethod.new
        type.contact_endpoint = params[:contact_endpoint]
        type.status = params[:status]
        type.protocol = params[:protocol]
        type.name = params[:name]
        type.arn = params[:arn]
        type.created_at = params[:created_at]
        type.location = ResourceLocation.build(params[:location], context: "#{context}[:location]") unless params[:location].nil?
        type.resource_type = params[:resource_type]
        type.support_code = params[:support_code]
        type
      end
    end

    module ContactMethodsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ContactMethod.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ContactProtocolsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Container
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Container, context: context)
        type = Types::Container.new
        type.image = params[:image]
        type.command = StringList.build(params[:command], context: "#{context}[:command]") unless params[:command].nil?
        type.environment = Environment.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type.ports = PortMap.build(params[:ports], context: "#{context}[:ports]") unless params[:ports].nil?
        type
      end
    end

    module ContainerImage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContainerImage, context: context)
        type = Types::ContainerImage.new
        type.image = params[:image]
        type.digest = params[:digest]
        type.created_at = params[:created_at]
        type
      end
    end

    module ContainerImageList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ContainerImage.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ContainerMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = Container.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module ContainerService
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContainerService, context: context)
        type = Types::ContainerService.new
        type.container_service_name = params[:container_service_name]
        type.arn = params[:arn]
        type.created_at = params[:created_at]
        type.location = ResourceLocation.build(params[:location], context: "#{context}[:location]") unless params[:location].nil?
        type.resource_type = params[:resource_type]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.power = params[:power]
        type.power_id = params[:power_id]
        type.state = params[:state]
        type.state_detail = ContainerServiceStateDetail.build(params[:state_detail], context: "#{context}[:state_detail]") unless params[:state_detail].nil?
        type.scale = params[:scale]
        type.current_deployment = ContainerServiceDeployment.build(params[:current_deployment], context: "#{context}[:current_deployment]") unless params[:current_deployment].nil?
        type.next_deployment = ContainerServiceDeployment.build(params[:next_deployment], context: "#{context}[:next_deployment]") unless params[:next_deployment].nil?
        type.is_disabled = params[:is_disabled]
        type.principal_arn = params[:principal_arn]
        type.private_domain_name = params[:private_domain_name]
        type.public_domain_names = ContainerServicePublicDomains.build(params[:public_domain_names], context: "#{context}[:public_domain_names]") unless params[:public_domain_names].nil?
        type.url = params[:url]
        type.private_registry_access = PrivateRegistryAccess.build(params[:private_registry_access], context: "#{context}[:private_registry_access]") unless params[:private_registry_access].nil?
        type
      end
    end

    module ContainerServiceDeployment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContainerServiceDeployment, context: context)
        type = Types::ContainerServiceDeployment.new
        type.version = params[:version]
        type.state = params[:state]
        type.containers = ContainerMap.build(params[:containers], context: "#{context}[:containers]") unless params[:containers].nil?
        type.public_endpoint = ContainerServiceEndpoint.build(params[:public_endpoint], context: "#{context}[:public_endpoint]") unless params[:public_endpoint].nil?
        type.created_at = params[:created_at]
        type
      end
    end

    module ContainerServiceDeploymentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ContainerServiceDeployment.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ContainerServiceDeploymentRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContainerServiceDeploymentRequest, context: context)
        type = Types::ContainerServiceDeploymentRequest.new
        type.containers = ContainerMap.build(params[:containers], context: "#{context}[:containers]") unless params[:containers].nil?
        type.public_endpoint = EndpointRequest.build(params[:public_endpoint], context: "#{context}[:public_endpoint]") unless params[:public_endpoint].nil?
        type
      end
    end

    module ContainerServiceECRImagePullerRole
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContainerServiceECRImagePullerRole, context: context)
        type = Types::ContainerServiceECRImagePullerRole.new
        type.is_active = params[:is_active]
        type.principal_arn = params[:principal_arn]
        type
      end
    end

    module ContainerServiceECRImagePullerRoleRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContainerServiceECRImagePullerRoleRequest, context: context)
        type = Types::ContainerServiceECRImagePullerRoleRequest.new
        type.is_active = params[:is_active]
        type
      end
    end

    module ContainerServiceEndpoint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContainerServiceEndpoint, context: context)
        type = Types::ContainerServiceEndpoint.new
        type.container_name = params[:container_name]
        type.container_port = params[:container_port]
        type.health_check = ContainerServiceHealthCheckConfig.build(params[:health_check], context: "#{context}[:health_check]") unless params[:health_check].nil?
        type
      end
    end

    module ContainerServiceHealthCheckConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContainerServiceHealthCheckConfig, context: context)
        type = Types::ContainerServiceHealthCheckConfig.new
        type.healthy_threshold = params[:healthy_threshold]
        type.unhealthy_threshold = params[:unhealthy_threshold]
        type.timeout_seconds = params[:timeout_seconds]
        type.interval_seconds = params[:interval_seconds]
        type.path = params[:path]
        type.success_codes = params[:success_codes]
        type
      end
    end

    module ContainerServiceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ContainerService.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ContainerServiceLogEvent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContainerServiceLogEvent, context: context)
        type = Types::ContainerServiceLogEvent.new
        type.created_at = params[:created_at]
        type.message = params[:message]
        type
      end
    end

    module ContainerServiceLogEventList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ContainerServiceLogEvent.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ContainerServiceMetadataEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ContainerServiceMetadataEntryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ContainerServiceMetadataEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ContainerServicePower
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContainerServicePower, context: context)
        type = Types::ContainerServicePower.new
        type.power_id = params[:power_id]
        type.price = params[:price]
        type.cpu_count = params[:cpu_count]
        type.ram_size_in_gb = params[:ram_size_in_gb]
        type.name = params[:name]
        type.is_active = params[:is_active]
        type
      end
    end

    module ContainerServicePowerList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ContainerServicePower.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ContainerServicePublicDomains
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = ContainerServicePublicDomainsList.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module ContainerServicePublicDomainsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ContainerServiceRegistryLogin
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContainerServiceRegistryLogin, context: context)
        type = Types::ContainerServiceRegistryLogin.new
        type.username = params[:username]
        type.password = params[:password]
        type.expires_at = params[:expires_at]
        type.registry = params[:registry]
        type
      end
    end

    module ContainerServiceStateDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContainerServiceStateDetail, context: context)
        type = Types::ContainerServiceStateDetail.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module CookieObject
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CookieObject, context: context)
        type = Types::CookieObject.new
        type.option = params[:option]
        type.cookies_allow_list = StringList.build(params[:cookies_allow_list], context: "#{context}[:cookies_allow_list]") unless params[:cookies_allow_list].nil?
        type
      end
    end

    module CopySnapshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CopySnapshotInput, context: context)
        type = Types::CopySnapshotInput.new
        type.source_snapshot_name = params[:source_snapshot_name]
        type.source_resource_name = params[:source_resource_name]
        type.restore_date = params[:restore_date]
        type.use_latest_restorable_auto_snapshot = params[:use_latest_restorable_auto_snapshot]
        type.target_snapshot_name = params[:target_snapshot_name]
        type.source_region = params[:source_region]
        type
      end
    end

    module CopySnapshotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CopySnapshotOutput, context: context)
        type = Types::CopySnapshotOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module CreateBucketAccessKeyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBucketAccessKeyInput, context: context)
        type = Types::CreateBucketAccessKeyInput.new
        type.bucket_name = params[:bucket_name]
        type
      end
    end

    module CreateBucketAccessKeyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBucketAccessKeyOutput, context: context)
        type = Types::CreateBucketAccessKeyOutput.new
        type.access_key = AccessKey.build(params[:access_key], context: "#{context}[:access_key]") unless params[:access_key].nil?
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module CreateBucketInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBucketInput, context: context)
        type = Types::CreateBucketInput.new
        type.bucket_name = params[:bucket_name]
        type.bundle_id = params[:bundle_id]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.enable_object_versioning = params[:enable_object_versioning]
        type
      end
    end

    module CreateBucketOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBucketOutput, context: context)
        type = Types::CreateBucketOutput.new
        type.bucket = Bucket.build(params[:bucket], context: "#{context}[:bucket]") unless params[:bucket].nil?
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module CreateCertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCertificateInput, context: context)
        type = Types::CreateCertificateInput.new
        type.certificate_name = params[:certificate_name]
        type.domain_name = params[:domain_name]
        type.subject_alternative_names = SubjectAlternativeNameList.build(params[:subject_alternative_names], context: "#{context}[:subject_alternative_names]") unless params[:subject_alternative_names].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateCertificateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCertificateOutput, context: context)
        type = Types::CreateCertificateOutput.new
        type.certificate = CertificateSummary.build(params[:certificate], context: "#{context}[:certificate]") unless params[:certificate].nil?
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module CreateCloudFormationStackInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCloudFormationStackInput, context: context)
        type = Types::CreateCloudFormationStackInput.new
        type.instances = InstanceEntryList.build(params[:instances], context: "#{context}[:instances]") unless params[:instances].nil?
        type
      end
    end

    module CreateCloudFormationStackOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCloudFormationStackOutput, context: context)
        type = Types::CreateCloudFormationStackOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module CreateContactMethodInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateContactMethodInput, context: context)
        type = Types::CreateContactMethodInput.new
        type.protocol = params[:protocol]
        type.contact_endpoint = params[:contact_endpoint]
        type
      end
    end

    module CreateContactMethodOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateContactMethodOutput, context: context)
        type = Types::CreateContactMethodOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module CreateContainerServiceDeploymentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateContainerServiceDeploymentInput, context: context)
        type = Types::CreateContainerServiceDeploymentInput.new
        type.service_name = params[:service_name]
        type.containers = ContainerMap.build(params[:containers], context: "#{context}[:containers]") unless params[:containers].nil?
        type.public_endpoint = EndpointRequest.build(params[:public_endpoint], context: "#{context}[:public_endpoint]") unless params[:public_endpoint].nil?
        type
      end
    end

    module CreateContainerServiceDeploymentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateContainerServiceDeploymentOutput, context: context)
        type = Types::CreateContainerServiceDeploymentOutput.new
        type.container_service = ContainerService.build(params[:container_service], context: "#{context}[:container_service]") unless params[:container_service].nil?
        type
      end
    end

    module CreateContainerServiceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateContainerServiceInput, context: context)
        type = Types::CreateContainerServiceInput.new
        type.service_name = params[:service_name]
        type.power = params[:power]
        type.scale = params[:scale]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.public_domain_names = ContainerServicePublicDomains.build(params[:public_domain_names], context: "#{context}[:public_domain_names]") unless params[:public_domain_names].nil?
        type.deployment = ContainerServiceDeploymentRequest.build(params[:deployment], context: "#{context}[:deployment]") unless params[:deployment].nil?
        type.private_registry_access = PrivateRegistryAccessRequest.build(params[:private_registry_access], context: "#{context}[:private_registry_access]") unless params[:private_registry_access].nil?
        type
      end
    end

    module CreateContainerServiceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateContainerServiceOutput, context: context)
        type = Types::CreateContainerServiceOutput.new
        type.container_service = ContainerService.build(params[:container_service], context: "#{context}[:container_service]") unless params[:container_service].nil?
        type
      end
    end

    module CreateContainerServiceRegistryLoginInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateContainerServiceRegistryLoginInput, context: context)
        type = Types::CreateContainerServiceRegistryLoginInput.new
        type
      end
    end

    module CreateContainerServiceRegistryLoginOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateContainerServiceRegistryLoginOutput, context: context)
        type = Types::CreateContainerServiceRegistryLoginOutput.new
        type.registry_login = ContainerServiceRegistryLogin.build(params[:registry_login], context: "#{context}[:registry_login]") unless params[:registry_login].nil?
        type
      end
    end

    module CreateDiskFromSnapshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDiskFromSnapshotInput, context: context)
        type = Types::CreateDiskFromSnapshotInput.new
        type.disk_name = params[:disk_name]
        type.disk_snapshot_name = params[:disk_snapshot_name]
        type.availability_zone = params[:availability_zone]
        type.size_in_gb = params[:size_in_gb]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.add_ons = AddOnRequestList.build(params[:add_ons], context: "#{context}[:add_ons]") unless params[:add_ons].nil?
        type.source_disk_name = params[:source_disk_name]
        type.restore_date = params[:restore_date]
        type.use_latest_restorable_auto_snapshot = params[:use_latest_restorable_auto_snapshot]
        type
      end
    end

    module CreateDiskFromSnapshotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDiskFromSnapshotOutput, context: context)
        type = Types::CreateDiskFromSnapshotOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module CreateDiskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDiskInput, context: context)
        type = Types::CreateDiskInput.new
        type.disk_name = params[:disk_name]
        type.availability_zone = params[:availability_zone]
        type.size_in_gb = params[:size_in_gb]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.add_ons = AddOnRequestList.build(params[:add_ons], context: "#{context}[:add_ons]") unless params[:add_ons].nil?
        type
      end
    end

    module CreateDiskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDiskOutput, context: context)
        type = Types::CreateDiskOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module CreateDiskSnapshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDiskSnapshotInput, context: context)
        type = Types::CreateDiskSnapshotInput.new
        type.disk_name = params[:disk_name]
        type.disk_snapshot_name = params[:disk_snapshot_name]
        type.instance_name = params[:instance_name]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateDiskSnapshotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDiskSnapshotOutput, context: context)
        type = Types::CreateDiskSnapshotOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module CreateDistributionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDistributionInput, context: context)
        type = Types::CreateDistributionInput.new
        type.distribution_name = params[:distribution_name]
        type.origin = InputOrigin.build(params[:origin], context: "#{context}[:origin]") unless params[:origin].nil?
        type.default_cache_behavior = CacheBehavior.build(params[:default_cache_behavior], context: "#{context}[:default_cache_behavior]") unless params[:default_cache_behavior].nil?
        type.cache_behavior_settings = CacheSettings.build(params[:cache_behavior_settings], context: "#{context}[:cache_behavior_settings]") unless params[:cache_behavior_settings].nil?
        type.cache_behaviors = CacheBehaviorList.build(params[:cache_behaviors], context: "#{context}[:cache_behaviors]") unless params[:cache_behaviors].nil?
        type.bundle_id = params[:bundle_id]
        type.ip_address_type = params[:ip_address_type]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateDistributionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDistributionOutput, context: context)
        type = Types::CreateDistributionOutput.new
        type.distribution = LightsailDistribution.build(params[:distribution], context: "#{context}[:distribution]") unless params[:distribution].nil?
        type.operation = Operation.build(params[:operation], context: "#{context}[:operation]") unless params[:operation].nil?
        type
      end
    end

    module CreateDomainEntryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDomainEntryInput, context: context)
        type = Types::CreateDomainEntryInput.new
        type.domain_name = params[:domain_name]
        type.domain_entry = DomainEntry.build(params[:domain_entry], context: "#{context}[:domain_entry]") unless params[:domain_entry].nil?
        type
      end
    end

    module CreateDomainEntryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDomainEntryOutput, context: context)
        type = Types::CreateDomainEntryOutput.new
        type.operation = Operation.build(params[:operation], context: "#{context}[:operation]") unless params[:operation].nil?
        type
      end
    end

    module CreateDomainInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDomainInput, context: context)
        type = Types::CreateDomainInput.new
        type.domain_name = params[:domain_name]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateDomainOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDomainOutput, context: context)
        type = Types::CreateDomainOutput.new
        type.operation = Operation.build(params[:operation], context: "#{context}[:operation]") unless params[:operation].nil?
        type
      end
    end

    module CreateInstanceSnapshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateInstanceSnapshotInput, context: context)
        type = Types::CreateInstanceSnapshotInput.new
        type.instance_snapshot_name = params[:instance_snapshot_name]
        type.instance_name = params[:instance_name]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateInstanceSnapshotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateInstanceSnapshotOutput, context: context)
        type = Types::CreateInstanceSnapshotOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module CreateInstancesFromSnapshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateInstancesFromSnapshotInput, context: context)
        type = Types::CreateInstancesFromSnapshotInput.new
        type.instance_names = StringList.build(params[:instance_names], context: "#{context}[:instance_names]") unless params[:instance_names].nil?
        type.attached_disk_mapping = AttachedDiskMap.build(params[:attached_disk_mapping], context: "#{context}[:attached_disk_mapping]") unless params[:attached_disk_mapping].nil?
        type.availability_zone = params[:availability_zone]
        type.instance_snapshot_name = params[:instance_snapshot_name]
        type.bundle_id = params[:bundle_id]
        type.user_data = params[:user_data]
        type.key_pair_name = params[:key_pair_name]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.add_ons = AddOnRequestList.build(params[:add_ons], context: "#{context}[:add_ons]") unless params[:add_ons].nil?
        type.ip_address_type = params[:ip_address_type]
        type.source_instance_name = params[:source_instance_name]
        type.restore_date = params[:restore_date]
        type.use_latest_restorable_auto_snapshot = params[:use_latest_restorable_auto_snapshot]
        type
      end
    end

    module CreateInstancesFromSnapshotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateInstancesFromSnapshotOutput, context: context)
        type = Types::CreateInstancesFromSnapshotOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module CreateInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateInstancesInput, context: context)
        type = Types::CreateInstancesInput.new
        type.instance_names = StringList.build(params[:instance_names], context: "#{context}[:instance_names]") unless params[:instance_names].nil?
        type.availability_zone = params[:availability_zone]
        type.custom_image_name = params[:custom_image_name]
        type.blueprint_id = params[:blueprint_id]
        type.bundle_id = params[:bundle_id]
        type.user_data = params[:user_data]
        type.key_pair_name = params[:key_pair_name]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.add_ons = AddOnRequestList.build(params[:add_ons], context: "#{context}[:add_ons]") unless params[:add_ons].nil?
        type.ip_address_type = params[:ip_address_type]
        type
      end
    end

    module CreateInstancesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateInstancesOutput, context: context)
        type = Types::CreateInstancesOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module CreateKeyPairInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateKeyPairInput, context: context)
        type = Types::CreateKeyPairInput.new
        type.key_pair_name = params[:key_pair_name]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateKeyPairOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateKeyPairOutput, context: context)
        type = Types::CreateKeyPairOutput.new
        type.key_pair = KeyPair.build(params[:key_pair], context: "#{context}[:key_pair]") unless params[:key_pair].nil?
        type.public_key_base64 = params[:public_key_base64]
        type.private_key_base64 = params[:private_key_base64]
        type.operation = Operation.build(params[:operation], context: "#{context}[:operation]") unless params[:operation].nil?
        type
      end
    end

    module CreateLoadBalancerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLoadBalancerInput, context: context)
        type = Types::CreateLoadBalancerInput.new
        type.load_balancer_name = params[:load_balancer_name]
        type.instance_port = params[:instance_port]
        type.health_check_path = params[:health_check_path]
        type.certificate_name = params[:certificate_name]
        type.certificate_domain_name = params[:certificate_domain_name]
        type.certificate_alternative_names = DomainNameList.build(params[:certificate_alternative_names], context: "#{context}[:certificate_alternative_names]") unless params[:certificate_alternative_names].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.ip_address_type = params[:ip_address_type]
        type.tls_policy_name = params[:tls_policy_name]
        type
      end
    end

    module CreateLoadBalancerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLoadBalancerOutput, context: context)
        type = Types::CreateLoadBalancerOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module CreateLoadBalancerTlsCertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLoadBalancerTlsCertificateInput, context: context)
        type = Types::CreateLoadBalancerTlsCertificateInput.new
        type.load_balancer_name = params[:load_balancer_name]
        type.certificate_name = params[:certificate_name]
        type.certificate_domain_name = params[:certificate_domain_name]
        type.certificate_alternative_names = DomainNameList.build(params[:certificate_alternative_names], context: "#{context}[:certificate_alternative_names]") unless params[:certificate_alternative_names].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateLoadBalancerTlsCertificateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLoadBalancerTlsCertificateOutput, context: context)
        type = Types::CreateLoadBalancerTlsCertificateOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module CreateRelationalDatabaseFromSnapshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRelationalDatabaseFromSnapshotInput, context: context)
        type = Types::CreateRelationalDatabaseFromSnapshotInput.new
        type.relational_database_name = params[:relational_database_name]
        type.availability_zone = params[:availability_zone]
        type.publicly_accessible = params[:publicly_accessible]
        type.relational_database_snapshot_name = params[:relational_database_snapshot_name]
        type.relational_database_bundle_id = params[:relational_database_bundle_id]
        type.source_relational_database_name = params[:source_relational_database_name]
        type.restore_time = params[:restore_time]
        type.use_latest_restorable_time = params[:use_latest_restorable_time]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateRelationalDatabaseFromSnapshotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRelationalDatabaseFromSnapshotOutput, context: context)
        type = Types::CreateRelationalDatabaseFromSnapshotOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module CreateRelationalDatabaseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRelationalDatabaseInput, context: context)
        type = Types::CreateRelationalDatabaseInput.new
        type.relational_database_name = params[:relational_database_name]
        type.availability_zone = params[:availability_zone]
        type.relational_database_blueprint_id = params[:relational_database_blueprint_id]
        type.relational_database_bundle_id = params[:relational_database_bundle_id]
        type.master_database_name = params[:master_database_name]
        type.master_username = params[:master_username]
        type.master_user_password = params[:master_user_password]
        type.preferred_backup_window = params[:preferred_backup_window]
        type.preferred_maintenance_window = params[:preferred_maintenance_window]
        type.publicly_accessible = params[:publicly_accessible]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateRelationalDatabaseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRelationalDatabaseOutput, context: context)
        type = Types::CreateRelationalDatabaseOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module CreateRelationalDatabaseSnapshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRelationalDatabaseSnapshotInput, context: context)
        type = Types::CreateRelationalDatabaseSnapshotInput.new
        type.relational_database_name = params[:relational_database_name]
        type.relational_database_snapshot_name = params[:relational_database_snapshot_name]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateRelationalDatabaseSnapshotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRelationalDatabaseSnapshotOutput, context: context)
        type = Types::CreateRelationalDatabaseSnapshotOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module DeleteAlarmInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAlarmInput, context: context)
        type = Types::DeleteAlarmInput.new
        type.alarm_name = params[:alarm_name]
        type
      end
    end

    module DeleteAlarmOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAlarmOutput, context: context)
        type = Types::DeleteAlarmOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module DeleteAutoSnapshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAutoSnapshotInput, context: context)
        type = Types::DeleteAutoSnapshotInput.new
        type.resource_name = params[:resource_name]
        type.date = params[:date]
        type
      end
    end

    module DeleteAutoSnapshotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAutoSnapshotOutput, context: context)
        type = Types::DeleteAutoSnapshotOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module DeleteBucketAccessKeyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBucketAccessKeyInput, context: context)
        type = Types::DeleteBucketAccessKeyInput.new
        type.bucket_name = params[:bucket_name]
        type.access_key_id = params[:access_key_id]
        type
      end
    end

    module DeleteBucketAccessKeyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBucketAccessKeyOutput, context: context)
        type = Types::DeleteBucketAccessKeyOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module DeleteBucketInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBucketInput, context: context)
        type = Types::DeleteBucketInput.new
        type.bucket_name = params[:bucket_name]
        type.force_delete = params[:force_delete]
        type
      end
    end

    module DeleteBucketOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBucketOutput, context: context)
        type = Types::DeleteBucketOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module DeleteCertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCertificateInput, context: context)
        type = Types::DeleteCertificateInput.new
        type.certificate_name = params[:certificate_name]
        type
      end
    end

    module DeleteCertificateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCertificateOutput, context: context)
        type = Types::DeleteCertificateOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module DeleteContactMethodInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteContactMethodInput, context: context)
        type = Types::DeleteContactMethodInput.new
        type.protocol = params[:protocol]
        type
      end
    end

    module DeleteContactMethodOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteContactMethodOutput, context: context)
        type = Types::DeleteContactMethodOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module DeleteContainerImageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteContainerImageInput, context: context)
        type = Types::DeleteContainerImageInput.new
        type.service_name = params[:service_name]
        type.image = params[:image]
        type
      end
    end

    module DeleteContainerImageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteContainerImageOutput, context: context)
        type = Types::DeleteContainerImageOutput.new
        type
      end
    end

    module DeleteContainerServiceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteContainerServiceInput, context: context)
        type = Types::DeleteContainerServiceInput.new
        type.service_name = params[:service_name]
        type
      end
    end

    module DeleteContainerServiceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteContainerServiceOutput, context: context)
        type = Types::DeleteContainerServiceOutput.new
        type
      end
    end

    module DeleteDiskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDiskInput, context: context)
        type = Types::DeleteDiskInput.new
        type.disk_name = params[:disk_name]
        type.force_delete_add_ons = params[:force_delete_add_ons]
        type
      end
    end

    module DeleteDiskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDiskOutput, context: context)
        type = Types::DeleteDiskOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module DeleteDiskSnapshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDiskSnapshotInput, context: context)
        type = Types::DeleteDiskSnapshotInput.new
        type.disk_snapshot_name = params[:disk_snapshot_name]
        type
      end
    end

    module DeleteDiskSnapshotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDiskSnapshotOutput, context: context)
        type = Types::DeleteDiskSnapshotOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module DeleteDistributionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDistributionInput, context: context)
        type = Types::DeleteDistributionInput.new
        type.distribution_name = params[:distribution_name]
        type
      end
    end

    module DeleteDistributionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDistributionOutput, context: context)
        type = Types::DeleteDistributionOutput.new
        type.operation = Operation.build(params[:operation], context: "#{context}[:operation]") unless params[:operation].nil?
        type
      end
    end

    module DeleteDomainEntryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDomainEntryInput, context: context)
        type = Types::DeleteDomainEntryInput.new
        type.domain_name = params[:domain_name]
        type.domain_entry = DomainEntry.build(params[:domain_entry], context: "#{context}[:domain_entry]") unless params[:domain_entry].nil?
        type
      end
    end

    module DeleteDomainEntryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDomainEntryOutput, context: context)
        type = Types::DeleteDomainEntryOutput.new
        type.operation = Operation.build(params[:operation], context: "#{context}[:operation]") unless params[:operation].nil?
        type
      end
    end

    module DeleteDomainInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDomainInput, context: context)
        type = Types::DeleteDomainInput.new
        type.domain_name = params[:domain_name]
        type
      end
    end

    module DeleteDomainOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDomainOutput, context: context)
        type = Types::DeleteDomainOutput.new
        type.operation = Operation.build(params[:operation], context: "#{context}[:operation]") unless params[:operation].nil?
        type
      end
    end

    module DeleteInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteInstanceInput, context: context)
        type = Types::DeleteInstanceInput.new
        type.instance_name = params[:instance_name]
        type.force_delete_add_ons = params[:force_delete_add_ons]
        type
      end
    end

    module DeleteInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteInstanceOutput, context: context)
        type = Types::DeleteInstanceOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module DeleteInstanceSnapshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteInstanceSnapshotInput, context: context)
        type = Types::DeleteInstanceSnapshotInput.new
        type.instance_snapshot_name = params[:instance_snapshot_name]
        type
      end
    end

    module DeleteInstanceSnapshotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteInstanceSnapshotOutput, context: context)
        type = Types::DeleteInstanceSnapshotOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module DeleteKeyPairInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteKeyPairInput, context: context)
        type = Types::DeleteKeyPairInput.new
        type.key_pair_name = params[:key_pair_name]
        type.expected_fingerprint = params[:expected_fingerprint]
        type
      end
    end

    module DeleteKeyPairOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteKeyPairOutput, context: context)
        type = Types::DeleteKeyPairOutput.new
        type.operation = Operation.build(params[:operation], context: "#{context}[:operation]") unless params[:operation].nil?
        type
      end
    end

    module DeleteKnownHostKeysInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteKnownHostKeysInput, context: context)
        type = Types::DeleteKnownHostKeysInput.new
        type.instance_name = params[:instance_name]
        type
      end
    end

    module DeleteKnownHostKeysOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteKnownHostKeysOutput, context: context)
        type = Types::DeleteKnownHostKeysOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module DeleteLoadBalancerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLoadBalancerInput, context: context)
        type = Types::DeleteLoadBalancerInput.new
        type.load_balancer_name = params[:load_balancer_name]
        type
      end
    end

    module DeleteLoadBalancerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLoadBalancerOutput, context: context)
        type = Types::DeleteLoadBalancerOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module DeleteLoadBalancerTlsCertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLoadBalancerTlsCertificateInput, context: context)
        type = Types::DeleteLoadBalancerTlsCertificateInput.new
        type.load_balancer_name = params[:load_balancer_name]
        type.certificate_name = params[:certificate_name]
        type.force = params[:force]
        type
      end
    end

    module DeleteLoadBalancerTlsCertificateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLoadBalancerTlsCertificateOutput, context: context)
        type = Types::DeleteLoadBalancerTlsCertificateOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module DeleteRelationalDatabaseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRelationalDatabaseInput, context: context)
        type = Types::DeleteRelationalDatabaseInput.new
        type.relational_database_name = params[:relational_database_name]
        type.skip_final_snapshot = params[:skip_final_snapshot]
        type.final_relational_database_snapshot_name = params[:final_relational_database_snapshot_name]
        type
      end
    end

    module DeleteRelationalDatabaseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRelationalDatabaseOutput, context: context)
        type = Types::DeleteRelationalDatabaseOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module DeleteRelationalDatabaseSnapshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRelationalDatabaseSnapshotInput, context: context)
        type = Types::DeleteRelationalDatabaseSnapshotInput.new
        type.relational_database_snapshot_name = params[:relational_database_snapshot_name]
        type
      end
    end

    module DeleteRelationalDatabaseSnapshotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRelationalDatabaseSnapshotOutput, context: context)
        type = Types::DeleteRelationalDatabaseSnapshotOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module DestinationInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DestinationInfo, context: context)
        type = Types::DestinationInfo.new
        type.id = params[:id]
        type.service = params[:service]
        type
      end
    end

    module DetachCertificateFromDistributionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetachCertificateFromDistributionInput, context: context)
        type = Types::DetachCertificateFromDistributionInput.new
        type.distribution_name = params[:distribution_name]
        type
      end
    end

    module DetachCertificateFromDistributionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetachCertificateFromDistributionOutput, context: context)
        type = Types::DetachCertificateFromDistributionOutput.new
        type.operation = Operation.build(params[:operation], context: "#{context}[:operation]") unless params[:operation].nil?
        type
      end
    end

    module DetachDiskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetachDiskInput, context: context)
        type = Types::DetachDiskInput.new
        type.disk_name = params[:disk_name]
        type
      end
    end

    module DetachDiskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetachDiskOutput, context: context)
        type = Types::DetachDiskOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module DetachInstancesFromLoadBalancerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetachInstancesFromLoadBalancerInput, context: context)
        type = Types::DetachInstancesFromLoadBalancerInput.new
        type.load_balancer_name = params[:load_balancer_name]
        type.instance_names = ResourceNameList.build(params[:instance_names], context: "#{context}[:instance_names]") unless params[:instance_names].nil?
        type
      end
    end

    module DetachInstancesFromLoadBalancerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetachInstancesFromLoadBalancerOutput, context: context)
        type = Types::DetachInstancesFromLoadBalancerOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module DetachStaticIpInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetachStaticIpInput, context: context)
        type = Types::DetachStaticIpInput.new
        type.static_ip_name = params[:static_ip_name]
        type
      end
    end

    module DetachStaticIpOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetachStaticIpOutput, context: context)
        type = Types::DetachStaticIpOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module DisableAddOnInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableAddOnInput, context: context)
        type = Types::DisableAddOnInput.new
        type.add_on_type = params[:add_on_type]
        type.resource_name = params[:resource_name]
        type
      end
    end

    module DisableAddOnOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableAddOnOutput, context: context)
        type = Types::DisableAddOnOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module Disk
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Disk, context: context)
        type = Types::Disk.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.support_code = params[:support_code]
        type.created_at = params[:created_at]
        type.location = ResourceLocation.build(params[:location], context: "#{context}[:location]") unless params[:location].nil?
        type.resource_type = params[:resource_type]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.add_ons = AddOnList.build(params[:add_ons], context: "#{context}[:add_ons]") unless params[:add_ons].nil?
        type.size_in_gb = params[:size_in_gb]
        type.is_system_disk = params[:is_system_disk]
        type.iops = params[:iops]
        type.path = params[:path]
        type.state = params[:state]
        type.attached_to = params[:attached_to]
        type.is_attached = params[:is_attached]
        type.attachment_state = params[:attachment_state]
        type.gb_in_use = params[:gb_in_use]
        type
      end
    end

    module DiskInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DiskInfo, context: context)
        type = Types::DiskInfo.new
        type.name = params[:name]
        type.path = params[:path]
        type.size_in_gb = params[:size_in_gb]
        type.is_system_disk = params[:is_system_disk]
        type
      end
    end

    module DiskInfoList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DiskInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DiskList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Disk.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DiskMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DiskMap, context: context)
        type = Types::DiskMap.new
        type.original_disk_path = params[:original_disk_path]
        type.new_disk_name = params[:new_disk_name]
        type
      end
    end

    module DiskMapList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DiskMap.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DiskSnapshot
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DiskSnapshot, context: context)
        type = Types::DiskSnapshot.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.support_code = params[:support_code]
        type.created_at = params[:created_at]
        type.location = ResourceLocation.build(params[:location], context: "#{context}[:location]") unless params[:location].nil?
        type.resource_type = params[:resource_type]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.size_in_gb = params[:size_in_gb]
        type.state = params[:state]
        type.progress = params[:progress]
        type.from_disk_name = params[:from_disk_name]
        type.from_disk_arn = params[:from_disk_arn]
        type.from_instance_name = params[:from_instance_name]
        type.from_instance_arn = params[:from_instance_arn]
        type.is_from_auto_snapshot = params[:is_from_auto_snapshot]
        type
      end
    end

    module DiskSnapshotInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DiskSnapshotInfo, context: context)
        type = Types::DiskSnapshotInfo.new
        type.size_in_gb = params[:size_in_gb]
        type
      end
    end

    module DiskSnapshotList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DiskSnapshot.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DistributionBundle
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DistributionBundle, context: context)
        type = Types::DistributionBundle.new
        type.bundle_id = params[:bundle_id]
        type.name = params[:name]
        type.price = params[:price]
        type.transfer_per_month_in_gb = params[:transfer_per_month_in_gb]
        type.is_active = params[:is_active]
        type
      end
    end

    module DistributionBundleList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DistributionBundle.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DistributionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LightsailDistribution.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Domain
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Domain, context: context)
        type = Types::Domain.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.support_code = params[:support_code]
        type.created_at = params[:created_at]
        type.location = ResourceLocation.build(params[:location], context: "#{context}[:location]") unless params[:location].nil?
        type.resource_type = params[:resource_type]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.domain_entries = DomainEntryList.build(params[:domain_entries], context: "#{context}[:domain_entries]") unless params[:domain_entries].nil?
        type
      end
    end

    module DomainEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DomainEntry, context: context)
        type = Types::DomainEntry.new
        type.id = params[:id]
        type.name = params[:name]
        type.target = params[:target]
        type.is_alias = params[:is_alias]
        type.type = params[:type]
        type.options = DomainEntryOptions.build(params[:options], context: "#{context}[:options]") unless params[:options].nil?
        type
      end
    end

    module DomainEntryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DomainEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DomainEntryOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module DomainList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Domain.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DomainNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DomainValidationRecord
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DomainValidationRecord, context: context)
        type = Types::DomainValidationRecord.new
        type.domain_name = params[:domain_name]
        type.resource_record = ResourceRecord.build(params[:resource_record], context: "#{context}[:resource_record]") unless params[:resource_record].nil?
        type
      end
    end

    module DomainValidationRecordList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DomainValidationRecord.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DownloadDefaultKeyPairInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DownloadDefaultKeyPairInput, context: context)
        type = Types::DownloadDefaultKeyPairInput.new
        type
      end
    end

    module DownloadDefaultKeyPairOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DownloadDefaultKeyPairOutput, context: context)
        type = Types::DownloadDefaultKeyPairOutput.new
        type.public_key_base64 = params[:public_key_base64]
        type.private_key_base64 = params[:private_key_base64]
        type.created_at = params[:created_at]
        type
      end
    end

    module EnableAddOnInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableAddOnInput, context: context)
        type = Types::EnableAddOnInput.new
        type.resource_name = params[:resource_name]
        type.add_on_request = AddOnRequest.build(params[:add_on_request], context: "#{context}[:add_on_request]") unless params[:add_on_request].nil?
        type
      end
    end

    module EnableAddOnOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableAddOnOutput, context: context)
        type = Types::EnableAddOnOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module EndpointRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EndpointRequest, context: context)
        type = Types::EndpointRequest.new
        type.container_name = params[:container_name]
        type.container_port = params[:container_port]
        type.health_check = ContainerServiceHealthCheckConfig.build(params[:health_check], context: "#{context}[:health_check]") unless params[:health_check].nil?
        type
      end
    end

    module Environment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ExportSnapshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportSnapshotInput, context: context)
        type = Types::ExportSnapshotInput.new
        type.source_snapshot_name = params[:source_snapshot_name]
        type
      end
    end

    module ExportSnapshotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportSnapshotOutput, context: context)
        type = Types::ExportSnapshotOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module ExportSnapshotRecord
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportSnapshotRecord, context: context)
        type = Types::ExportSnapshotRecord.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.created_at = params[:created_at]
        type.location = ResourceLocation.build(params[:location], context: "#{context}[:location]") unless params[:location].nil?
        type.resource_type = params[:resource_type]
        type.state = params[:state]
        type.source_info = ExportSnapshotRecordSourceInfo.build(params[:source_info], context: "#{context}[:source_info]") unless params[:source_info].nil?
        type.destination_info = DestinationInfo.build(params[:destination_info], context: "#{context}[:destination_info]") unless params[:destination_info].nil?
        type
      end
    end

    module ExportSnapshotRecordList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ExportSnapshotRecord.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ExportSnapshotRecordSourceInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportSnapshotRecordSourceInfo, context: context)
        type = Types::ExportSnapshotRecordSourceInfo.new
        type.resource_type = params[:resource_type]
        type.created_at = params[:created_at]
        type.name = params[:name]
        type.arn = params[:arn]
        type.from_resource_name = params[:from_resource_name]
        type.from_resource_arn = params[:from_resource_arn]
        type.instance_snapshot_info = InstanceSnapshotInfo.build(params[:instance_snapshot_info], context: "#{context}[:instance_snapshot_info]") unless params[:instance_snapshot_info].nil?
        type.disk_snapshot_info = DiskSnapshotInfo.build(params[:disk_snapshot_info], context: "#{context}[:disk_snapshot_info]") unless params[:disk_snapshot_info].nil?
        type
      end
    end

    module GetActiveNamesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetActiveNamesInput, context: context)
        type = Types::GetActiveNamesInput.new
        type.page_token = params[:page_token]
        type
      end
    end

    module GetActiveNamesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetActiveNamesOutput, context: context)
        type = Types::GetActiveNamesOutput.new
        type.active_names = StringList.build(params[:active_names], context: "#{context}[:active_names]") unless params[:active_names].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module GetAlarmsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAlarmsInput, context: context)
        type = Types::GetAlarmsInput.new
        type.alarm_name = params[:alarm_name]
        type.page_token = params[:page_token]
        type.monitored_resource_name = params[:monitored_resource_name]
        type
      end
    end

    module GetAlarmsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAlarmsOutput, context: context)
        type = Types::GetAlarmsOutput.new
        type.alarms = AlarmsList.build(params[:alarms], context: "#{context}[:alarms]") unless params[:alarms].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module GetAutoSnapshotsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAutoSnapshotsInput, context: context)
        type = Types::GetAutoSnapshotsInput.new
        type.resource_name = params[:resource_name]
        type
      end
    end

    module GetAutoSnapshotsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAutoSnapshotsOutput, context: context)
        type = Types::GetAutoSnapshotsOutput.new
        type.resource_name = params[:resource_name]
        type.resource_type = params[:resource_type]
        type.auto_snapshots = AutoSnapshotDetailsList.build(params[:auto_snapshots], context: "#{context}[:auto_snapshots]") unless params[:auto_snapshots].nil?
        type
      end
    end

    module GetBlueprintsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBlueprintsInput, context: context)
        type = Types::GetBlueprintsInput.new
        type.include_inactive = params[:include_inactive]
        type.page_token = params[:page_token]
        type
      end
    end

    module GetBlueprintsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBlueprintsOutput, context: context)
        type = Types::GetBlueprintsOutput.new
        type.blueprints = BlueprintList.build(params[:blueprints], context: "#{context}[:blueprints]") unless params[:blueprints].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module GetBucketAccessKeysInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBucketAccessKeysInput, context: context)
        type = Types::GetBucketAccessKeysInput.new
        type.bucket_name = params[:bucket_name]
        type
      end
    end

    module GetBucketAccessKeysOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBucketAccessKeysOutput, context: context)
        type = Types::GetBucketAccessKeysOutput.new
        type.access_keys = AccessKeyList.build(params[:access_keys], context: "#{context}[:access_keys]") unless params[:access_keys].nil?
        type
      end
    end

    module GetBucketBundlesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBucketBundlesInput, context: context)
        type = Types::GetBucketBundlesInput.new
        type.include_inactive = params[:include_inactive]
        type
      end
    end

    module GetBucketBundlesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBucketBundlesOutput, context: context)
        type = Types::GetBucketBundlesOutput.new
        type.bundles = BucketBundleList.build(params[:bundles], context: "#{context}[:bundles]") unless params[:bundles].nil?
        type
      end
    end

    module GetBucketMetricDataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBucketMetricDataInput, context: context)
        type = Types::GetBucketMetricDataInput.new
        type.bucket_name = params[:bucket_name]
        type.metric_name = params[:metric_name]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.period = params[:period]
        type.statistics = MetricStatisticList.build(params[:statistics], context: "#{context}[:statistics]") unless params[:statistics].nil?
        type.unit = params[:unit]
        type
      end
    end

    module GetBucketMetricDataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBucketMetricDataOutput, context: context)
        type = Types::GetBucketMetricDataOutput.new
        type.metric_name = params[:metric_name]
        type.metric_data = MetricDatapointList.build(params[:metric_data], context: "#{context}[:metric_data]") unless params[:metric_data].nil?
        type
      end
    end

    module GetBucketsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBucketsInput, context: context)
        type = Types::GetBucketsInput.new
        type.bucket_name = params[:bucket_name]
        type.page_token = params[:page_token]
        type.include_connected_resources = params[:include_connected_resources]
        type
      end
    end

    module GetBucketsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBucketsOutput, context: context)
        type = Types::GetBucketsOutput.new
        type.buckets = BucketList.build(params[:buckets], context: "#{context}[:buckets]") unless params[:buckets].nil?
        type.next_page_token = params[:next_page_token]
        type.account_level_bpa_sync = AccountLevelBpaSync.build(params[:account_level_bpa_sync], context: "#{context}[:account_level_bpa_sync]") unless params[:account_level_bpa_sync].nil?
        type
      end
    end

    module GetBundlesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBundlesInput, context: context)
        type = Types::GetBundlesInput.new
        type.include_inactive = params[:include_inactive]
        type.page_token = params[:page_token]
        type
      end
    end

    module GetBundlesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBundlesOutput, context: context)
        type = Types::GetBundlesOutput.new
        type.bundles = BundleList.build(params[:bundles], context: "#{context}[:bundles]") unless params[:bundles].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module GetCertificatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCertificatesInput, context: context)
        type = Types::GetCertificatesInput.new
        type.certificate_statuses = CertificateStatusList.build(params[:certificate_statuses], context: "#{context}[:certificate_statuses]") unless params[:certificate_statuses].nil?
        type.include_certificate_details = params[:include_certificate_details]
        type.certificate_name = params[:certificate_name]
        type
      end
    end

    module GetCertificatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCertificatesOutput, context: context)
        type = Types::GetCertificatesOutput.new
        type.certificates = CertificateSummaryList.build(params[:certificates], context: "#{context}[:certificates]") unless params[:certificates].nil?
        type
      end
    end

    module GetCloudFormationStackRecordsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCloudFormationStackRecordsInput, context: context)
        type = Types::GetCloudFormationStackRecordsInput.new
        type.page_token = params[:page_token]
        type
      end
    end

    module GetCloudFormationStackRecordsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCloudFormationStackRecordsOutput, context: context)
        type = Types::GetCloudFormationStackRecordsOutput.new
        type.cloud_formation_stack_records = CloudFormationStackRecordList.build(params[:cloud_formation_stack_records], context: "#{context}[:cloud_formation_stack_records]") unless params[:cloud_formation_stack_records].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module GetContactMethodsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetContactMethodsInput, context: context)
        type = Types::GetContactMethodsInput.new
        type.protocols = ContactProtocolsList.build(params[:protocols], context: "#{context}[:protocols]") unless params[:protocols].nil?
        type
      end
    end

    module GetContactMethodsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetContactMethodsOutput, context: context)
        type = Types::GetContactMethodsOutput.new
        type.contact_methods = ContactMethodsList.build(params[:contact_methods], context: "#{context}[:contact_methods]") unless params[:contact_methods].nil?
        type
      end
    end

    module GetContainerAPIMetadataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetContainerAPIMetadataInput, context: context)
        type = Types::GetContainerAPIMetadataInput.new
        type
      end
    end

    module GetContainerAPIMetadataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetContainerAPIMetadataOutput, context: context)
        type = Types::GetContainerAPIMetadataOutput.new
        type.metadata = ContainerServiceMetadataEntryList.build(params[:metadata], context: "#{context}[:metadata]") unless params[:metadata].nil?
        type
      end
    end

    module GetContainerImagesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetContainerImagesInput, context: context)
        type = Types::GetContainerImagesInput.new
        type.service_name = params[:service_name]
        type
      end
    end

    module GetContainerImagesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetContainerImagesOutput, context: context)
        type = Types::GetContainerImagesOutput.new
        type.container_images = ContainerImageList.build(params[:container_images], context: "#{context}[:container_images]") unless params[:container_images].nil?
        type
      end
    end

    module GetContainerLogInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetContainerLogInput, context: context)
        type = Types::GetContainerLogInput.new
        type.service_name = params[:service_name]
        type.container_name = params[:container_name]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.filter_pattern = params[:filter_pattern]
        type.page_token = params[:page_token]
        type
      end
    end

    module GetContainerLogOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetContainerLogOutput, context: context)
        type = Types::GetContainerLogOutput.new
        type.log_events = ContainerServiceLogEventList.build(params[:log_events], context: "#{context}[:log_events]") unless params[:log_events].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module GetContainerServiceDeploymentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetContainerServiceDeploymentsInput, context: context)
        type = Types::GetContainerServiceDeploymentsInput.new
        type.service_name = params[:service_name]
        type
      end
    end

    module GetContainerServiceDeploymentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetContainerServiceDeploymentsOutput, context: context)
        type = Types::GetContainerServiceDeploymentsOutput.new
        type.deployments = ContainerServiceDeploymentList.build(params[:deployments], context: "#{context}[:deployments]") unless params[:deployments].nil?
        type
      end
    end

    module GetContainerServiceMetricDataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetContainerServiceMetricDataInput, context: context)
        type = Types::GetContainerServiceMetricDataInput.new
        type.service_name = params[:service_name]
        type.metric_name = params[:metric_name]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.period = params[:period]
        type.statistics = MetricStatisticList.build(params[:statistics], context: "#{context}[:statistics]") unless params[:statistics].nil?
        type
      end
    end

    module GetContainerServiceMetricDataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetContainerServiceMetricDataOutput, context: context)
        type = Types::GetContainerServiceMetricDataOutput.new
        type.metric_name = params[:metric_name]
        type.metric_data = MetricDatapointList.build(params[:metric_data], context: "#{context}[:metric_data]") unless params[:metric_data].nil?
        type
      end
    end

    module GetContainerServicePowersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetContainerServicePowersInput, context: context)
        type = Types::GetContainerServicePowersInput.new
        type
      end
    end

    module GetContainerServicePowersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetContainerServicePowersOutput, context: context)
        type = Types::GetContainerServicePowersOutput.new
        type.powers = ContainerServicePowerList.build(params[:powers], context: "#{context}[:powers]") unless params[:powers].nil?
        type
      end
    end

    module GetContainerServicesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetContainerServicesInput, context: context)
        type = Types::GetContainerServicesInput.new
        type.service_name = params[:service_name]
        type
      end
    end

    module GetContainerServicesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetContainerServicesOutput, context: context)
        type = Types::GetContainerServicesOutput.new
        type.container_services = ContainerServiceList.build(params[:container_services], context: "#{context}[:container_services]") unless params[:container_services].nil?
        type
      end
    end

    module GetDiskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDiskInput, context: context)
        type = Types::GetDiskInput.new
        type.disk_name = params[:disk_name]
        type
      end
    end

    module GetDiskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDiskOutput, context: context)
        type = Types::GetDiskOutput.new
        type.disk = Disk.build(params[:disk], context: "#{context}[:disk]") unless params[:disk].nil?
        type
      end
    end

    module GetDiskSnapshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDiskSnapshotInput, context: context)
        type = Types::GetDiskSnapshotInput.new
        type.disk_snapshot_name = params[:disk_snapshot_name]
        type
      end
    end

    module GetDiskSnapshotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDiskSnapshotOutput, context: context)
        type = Types::GetDiskSnapshotOutput.new
        type.disk_snapshot = DiskSnapshot.build(params[:disk_snapshot], context: "#{context}[:disk_snapshot]") unless params[:disk_snapshot].nil?
        type
      end
    end

    module GetDiskSnapshotsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDiskSnapshotsInput, context: context)
        type = Types::GetDiskSnapshotsInput.new
        type.page_token = params[:page_token]
        type
      end
    end

    module GetDiskSnapshotsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDiskSnapshotsOutput, context: context)
        type = Types::GetDiskSnapshotsOutput.new
        type.disk_snapshots = DiskSnapshotList.build(params[:disk_snapshots], context: "#{context}[:disk_snapshots]") unless params[:disk_snapshots].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module GetDisksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDisksInput, context: context)
        type = Types::GetDisksInput.new
        type.page_token = params[:page_token]
        type
      end
    end

    module GetDisksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDisksOutput, context: context)
        type = Types::GetDisksOutput.new
        type.disks = DiskList.build(params[:disks], context: "#{context}[:disks]") unless params[:disks].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module GetDistributionBundlesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDistributionBundlesInput, context: context)
        type = Types::GetDistributionBundlesInput.new
        type
      end
    end

    module GetDistributionBundlesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDistributionBundlesOutput, context: context)
        type = Types::GetDistributionBundlesOutput.new
        type.bundles = DistributionBundleList.build(params[:bundles], context: "#{context}[:bundles]") unless params[:bundles].nil?
        type
      end
    end

    module GetDistributionLatestCacheResetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDistributionLatestCacheResetInput, context: context)
        type = Types::GetDistributionLatestCacheResetInput.new
        type.distribution_name = params[:distribution_name]
        type
      end
    end

    module GetDistributionLatestCacheResetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDistributionLatestCacheResetOutput, context: context)
        type = Types::GetDistributionLatestCacheResetOutput.new
        type.status = params[:status]
        type.create_time = params[:create_time]
        type
      end
    end

    module GetDistributionMetricDataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDistributionMetricDataInput, context: context)
        type = Types::GetDistributionMetricDataInput.new
        type.distribution_name = params[:distribution_name]
        type.metric_name = params[:metric_name]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.period = params[:period]
        type.unit = params[:unit]
        type.statistics = MetricStatisticList.build(params[:statistics], context: "#{context}[:statistics]") unless params[:statistics].nil?
        type
      end
    end

    module GetDistributionMetricDataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDistributionMetricDataOutput, context: context)
        type = Types::GetDistributionMetricDataOutput.new
        type.metric_name = params[:metric_name]
        type.metric_data = MetricDatapointList.build(params[:metric_data], context: "#{context}[:metric_data]") unless params[:metric_data].nil?
        type
      end
    end

    module GetDistributionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDistributionsInput, context: context)
        type = Types::GetDistributionsInput.new
        type.distribution_name = params[:distribution_name]
        type.page_token = params[:page_token]
        type
      end
    end

    module GetDistributionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDistributionsOutput, context: context)
        type = Types::GetDistributionsOutput.new
        type.distributions = DistributionList.build(params[:distributions], context: "#{context}[:distributions]") unless params[:distributions].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module GetDomainInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDomainInput, context: context)
        type = Types::GetDomainInput.new
        type.domain_name = params[:domain_name]
        type
      end
    end

    module GetDomainOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDomainOutput, context: context)
        type = Types::GetDomainOutput.new
        type.domain = Domain.build(params[:domain], context: "#{context}[:domain]") unless params[:domain].nil?
        type
      end
    end

    module GetDomainsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDomainsInput, context: context)
        type = Types::GetDomainsInput.new
        type.page_token = params[:page_token]
        type
      end
    end

    module GetDomainsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDomainsOutput, context: context)
        type = Types::GetDomainsOutput.new
        type.domains = DomainList.build(params[:domains], context: "#{context}[:domains]") unless params[:domains].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module GetExportSnapshotRecordsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetExportSnapshotRecordsInput, context: context)
        type = Types::GetExportSnapshotRecordsInput.new
        type.page_token = params[:page_token]
        type
      end
    end

    module GetExportSnapshotRecordsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetExportSnapshotRecordsOutput, context: context)
        type = Types::GetExportSnapshotRecordsOutput.new
        type.export_snapshot_records = ExportSnapshotRecordList.build(params[:export_snapshot_records], context: "#{context}[:export_snapshot_records]") unless params[:export_snapshot_records].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module GetInstanceAccessDetailsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInstanceAccessDetailsInput, context: context)
        type = Types::GetInstanceAccessDetailsInput.new
        type.instance_name = params[:instance_name]
        type.protocol = params[:protocol]
        type
      end
    end

    module GetInstanceAccessDetailsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInstanceAccessDetailsOutput, context: context)
        type = Types::GetInstanceAccessDetailsOutput.new
        type.access_details = InstanceAccessDetails.build(params[:access_details], context: "#{context}[:access_details]") unless params[:access_details].nil?
        type
      end
    end

    module GetInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInstanceInput, context: context)
        type = Types::GetInstanceInput.new
        type.instance_name = params[:instance_name]
        type
      end
    end

    module GetInstanceMetricDataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInstanceMetricDataInput, context: context)
        type = Types::GetInstanceMetricDataInput.new
        type.instance_name = params[:instance_name]
        type.metric_name = params[:metric_name]
        type.period = params[:period]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.unit = params[:unit]
        type.statistics = MetricStatisticList.build(params[:statistics], context: "#{context}[:statistics]") unless params[:statistics].nil?
        type
      end
    end

    module GetInstanceMetricDataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInstanceMetricDataOutput, context: context)
        type = Types::GetInstanceMetricDataOutput.new
        type.metric_name = params[:metric_name]
        type.metric_data = MetricDatapointList.build(params[:metric_data], context: "#{context}[:metric_data]") unless params[:metric_data].nil?
        type
      end
    end

    module GetInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInstanceOutput, context: context)
        type = Types::GetInstanceOutput.new
        type.instance = Instance.build(params[:instance], context: "#{context}[:instance]") unless params[:instance].nil?
        type
      end
    end

    module GetInstancePortStatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInstancePortStatesInput, context: context)
        type = Types::GetInstancePortStatesInput.new
        type.instance_name = params[:instance_name]
        type
      end
    end

    module GetInstancePortStatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInstancePortStatesOutput, context: context)
        type = Types::GetInstancePortStatesOutput.new
        type.port_states = InstancePortStateList.build(params[:port_states], context: "#{context}[:port_states]") unless params[:port_states].nil?
        type
      end
    end

    module GetInstanceSnapshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInstanceSnapshotInput, context: context)
        type = Types::GetInstanceSnapshotInput.new
        type.instance_snapshot_name = params[:instance_snapshot_name]
        type
      end
    end

    module GetInstanceSnapshotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInstanceSnapshotOutput, context: context)
        type = Types::GetInstanceSnapshotOutput.new
        type.instance_snapshot = InstanceSnapshot.build(params[:instance_snapshot], context: "#{context}[:instance_snapshot]") unless params[:instance_snapshot].nil?
        type
      end
    end

    module GetInstanceSnapshotsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInstanceSnapshotsInput, context: context)
        type = Types::GetInstanceSnapshotsInput.new
        type.page_token = params[:page_token]
        type
      end
    end

    module GetInstanceSnapshotsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInstanceSnapshotsOutput, context: context)
        type = Types::GetInstanceSnapshotsOutput.new
        type.instance_snapshots = InstanceSnapshotList.build(params[:instance_snapshots], context: "#{context}[:instance_snapshots]") unless params[:instance_snapshots].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module GetInstanceStateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInstanceStateInput, context: context)
        type = Types::GetInstanceStateInput.new
        type.instance_name = params[:instance_name]
        type
      end
    end

    module GetInstanceStateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInstanceStateOutput, context: context)
        type = Types::GetInstanceStateOutput.new
        type.state = InstanceState.build(params[:state], context: "#{context}[:state]") unless params[:state].nil?
        type
      end
    end

    module GetInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInstancesInput, context: context)
        type = Types::GetInstancesInput.new
        type.page_token = params[:page_token]
        type
      end
    end

    module GetInstancesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInstancesOutput, context: context)
        type = Types::GetInstancesOutput.new
        type.instances = InstanceList.build(params[:instances], context: "#{context}[:instances]") unless params[:instances].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module GetKeyPairInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetKeyPairInput, context: context)
        type = Types::GetKeyPairInput.new
        type.key_pair_name = params[:key_pair_name]
        type
      end
    end

    module GetKeyPairOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetKeyPairOutput, context: context)
        type = Types::GetKeyPairOutput.new
        type.key_pair = KeyPair.build(params[:key_pair], context: "#{context}[:key_pair]") unless params[:key_pair].nil?
        type
      end
    end

    module GetKeyPairsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetKeyPairsInput, context: context)
        type = Types::GetKeyPairsInput.new
        type.page_token = params[:page_token]
        type.include_default_key_pair = params[:include_default_key_pair]
        type
      end
    end

    module GetKeyPairsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetKeyPairsOutput, context: context)
        type = Types::GetKeyPairsOutput.new
        type.key_pairs = KeyPairList.build(params[:key_pairs], context: "#{context}[:key_pairs]") unless params[:key_pairs].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module GetLoadBalancerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLoadBalancerInput, context: context)
        type = Types::GetLoadBalancerInput.new
        type.load_balancer_name = params[:load_balancer_name]
        type
      end
    end

    module GetLoadBalancerMetricDataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLoadBalancerMetricDataInput, context: context)
        type = Types::GetLoadBalancerMetricDataInput.new
        type.load_balancer_name = params[:load_balancer_name]
        type.metric_name = params[:metric_name]
        type.period = params[:period]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.unit = params[:unit]
        type.statistics = MetricStatisticList.build(params[:statistics], context: "#{context}[:statistics]") unless params[:statistics].nil?
        type
      end
    end

    module GetLoadBalancerMetricDataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLoadBalancerMetricDataOutput, context: context)
        type = Types::GetLoadBalancerMetricDataOutput.new
        type.metric_name = params[:metric_name]
        type.metric_data = MetricDatapointList.build(params[:metric_data], context: "#{context}[:metric_data]") unless params[:metric_data].nil?
        type
      end
    end

    module GetLoadBalancerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLoadBalancerOutput, context: context)
        type = Types::GetLoadBalancerOutput.new
        type.load_balancer = LoadBalancer.build(params[:load_balancer], context: "#{context}[:load_balancer]") unless params[:load_balancer].nil?
        type
      end
    end

    module GetLoadBalancerTlsCertificatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLoadBalancerTlsCertificatesInput, context: context)
        type = Types::GetLoadBalancerTlsCertificatesInput.new
        type.load_balancer_name = params[:load_balancer_name]
        type
      end
    end

    module GetLoadBalancerTlsCertificatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLoadBalancerTlsCertificatesOutput, context: context)
        type = Types::GetLoadBalancerTlsCertificatesOutput.new
        type.tls_certificates = LoadBalancerTlsCertificateList.build(params[:tls_certificates], context: "#{context}[:tls_certificates]") unless params[:tls_certificates].nil?
        type
      end
    end

    module GetLoadBalancerTlsPoliciesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLoadBalancerTlsPoliciesInput, context: context)
        type = Types::GetLoadBalancerTlsPoliciesInput.new
        type.page_token = params[:page_token]
        type
      end
    end

    module GetLoadBalancerTlsPoliciesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLoadBalancerTlsPoliciesOutput, context: context)
        type = Types::GetLoadBalancerTlsPoliciesOutput.new
        type.tls_policies = LoadBalancerTlsPolicyList.build(params[:tls_policies], context: "#{context}[:tls_policies]") unless params[:tls_policies].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module GetLoadBalancersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLoadBalancersInput, context: context)
        type = Types::GetLoadBalancersInput.new
        type.page_token = params[:page_token]
        type
      end
    end

    module GetLoadBalancersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLoadBalancersOutput, context: context)
        type = Types::GetLoadBalancersOutput.new
        type.load_balancers = LoadBalancerList.build(params[:load_balancers], context: "#{context}[:load_balancers]") unless params[:load_balancers].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module GetOperationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetOperationInput, context: context)
        type = Types::GetOperationInput.new
        type.operation_id = params[:operation_id]
        type
      end
    end

    module GetOperationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetOperationOutput, context: context)
        type = Types::GetOperationOutput.new
        type.operation = Operation.build(params[:operation], context: "#{context}[:operation]") unless params[:operation].nil?
        type
      end
    end

    module GetOperationsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetOperationsForResourceInput, context: context)
        type = Types::GetOperationsForResourceInput.new
        type.resource_name = params[:resource_name]
        type.page_token = params[:page_token]
        type
      end
    end

    module GetOperationsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetOperationsForResourceOutput, context: context)
        type = Types::GetOperationsForResourceOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type.next_page_count = params[:next_page_count]
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module GetOperationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetOperationsInput, context: context)
        type = Types::GetOperationsInput.new
        type.page_token = params[:page_token]
        type
      end
    end

    module GetOperationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetOperationsOutput, context: context)
        type = Types::GetOperationsOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module GetRegionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRegionsInput, context: context)
        type = Types::GetRegionsInput.new
        type.include_availability_zones = params[:include_availability_zones]
        type.include_relational_database_availability_zones = params[:include_relational_database_availability_zones]
        type
      end
    end

    module GetRegionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRegionsOutput, context: context)
        type = Types::GetRegionsOutput.new
        type.regions = RegionList.build(params[:regions], context: "#{context}[:regions]") unless params[:regions].nil?
        type
      end
    end

    module GetRelationalDatabaseBlueprintsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRelationalDatabaseBlueprintsInput, context: context)
        type = Types::GetRelationalDatabaseBlueprintsInput.new
        type.page_token = params[:page_token]
        type
      end
    end

    module GetRelationalDatabaseBlueprintsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRelationalDatabaseBlueprintsOutput, context: context)
        type = Types::GetRelationalDatabaseBlueprintsOutput.new
        type.blueprints = RelationalDatabaseBlueprintList.build(params[:blueprints], context: "#{context}[:blueprints]") unless params[:blueprints].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module GetRelationalDatabaseBundlesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRelationalDatabaseBundlesInput, context: context)
        type = Types::GetRelationalDatabaseBundlesInput.new
        type.page_token = params[:page_token]
        type.include_inactive = params[:include_inactive]
        type
      end
    end

    module GetRelationalDatabaseBundlesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRelationalDatabaseBundlesOutput, context: context)
        type = Types::GetRelationalDatabaseBundlesOutput.new
        type.bundles = RelationalDatabaseBundleList.build(params[:bundles], context: "#{context}[:bundles]") unless params[:bundles].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module GetRelationalDatabaseEventsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRelationalDatabaseEventsInput, context: context)
        type = Types::GetRelationalDatabaseEventsInput.new
        type.relational_database_name = params[:relational_database_name]
        type.duration_in_minutes = params[:duration_in_minutes]
        type.page_token = params[:page_token]
        type
      end
    end

    module GetRelationalDatabaseEventsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRelationalDatabaseEventsOutput, context: context)
        type = Types::GetRelationalDatabaseEventsOutput.new
        type.relational_database_events = RelationalDatabaseEventList.build(params[:relational_database_events], context: "#{context}[:relational_database_events]") unless params[:relational_database_events].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module GetRelationalDatabaseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRelationalDatabaseInput, context: context)
        type = Types::GetRelationalDatabaseInput.new
        type.relational_database_name = params[:relational_database_name]
        type
      end
    end

    module GetRelationalDatabaseLogEventsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRelationalDatabaseLogEventsInput, context: context)
        type = Types::GetRelationalDatabaseLogEventsInput.new
        type.relational_database_name = params[:relational_database_name]
        type.log_stream_name = params[:log_stream_name]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.start_from_head = params[:start_from_head]
        type.page_token = params[:page_token]
        type
      end
    end

    module GetRelationalDatabaseLogEventsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRelationalDatabaseLogEventsOutput, context: context)
        type = Types::GetRelationalDatabaseLogEventsOutput.new
        type.resource_log_events = LogEventList.build(params[:resource_log_events], context: "#{context}[:resource_log_events]") unless params[:resource_log_events].nil?
        type.next_backward_token = params[:next_backward_token]
        type.next_forward_token = params[:next_forward_token]
        type
      end
    end

    module GetRelationalDatabaseLogStreamsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRelationalDatabaseLogStreamsInput, context: context)
        type = Types::GetRelationalDatabaseLogStreamsInput.new
        type.relational_database_name = params[:relational_database_name]
        type
      end
    end

    module GetRelationalDatabaseLogStreamsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRelationalDatabaseLogStreamsOutput, context: context)
        type = Types::GetRelationalDatabaseLogStreamsOutput.new
        type.log_streams = StringList.build(params[:log_streams], context: "#{context}[:log_streams]") unless params[:log_streams].nil?
        type
      end
    end

    module GetRelationalDatabaseMasterUserPasswordInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRelationalDatabaseMasterUserPasswordInput, context: context)
        type = Types::GetRelationalDatabaseMasterUserPasswordInput.new
        type.relational_database_name = params[:relational_database_name]
        type.password_version = params[:password_version]
        type
      end
    end

    module GetRelationalDatabaseMasterUserPasswordOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRelationalDatabaseMasterUserPasswordOutput, context: context)
        type = Types::GetRelationalDatabaseMasterUserPasswordOutput.new
        type.master_user_password = params[:master_user_password]
        type.created_at = params[:created_at]
        type
      end
    end

    module GetRelationalDatabaseMetricDataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRelationalDatabaseMetricDataInput, context: context)
        type = Types::GetRelationalDatabaseMetricDataInput.new
        type.relational_database_name = params[:relational_database_name]
        type.metric_name = params[:metric_name]
        type.period = params[:period]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.unit = params[:unit]
        type.statistics = MetricStatisticList.build(params[:statistics], context: "#{context}[:statistics]") unless params[:statistics].nil?
        type
      end
    end

    module GetRelationalDatabaseMetricDataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRelationalDatabaseMetricDataOutput, context: context)
        type = Types::GetRelationalDatabaseMetricDataOutput.new
        type.metric_name = params[:metric_name]
        type.metric_data = MetricDatapointList.build(params[:metric_data], context: "#{context}[:metric_data]") unless params[:metric_data].nil?
        type
      end
    end

    module GetRelationalDatabaseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRelationalDatabaseOutput, context: context)
        type = Types::GetRelationalDatabaseOutput.new
        type.relational_database = RelationalDatabase.build(params[:relational_database], context: "#{context}[:relational_database]") unless params[:relational_database].nil?
        type
      end
    end

    module GetRelationalDatabaseParametersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRelationalDatabaseParametersInput, context: context)
        type = Types::GetRelationalDatabaseParametersInput.new
        type.relational_database_name = params[:relational_database_name]
        type.page_token = params[:page_token]
        type
      end
    end

    module GetRelationalDatabaseParametersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRelationalDatabaseParametersOutput, context: context)
        type = Types::GetRelationalDatabaseParametersOutput.new
        type.parameters = RelationalDatabaseParameterList.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module GetRelationalDatabaseSnapshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRelationalDatabaseSnapshotInput, context: context)
        type = Types::GetRelationalDatabaseSnapshotInput.new
        type.relational_database_snapshot_name = params[:relational_database_snapshot_name]
        type
      end
    end

    module GetRelationalDatabaseSnapshotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRelationalDatabaseSnapshotOutput, context: context)
        type = Types::GetRelationalDatabaseSnapshotOutput.new
        type.relational_database_snapshot = RelationalDatabaseSnapshot.build(params[:relational_database_snapshot], context: "#{context}[:relational_database_snapshot]") unless params[:relational_database_snapshot].nil?
        type
      end
    end

    module GetRelationalDatabaseSnapshotsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRelationalDatabaseSnapshotsInput, context: context)
        type = Types::GetRelationalDatabaseSnapshotsInput.new
        type.page_token = params[:page_token]
        type
      end
    end

    module GetRelationalDatabaseSnapshotsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRelationalDatabaseSnapshotsOutput, context: context)
        type = Types::GetRelationalDatabaseSnapshotsOutput.new
        type.relational_database_snapshots = RelationalDatabaseSnapshotList.build(params[:relational_database_snapshots], context: "#{context}[:relational_database_snapshots]") unless params[:relational_database_snapshots].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module GetRelationalDatabasesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRelationalDatabasesInput, context: context)
        type = Types::GetRelationalDatabasesInput.new
        type.page_token = params[:page_token]
        type
      end
    end

    module GetRelationalDatabasesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRelationalDatabasesOutput, context: context)
        type = Types::GetRelationalDatabasesOutput.new
        type.relational_databases = RelationalDatabaseList.build(params[:relational_databases], context: "#{context}[:relational_databases]") unless params[:relational_databases].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module GetStaticIpInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetStaticIpInput, context: context)
        type = Types::GetStaticIpInput.new
        type.static_ip_name = params[:static_ip_name]
        type
      end
    end

    module GetStaticIpOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetStaticIpOutput, context: context)
        type = Types::GetStaticIpOutput.new
        type.static_ip = StaticIp.build(params[:static_ip], context: "#{context}[:static_ip]") unless params[:static_ip].nil?
        type
      end
    end

    module GetStaticIpsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetStaticIpsInput, context: context)
        type = Types::GetStaticIpsInput.new
        type.page_token = params[:page_token]
        type
      end
    end

    module GetStaticIpsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetStaticIpsOutput, context: context)
        type = Types::GetStaticIpsOutput.new
        type.static_ips = StaticIpList.build(params[:static_ips], context: "#{context}[:static_ips]") unless params[:static_ips].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module HeaderForwardList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module HeaderObject
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HeaderObject, context: context)
        type = Types::HeaderObject.new
        type.option = params[:option]
        type.headers_allow_list = HeaderForwardList.build(params[:headers_allow_list], context: "#{context}[:headers_allow_list]") unless params[:headers_allow_list].nil?
        type
      end
    end

    module HostKeyAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HostKeyAttributes, context: context)
        type = Types::HostKeyAttributes.new
        type.algorithm = params[:algorithm]
        type.public_key = params[:public_key]
        type.witnessed_at = params[:witnessed_at]
        type.fingerprint_sha1 = params[:fingerprint_sha1]
        type.fingerprint_sha256 = params[:fingerprint_sha256]
        type.not_valid_before = params[:not_valid_before]
        type.not_valid_after = params[:not_valid_after]
        type
      end
    end

    module HostKeysList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << HostKeyAttributes.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ImportKeyPairInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportKeyPairInput, context: context)
        type = Types::ImportKeyPairInput.new
        type.key_pair_name = params[:key_pair_name]
        type.public_key_base64 = params[:public_key_base64]
        type
      end
    end

    module ImportKeyPairOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportKeyPairOutput, context: context)
        type = Types::ImportKeyPairOutput.new
        type.operation = Operation.build(params[:operation], context: "#{context}[:operation]") unless params[:operation].nil?
        type
      end
    end

    module InputOrigin
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputOrigin, context: context)
        type = Types::InputOrigin.new
        type.name = params[:name]
        type.region_name = params[:region_name]
        type.protocol_policy = params[:protocol_policy]
        type
      end
    end

    module Instance
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Instance, context: context)
        type = Types::Instance.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.support_code = params[:support_code]
        type.created_at = params[:created_at]
        type.location = ResourceLocation.build(params[:location], context: "#{context}[:location]") unless params[:location].nil?
        type.resource_type = params[:resource_type]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.blueprint_id = params[:blueprint_id]
        type.blueprint_name = params[:blueprint_name]
        type.bundle_id = params[:bundle_id]
        type.add_ons = AddOnList.build(params[:add_ons], context: "#{context}[:add_ons]") unless params[:add_ons].nil?
        type.is_static_ip = params[:is_static_ip]
        type.private_ip_address = params[:private_ip_address]
        type.public_ip_address = params[:public_ip_address]
        type.ipv6_addresses = Ipv6AddressList.build(params[:ipv6_addresses], context: "#{context}[:ipv6_addresses]") unless params[:ipv6_addresses].nil?
        type.ip_address_type = params[:ip_address_type]
        type.hardware = InstanceHardware.build(params[:hardware], context: "#{context}[:hardware]") unless params[:hardware].nil?
        type.networking = InstanceNetworking.build(params[:networking], context: "#{context}[:networking]") unless params[:networking].nil?
        type.state = InstanceState.build(params[:state], context: "#{context}[:state]") unless params[:state].nil?
        type.username = params[:username]
        type.ssh_key_name = params[:ssh_key_name]
        type
      end
    end

    module InstanceAccessDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceAccessDetails, context: context)
        type = Types::InstanceAccessDetails.new
        type.cert_key = params[:cert_key]
        type.expires_at = params[:expires_at]
        type.ip_address = params[:ip_address]
        type.password = params[:password]
        type.password_data = PasswordData.build(params[:password_data], context: "#{context}[:password_data]") unless params[:password_data].nil?
        type.private_key = params[:private_key]
        type.protocol = params[:protocol]
        type.instance_name = params[:instance_name]
        type.username = params[:username]
        type.host_keys = HostKeysList.build(params[:host_keys], context: "#{context}[:host_keys]") unless params[:host_keys].nil?
        type
      end
    end

    module InstanceEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceEntry, context: context)
        type = Types::InstanceEntry.new
        type.source_name = params[:source_name]
        type.instance_type = params[:instance_type]
        type.port_info_source = params[:port_info_source]
        type.user_data = params[:user_data]
        type.availability_zone = params[:availability_zone]
        type
      end
    end

    module InstanceEntryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InstanceEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InstanceHardware
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceHardware, context: context)
        type = Types::InstanceHardware.new
        type.cpu_count = params[:cpu_count]
        type.disks = DiskList.build(params[:disks], context: "#{context}[:disks]") unless params[:disks].nil?
        type.ram_size_in_gb = params[:ram_size_in_gb]
        type
      end
    end

    module InstanceHealthSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceHealthSummary, context: context)
        type = Types::InstanceHealthSummary.new
        type.instance_name = params[:instance_name]
        type.instance_health = params[:instance_health]
        type.instance_health_reason = params[:instance_health_reason]
        type
      end
    end

    module InstanceHealthSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InstanceHealthSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InstanceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Instance.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InstanceNetworking
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceNetworking, context: context)
        type = Types::InstanceNetworking.new
        type.monthly_transfer = MonthlyTransfer.build(params[:monthly_transfer], context: "#{context}[:monthly_transfer]") unless params[:monthly_transfer].nil?
        type.ports = InstancePortInfoList.build(params[:ports], context: "#{context}[:ports]") unless params[:ports].nil?
        type
      end
    end

    module InstancePlatformList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InstancePortInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstancePortInfo, context: context)
        type = Types::InstancePortInfo.new
        type.from_port = params[:from_port]
        type.to_port = params[:to_port]
        type.protocol = params[:protocol]
        type.access_from = params[:access_from]
        type.access_type = params[:access_type]
        type.common_name = params[:common_name]
        type.access_direction = params[:access_direction]
        type.cidrs = StringList.build(params[:cidrs], context: "#{context}[:cidrs]") unless params[:cidrs].nil?
        type.ipv6_cidrs = StringList.build(params[:ipv6_cidrs], context: "#{context}[:ipv6_cidrs]") unless params[:ipv6_cidrs].nil?
        type.cidr_list_aliases = StringList.build(params[:cidr_list_aliases], context: "#{context}[:cidr_list_aliases]") unless params[:cidr_list_aliases].nil?
        type
      end
    end

    module InstancePortInfoList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InstancePortInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InstancePortState
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstancePortState, context: context)
        type = Types::InstancePortState.new
        type.from_port = params[:from_port]
        type.to_port = params[:to_port]
        type.protocol = params[:protocol]
        type.state = params[:state]
        type.cidrs = StringList.build(params[:cidrs], context: "#{context}[:cidrs]") unless params[:cidrs].nil?
        type.ipv6_cidrs = StringList.build(params[:ipv6_cidrs], context: "#{context}[:ipv6_cidrs]") unless params[:ipv6_cidrs].nil?
        type.cidr_list_aliases = StringList.build(params[:cidr_list_aliases], context: "#{context}[:cidr_list_aliases]") unless params[:cidr_list_aliases].nil?
        type
      end
    end

    module InstancePortStateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InstancePortState.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InstanceSnapshot
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceSnapshot, context: context)
        type = Types::InstanceSnapshot.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.support_code = params[:support_code]
        type.created_at = params[:created_at]
        type.location = ResourceLocation.build(params[:location], context: "#{context}[:location]") unless params[:location].nil?
        type.resource_type = params[:resource_type]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.state = params[:state]
        type.progress = params[:progress]
        type.from_attached_disks = DiskList.build(params[:from_attached_disks], context: "#{context}[:from_attached_disks]") unless params[:from_attached_disks].nil?
        type.from_instance_name = params[:from_instance_name]
        type.from_instance_arn = params[:from_instance_arn]
        type.from_blueprint_id = params[:from_blueprint_id]
        type.from_bundle_id = params[:from_bundle_id]
        type.is_from_auto_snapshot = params[:is_from_auto_snapshot]
        type.size_in_gb = params[:size_in_gb]
        type
      end
    end

    module InstanceSnapshotInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceSnapshotInfo, context: context)
        type = Types::InstanceSnapshotInfo.new
        type.from_bundle_id = params[:from_bundle_id]
        type.from_blueprint_id = params[:from_blueprint_id]
        type.from_disk_info = DiskInfoList.build(params[:from_disk_info], context: "#{context}[:from_disk_info]") unless params[:from_disk_info].nil?
        type
      end
    end

    module InstanceSnapshotList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InstanceSnapshot.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InstanceState
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceState, context: context)
        type = Types::InstanceState.new
        type.code = params[:code]
        type.name = params[:name]
        type
      end
    end

    module InvalidInputException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidInputException, context: context)
        type = Types::InvalidInputException.new
        type.code = params[:code]
        type.docs = params[:docs]
        type.message = params[:message]
        type.tip = params[:tip]
        type
      end
    end

    module Ipv6AddressList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module IsVpcPeeredInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IsVpcPeeredInput, context: context)
        type = Types::IsVpcPeeredInput.new
        type
      end
    end

    module IsVpcPeeredOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IsVpcPeeredOutput, context: context)
        type = Types::IsVpcPeeredOutput.new
        type.is_peered = params[:is_peered]
        type
      end
    end

    module KeyPair
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KeyPair, context: context)
        type = Types::KeyPair.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.support_code = params[:support_code]
        type.created_at = params[:created_at]
        type.location = ResourceLocation.build(params[:location], context: "#{context}[:location]") unless params[:location].nil?
        type.resource_type = params[:resource_type]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.fingerprint = params[:fingerprint]
        type
      end
    end

    module KeyPairList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << KeyPair.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LightsailDistribution
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LightsailDistribution, context: context)
        type = Types::LightsailDistribution.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.support_code = params[:support_code]
        type.created_at = params[:created_at]
        type.location = ResourceLocation.build(params[:location], context: "#{context}[:location]") unless params[:location].nil?
        type.resource_type = params[:resource_type]
        type.alternative_domain_names = StringList.build(params[:alternative_domain_names], context: "#{context}[:alternative_domain_names]") unless params[:alternative_domain_names].nil?
        type.status = params[:status]
        type.is_enabled = params[:is_enabled]
        type.domain_name = params[:domain_name]
        type.bundle_id = params[:bundle_id]
        type.certificate_name = params[:certificate_name]
        type.origin = Origin.build(params[:origin], context: "#{context}[:origin]") unless params[:origin].nil?
        type.origin_public_dns = params[:origin_public_dns]
        type.default_cache_behavior = CacheBehavior.build(params[:default_cache_behavior], context: "#{context}[:default_cache_behavior]") unless params[:default_cache_behavior].nil?
        type.cache_behavior_settings = CacheSettings.build(params[:cache_behavior_settings], context: "#{context}[:cache_behavior_settings]") unless params[:cache_behavior_settings].nil?
        type.cache_behaviors = CacheBehaviorList.build(params[:cache_behaviors], context: "#{context}[:cache_behaviors]") unless params[:cache_behaviors].nil?
        type.able_to_update_bundle = params[:able_to_update_bundle]
        type.ip_address_type = params[:ip_address_type]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module LoadBalancer
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoadBalancer, context: context)
        type = Types::LoadBalancer.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.support_code = params[:support_code]
        type.created_at = params[:created_at]
        type.location = ResourceLocation.build(params[:location], context: "#{context}[:location]") unless params[:location].nil?
        type.resource_type = params[:resource_type]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.dns_name = params[:dns_name]
        type.state = params[:state]
        type.protocol = params[:protocol]
        type.public_ports = PortList.build(params[:public_ports], context: "#{context}[:public_ports]") unless params[:public_ports].nil?
        type.health_check_path = params[:health_check_path]
        type.instance_port = params[:instance_port]
        type.instance_health_summary = InstanceHealthSummaryList.build(params[:instance_health_summary], context: "#{context}[:instance_health_summary]") unless params[:instance_health_summary].nil?
        type.tls_certificate_summaries = LoadBalancerTlsCertificateSummaryList.build(params[:tls_certificate_summaries], context: "#{context}[:tls_certificate_summaries]") unless params[:tls_certificate_summaries].nil?
        type.configuration_options = LoadBalancerConfigurationOptions.build(params[:configuration_options], context: "#{context}[:configuration_options]") unless params[:configuration_options].nil?
        type.ip_address_type = params[:ip_address_type]
        type.https_redirection_enabled = params[:https_redirection_enabled]
        type.tls_policy_name = params[:tls_policy_name]
        type
      end
    end

    module LoadBalancerConfigurationOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module LoadBalancerList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LoadBalancer.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LoadBalancerTlsCertificate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoadBalancerTlsCertificate, context: context)
        type = Types::LoadBalancerTlsCertificate.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.support_code = params[:support_code]
        type.created_at = params[:created_at]
        type.location = ResourceLocation.build(params[:location], context: "#{context}[:location]") unless params[:location].nil?
        type.resource_type = params[:resource_type]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.load_balancer_name = params[:load_balancer_name]
        type.is_attached = params[:is_attached]
        type.status = params[:status]
        type.domain_name = params[:domain_name]
        type.domain_validation_records = LoadBalancerTlsCertificateDomainValidationRecordList.build(params[:domain_validation_records], context: "#{context}[:domain_validation_records]") unless params[:domain_validation_records].nil?
        type.failure_reason = params[:failure_reason]
        type.issued_at = params[:issued_at]
        type.issuer = params[:issuer]
        type.key_algorithm = params[:key_algorithm]
        type.not_after = params[:not_after]
        type.not_before = params[:not_before]
        type.renewal_summary = LoadBalancerTlsCertificateRenewalSummary.build(params[:renewal_summary], context: "#{context}[:renewal_summary]") unless params[:renewal_summary].nil?
        type.revocation_reason = params[:revocation_reason]
        type.revoked_at = params[:revoked_at]
        type.serial = params[:serial]
        type.signature_algorithm = params[:signature_algorithm]
        type.subject = params[:subject]
        type.subject_alternative_names = StringList.build(params[:subject_alternative_names], context: "#{context}[:subject_alternative_names]") unless params[:subject_alternative_names].nil?
        type
      end
    end

    module LoadBalancerTlsCertificateDomainValidationOption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoadBalancerTlsCertificateDomainValidationOption, context: context)
        type = Types::LoadBalancerTlsCertificateDomainValidationOption.new
        type.domain_name = params[:domain_name]
        type.validation_status = params[:validation_status]
        type
      end
    end

    module LoadBalancerTlsCertificateDomainValidationOptionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LoadBalancerTlsCertificateDomainValidationOption.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LoadBalancerTlsCertificateDomainValidationRecord
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoadBalancerTlsCertificateDomainValidationRecord, context: context)
        type = Types::LoadBalancerTlsCertificateDomainValidationRecord.new
        type.name = params[:name]
        type.type = params[:type]
        type.value = params[:value]
        type.validation_status = params[:validation_status]
        type.domain_name = params[:domain_name]
        type
      end
    end

    module LoadBalancerTlsCertificateDomainValidationRecordList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LoadBalancerTlsCertificateDomainValidationRecord.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LoadBalancerTlsCertificateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LoadBalancerTlsCertificate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LoadBalancerTlsCertificateRenewalSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoadBalancerTlsCertificateRenewalSummary, context: context)
        type = Types::LoadBalancerTlsCertificateRenewalSummary.new
        type.renewal_status = params[:renewal_status]
        type.domain_validation_options = LoadBalancerTlsCertificateDomainValidationOptionList.build(params[:domain_validation_options], context: "#{context}[:domain_validation_options]") unless params[:domain_validation_options].nil?
        type
      end
    end

    module LoadBalancerTlsCertificateSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoadBalancerTlsCertificateSummary, context: context)
        type = Types::LoadBalancerTlsCertificateSummary.new
        type.name = params[:name]
        type.is_attached = params[:is_attached]
        type
      end
    end

    module LoadBalancerTlsCertificateSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LoadBalancerTlsCertificateSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LoadBalancerTlsPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoadBalancerTlsPolicy, context: context)
        type = Types::LoadBalancerTlsPolicy.new
        type.name = params[:name]
        type.is_default = params[:is_default]
        type.description = params[:description]
        type.protocols = StringList.build(params[:protocols], context: "#{context}[:protocols]") unless params[:protocols].nil?
        type.ciphers = StringList.build(params[:ciphers], context: "#{context}[:ciphers]") unless params[:ciphers].nil?
        type
      end
    end

    module LoadBalancerTlsPolicyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LoadBalancerTlsPolicy.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LogEvent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LogEvent, context: context)
        type = Types::LogEvent.new
        type.created_at = params[:created_at]
        type.message = params[:message]
        type
      end
    end

    module LogEventList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LogEvent.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MetricDatapoint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MetricDatapoint, context: context)
        type = Types::MetricDatapoint.new
        type.average = params[:average]
        type.maximum = params[:maximum]
        type.minimum = params[:minimum]
        type.sample_count = params[:sample_count]
        type.sum = params[:sum]
        type.timestamp = params[:timestamp]
        type.unit = params[:unit]
        type
      end
    end

    module MetricDatapointList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MetricDatapoint.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MetricStatisticList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module MonitoredResourceInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MonitoredResourceInfo, context: context)
        type = Types::MonitoredResourceInfo.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module MonthlyTransfer
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MonthlyTransfer, context: context)
        type = Types::MonthlyTransfer.new
        type.gb_per_month_allocated = params[:gb_per_month_allocated]
        type
      end
    end

    module NotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotFoundException, context: context)
        type = Types::NotFoundException.new
        type.code = params[:code]
        type.docs = params[:docs]
        type.message = params[:message]
        type.tip = params[:tip]
        type
      end
    end

    module NotificationTriggerList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module OpenInstancePublicPortsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OpenInstancePublicPortsInput, context: context)
        type = Types::OpenInstancePublicPortsInput.new
        type.port_info = PortInfo.build(params[:port_info], context: "#{context}[:port_info]") unless params[:port_info].nil?
        type.instance_name = params[:instance_name]
        type
      end
    end

    module OpenInstancePublicPortsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OpenInstancePublicPortsOutput, context: context)
        type = Types::OpenInstancePublicPortsOutput.new
        type.operation = Operation.build(params[:operation], context: "#{context}[:operation]") unless params[:operation].nil?
        type
      end
    end

    module Operation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Operation, context: context)
        type = Types::Operation.new
        type.id = params[:id]
        type.resource_name = params[:resource_name]
        type.resource_type = params[:resource_type]
        type.created_at = params[:created_at]
        type.location = ResourceLocation.build(params[:location], context: "#{context}[:location]") unless params[:location].nil?
        type.is_terminal = params[:is_terminal]
        type.operation_details = params[:operation_details]
        type.operation_type = params[:operation_type]
        type.status = params[:status]
        type.status_changed_at = params[:status_changed_at]
        type.error_code = params[:error_code]
        type.error_details = params[:error_details]
        type
      end
    end

    module OperationFailureException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OperationFailureException, context: context)
        type = Types::OperationFailureException.new
        type.code = params[:code]
        type.docs = params[:docs]
        type.message = params[:message]
        type.tip = params[:tip]
        type
      end
    end

    module OperationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Operation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Origin
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Origin, context: context)
        type = Types::Origin.new
        type.name = params[:name]
        type.resource_type = params[:resource_type]
        type.region_name = params[:region_name]
        type.protocol_policy = params[:protocol_policy]
        type
      end
    end

    module PartnerIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PasswordData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PasswordData, context: context)
        type = Types::PasswordData.new
        type.ciphertext = params[:ciphertext]
        type.key_pair_name = params[:key_pair_name]
        type
      end
    end

    module PeerVpcInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PeerVpcInput, context: context)
        type = Types::PeerVpcInput.new
        type
      end
    end

    module PeerVpcOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PeerVpcOutput, context: context)
        type = Types::PeerVpcOutput.new
        type.operation = Operation.build(params[:operation], context: "#{context}[:operation]") unless params[:operation].nil?
        type
      end
    end

    module PendingMaintenanceAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PendingMaintenanceAction, context: context)
        type = Types::PendingMaintenanceAction.new
        type.action = params[:action]
        type.description = params[:description]
        type.current_apply_date = params[:current_apply_date]
        type
      end
    end

    module PendingMaintenanceActionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PendingMaintenanceAction.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PendingModifiedRelationalDatabaseValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PendingModifiedRelationalDatabaseValues, context: context)
        type = Types::PendingModifiedRelationalDatabaseValues.new
        type.master_user_password = params[:master_user_password]
        type.engine_version = params[:engine_version]
        type.backup_retention_enabled = params[:backup_retention_enabled]
        type
      end
    end

    module PortInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PortInfo, context: context)
        type = Types::PortInfo.new
        type.from_port = params[:from_port]
        type.to_port = params[:to_port]
        type.protocol = params[:protocol]
        type.cidrs = StringList.build(params[:cidrs], context: "#{context}[:cidrs]") unless params[:cidrs].nil?
        type.ipv6_cidrs = StringList.build(params[:ipv6_cidrs], context: "#{context}[:ipv6_cidrs]") unless params[:ipv6_cidrs].nil?
        type.cidr_list_aliases = StringList.build(params[:cidr_list_aliases], context: "#{context}[:cidr_list_aliases]") unless params[:cidr_list_aliases].nil?
        type
      end
    end

    module PortInfoList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PortInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PortList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PortMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module PrivateRegistryAccess
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PrivateRegistryAccess, context: context)
        type = Types::PrivateRegistryAccess.new
        type.ecr_image_puller_role = ContainerServiceECRImagePullerRole.build(params[:ecr_image_puller_role], context: "#{context}[:ecr_image_puller_role]") unless params[:ecr_image_puller_role].nil?
        type
      end
    end

    module PrivateRegistryAccessRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PrivateRegistryAccessRequest, context: context)
        type = Types::PrivateRegistryAccessRequest.new
        type.ecr_image_puller_role = ContainerServiceECRImagePullerRoleRequest.build(params[:ecr_image_puller_role], context: "#{context}[:ecr_image_puller_role]") unless params[:ecr_image_puller_role].nil?
        type
      end
    end

    module PutAlarmInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutAlarmInput, context: context)
        type = Types::PutAlarmInput.new
        type.alarm_name = params[:alarm_name]
        type.metric_name = params[:metric_name]
        type.monitored_resource_name = params[:monitored_resource_name]
        type.comparison_operator = params[:comparison_operator]
        type.threshold = params[:threshold]
        type.evaluation_periods = params[:evaluation_periods]
        type.datapoints_to_alarm = params[:datapoints_to_alarm]
        type.treat_missing_data = params[:treat_missing_data]
        type.contact_protocols = ContactProtocolsList.build(params[:contact_protocols], context: "#{context}[:contact_protocols]") unless params[:contact_protocols].nil?
        type.notification_triggers = NotificationTriggerList.build(params[:notification_triggers], context: "#{context}[:notification_triggers]") unless params[:notification_triggers].nil?
        type.notification_enabled = params[:notification_enabled]
        type
      end
    end

    module PutAlarmOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutAlarmOutput, context: context)
        type = Types::PutAlarmOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module PutInstancePublicPortsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutInstancePublicPortsInput, context: context)
        type = Types::PutInstancePublicPortsInput.new
        type.port_infos = PortInfoList.build(params[:port_infos], context: "#{context}[:port_infos]") unless params[:port_infos].nil?
        type.instance_name = params[:instance_name]
        type
      end
    end

    module PutInstancePublicPortsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutInstancePublicPortsOutput, context: context)
        type = Types::PutInstancePublicPortsOutput.new
        type.operation = Operation.build(params[:operation], context: "#{context}[:operation]") unless params[:operation].nil?
        type
      end
    end

    module QueryStringObject
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QueryStringObject, context: context)
        type = Types::QueryStringObject.new
        type.option = params[:option]
        type.query_strings_allow_list = StringList.build(params[:query_strings_allow_list], context: "#{context}[:query_strings_allow_list]") unless params[:query_strings_allow_list].nil?
        type
      end
    end

    module RebootInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RebootInstanceInput, context: context)
        type = Types::RebootInstanceInput.new
        type.instance_name = params[:instance_name]
        type
      end
    end

    module RebootInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RebootInstanceOutput, context: context)
        type = Types::RebootInstanceOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module RebootRelationalDatabaseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RebootRelationalDatabaseInput, context: context)
        type = Types::RebootRelationalDatabaseInput.new
        type.relational_database_name = params[:relational_database_name]
        type
      end
    end

    module RebootRelationalDatabaseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RebootRelationalDatabaseOutput, context: context)
        type = Types::RebootRelationalDatabaseOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module Region
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Region, context: context)
        type = Types::Region.new
        type.continent_code = params[:continent_code]
        type.description = params[:description]
        type.display_name = params[:display_name]
        type.name = params[:name]
        type.availability_zones = AvailabilityZoneList.build(params[:availability_zones], context: "#{context}[:availability_zones]") unless params[:availability_zones].nil?
        type.relational_database_availability_zones = AvailabilityZoneList.build(params[:relational_database_availability_zones], context: "#{context}[:relational_database_availability_zones]") unless params[:relational_database_availability_zones].nil?
        type
      end
    end

    module RegionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Region.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RegisterContainerImageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterContainerImageInput, context: context)
        type = Types::RegisterContainerImageInput.new
        type.service_name = params[:service_name]
        type.label = params[:label]
        type.digest = params[:digest]
        type
      end
    end

    module RegisterContainerImageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterContainerImageOutput, context: context)
        type = Types::RegisterContainerImageOutput.new
        type.container_image = ContainerImage.build(params[:container_image], context: "#{context}[:container_image]") unless params[:container_image].nil?
        type
      end
    end

    module RelationalDatabase
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RelationalDatabase, context: context)
        type = Types::RelationalDatabase.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.support_code = params[:support_code]
        type.created_at = params[:created_at]
        type.location = ResourceLocation.build(params[:location], context: "#{context}[:location]") unless params[:location].nil?
        type.resource_type = params[:resource_type]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.relational_database_blueprint_id = params[:relational_database_blueprint_id]
        type.relational_database_bundle_id = params[:relational_database_bundle_id]
        type.master_database_name = params[:master_database_name]
        type.hardware = RelationalDatabaseHardware.build(params[:hardware], context: "#{context}[:hardware]") unless params[:hardware].nil?
        type.state = params[:state]
        type.secondary_availability_zone = params[:secondary_availability_zone]
        type.backup_retention_enabled = params[:backup_retention_enabled]
        type.pending_modified_values = PendingModifiedRelationalDatabaseValues.build(params[:pending_modified_values], context: "#{context}[:pending_modified_values]") unless params[:pending_modified_values].nil?
        type.engine = params[:engine]
        type.engine_version = params[:engine_version]
        type.latest_restorable_time = params[:latest_restorable_time]
        type.master_username = params[:master_username]
        type.parameter_apply_status = params[:parameter_apply_status]
        type.preferred_backup_window = params[:preferred_backup_window]
        type.preferred_maintenance_window = params[:preferred_maintenance_window]
        type.publicly_accessible = params[:publicly_accessible]
        type.master_endpoint = RelationalDatabaseEndpoint.build(params[:master_endpoint], context: "#{context}[:master_endpoint]") unless params[:master_endpoint].nil?
        type.pending_maintenance_actions = PendingMaintenanceActionList.build(params[:pending_maintenance_actions], context: "#{context}[:pending_maintenance_actions]") unless params[:pending_maintenance_actions].nil?
        type.ca_certificate_identifier = params[:ca_certificate_identifier]
        type
      end
    end

    module RelationalDatabaseBlueprint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RelationalDatabaseBlueprint, context: context)
        type = Types::RelationalDatabaseBlueprint.new
        type.blueprint_id = params[:blueprint_id]
        type.engine = params[:engine]
        type.engine_version = params[:engine_version]
        type.engine_description = params[:engine_description]
        type.engine_version_description = params[:engine_version_description]
        type.is_engine_default = params[:is_engine_default]
        type
      end
    end

    module RelationalDatabaseBlueprintList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RelationalDatabaseBlueprint.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RelationalDatabaseBundle
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RelationalDatabaseBundle, context: context)
        type = Types::RelationalDatabaseBundle.new
        type.bundle_id = params[:bundle_id]
        type.name = params[:name]
        type.price = params[:price]
        type.ram_size_in_gb = params[:ram_size_in_gb]
        type.disk_size_in_gb = params[:disk_size_in_gb]
        type.transfer_per_month_in_gb = params[:transfer_per_month_in_gb]
        type.cpu_count = params[:cpu_count]
        type.is_encrypted = params[:is_encrypted]
        type.is_active = params[:is_active]
        type
      end
    end

    module RelationalDatabaseBundleList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RelationalDatabaseBundle.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RelationalDatabaseEndpoint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RelationalDatabaseEndpoint, context: context)
        type = Types::RelationalDatabaseEndpoint.new
        type.port = params[:port]
        type.address = params[:address]
        type
      end
    end

    module RelationalDatabaseEvent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RelationalDatabaseEvent, context: context)
        type = Types::RelationalDatabaseEvent.new
        type.resource = params[:resource]
        type.created_at = params[:created_at]
        type.message = params[:message]
        type.event_categories = StringList.build(params[:event_categories], context: "#{context}[:event_categories]") unless params[:event_categories].nil?
        type
      end
    end

    module RelationalDatabaseEventList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RelationalDatabaseEvent.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RelationalDatabaseHardware
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RelationalDatabaseHardware, context: context)
        type = Types::RelationalDatabaseHardware.new
        type.cpu_count = params[:cpu_count]
        type.disk_size_in_gb = params[:disk_size_in_gb]
        type.ram_size_in_gb = params[:ram_size_in_gb]
        type
      end
    end

    module RelationalDatabaseList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RelationalDatabase.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RelationalDatabaseParameter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RelationalDatabaseParameter, context: context)
        type = Types::RelationalDatabaseParameter.new
        type.allowed_values = params[:allowed_values]
        type.apply_method = params[:apply_method]
        type.apply_type = params[:apply_type]
        type.data_type = params[:data_type]
        type.description = params[:description]
        type.is_modifiable = params[:is_modifiable]
        type.parameter_name = params[:parameter_name]
        type.parameter_value = params[:parameter_value]
        type
      end
    end

    module RelationalDatabaseParameterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RelationalDatabaseParameter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RelationalDatabaseSnapshot
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RelationalDatabaseSnapshot, context: context)
        type = Types::RelationalDatabaseSnapshot.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.support_code = params[:support_code]
        type.created_at = params[:created_at]
        type.location = ResourceLocation.build(params[:location], context: "#{context}[:location]") unless params[:location].nil?
        type.resource_type = params[:resource_type]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.engine = params[:engine]
        type.engine_version = params[:engine_version]
        type.size_in_gb = params[:size_in_gb]
        type.state = params[:state]
        type.from_relational_database_name = params[:from_relational_database_name]
        type.from_relational_database_arn = params[:from_relational_database_arn]
        type.from_relational_database_bundle_id = params[:from_relational_database_bundle_id]
        type.from_relational_database_blueprint_id = params[:from_relational_database_blueprint_id]
        type
      end
    end

    module RelationalDatabaseSnapshotList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RelationalDatabaseSnapshot.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReleaseStaticIpInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReleaseStaticIpInput, context: context)
        type = Types::ReleaseStaticIpInput.new
        type.static_ip_name = params[:static_ip_name]
        type
      end
    end

    module ReleaseStaticIpOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReleaseStaticIpOutput, context: context)
        type = Types::ReleaseStaticIpOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module RenewalSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RenewalSummary, context: context)
        type = Types::RenewalSummary.new
        type.domain_validation_records = DomainValidationRecordList.build(params[:domain_validation_records], context: "#{context}[:domain_validation_records]") unless params[:domain_validation_records].nil?
        type.renewal_status = params[:renewal_status]
        type.renewal_status_reason = params[:renewal_status_reason]
        type.updated_at = params[:updated_at]
        type
      end
    end

    module ResetDistributionCacheInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResetDistributionCacheInput, context: context)
        type = Types::ResetDistributionCacheInput.new
        type.distribution_name = params[:distribution_name]
        type
      end
    end

    module ResetDistributionCacheOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResetDistributionCacheOutput, context: context)
        type = Types::ResetDistributionCacheOutput.new
        type.status = params[:status]
        type.create_time = params[:create_time]
        type.operation = Operation.build(params[:operation], context: "#{context}[:operation]") unless params[:operation].nil?
        type
      end
    end

    module ResourceLocation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceLocation, context: context)
        type = Types::ResourceLocation.new
        type.availability_zone = params[:availability_zone]
        type.region_name = params[:region_name]
        type
      end
    end

    module ResourceNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ResourceReceivingAccess
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceReceivingAccess, context: context)
        type = Types::ResourceReceivingAccess.new
        type.name = params[:name]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module ResourceRecord
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceRecord, context: context)
        type = Types::ResourceRecord.new
        type.name = params[:name]
        type.type = params[:type]
        type.value = params[:value]
        type
      end
    end

    module SendContactMethodVerificationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendContactMethodVerificationInput, context: context)
        type = Types::SendContactMethodVerificationInput.new
        type.protocol = params[:protocol]
        type
      end
    end

    module SendContactMethodVerificationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendContactMethodVerificationOutput, context: context)
        type = Types::SendContactMethodVerificationOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module ServiceException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceException, context: context)
        type = Types::ServiceException.new
        type.code = params[:code]
        type.docs = params[:docs]
        type.message = params[:message]
        type.tip = params[:tip]
        type
      end
    end

    module SetIpAddressTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetIpAddressTypeInput, context: context)
        type = Types::SetIpAddressTypeInput.new
        type.resource_type = params[:resource_type]
        type.resource_name = params[:resource_name]
        type.ip_address_type = params[:ip_address_type]
        type
      end
    end

    module SetIpAddressTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetIpAddressTypeOutput, context: context)
        type = Types::SetIpAddressTypeOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module SetResourceAccessForBucketInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetResourceAccessForBucketInput, context: context)
        type = Types::SetResourceAccessForBucketInput.new
        type.resource_name = params[:resource_name]
        type.bucket_name = params[:bucket_name]
        type.access = params[:access]
        type
      end
    end

    module SetResourceAccessForBucketOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetResourceAccessForBucketOutput, context: context)
        type = Types::SetResourceAccessForBucketOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module StartInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartInstanceInput, context: context)
        type = Types::StartInstanceInput.new
        type.instance_name = params[:instance_name]
        type
      end
    end

    module StartInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartInstanceOutput, context: context)
        type = Types::StartInstanceOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module StartRelationalDatabaseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartRelationalDatabaseInput, context: context)
        type = Types::StartRelationalDatabaseInput.new
        type.relational_database_name = params[:relational_database_name]
        type
      end
    end

    module StartRelationalDatabaseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartRelationalDatabaseOutput, context: context)
        type = Types::StartRelationalDatabaseOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module StaticIp
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StaticIp, context: context)
        type = Types::StaticIp.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.support_code = params[:support_code]
        type.created_at = params[:created_at]
        type.location = ResourceLocation.build(params[:location], context: "#{context}[:location]") unless params[:location].nil?
        type.resource_type = params[:resource_type]
        type.ip_address = params[:ip_address]
        type.attached_to = params[:attached_to]
        type.is_attached = params[:is_attached]
        type
      end
    end

    module StaticIpList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StaticIp.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StopInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopInstanceInput, context: context)
        type = Types::StopInstanceInput.new
        type.instance_name = params[:instance_name]
        type.force = params[:force]
        type
      end
    end

    module StopInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopInstanceOutput, context: context)
        type = Types::StopInstanceOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module StopRelationalDatabaseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopRelationalDatabaseInput, context: context)
        type = Types::StopRelationalDatabaseInput.new
        type.relational_database_name = params[:relational_database_name]
        type.relational_database_snapshot_name = params[:relational_database_snapshot_name]
        type
      end
    end

    module StopRelationalDatabaseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopRelationalDatabaseOutput, context: context)
        type = Types::StopRelationalDatabaseOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module StringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SubjectAlternativeNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_name = params[:resource_name]
        type.resource_arn = params[:resource_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module TestAlarmInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TestAlarmInput, context: context)
        type = Types::TestAlarmInput.new
        type.alarm_name = params[:alarm_name]
        type.state = params[:state]
        type
      end
    end

    module TestAlarmOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TestAlarmOutput, context: context)
        type = Types::TestAlarmOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module UnauthenticatedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnauthenticatedException, context: context)
        type = Types::UnauthenticatedException.new
        type.code = params[:code]
        type.docs = params[:docs]
        type.message = params[:message]
        type.tip = params[:tip]
        type
      end
    end

    module UnpeerVpcInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnpeerVpcInput, context: context)
        type = Types::UnpeerVpcInput.new
        type
      end
    end

    module UnpeerVpcOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnpeerVpcOutput, context: context)
        type = Types::UnpeerVpcOutput.new
        type.operation = Operation.build(params[:operation], context: "#{context}[:operation]") unless params[:operation].nil?
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_name = params[:resource_name]
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module UpdateBucketBundleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBucketBundleInput, context: context)
        type = Types::UpdateBucketBundleInput.new
        type.bucket_name = params[:bucket_name]
        type.bundle_id = params[:bundle_id]
        type
      end
    end

    module UpdateBucketBundleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBucketBundleOutput, context: context)
        type = Types::UpdateBucketBundleOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module UpdateBucketInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBucketInput, context: context)
        type = Types::UpdateBucketInput.new
        type.bucket_name = params[:bucket_name]
        type.access_rules = AccessRules.build(params[:access_rules], context: "#{context}[:access_rules]") unless params[:access_rules].nil?
        type.versioning = params[:versioning]
        type.readonly_access_accounts = PartnerIdList.build(params[:readonly_access_accounts], context: "#{context}[:readonly_access_accounts]") unless params[:readonly_access_accounts].nil?
        type.access_log_config = BucketAccessLogConfig.build(params[:access_log_config], context: "#{context}[:access_log_config]") unless params[:access_log_config].nil?
        type
      end
    end

    module UpdateBucketOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBucketOutput, context: context)
        type = Types::UpdateBucketOutput.new
        type.bucket = Bucket.build(params[:bucket], context: "#{context}[:bucket]") unless params[:bucket].nil?
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module UpdateContainerServiceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateContainerServiceInput, context: context)
        type = Types::UpdateContainerServiceInput.new
        type.service_name = params[:service_name]
        type.power = params[:power]
        type.scale = params[:scale]
        type.is_disabled = params[:is_disabled]
        type.public_domain_names = ContainerServicePublicDomains.build(params[:public_domain_names], context: "#{context}[:public_domain_names]") unless params[:public_domain_names].nil?
        type.private_registry_access = PrivateRegistryAccessRequest.build(params[:private_registry_access], context: "#{context}[:private_registry_access]") unless params[:private_registry_access].nil?
        type
      end
    end

    module UpdateContainerServiceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateContainerServiceOutput, context: context)
        type = Types::UpdateContainerServiceOutput.new
        type.container_service = ContainerService.build(params[:container_service], context: "#{context}[:container_service]") unless params[:container_service].nil?
        type
      end
    end

    module UpdateDistributionBundleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDistributionBundleInput, context: context)
        type = Types::UpdateDistributionBundleInput.new
        type.distribution_name = params[:distribution_name]
        type.bundle_id = params[:bundle_id]
        type
      end
    end

    module UpdateDistributionBundleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDistributionBundleOutput, context: context)
        type = Types::UpdateDistributionBundleOutput.new
        type.operation = Operation.build(params[:operation], context: "#{context}[:operation]") unless params[:operation].nil?
        type
      end
    end

    module UpdateDistributionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDistributionInput, context: context)
        type = Types::UpdateDistributionInput.new
        type.distribution_name = params[:distribution_name]
        type.origin = InputOrigin.build(params[:origin], context: "#{context}[:origin]") unless params[:origin].nil?
        type.default_cache_behavior = CacheBehavior.build(params[:default_cache_behavior], context: "#{context}[:default_cache_behavior]") unless params[:default_cache_behavior].nil?
        type.cache_behavior_settings = CacheSettings.build(params[:cache_behavior_settings], context: "#{context}[:cache_behavior_settings]") unless params[:cache_behavior_settings].nil?
        type.cache_behaviors = CacheBehaviorList.build(params[:cache_behaviors], context: "#{context}[:cache_behaviors]") unless params[:cache_behaviors].nil?
        type.is_enabled = params[:is_enabled]
        type
      end
    end

    module UpdateDistributionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDistributionOutput, context: context)
        type = Types::UpdateDistributionOutput.new
        type.operation = Operation.build(params[:operation], context: "#{context}[:operation]") unless params[:operation].nil?
        type
      end
    end

    module UpdateDomainEntryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDomainEntryInput, context: context)
        type = Types::UpdateDomainEntryInput.new
        type.domain_name = params[:domain_name]
        type.domain_entry = DomainEntry.build(params[:domain_entry], context: "#{context}[:domain_entry]") unless params[:domain_entry].nil?
        type
      end
    end

    module UpdateDomainEntryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDomainEntryOutput, context: context)
        type = Types::UpdateDomainEntryOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module UpdateLoadBalancerAttributeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateLoadBalancerAttributeInput, context: context)
        type = Types::UpdateLoadBalancerAttributeInput.new
        type.load_balancer_name = params[:load_balancer_name]
        type.attribute_name = params[:attribute_name]
        type.attribute_value = params[:attribute_value]
        type
      end
    end

    module UpdateLoadBalancerAttributeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateLoadBalancerAttributeOutput, context: context)
        type = Types::UpdateLoadBalancerAttributeOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module UpdateRelationalDatabaseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRelationalDatabaseInput, context: context)
        type = Types::UpdateRelationalDatabaseInput.new
        type.relational_database_name = params[:relational_database_name]
        type.master_user_password = params[:master_user_password]
        type.rotate_master_user_password = params[:rotate_master_user_password]
        type.preferred_backup_window = params[:preferred_backup_window]
        type.preferred_maintenance_window = params[:preferred_maintenance_window]
        type.enable_backup_retention = params[:enable_backup_retention]
        type.disable_backup_retention = params[:disable_backup_retention]
        type.publicly_accessible = params[:publicly_accessible]
        type.apply_immediately = params[:apply_immediately]
        type.ca_certificate_identifier = params[:ca_certificate_identifier]
        type
      end
    end

    module UpdateRelationalDatabaseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRelationalDatabaseOutput, context: context)
        type = Types::UpdateRelationalDatabaseOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

    module UpdateRelationalDatabaseParametersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRelationalDatabaseParametersInput, context: context)
        type = Types::UpdateRelationalDatabaseParametersInput.new
        type.relational_database_name = params[:relational_database_name]
        type.parameters = RelationalDatabaseParameterList.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type
      end
    end

    module UpdateRelationalDatabaseParametersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRelationalDatabaseParametersOutput, context: context)
        type = Types::UpdateRelationalDatabaseParametersOutput.new
        type.operations = OperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type
      end
    end

  end
end
