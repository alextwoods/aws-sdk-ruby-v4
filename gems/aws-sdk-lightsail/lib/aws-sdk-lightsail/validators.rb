# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::Lightsail
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:docs], ::String, context: "#{context}[:docs]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:tip], ::String, context: "#{context}[:tip]")
      end
    end

    class AccessKey
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessKey, context: context)
        Hearth::Validator.validate!(input[:access_key_id], ::String, context: "#{context}[:access_key_id]")
        Hearth::Validator.validate!(input[:secret_access_key], ::String, context: "#{context}[:secret_access_key]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        AccessKeyLastUsed.validate!(input[:last_used], context: "#{context}[:last_used]") unless input[:last_used].nil?
      end
    end

    class AccessKeyLastUsed
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessKeyLastUsed, context: context)
        Hearth::Validator.validate!(input[:last_used_date], ::Time, context: "#{context}[:last_used_date]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
      end
    end

    class AccessKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AccessKey.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AccessReceiverList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ResourceReceivingAccess.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AccessRules
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessRules, context: context)
        Hearth::Validator.validate!(input[:get_object], ::String, context: "#{context}[:get_object]")
        Hearth::Validator.validate!(input[:allow_public_overrides], ::TrueClass, ::FalseClass, context: "#{context}[:allow_public_overrides]")
      end
    end

    class AccountLevelBpaSync
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccountLevelBpaSync, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:last_synced_at], ::Time, context: "#{context}[:last_synced_at]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:bpa_impacts_lightsail], ::TrueClass, ::FalseClass, context: "#{context}[:bpa_impacts_lightsail]")
      end
    end

    class AccountSetupInProgressException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccountSetupInProgressException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:docs], ::String, context: "#{context}[:docs]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:tip], ::String, context: "#{context}[:tip]")
      end
    end

    class AddOn
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddOn, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:snapshot_time_of_day], ::String, context: "#{context}[:snapshot_time_of_day]")
        Hearth::Validator.validate!(input[:next_snapshot_time_of_day], ::String, context: "#{context}[:next_snapshot_time_of_day]")
      end
    end

    class AddOnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AddOn.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AddOnRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddOnRequest, context: context)
        Hearth::Validator.validate!(input[:add_on_type], ::String, context: "#{context}[:add_on_type]")
        AutoSnapshotAddOnRequest.validate!(input[:auto_snapshot_add_on_request], context: "#{context}[:auto_snapshot_add_on_request]") unless input[:auto_snapshot_add_on_request].nil?
      end
    end

    class AddOnRequestList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AddOnRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Alarm
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Alarm, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        ResourceLocation.validate!(input[:location], context: "#{context}[:location]") unless input[:location].nil?
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:support_code], ::String, context: "#{context}[:support_code]")
        MonitoredResourceInfo.validate!(input[:monitored_resource_info], context: "#{context}[:monitored_resource_info]") unless input[:monitored_resource_info].nil?
        Hearth::Validator.validate!(input[:comparison_operator], ::String, context: "#{context}[:comparison_operator]")
        Hearth::Validator.validate!(input[:evaluation_periods], ::Integer, context: "#{context}[:evaluation_periods]")
        Hearth::Validator.validate!(input[:period], ::Integer, context: "#{context}[:period]")
        Hearth::Validator.validate!(input[:threshold], ::Float, context: "#{context}[:threshold]")
        Hearth::Validator.validate!(input[:datapoints_to_alarm], ::Integer, context: "#{context}[:datapoints_to_alarm]")
        Hearth::Validator.validate!(input[:treat_missing_data], ::String, context: "#{context}[:treat_missing_data]")
        Hearth::Validator.validate!(input[:statistic], ::String, context: "#{context}[:statistic]")
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
        ContactProtocolsList.validate!(input[:contact_protocols], context: "#{context}[:contact_protocols]") unless input[:contact_protocols].nil?
        NotificationTriggerList.validate!(input[:notification_triggers], context: "#{context}[:notification_triggers]") unless input[:notification_triggers].nil?
        Hearth::Validator.validate!(input[:notification_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:notification_enabled]")
      end
    end

    class AlarmsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Alarm.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AllocateStaticIpInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AllocateStaticIpInput, context: context)
        Hearth::Validator.validate!(input[:static_ip_name], ::String, context: "#{context}[:static_ip_name]")
      end
    end

    class AllocateStaticIpOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AllocateStaticIpOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class AttachCertificateToDistributionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachCertificateToDistributionInput, context: context)
        Hearth::Validator.validate!(input[:distribution_name], ::String, context: "#{context}[:distribution_name]")
        Hearth::Validator.validate!(input[:certificate_name], ::String, context: "#{context}[:certificate_name]")
      end
    end

    class AttachCertificateToDistributionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachCertificateToDistributionOutput, context: context)
        Operation.validate!(input[:operation], context: "#{context}[:operation]") unless input[:operation].nil?
      end
    end

    class AttachDiskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachDiskInput, context: context)
        Hearth::Validator.validate!(input[:disk_name], ::String, context: "#{context}[:disk_name]")
        Hearth::Validator.validate!(input[:instance_name], ::String, context: "#{context}[:instance_name]")
        Hearth::Validator.validate!(input[:disk_path], ::String, context: "#{context}[:disk_path]")
      end
    end

    class AttachDiskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachDiskOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class AttachInstancesToLoadBalancerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachInstancesToLoadBalancerInput, context: context)
        Hearth::Validator.validate!(input[:load_balancer_name], ::String, context: "#{context}[:load_balancer_name]")
        ResourceNameList.validate!(input[:instance_names], context: "#{context}[:instance_names]") unless input[:instance_names].nil?
      end
    end

    class AttachInstancesToLoadBalancerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachInstancesToLoadBalancerOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class AttachLoadBalancerTlsCertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachLoadBalancerTlsCertificateInput, context: context)
        Hearth::Validator.validate!(input[:load_balancer_name], ::String, context: "#{context}[:load_balancer_name]")
        Hearth::Validator.validate!(input[:certificate_name], ::String, context: "#{context}[:certificate_name]")
      end
    end

    class AttachLoadBalancerTlsCertificateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachLoadBalancerTlsCertificateOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class AttachStaticIpInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachStaticIpInput, context: context)
        Hearth::Validator.validate!(input[:static_ip_name], ::String, context: "#{context}[:static_ip_name]")
        Hearth::Validator.validate!(input[:instance_name], ::String, context: "#{context}[:instance_name]")
      end
    end

    class AttachStaticIpOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachStaticIpOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class AttachedDisk
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachedDisk, context: context)
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Hearth::Validator.validate!(input[:size_in_gb], ::Integer, context: "#{context}[:size_in_gb]")
      end
    end

    class AttachedDiskList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AttachedDisk.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AttachedDiskMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          DiskMapList.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class AutoSnapshotAddOnRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoSnapshotAddOnRequest, context: context)
        Hearth::Validator.validate!(input[:snapshot_time_of_day], ::String, context: "#{context}[:snapshot_time_of_day]")
      end
    end

    class AutoSnapshotDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoSnapshotDetails, context: context)
        Hearth::Validator.validate!(input[:date], ::String, context: "#{context}[:date]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        AttachedDiskList.validate!(input[:from_attached_disks], context: "#{context}[:from_attached_disks]") unless input[:from_attached_disks].nil?
      end
    end

    class AutoSnapshotDetailsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AutoSnapshotDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AvailabilityZone
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AvailabilityZone, context: context)
        Hearth::Validator.validate!(input[:zone_name], ::String, context: "#{context}[:zone_name]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class AvailabilityZoneList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AvailabilityZone.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Blueprint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Blueprint, context: context)
        Hearth::Validator.validate!(input[:blueprint_id], ::String, context: "#{context}[:blueprint_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:group], ::String, context: "#{context}[:group]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:is_active], ::TrueClass, ::FalseClass, context: "#{context}[:is_active]")
        Hearth::Validator.validate!(input[:min_power], ::Integer, context: "#{context}[:min_power]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:version_code], ::String, context: "#{context}[:version_code]")
        Hearth::Validator.validate!(input[:product_url], ::String, context: "#{context}[:product_url]")
        Hearth::Validator.validate!(input[:license_url], ::String, context: "#{context}[:license_url]")
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
      end
    end

    class BlueprintList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Blueprint.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Bucket
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Bucket, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        AccessRules.validate!(input[:access_rules], context: "#{context}[:access_rules]") unless input[:access_rules].nil?
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:bundle_id], ::String, context: "#{context}[:bundle_id]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
        ResourceLocation.validate!(input[:location], context: "#{context}[:location]") unless input[:location].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:support_code], ::String, context: "#{context}[:support_code]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:object_versioning], ::String, context: "#{context}[:object_versioning]")
        Hearth::Validator.validate!(input[:able_to_update_bundle], ::TrueClass, ::FalseClass, context: "#{context}[:able_to_update_bundle]")
        PartnerIdList.validate!(input[:readonly_access_accounts], context: "#{context}[:readonly_access_accounts]") unless input[:readonly_access_accounts].nil?
        AccessReceiverList.validate!(input[:resources_receiving_access], context: "#{context}[:resources_receiving_access]") unless input[:resources_receiving_access].nil?
        BucketState.validate!(input[:state], context: "#{context}[:state]") unless input[:state].nil?
        BucketAccessLogConfig.validate!(input[:access_log_config], context: "#{context}[:access_log_config]") unless input[:access_log_config].nil?
      end
    end

    class BucketAccessLogConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BucketAccessLogConfig, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:destination], ::String, context: "#{context}[:destination]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
      end
    end

    class BucketBundle
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BucketBundle, context: context)
        Hearth::Validator.validate!(input[:bundle_id], ::String, context: "#{context}[:bundle_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:price], ::Float, context: "#{context}[:price]")
        Hearth::Validator.validate!(input[:storage_per_month_in_gb], ::Integer, context: "#{context}[:storage_per_month_in_gb]")
        Hearth::Validator.validate!(input[:transfer_per_month_in_gb], ::Integer, context: "#{context}[:transfer_per_month_in_gb]")
        Hearth::Validator.validate!(input[:is_active], ::TrueClass, ::FalseClass, context: "#{context}[:is_active]")
      end
    end

    class BucketBundleList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BucketBundle.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BucketList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Bucket.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BucketState
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BucketState, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Bundle
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Bundle, context: context)
        Hearth::Validator.validate!(input[:price], ::Float, context: "#{context}[:price]")
        Hearth::Validator.validate!(input[:cpu_count], ::Integer, context: "#{context}[:cpu_count]")
        Hearth::Validator.validate!(input[:disk_size_in_gb], ::Integer, context: "#{context}[:disk_size_in_gb]")
        Hearth::Validator.validate!(input[:bundle_id], ::String, context: "#{context}[:bundle_id]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:is_active], ::TrueClass, ::FalseClass, context: "#{context}[:is_active]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:power], ::Integer, context: "#{context}[:power]")
        Hearth::Validator.validate!(input[:ram_size_in_gb], ::Float, context: "#{context}[:ram_size_in_gb]")
        Hearth::Validator.validate!(input[:transfer_per_month_in_gb], ::Integer, context: "#{context}[:transfer_per_month_in_gb]")
        InstancePlatformList.validate!(input[:supported_platforms], context: "#{context}[:supported_platforms]") unless input[:supported_platforms].nil?
      end
    end

    class BundleList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Bundle.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CacheBehavior
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CacheBehavior, context: context)
        Hearth::Validator.validate!(input[:behavior], ::String, context: "#{context}[:behavior]")
      end
    end

    class CacheBehaviorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CacheBehaviorPerPath.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CacheBehaviorPerPath
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CacheBehaviorPerPath, context: context)
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Hearth::Validator.validate!(input[:behavior], ::String, context: "#{context}[:behavior]")
      end
    end

    class CacheSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CacheSettings, context: context)
        Hearth::Validator.validate!(input[:default_ttl], ::Integer, context: "#{context}[:default_ttl]")
        Hearth::Validator.validate!(input[:minimum_ttl], ::Integer, context: "#{context}[:minimum_ttl]")
        Hearth::Validator.validate!(input[:maximum_ttl], ::Integer, context: "#{context}[:maximum_ttl]")
        Hearth::Validator.validate!(input[:allowed_http_methods], ::String, context: "#{context}[:allowed_http_methods]")
        Hearth::Validator.validate!(input[:cached_http_methods], ::String, context: "#{context}[:cached_http_methods]")
        CookieObject.validate!(input[:forwarded_cookies], context: "#{context}[:forwarded_cookies]") unless input[:forwarded_cookies].nil?
        HeaderObject.validate!(input[:forwarded_headers], context: "#{context}[:forwarded_headers]") unless input[:forwarded_headers].nil?
        QueryStringObject.validate!(input[:forwarded_query_strings], context: "#{context}[:forwarded_query_strings]") unless input[:forwarded_query_strings].nil?
      end
    end

    class Certificate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Certificate, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:serial_number], ::String, context: "#{context}[:serial_number]")
        SubjectAlternativeNameList.validate!(input[:subject_alternative_names], context: "#{context}[:subject_alternative_names]") unless input[:subject_alternative_names].nil?
        DomainValidationRecordList.validate!(input[:domain_validation_records], context: "#{context}[:domain_validation_records]") unless input[:domain_validation_records].nil?
        Hearth::Validator.validate!(input[:request_failure_reason], ::String, context: "#{context}[:request_failure_reason]")
        Hearth::Validator.validate!(input[:in_use_resource_count], ::Integer, context: "#{context}[:in_use_resource_count]")
        Hearth::Validator.validate!(input[:key_algorithm], ::String, context: "#{context}[:key_algorithm]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:issued_at], ::Time, context: "#{context}[:issued_at]")
        Hearth::Validator.validate!(input[:issuer_ca], ::String, context: "#{context}[:issuer_ca]")
        Hearth::Validator.validate!(input[:not_before], ::Time, context: "#{context}[:not_before]")
        Hearth::Validator.validate!(input[:not_after], ::Time, context: "#{context}[:not_after]")
        Hearth::Validator.validate!(input[:eligible_to_renew], ::String, context: "#{context}[:eligible_to_renew]")
        RenewalSummary.validate!(input[:renewal_summary], context: "#{context}[:renewal_summary]") unless input[:renewal_summary].nil?
        Hearth::Validator.validate!(input[:revoked_at], ::Time, context: "#{context}[:revoked_at]")
        Hearth::Validator.validate!(input[:revocation_reason], ::String, context: "#{context}[:revocation_reason]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:support_code], ::String, context: "#{context}[:support_code]")
      end
    end

    class CertificateStatusList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CertificateSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CertificateSummary, context: context)
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
        Hearth::Validator.validate!(input[:certificate_name], ::String, context: "#{context}[:certificate_name]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Certificate.validate!(input[:certificate_detail], context: "#{context}[:certificate_detail]") unless input[:certificate_detail].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CertificateSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CertificateSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CloseInstancePublicPortsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloseInstancePublicPortsInput, context: context)
        PortInfo.validate!(input[:port_info], context: "#{context}[:port_info]") unless input[:port_info].nil?
        Hearth::Validator.validate!(input[:instance_name], ::String, context: "#{context}[:instance_name]")
      end
    end

    class CloseInstancePublicPortsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloseInstancePublicPortsOutput, context: context)
        Operation.validate!(input[:operation], context: "#{context}[:operation]") unless input[:operation].nil?
      end
    end

    class CloudFormationStackRecord
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudFormationStackRecord, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        ResourceLocation.validate!(input[:location], context: "#{context}[:location]") unless input[:location].nil?
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        CloudFormationStackRecordSourceInfoList.validate!(input[:source_info], context: "#{context}[:source_info]") unless input[:source_info].nil?
        DestinationInfo.validate!(input[:destination_info], context: "#{context}[:destination_info]") unless input[:destination_info].nil?
      end
    end

    class CloudFormationStackRecordList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CloudFormationStackRecord.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CloudFormationStackRecordSourceInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudFormationStackRecordSourceInfo, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class CloudFormationStackRecordSourceInfoList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CloudFormationStackRecordSourceInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ContactMethod
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContactMethod, context: context)
        Hearth::Validator.validate!(input[:contact_endpoint], ::String, context: "#{context}[:contact_endpoint]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        ResourceLocation.validate!(input[:location], context: "#{context}[:location]") unless input[:location].nil?
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:support_code], ::String, context: "#{context}[:support_code]")
      end
    end

    class ContactMethodsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ContactMethod.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ContactProtocolsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Container
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Container, context: context)
        Hearth::Validator.validate!(input[:image], ::String, context: "#{context}[:image]")
        StringList.validate!(input[:command], context: "#{context}[:command]") unless input[:command].nil?
        Environment.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
        PortMap.validate!(input[:ports], context: "#{context}[:ports]") unless input[:ports].nil?
      end
    end

    class ContainerImage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContainerImage, context: context)
        Hearth::Validator.validate!(input[:image], ::String, context: "#{context}[:image]")
        Hearth::Validator.validate!(input[:digest], ::String, context: "#{context}[:digest]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
      end
    end

    class ContainerImageList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ContainerImage.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ContainerMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Container.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class ContainerService
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContainerService, context: context)
        Hearth::Validator.validate!(input[:container_service_name], ::String, context: "#{context}[:container_service_name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        ResourceLocation.validate!(input[:location], context: "#{context}[:location]") unless input[:location].nil?
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:power], ::String, context: "#{context}[:power]")
        Hearth::Validator.validate!(input[:power_id], ::String, context: "#{context}[:power_id]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        ContainerServiceStateDetail.validate!(input[:state_detail], context: "#{context}[:state_detail]") unless input[:state_detail].nil?
        Hearth::Validator.validate!(input[:scale], ::Integer, context: "#{context}[:scale]")
        ContainerServiceDeployment.validate!(input[:current_deployment], context: "#{context}[:current_deployment]") unless input[:current_deployment].nil?
        ContainerServiceDeployment.validate!(input[:next_deployment], context: "#{context}[:next_deployment]") unless input[:next_deployment].nil?
        Hearth::Validator.validate!(input[:is_disabled], ::TrueClass, ::FalseClass, context: "#{context}[:is_disabled]")
        Hearth::Validator.validate!(input[:principal_arn], ::String, context: "#{context}[:principal_arn]")
        Hearth::Validator.validate!(input[:private_domain_name], ::String, context: "#{context}[:private_domain_name]")
        ContainerServicePublicDomains.validate!(input[:public_domain_names], context: "#{context}[:public_domain_names]") unless input[:public_domain_names].nil?
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
        PrivateRegistryAccess.validate!(input[:private_registry_access], context: "#{context}[:private_registry_access]") unless input[:private_registry_access].nil?
      end
    end

    class ContainerServiceDeployment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContainerServiceDeployment, context: context)
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        ContainerMap.validate!(input[:containers], context: "#{context}[:containers]") unless input[:containers].nil?
        ContainerServiceEndpoint.validate!(input[:public_endpoint], context: "#{context}[:public_endpoint]") unless input[:public_endpoint].nil?
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
      end
    end

    class ContainerServiceDeploymentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ContainerServiceDeployment.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ContainerServiceDeploymentRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContainerServiceDeploymentRequest, context: context)
        ContainerMap.validate!(input[:containers], context: "#{context}[:containers]") unless input[:containers].nil?
        EndpointRequest.validate!(input[:public_endpoint], context: "#{context}[:public_endpoint]") unless input[:public_endpoint].nil?
      end
    end

    class ContainerServiceECRImagePullerRole
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContainerServiceECRImagePullerRole, context: context)
        Hearth::Validator.validate!(input[:is_active], ::TrueClass, ::FalseClass, context: "#{context}[:is_active]")
        Hearth::Validator.validate!(input[:principal_arn], ::String, context: "#{context}[:principal_arn]")
      end
    end

    class ContainerServiceECRImagePullerRoleRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContainerServiceECRImagePullerRoleRequest, context: context)
        Hearth::Validator.validate!(input[:is_active], ::TrueClass, ::FalseClass, context: "#{context}[:is_active]")
      end
    end

    class ContainerServiceEndpoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContainerServiceEndpoint, context: context)
        Hearth::Validator.validate!(input[:container_name], ::String, context: "#{context}[:container_name]")
        Hearth::Validator.validate!(input[:container_port], ::Integer, context: "#{context}[:container_port]")
        ContainerServiceHealthCheckConfig.validate!(input[:health_check], context: "#{context}[:health_check]") unless input[:health_check].nil?
      end
    end

    class ContainerServiceHealthCheckConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContainerServiceHealthCheckConfig, context: context)
        Hearth::Validator.validate!(input[:healthy_threshold], ::Integer, context: "#{context}[:healthy_threshold]")
        Hearth::Validator.validate!(input[:unhealthy_threshold], ::Integer, context: "#{context}[:unhealthy_threshold]")
        Hearth::Validator.validate!(input[:timeout_seconds], ::Integer, context: "#{context}[:timeout_seconds]")
        Hearth::Validator.validate!(input[:interval_seconds], ::Integer, context: "#{context}[:interval_seconds]")
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Hearth::Validator.validate!(input[:success_codes], ::String, context: "#{context}[:success_codes]")
      end
    end

    class ContainerServiceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ContainerService.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ContainerServiceLogEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContainerServiceLogEvent, context: context)
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ContainerServiceLogEventList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ContainerServiceLogEvent.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ContainerServiceMetadataEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class ContainerServiceMetadataEntryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ContainerServiceMetadataEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ContainerServicePower
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContainerServicePower, context: context)
        Hearth::Validator.validate!(input[:power_id], ::String, context: "#{context}[:power_id]")
        Hearth::Validator.validate!(input[:price], ::Float, context: "#{context}[:price]")
        Hearth::Validator.validate!(input[:cpu_count], ::Float, context: "#{context}[:cpu_count]")
        Hearth::Validator.validate!(input[:ram_size_in_gb], ::Float, context: "#{context}[:ram_size_in_gb]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:is_active], ::TrueClass, ::FalseClass, context: "#{context}[:is_active]")
      end
    end

    class ContainerServicePowerList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ContainerServicePower.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ContainerServicePublicDomains
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          ContainerServicePublicDomainsList.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class ContainerServicePublicDomainsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ContainerServiceRegistryLogin
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContainerServiceRegistryLogin, context: context)
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
        Hearth::Validator.validate!(input[:expires_at], ::Time, context: "#{context}[:expires_at]")
        Hearth::Validator.validate!(input[:registry], ::String, context: "#{context}[:registry]")
      end
    end

    class ContainerServiceStateDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContainerServiceStateDetail, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CookieObject
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CookieObject, context: context)
        Hearth::Validator.validate!(input[:option], ::String, context: "#{context}[:option]")
        StringList.validate!(input[:cookies_allow_list], context: "#{context}[:cookies_allow_list]") unless input[:cookies_allow_list].nil?
      end
    end

    class CopySnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CopySnapshotInput, context: context)
        Hearth::Validator.validate!(input[:source_snapshot_name], ::String, context: "#{context}[:source_snapshot_name]")
        Hearth::Validator.validate!(input[:source_resource_name], ::String, context: "#{context}[:source_resource_name]")
        Hearth::Validator.validate!(input[:restore_date], ::String, context: "#{context}[:restore_date]")
        Hearth::Validator.validate!(input[:use_latest_restorable_auto_snapshot], ::TrueClass, ::FalseClass, context: "#{context}[:use_latest_restorable_auto_snapshot]")
        Hearth::Validator.validate!(input[:target_snapshot_name], ::String, context: "#{context}[:target_snapshot_name]")
        Hearth::Validator.validate!(input[:source_region], ::String, context: "#{context}[:source_region]")
      end
    end

    class CopySnapshotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CopySnapshotOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class CreateBucketAccessKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBucketAccessKeyInput, context: context)
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
      end
    end

    class CreateBucketAccessKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBucketAccessKeyOutput, context: context)
        AccessKey.validate!(input[:access_key], context: "#{context}[:access_key]") unless input[:access_key].nil?
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class CreateBucketInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBucketInput, context: context)
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
        Hearth::Validator.validate!(input[:bundle_id], ::String, context: "#{context}[:bundle_id]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:enable_object_versioning], ::TrueClass, ::FalseClass, context: "#{context}[:enable_object_versioning]")
      end
    end

    class CreateBucketOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBucketOutput, context: context)
        Bucket.validate!(input[:bucket], context: "#{context}[:bucket]") unless input[:bucket].nil?
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class CreateCertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCertificateInput, context: context)
        Hearth::Validator.validate!(input[:certificate_name], ::String, context: "#{context}[:certificate_name]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        SubjectAlternativeNameList.validate!(input[:subject_alternative_names], context: "#{context}[:subject_alternative_names]") unless input[:subject_alternative_names].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateCertificateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCertificateOutput, context: context)
        CertificateSummary.validate!(input[:certificate], context: "#{context}[:certificate]") unless input[:certificate].nil?
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class CreateCloudFormationStackInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCloudFormationStackInput, context: context)
        InstanceEntryList.validate!(input[:instances], context: "#{context}[:instances]") unless input[:instances].nil?
      end
    end

    class CreateCloudFormationStackOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCloudFormationStackOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class CreateContactMethodInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateContactMethodInput, context: context)
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
        Hearth::Validator.validate!(input[:contact_endpoint], ::String, context: "#{context}[:contact_endpoint]")
      end
    end

    class CreateContactMethodOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateContactMethodOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class CreateContainerServiceDeploymentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateContainerServiceDeploymentInput, context: context)
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
        ContainerMap.validate!(input[:containers], context: "#{context}[:containers]") unless input[:containers].nil?
        EndpointRequest.validate!(input[:public_endpoint], context: "#{context}[:public_endpoint]") unless input[:public_endpoint].nil?
      end
    end

    class CreateContainerServiceDeploymentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateContainerServiceDeploymentOutput, context: context)
        ContainerService.validate!(input[:container_service], context: "#{context}[:container_service]") unless input[:container_service].nil?
      end
    end

    class CreateContainerServiceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateContainerServiceInput, context: context)
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
        Hearth::Validator.validate!(input[:power], ::String, context: "#{context}[:power]")
        Hearth::Validator.validate!(input[:scale], ::Integer, context: "#{context}[:scale]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        ContainerServicePublicDomains.validate!(input[:public_domain_names], context: "#{context}[:public_domain_names]") unless input[:public_domain_names].nil?
        ContainerServiceDeploymentRequest.validate!(input[:deployment], context: "#{context}[:deployment]") unless input[:deployment].nil?
        PrivateRegistryAccessRequest.validate!(input[:private_registry_access], context: "#{context}[:private_registry_access]") unless input[:private_registry_access].nil?
      end
    end

    class CreateContainerServiceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateContainerServiceOutput, context: context)
        ContainerService.validate!(input[:container_service], context: "#{context}[:container_service]") unless input[:container_service].nil?
      end
    end

    class CreateContainerServiceRegistryLoginInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateContainerServiceRegistryLoginInput, context: context)
      end
    end

    class CreateContainerServiceRegistryLoginOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateContainerServiceRegistryLoginOutput, context: context)
        ContainerServiceRegistryLogin.validate!(input[:registry_login], context: "#{context}[:registry_login]") unless input[:registry_login].nil?
      end
    end

    class CreateDiskFromSnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDiskFromSnapshotInput, context: context)
        Hearth::Validator.validate!(input[:disk_name], ::String, context: "#{context}[:disk_name]")
        Hearth::Validator.validate!(input[:disk_snapshot_name], ::String, context: "#{context}[:disk_snapshot_name]")
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:size_in_gb], ::Integer, context: "#{context}[:size_in_gb]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        AddOnRequestList.validate!(input[:add_ons], context: "#{context}[:add_ons]") unless input[:add_ons].nil?
        Hearth::Validator.validate!(input[:source_disk_name], ::String, context: "#{context}[:source_disk_name]")
        Hearth::Validator.validate!(input[:restore_date], ::String, context: "#{context}[:restore_date]")
        Hearth::Validator.validate!(input[:use_latest_restorable_auto_snapshot], ::TrueClass, ::FalseClass, context: "#{context}[:use_latest_restorable_auto_snapshot]")
      end
    end

    class CreateDiskFromSnapshotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDiskFromSnapshotOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class CreateDiskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDiskInput, context: context)
        Hearth::Validator.validate!(input[:disk_name], ::String, context: "#{context}[:disk_name]")
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:size_in_gb], ::Integer, context: "#{context}[:size_in_gb]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        AddOnRequestList.validate!(input[:add_ons], context: "#{context}[:add_ons]") unless input[:add_ons].nil?
      end
    end

    class CreateDiskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDiskOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class CreateDiskSnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDiskSnapshotInput, context: context)
        Hearth::Validator.validate!(input[:disk_name], ::String, context: "#{context}[:disk_name]")
        Hearth::Validator.validate!(input[:disk_snapshot_name], ::String, context: "#{context}[:disk_snapshot_name]")
        Hearth::Validator.validate!(input[:instance_name], ::String, context: "#{context}[:instance_name]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateDiskSnapshotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDiskSnapshotOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class CreateDistributionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDistributionInput, context: context)
        Hearth::Validator.validate!(input[:distribution_name], ::String, context: "#{context}[:distribution_name]")
        InputOrigin.validate!(input[:origin], context: "#{context}[:origin]") unless input[:origin].nil?
        CacheBehavior.validate!(input[:default_cache_behavior], context: "#{context}[:default_cache_behavior]") unless input[:default_cache_behavior].nil?
        CacheSettings.validate!(input[:cache_behavior_settings], context: "#{context}[:cache_behavior_settings]") unless input[:cache_behavior_settings].nil?
        CacheBehaviorList.validate!(input[:cache_behaviors], context: "#{context}[:cache_behaviors]") unless input[:cache_behaviors].nil?
        Hearth::Validator.validate!(input[:bundle_id], ::String, context: "#{context}[:bundle_id]")
        Hearth::Validator.validate!(input[:ip_address_type], ::String, context: "#{context}[:ip_address_type]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateDistributionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDistributionOutput, context: context)
        LightsailDistribution.validate!(input[:distribution], context: "#{context}[:distribution]") unless input[:distribution].nil?
        Operation.validate!(input[:operation], context: "#{context}[:operation]") unless input[:operation].nil?
      end
    end

    class CreateDomainEntryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDomainEntryInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        DomainEntry.validate!(input[:domain_entry], context: "#{context}[:domain_entry]") unless input[:domain_entry].nil?
      end
    end

    class CreateDomainEntryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDomainEntryOutput, context: context)
        Operation.validate!(input[:operation], context: "#{context}[:operation]") unless input[:operation].nil?
      end
    end

    class CreateDomainInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDomainInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateDomainOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDomainOutput, context: context)
        Operation.validate!(input[:operation], context: "#{context}[:operation]") unless input[:operation].nil?
      end
    end

    class CreateInstanceSnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateInstanceSnapshotInput, context: context)
        Hearth::Validator.validate!(input[:instance_snapshot_name], ::String, context: "#{context}[:instance_snapshot_name]")
        Hearth::Validator.validate!(input[:instance_name], ::String, context: "#{context}[:instance_name]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateInstanceSnapshotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateInstanceSnapshotOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class CreateInstancesFromSnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateInstancesFromSnapshotInput, context: context)
        StringList.validate!(input[:instance_names], context: "#{context}[:instance_names]") unless input[:instance_names].nil?
        AttachedDiskMap.validate!(input[:attached_disk_mapping], context: "#{context}[:attached_disk_mapping]") unless input[:attached_disk_mapping].nil?
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:instance_snapshot_name], ::String, context: "#{context}[:instance_snapshot_name]")
        Hearth::Validator.validate!(input[:bundle_id], ::String, context: "#{context}[:bundle_id]")
        Hearth::Validator.validate!(input[:user_data], ::String, context: "#{context}[:user_data]")
        Hearth::Validator.validate!(input[:key_pair_name], ::String, context: "#{context}[:key_pair_name]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        AddOnRequestList.validate!(input[:add_ons], context: "#{context}[:add_ons]") unless input[:add_ons].nil?
        Hearth::Validator.validate!(input[:ip_address_type], ::String, context: "#{context}[:ip_address_type]")
        Hearth::Validator.validate!(input[:source_instance_name], ::String, context: "#{context}[:source_instance_name]")
        Hearth::Validator.validate!(input[:restore_date], ::String, context: "#{context}[:restore_date]")
        Hearth::Validator.validate!(input[:use_latest_restorable_auto_snapshot], ::TrueClass, ::FalseClass, context: "#{context}[:use_latest_restorable_auto_snapshot]")
      end
    end

    class CreateInstancesFromSnapshotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateInstancesFromSnapshotOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class CreateInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateInstancesInput, context: context)
        StringList.validate!(input[:instance_names], context: "#{context}[:instance_names]") unless input[:instance_names].nil?
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:custom_image_name], ::String, context: "#{context}[:custom_image_name]")
        Hearth::Validator.validate!(input[:blueprint_id], ::String, context: "#{context}[:blueprint_id]")
        Hearth::Validator.validate!(input[:bundle_id], ::String, context: "#{context}[:bundle_id]")
        Hearth::Validator.validate!(input[:user_data], ::String, context: "#{context}[:user_data]")
        Hearth::Validator.validate!(input[:key_pair_name], ::String, context: "#{context}[:key_pair_name]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        AddOnRequestList.validate!(input[:add_ons], context: "#{context}[:add_ons]") unless input[:add_ons].nil?
        Hearth::Validator.validate!(input[:ip_address_type], ::String, context: "#{context}[:ip_address_type]")
      end
    end

    class CreateInstancesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateInstancesOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class CreateKeyPairInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateKeyPairInput, context: context)
        Hearth::Validator.validate!(input[:key_pair_name], ::String, context: "#{context}[:key_pair_name]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateKeyPairOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateKeyPairOutput, context: context)
        KeyPair.validate!(input[:key_pair], context: "#{context}[:key_pair]") unless input[:key_pair].nil?
        Hearth::Validator.validate!(input[:public_key_base64], ::String, context: "#{context}[:public_key_base64]")
        Hearth::Validator.validate!(input[:private_key_base64], ::String, context: "#{context}[:private_key_base64]")
        Operation.validate!(input[:operation], context: "#{context}[:operation]") unless input[:operation].nil?
      end
    end

    class CreateLoadBalancerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLoadBalancerInput, context: context)
        Hearth::Validator.validate!(input[:load_balancer_name], ::String, context: "#{context}[:load_balancer_name]")
        Hearth::Validator.validate!(input[:instance_port], ::Integer, context: "#{context}[:instance_port]")
        Hearth::Validator.validate!(input[:health_check_path], ::String, context: "#{context}[:health_check_path]")
        Hearth::Validator.validate!(input[:certificate_name], ::String, context: "#{context}[:certificate_name]")
        Hearth::Validator.validate!(input[:certificate_domain_name], ::String, context: "#{context}[:certificate_domain_name]")
        DomainNameList.validate!(input[:certificate_alternative_names], context: "#{context}[:certificate_alternative_names]") unless input[:certificate_alternative_names].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:ip_address_type], ::String, context: "#{context}[:ip_address_type]")
        Hearth::Validator.validate!(input[:tls_policy_name], ::String, context: "#{context}[:tls_policy_name]")
      end
    end

    class CreateLoadBalancerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLoadBalancerOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class CreateLoadBalancerTlsCertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLoadBalancerTlsCertificateInput, context: context)
        Hearth::Validator.validate!(input[:load_balancer_name], ::String, context: "#{context}[:load_balancer_name]")
        Hearth::Validator.validate!(input[:certificate_name], ::String, context: "#{context}[:certificate_name]")
        Hearth::Validator.validate!(input[:certificate_domain_name], ::String, context: "#{context}[:certificate_domain_name]")
        DomainNameList.validate!(input[:certificate_alternative_names], context: "#{context}[:certificate_alternative_names]") unless input[:certificate_alternative_names].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateLoadBalancerTlsCertificateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLoadBalancerTlsCertificateOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class CreateRelationalDatabaseFromSnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRelationalDatabaseFromSnapshotInput, context: context)
        Hearth::Validator.validate!(input[:relational_database_name], ::String, context: "#{context}[:relational_database_name]")
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:publicly_accessible], ::TrueClass, ::FalseClass, context: "#{context}[:publicly_accessible]")
        Hearth::Validator.validate!(input[:relational_database_snapshot_name], ::String, context: "#{context}[:relational_database_snapshot_name]")
        Hearth::Validator.validate!(input[:relational_database_bundle_id], ::String, context: "#{context}[:relational_database_bundle_id]")
        Hearth::Validator.validate!(input[:source_relational_database_name], ::String, context: "#{context}[:source_relational_database_name]")
        Hearth::Validator.validate!(input[:restore_time], ::Time, context: "#{context}[:restore_time]")
        Hearth::Validator.validate!(input[:use_latest_restorable_time], ::TrueClass, ::FalseClass, context: "#{context}[:use_latest_restorable_time]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateRelationalDatabaseFromSnapshotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRelationalDatabaseFromSnapshotOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class CreateRelationalDatabaseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRelationalDatabaseInput, context: context)
        Hearth::Validator.validate!(input[:relational_database_name], ::String, context: "#{context}[:relational_database_name]")
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:relational_database_blueprint_id], ::String, context: "#{context}[:relational_database_blueprint_id]")
        Hearth::Validator.validate!(input[:relational_database_bundle_id], ::String, context: "#{context}[:relational_database_bundle_id]")
        Hearth::Validator.validate!(input[:master_database_name], ::String, context: "#{context}[:master_database_name]")
        Hearth::Validator.validate!(input[:master_username], ::String, context: "#{context}[:master_username]")
        Hearth::Validator.validate!(input[:master_user_password], ::String, context: "#{context}[:master_user_password]")
        Hearth::Validator.validate!(input[:preferred_backup_window], ::String, context: "#{context}[:preferred_backup_window]")
        Hearth::Validator.validate!(input[:preferred_maintenance_window], ::String, context: "#{context}[:preferred_maintenance_window]")
        Hearth::Validator.validate!(input[:publicly_accessible], ::TrueClass, ::FalseClass, context: "#{context}[:publicly_accessible]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateRelationalDatabaseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRelationalDatabaseOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class CreateRelationalDatabaseSnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRelationalDatabaseSnapshotInput, context: context)
        Hearth::Validator.validate!(input[:relational_database_name], ::String, context: "#{context}[:relational_database_name]")
        Hearth::Validator.validate!(input[:relational_database_snapshot_name], ::String, context: "#{context}[:relational_database_snapshot_name]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateRelationalDatabaseSnapshotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRelationalDatabaseSnapshotOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class DeleteAlarmInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAlarmInput, context: context)
        Hearth::Validator.validate!(input[:alarm_name], ::String, context: "#{context}[:alarm_name]")
      end
    end

    class DeleteAlarmOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAlarmOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class DeleteAutoSnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAutoSnapshotInput, context: context)
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
        Hearth::Validator.validate!(input[:date], ::String, context: "#{context}[:date]")
      end
    end

    class DeleteAutoSnapshotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAutoSnapshotOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class DeleteBucketAccessKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBucketAccessKeyInput, context: context)
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
        Hearth::Validator.validate!(input[:access_key_id], ::String, context: "#{context}[:access_key_id]")
      end
    end

    class DeleteBucketAccessKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBucketAccessKeyOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class DeleteBucketInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBucketInput, context: context)
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
        Hearth::Validator.validate!(input[:force_delete], ::TrueClass, ::FalseClass, context: "#{context}[:force_delete]")
      end
    end

    class DeleteBucketOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBucketOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class DeleteCertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCertificateInput, context: context)
        Hearth::Validator.validate!(input[:certificate_name], ::String, context: "#{context}[:certificate_name]")
      end
    end

    class DeleteCertificateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCertificateOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class DeleteContactMethodInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteContactMethodInput, context: context)
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
      end
    end

    class DeleteContactMethodOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteContactMethodOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class DeleteContainerImageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteContainerImageInput, context: context)
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
        Hearth::Validator.validate!(input[:image], ::String, context: "#{context}[:image]")
      end
    end

    class DeleteContainerImageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteContainerImageOutput, context: context)
      end
    end

    class DeleteContainerServiceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteContainerServiceInput, context: context)
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
      end
    end

    class DeleteContainerServiceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteContainerServiceOutput, context: context)
      end
    end

    class DeleteDiskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDiskInput, context: context)
        Hearth::Validator.validate!(input[:disk_name], ::String, context: "#{context}[:disk_name]")
        Hearth::Validator.validate!(input[:force_delete_add_ons], ::TrueClass, ::FalseClass, context: "#{context}[:force_delete_add_ons]")
      end
    end

    class DeleteDiskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDiskOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class DeleteDiskSnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDiskSnapshotInput, context: context)
        Hearth::Validator.validate!(input[:disk_snapshot_name], ::String, context: "#{context}[:disk_snapshot_name]")
      end
    end

    class DeleteDiskSnapshotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDiskSnapshotOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class DeleteDistributionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDistributionInput, context: context)
        Hearth::Validator.validate!(input[:distribution_name], ::String, context: "#{context}[:distribution_name]")
      end
    end

    class DeleteDistributionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDistributionOutput, context: context)
        Operation.validate!(input[:operation], context: "#{context}[:operation]") unless input[:operation].nil?
      end
    end

    class DeleteDomainEntryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDomainEntryInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        DomainEntry.validate!(input[:domain_entry], context: "#{context}[:domain_entry]") unless input[:domain_entry].nil?
      end
    end

    class DeleteDomainEntryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDomainEntryOutput, context: context)
        Operation.validate!(input[:operation], context: "#{context}[:operation]") unless input[:operation].nil?
      end
    end

    class DeleteDomainInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDomainInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
      end
    end

    class DeleteDomainOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDomainOutput, context: context)
        Operation.validate!(input[:operation], context: "#{context}[:operation]") unless input[:operation].nil?
      end
    end

    class DeleteInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteInstanceInput, context: context)
        Hearth::Validator.validate!(input[:instance_name], ::String, context: "#{context}[:instance_name]")
        Hearth::Validator.validate!(input[:force_delete_add_ons], ::TrueClass, ::FalseClass, context: "#{context}[:force_delete_add_ons]")
      end
    end

    class DeleteInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteInstanceOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class DeleteInstanceSnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteInstanceSnapshotInput, context: context)
        Hearth::Validator.validate!(input[:instance_snapshot_name], ::String, context: "#{context}[:instance_snapshot_name]")
      end
    end

    class DeleteInstanceSnapshotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteInstanceSnapshotOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class DeleteKeyPairInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteKeyPairInput, context: context)
        Hearth::Validator.validate!(input[:key_pair_name], ::String, context: "#{context}[:key_pair_name]")
        Hearth::Validator.validate!(input[:expected_fingerprint], ::String, context: "#{context}[:expected_fingerprint]")
      end
    end

    class DeleteKeyPairOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteKeyPairOutput, context: context)
        Operation.validate!(input[:operation], context: "#{context}[:operation]") unless input[:operation].nil?
      end
    end

    class DeleteKnownHostKeysInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteKnownHostKeysInput, context: context)
        Hearth::Validator.validate!(input[:instance_name], ::String, context: "#{context}[:instance_name]")
      end
    end

    class DeleteKnownHostKeysOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteKnownHostKeysOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class DeleteLoadBalancerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLoadBalancerInput, context: context)
        Hearth::Validator.validate!(input[:load_balancer_name], ::String, context: "#{context}[:load_balancer_name]")
      end
    end

    class DeleteLoadBalancerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLoadBalancerOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class DeleteLoadBalancerTlsCertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLoadBalancerTlsCertificateInput, context: context)
        Hearth::Validator.validate!(input[:load_balancer_name], ::String, context: "#{context}[:load_balancer_name]")
        Hearth::Validator.validate!(input[:certificate_name], ::String, context: "#{context}[:certificate_name]")
        Hearth::Validator.validate!(input[:force], ::TrueClass, ::FalseClass, context: "#{context}[:force]")
      end
    end

    class DeleteLoadBalancerTlsCertificateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLoadBalancerTlsCertificateOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class DeleteRelationalDatabaseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRelationalDatabaseInput, context: context)
        Hearth::Validator.validate!(input[:relational_database_name], ::String, context: "#{context}[:relational_database_name]")
        Hearth::Validator.validate!(input[:skip_final_snapshot], ::TrueClass, ::FalseClass, context: "#{context}[:skip_final_snapshot]")
        Hearth::Validator.validate!(input[:final_relational_database_snapshot_name], ::String, context: "#{context}[:final_relational_database_snapshot_name]")
      end
    end

    class DeleteRelationalDatabaseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRelationalDatabaseOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class DeleteRelationalDatabaseSnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRelationalDatabaseSnapshotInput, context: context)
        Hearth::Validator.validate!(input[:relational_database_snapshot_name], ::String, context: "#{context}[:relational_database_snapshot_name]")
      end
    end

    class DeleteRelationalDatabaseSnapshotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRelationalDatabaseSnapshotOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class DestinationInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DestinationInfo, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:service], ::String, context: "#{context}[:service]")
      end
    end

    class DetachCertificateFromDistributionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetachCertificateFromDistributionInput, context: context)
        Hearth::Validator.validate!(input[:distribution_name], ::String, context: "#{context}[:distribution_name]")
      end
    end

    class DetachCertificateFromDistributionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetachCertificateFromDistributionOutput, context: context)
        Operation.validate!(input[:operation], context: "#{context}[:operation]") unless input[:operation].nil?
      end
    end

    class DetachDiskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetachDiskInput, context: context)
        Hearth::Validator.validate!(input[:disk_name], ::String, context: "#{context}[:disk_name]")
      end
    end

    class DetachDiskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetachDiskOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class DetachInstancesFromLoadBalancerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetachInstancesFromLoadBalancerInput, context: context)
        Hearth::Validator.validate!(input[:load_balancer_name], ::String, context: "#{context}[:load_balancer_name]")
        ResourceNameList.validate!(input[:instance_names], context: "#{context}[:instance_names]") unless input[:instance_names].nil?
      end
    end

    class DetachInstancesFromLoadBalancerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetachInstancesFromLoadBalancerOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class DetachStaticIpInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetachStaticIpInput, context: context)
        Hearth::Validator.validate!(input[:static_ip_name], ::String, context: "#{context}[:static_ip_name]")
      end
    end

    class DetachStaticIpOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetachStaticIpOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class DisableAddOnInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableAddOnInput, context: context)
        Hearth::Validator.validate!(input[:add_on_type], ::String, context: "#{context}[:add_on_type]")
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
      end
    end

    class DisableAddOnOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableAddOnOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class Disk
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Disk, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:support_code], ::String, context: "#{context}[:support_code]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        ResourceLocation.validate!(input[:location], context: "#{context}[:location]") unless input[:location].nil?
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        AddOnList.validate!(input[:add_ons], context: "#{context}[:add_ons]") unless input[:add_ons].nil?
        Hearth::Validator.validate!(input[:size_in_gb], ::Integer, context: "#{context}[:size_in_gb]")
        Hearth::Validator.validate!(input[:is_system_disk], ::TrueClass, ::FalseClass, context: "#{context}[:is_system_disk]")
        Hearth::Validator.validate!(input[:iops], ::Integer, context: "#{context}[:iops]")
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:attached_to], ::String, context: "#{context}[:attached_to]")
        Hearth::Validator.validate!(input[:is_attached], ::TrueClass, ::FalseClass, context: "#{context}[:is_attached]")
        Hearth::Validator.validate!(input[:attachment_state], ::String, context: "#{context}[:attachment_state]")
        Hearth::Validator.validate!(input[:gb_in_use], ::Integer, context: "#{context}[:gb_in_use]")
      end
    end

    class DiskInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DiskInfo, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Hearth::Validator.validate!(input[:size_in_gb], ::Integer, context: "#{context}[:size_in_gb]")
        Hearth::Validator.validate!(input[:is_system_disk], ::TrueClass, ::FalseClass, context: "#{context}[:is_system_disk]")
      end
    end

    class DiskInfoList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DiskInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DiskList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Disk.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DiskMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DiskMap, context: context)
        Hearth::Validator.validate!(input[:original_disk_path], ::String, context: "#{context}[:original_disk_path]")
        Hearth::Validator.validate!(input[:new_disk_name], ::String, context: "#{context}[:new_disk_name]")
      end
    end

    class DiskMapList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DiskMap.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DiskSnapshot
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DiskSnapshot, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:support_code], ::String, context: "#{context}[:support_code]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        ResourceLocation.validate!(input[:location], context: "#{context}[:location]") unless input[:location].nil?
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:size_in_gb], ::Integer, context: "#{context}[:size_in_gb]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:progress], ::String, context: "#{context}[:progress]")
        Hearth::Validator.validate!(input[:from_disk_name], ::String, context: "#{context}[:from_disk_name]")
        Hearth::Validator.validate!(input[:from_disk_arn], ::String, context: "#{context}[:from_disk_arn]")
        Hearth::Validator.validate!(input[:from_instance_name], ::String, context: "#{context}[:from_instance_name]")
        Hearth::Validator.validate!(input[:from_instance_arn], ::String, context: "#{context}[:from_instance_arn]")
        Hearth::Validator.validate!(input[:is_from_auto_snapshot], ::TrueClass, ::FalseClass, context: "#{context}[:is_from_auto_snapshot]")
      end
    end

    class DiskSnapshotInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DiskSnapshotInfo, context: context)
        Hearth::Validator.validate!(input[:size_in_gb], ::Integer, context: "#{context}[:size_in_gb]")
      end
    end

    class DiskSnapshotList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DiskSnapshot.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DistributionBundle
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DistributionBundle, context: context)
        Hearth::Validator.validate!(input[:bundle_id], ::String, context: "#{context}[:bundle_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:price], ::Float, context: "#{context}[:price]")
        Hearth::Validator.validate!(input[:transfer_per_month_in_gb], ::Integer, context: "#{context}[:transfer_per_month_in_gb]")
        Hearth::Validator.validate!(input[:is_active], ::TrueClass, ::FalseClass, context: "#{context}[:is_active]")
      end
    end

    class DistributionBundleList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DistributionBundle.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DistributionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LightsailDistribution.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Domain
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Domain, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:support_code], ::String, context: "#{context}[:support_code]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        ResourceLocation.validate!(input[:location], context: "#{context}[:location]") unless input[:location].nil?
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        DomainEntryList.validate!(input[:domain_entries], context: "#{context}[:domain_entries]") unless input[:domain_entries].nil?
      end
    end

    class DomainEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DomainEntry, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:target], ::String, context: "#{context}[:target]")
        Hearth::Validator.validate!(input[:is_alias], ::TrueClass, ::FalseClass, context: "#{context}[:is_alias]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        DomainEntryOptions.validate!(input[:options], context: "#{context}[:options]") unless input[:options].nil?
      end
    end

    class DomainEntryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DomainEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DomainEntryOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class DomainList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Domain.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DomainNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DomainValidationRecord
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DomainValidationRecord, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        ResourceRecord.validate!(input[:resource_record], context: "#{context}[:resource_record]") unless input[:resource_record].nil?
      end
    end

    class DomainValidationRecordList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DomainValidationRecord.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DownloadDefaultKeyPairInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DownloadDefaultKeyPairInput, context: context)
      end
    end

    class DownloadDefaultKeyPairOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DownloadDefaultKeyPairOutput, context: context)
        Hearth::Validator.validate!(input[:public_key_base64], ::String, context: "#{context}[:public_key_base64]")
        Hearth::Validator.validate!(input[:private_key_base64], ::String, context: "#{context}[:private_key_base64]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
      end
    end

    class EnableAddOnInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableAddOnInput, context: context)
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
        AddOnRequest.validate!(input[:add_on_request], context: "#{context}[:add_on_request]") unless input[:add_on_request].nil?
      end
    end

    class EnableAddOnOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableAddOnOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class EndpointRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EndpointRequest, context: context)
        Hearth::Validator.validate!(input[:container_name], ::String, context: "#{context}[:container_name]")
        Hearth::Validator.validate!(input[:container_port], ::Integer, context: "#{context}[:container_port]")
        ContainerServiceHealthCheckConfig.validate!(input[:health_check], context: "#{context}[:health_check]") unless input[:health_check].nil?
      end
    end

    class Environment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class ExportSnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportSnapshotInput, context: context)
        Hearth::Validator.validate!(input[:source_snapshot_name], ::String, context: "#{context}[:source_snapshot_name]")
      end
    end

    class ExportSnapshotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportSnapshotOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class ExportSnapshotRecord
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportSnapshotRecord, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        ResourceLocation.validate!(input[:location], context: "#{context}[:location]") unless input[:location].nil?
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        ExportSnapshotRecordSourceInfo.validate!(input[:source_info], context: "#{context}[:source_info]") unless input[:source_info].nil?
        DestinationInfo.validate!(input[:destination_info], context: "#{context}[:destination_info]") unless input[:destination_info].nil?
      end
    end

    class ExportSnapshotRecordList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ExportSnapshotRecord.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ExportSnapshotRecordSourceInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportSnapshotRecordSourceInfo, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:from_resource_name], ::String, context: "#{context}[:from_resource_name]")
        Hearth::Validator.validate!(input[:from_resource_arn], ::String, context: "#{context}[:from_resource_arn]")
        InstanceSnapshotInfo.validate!(input[:instance_snapshot_info], context: "#{context}[:instance_snapshot_info]") unless input[:instance_snapshot_info].nil?
        DiskSnapshotInfo.validate!(input[:disk_snapshot_info], context: "#{context}[:disk_snapshot_info]") unless input[:disk_snapshot_info].nil?
      end
    end

    class GetActiveNamesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetActiveNamesInput, context: context)
        Hearth::Validator.validate!(input[:page_token], ::String, context: "#{context}[:page_token]")
      end
    end

    class GetActiveNamesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetActiveNamesOutput, context: context)
        StringList.validate!(input[:active_names], context: "#{context}[:active_names]") unless input[:active_names].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class GetAlarmsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAlarmsInput, context: context)
        Hearth::Validator.validate!(input[:alarm_name], ::String, context: "#{context}[:alarm_name]")
        Hearth::Validator.validate!(input[:page_token], ::String, context: "#{context}[:page_token]")
        Hearth::Validator.validate!(input[:monitored_resource_name], ::String, context: "#{context}[:monitored_resource_name]")
      end
    end

    class GetAlarmsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAlarmsOutput, context: context)
        AlarmsList.validate!(input[:alarms], context: "#{context}[:alarms]") unless input[:alarms].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class GetAutoSnapshotsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAutoSnapshotsInput, context: context)
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
      end
    end

    class GetAutoSnapshotsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAutoSnapshotsOutput, context: context)
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        AutoSnapshotDetailsList.validate!(input[:auto_snapshots], context: "#{context}[:auto_snapshots]") unless input[:auto_snapshots].nil?
      end
    end

    class GetBlueprintsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBlueprintsInput, context: context)
        Hearth::Validator.validate!(input[:include_inactive], ::TrueClass, ::FalseClass, context: "#{context}[:include_inactive]")
        Hearth::Validator.validate!(input[:page_token], ::String, context: "#{context}[:page_token]")
      end
    end

    class GetBlueprintsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBlueprintsOutput, context: context)
        BlueprintList.validate!(input[:blueprints], context: "#{context}[:blueprints]") unless input[:blueprints].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class GetBucketAccessKeysInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketAccessKeysInput, context: context)
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
      end
    end

    class GetBucketAccessKeysOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketAccessKeysOutput, context: context)
        AccessKeyList.validate!(input[:access_keys], context: "#{context}[:access_keys]") unless input[:access_keys].nil?
      end
    end

    class GetBucketBundlesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketBundlesInput, context: context)
        Hearth::Validator.validate!(input[:include_inactive], ::TrueClass, ::FalseClass, context: "#{context}[:include_inactive]")
      end
    end

    class GetBucketBundlesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketBundlesOutput, context: context)
        BucketBundleList.validate!(input[:bundles], context: "#{context}[:bundles]") unless input[:bundles].nil?
      end
    end

    class GetBucketMetricDataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketMetricDataInput, context: context)
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:period], ::Integer, context: "#{context}[:period]")
        MetricStatisticList.validate!(input[:statistics], context: "#{context}[:statistics]") unless input[:statistics].nil?
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
      end
    end

    class GetBucketMetricDataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketMetricDataOutput, context: context)
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        MetricDatapointList.validate!(input[:metric_data], context: "#{context}[:metric_data]") unless input[:metric_data].nil?
      end
    end

    class GetBucketsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketsInput, context: context)
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
        Hearth::Validator.validate!(input[:page_token], ::String, context: "#{context}[:page_token]")
        Hearth::Validator.validate!(input[:include_connected_resources], ::TrueClass, ::FalseClass, context: "#{context}[:include_connected_resources]")
      end
    end

    class GetBucketsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBucketsOutput, context: context)
        BucketList.validate!(input[:buckets], context: "#{context}[:buckets]") unless input[:buckets].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
        AccountLevelBpaSync.validate!(input[:account_level_bpa_sync], context: "#{context}[:account_level_bpa_sync]") unless input[:account_level_bpa_sync].nil?
      end
    end

    class GetBundlesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBundlesInput, context: context)
        Hearth::Validator.validate!(input[:include_inactive], ::TrueClass, ::FalseClass, context: "#{context}[:include_inactive]")
        Hearth::Validator.validate!(input[:page_token], ::String, context: "#{context}[:page_token]")
      end
    end

    class GetBundlesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBundlesOutput, context: context)
        BundleList.validate!(input[:bundles], context: "#{context}[:bundles]") unless input[:bundles].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class GetCertificatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCertificatesInput, context: context)
        CertificateStatusList.validate!(input[:certificate_statuses], context: "#{context}[:certificate_statuses]") unless input[:certificate_statuses].nil?
        Hearth::Validator.validate!(input[:include_certificate_details], ::TrueClass, ::FalseClass, context: "#{context}[:include_certificate_details]")
        Hearth::Validator.validate!(input[:certificate_name], ::String, context: "#{context}[:certificate_name]")
      end
    end

    class GetCertificatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCertificatesOutput, context: context)
        CertificateSummaryList.validate!(input[:certificates], context: "#{context}[:certificates]") unless input[:certificates].nil?
      end
    end

    class GetCloudFormationStackRecordsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCloudFormationStackRecordsInput, context: context)
        Hearth::Validator.validate!(input[:page_token], ::String, context: "#{context}[:page_token]")
      end
    end

    class GetCloudFormationStackRecordsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCloudFormationStackRecordsOutput, context: context)
        CloudFormationStackRecordList.validate!(input[:cloud_formation_stack_records], context: "#{context}[:cloud_formation_stack_records]") unless input[:cloud_formation_stack_records].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class GetContactMethodsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetContactMethodsInput, context: context)
        ContactProtocolsList.validate!(input[:protocols], context: "#{context}[:protocols]") unless input[:protocols].nil?
      end
    end

    class GetContactMethodsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetContactMethodsOutput, context: context)
        ContactMethodsList.validate!(input[:contact_methods], context: "#{context}[:contact_methods]") unless input[:contact_methods].nil?
      end
    end

    class GetContainerAPIMetadataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetContainerAPIMetadataInput, context: context)
      end
    end

    class GetContainerAPIMetadataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetContainerAPIMetadataOutput, context: context)
        ContainerServiceMetadataEntryList.validate!(input[:metadata], context: "#{context}[:metadata]") unless input[:metadata].nil?
      end
    end

    class GetContainerImagesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetContainerImagesInput, context: context)
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
      end
    end

    class GetContainerImagesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetContainerImagesOutput, context: context)
        ContainerImageList.validate!(input[:container_images], context: "#{context}[:container_images]") unless input[:container_images].nil?
      end
    end

    class GetContainerLogInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetContainerLogInput, context: context)
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
        Hearth::Validator.validate!(input[:container_name], ::String, context: "#{context}[:container_name]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:filter_pattern], ::String, context: "#{context}[:filter_pattern]")
        Hearth::Validator.validate!(input[:page_token], ::String, context: "#{context}[:page_token]")
      end
    end

    class GetContainerLogOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetContainerLogOutput, context: context)
        ContainerServiceLogEventList.validate!(input[:log_events], context: "#{context}[:log_events]") unless input[:log_events].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class GetContainerServiceDeploymentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetContainerServiceDeploymentsInput, context: context)
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
      end
    end

    class GetContainerServiceDeploymentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetContainerServiceDeploymentsOutput, context: context)
        ContainerServiceDeploymentList.validate!(input[:deployments], context: "#{context}[:deployments]") unless input[:deployments].nil?
      end
    end

    class GetContainerServiceMetricDataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetContainerServiceMetricDataInput, context: context)
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:period], ::Integer, context: "#{context}[:period]")
        MetricStatisticList.validate!(input[:statistics], context: "#{context}[:statistics]") unless input[:statistics].nil?
      end
    end

    class GetContainerServiceMetricDataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetContainerServiceMetricDataOutput, context: context)
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        MetricDatapointList.validate!(input[:metric_data], context: "#{context}[:metric_data]") unless input[:metric_data].nil?
      end
    end

    class GetContainerServicePowersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetContainerServicePowersInput, context: context)
      end
    end

    class GetContainerServicePowersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetContainerServicePowersOutput, context: context)
        ContainerServicePowerList.validate!(input[:powers], context: "#{context}[:powers]") unless input[:powers].nil?
      end
    end

    class GetContainerServicesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetContainerServicesInput, context: context)
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
      end
    end

    class GetContainerServicesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetContainerServicesOutput, context: context)
        ContainerServiceList.validate!(input[:container_services], context: "#{context}[:container_services]") unless input[:container_services].nil?
      end
    end

    class GetDiskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDiskInput, context: context)
        Hearth::Validator.validate!(input[:disk_name], ::String, context: "#{context}[:disk_name]")
      end
    end

    class GetDiskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDiskOutput, context: context)
        Disk.validate!(input[:disk], context: "#{context}[:disk]") unless input[:disk].nil?
      end
    end

    class GetDiskSnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDiskSnapshotInput, context: context)
        Hearth::Validator.validate!(input[:disk_snapshot_name], ::String, context: "#{context}[:disk_snapshot_name]")
      end
    end

    class GetDiskSnapshotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDiskSnapshotOutput, context: context)
        DiskSnapshot.validate!(input[:disk_snapshot], context: "#{context}[:disk_snapshot]") unless input[:disk_snapshot].nil?
      end
    end

    class GetDiskSnapshotsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDiskSnapshotsInput, context: context)
        Hearth::Validator.validate!(input[:page_token], ::String, context: "#{context}[:page_token]")
      end
    end

    class GetDiskSnapshotsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDiskSnapshotsOutput, context: context)
        DiskSnapshotList.validate!(input[:disk_snapshots], context: "#{context}[:disk_snapshots]") unless input[:disk_snapshots].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class GetDisksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDisksInput, context: context)
        Hearth::Validator.validate!(input[:page_token], ::String, context: "#{context}[:page_token]")
      end
    end

    class GetDisksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDisksOutput, context: context)
        DiskList.validate!(input[:disks], context: "#{context}[:disks]") unless input[:disks].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class GetDistributionBundlesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDistributionBundlesInput, context: context)
      end
    end

    class GetDistributionBundlesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDistributionBundlesOutput, context: context)
        DistributionBundleList.validate!(input[:bundles], context: "#{context}[:bundles]") unless input[:bundles].nil?
      end
    end

    class GetDistributionLatestCacheResetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDistributionLatestCacheResetInput, context: context)
        Hearth::Validator.validate!(input[:distribution_name], ::String, context: "#{context}[:distribution_name]")
      end
    end

    class GetDistributionLatestCacheResetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDistributionLatestCacheResetOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:create_time], ::Time, context: "#{context}[:create_time]")
      end
    end

    class GetDistributionMetricDataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDistributionMetricDataInput, context: context)
        Hearth::Validator.validate!(input[:distribution_name], ::String, context: "#{context}[:distribution_name]")
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:period], ::Integer, context: "#{context}[:period]")
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
        MetricStatisticList.validate!(input[:statistics], context: "#{context}[:statistics]") unless input[:statistics].nil?
      end
    end

    class GetDistributionMetricDataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDistributionMetricDataOutput, context: context)
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        MetricDatapointList.validate!(input[:metric_data], context: "#{context}[:metric_data]") unless input[:metric_data].nil?
      end
    end

    class GetDistributionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDistributionsInput, context: context)
        Hearth::Validator.validate!(input[:distribution_name], ::String, context: "#{context}[:distribution_name]")
        Hearth::Validator.validate!(input[:page_token], ::String, context: "#{context}[:page_token]")
      end
    end

    class GetDistributionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDistributionsOutput, context: context)
        DistributionList.validate!(input[:distributions], context: "#{context}[:distributions]") unless input[:distributions].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class GetDomainInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDomainInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
      end
    end

    class GetDomainOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDomainOutput, context: context)
        Domain.validate!(input[:domain], context: "#{context}[:domain]") unless input[:domain].nil?
      end
    end

    class GetDomainsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDomainsInput, context: context)
        Hearth::Validator.validate!(input[:page_token], ::String, context: "#{context}[:page_token]")
      end
    end

    class GetDomainsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDomainsOutput, context: context)
        DomainList.validate!(input[:domains], context: "#{context}[:domains]") unless input[:domains].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class GetExportSnapshotRecordsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetExportSnapshotRecordsInput, context: context)
        Hearth::Validator.validate!(input[:page_token], ::String, context: "#{context}[:page_token]")
      end
    end

    class GetExportSnapshotRecordsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetExportSnapshotRecordsOutput, context: context)
        ExportSnapshotRecordList.validate!(input[:export_snapshot_records], context: "#{context}[:export_snapshot_records]") unless input[:export_snapshot_records].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class GetInstanceAccessDetailsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInstanceAccessDetailsInput, context: context)
        Hearth::Validator.validate!(input[:instance_name], ::String, context: "#{context}[:instance_name]")
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
      end
    end

    class GetInstanceAccessDetailsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInstanceAccessDetailsOutput, context: context)
        InstanceAccessDetails.validate!(input[:access_details], context: "#{context}[:access_details]") unless input[:access_details].nil?
      end
    end

    class GetInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInstanceInput, context: context)
        Hearth::Validator.validate!(input[:instance_name], ::String, context: "#{context}[:instance_name]")
      end
    end

    class GetInstanceMetricDataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInstanceMetricDataInput, context: context)
        Hearth::Validator.validate!(input[:instance_name], ::String, context: "#{context}[:instance_name]")
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate!(input[:period], ::Integer, context: "#{context}[:period]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
        MetricStatisticList.validate!(input[:statistics], context: "#{context}[:statistics]") unless input[:statistics].nil?
      end
    end

    class GetInstanceMetricDataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInstanceMetricDataOutput, context: context)
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        MetricDatapointList.validate!(input[:metric_data], context: "#{context}[:metric_data]") unless input[:metric_data].nil?
      end
    end

    class GetInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInstanceOutput, context: context)
        Instance.validate!(input[:instance], context: "#{context}[:instance]") unless input[:instance].nil?
      end
    end

    class GetInstancePortStatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInstancePortStatesInput, context: context)
        Hearth::Validator.validate!(input[:instance_name], ::String, context: "#{context}[:instance_name]")
      end
    end

    class GetInstancePortStatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInstancePortStatesOutput, context: context)
        InstancePortStateList.validate!(input[:port_states], context: "#{context}[:port_states]") unless input[:port_states].nil?
      end
    end

    class GetInstanceSnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInstanceSnapshotInput, context: context)
        Hearth::Validator.validate!(input[:instance_snapshot_name], ::String, context: "#{context}[:instance_snapshot_name]")
      end
    end

    class GetInstanceSnapshotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInstanceSnapshotOutput, context: context)
        InstanceSnapshot.validate!(input[:instance_snapshot], context: "#{context}[:instance_snapshot]") unless input[:instance_snapshot].nil?
      end
    end

    class GetInstanceSnapshotsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInstanceSnapshotsInput, context: context)
        Hearth::Validator.validate!(input[:page_token], ::String, context: "#{context}[:page_token]")
      end
    end

    class GetInstanceSnapshotsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInstanceSnapshotsOutput, context: context)
        InstanceSnapshotList.validate!(input[:instance_snapshots], context: "#{context}[:instance_snapshots]") unless input[:instance_snapshots].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class GetInstanceStateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInstanceStateInput, context: context)
        Hearth::Validator.validate!(input[:instance_name], ::String, context: "#{context}[:instance_name]")
      end
    end

    class GetInstanceStateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInstanceStateOutput, context: context)
        InstanceState.validate!(input[:state], context: "#{context}[:state]") unless input[:state].nil?
      end
    end

    class GetInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInstancesInput, context: context)
        Hearth::Validator.validate!(input[:page_token], ::String, context: "#{context}[:page_token]")
      end
    end

    class GetInstancesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInstancesOutput, context: context)
        InstanceList.validate!(input[:instances], context: "#{context}[:instances]") unless input[:instances].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class GetKeyPairInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetKeyPairInput, context: context)
        Hearth::Validator.validate!(input[:key_pair_name], ::String, context: "#{context}[:key_pair_name]")
      end
    end

    class GetKeyPairOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetKeyPairOutput, context: context)
        KeyPair.validate!(input[:key_pair], context: "#{context}[:key_pair]") unless input[:key_pair].nil?
      end
    end

    class GetKeyPairsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetKeyPairsInput, context: context)
        Hearth::Validator.validate!(input[:page_token], ::String, context: "#{context}[:page_token]")
        Hearth::Validator.validate!(input[:include_default_key_pair], ::TrueClass, ::FalseClass, context: "#{context}[:include_default_key_pair]")
      end
    end

    class GetKeyPairsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetKeyPairsOutput, context: context)
        KeyPairList.validate!(input[:key_pairs], context: "#{context}[:key_pairs]") unless input[:key_pairs].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class GetLoadBalancerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLoadBalancerInput, context: context)
        Hearth::Validator.validate!(input[:load_balancer_name], ::String, context: "#{context}[:load_balancer_name]")
      end
    end

    class GetLoadBalancerMetricDataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLoadBalancerMetricDataInput, context: context)
        Hearth::Validator.validate!(input[:load_balancer_name], ::String, context: "#{context}[:load_balancer_name]")
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate!(input[:period], ::Integer, context: "#{context}[:period]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
        MetricStatisticList.validate!(input[:statistics], context: "#{context}[:statistics]") unless input[:statistics].nil?
      end
    end

    class GetLoadBalancerMetricDataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLoadBalancerMetricDataOutput, context: context)
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        MetricDatapointList.validate!(input[:metric_data], context: "#{context}[:metric_data]") unless input[:metric_data].nil?
      end
    end

    class GetLoadBalancerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLoadBalancerOutput, context: context)
        LoadBalancer.validate!(input[:load_balancer], context: "#{context}[:load_balancer]") unless input[:load_balancer].nil?
      end
    end

    class GetLoadBalancerTlsCertificatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLoadBalancerTlsCertificatesInput, context: context)
        Hearth::Validator.validate!(input[:load_balancer_name], ::String, context: "#{context}[:load_balancer_name]")
      end
    end

    class GetLoadBalancerTlsCertificatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLoadBalancerTlsCertificatesOutput, context: context)
        LoadBalancerTlsCertificateList.validate!(input[:tls_certificates], context: "#{context}[:tls_certificates]") unless input[:tls_certificates].nil?
      end
    end

    class GetLoadBalancerTlsPoliciesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLoadBalancerTlsPoliciesInput, context: context)
        Hearth::Validator.validate!(input[:page_token], ::String, context: "#{context}[:page_token]")
      end
    end

    class GetLoadBalancerTlsPoliciesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLoadBalancerTlsPoliciesOutput, context: context)
        LoadBalancerTlsPolicyList.validate!(input[:tls_policies], context: "#{context}[:tls_policies]") unless input[:tls_policies].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class GetLoadBalancersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLoadBalancersInput, context: context)
        Hearth::Validator.validate!(input[:page_token], ::String, context: "#{context}[:page_token]")
      end
    end

    class GetLoadBalancersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLoadBalancersOutput, context: context)
        LoadBalancerList.validate!(input[:load_balancers], context: "#{context}[:load_balancers]") unless input[:load_balancers].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class GetOperationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetOperationInput, context: context)
        Hearth::Validator.validate!(input[:operation_id], ::String, context: "#{context}[:operation_id]")
      end
    end

    class GetOperationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetOperationOutput, context: context)
        Operation.validate!(input[:operation], context: "#{context}[:operation]") unless input[:operation].nil?
      end
    end

    class GetOperationsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetOperationsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
        Hearth::Validator.validate!(input[:page_token], ::String, context: "#{context}[:page_token]")
      end
    end

    class GetOperationsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetOperationsForResourceOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
        Hearth::Validator.validate!(input[:next_page_count], ::String, context: "#{context}[:next_page_count]")
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class GetOperationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetOperationsInput, context: context)
        Hearth::Validator.validate!(input[:page_token], ::String, context: "#{context}[:page_token]")
      end
    end

    class GetOperationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetOperationsOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class GetRegionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRegionsInput, context: context)
        Hearth::Validator.validate!(input[:include_availability_zones], ::TrueClass, ::FalseClass, context: "#{context}[:include_availability_zones]")
        Hearth::Validator.validate!(input[:include_relational_database_availability_zones], ::TrueClass, ::FalseClass, context: "#{context}[:include_relational_database_availability_zones]")
      end
    end

    class GetRegionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRegionsOutput, context: context)
        RegionList.validate!(input[:regions], context: "#{context}[:regions]") unless input[:regions].nil?
      end
    end

    class GetRelationalDatabaseBlueprintsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRelationalDatabaseBlueprintsInput, context: context)
        Hearth::Validator.validate!(input[:page_token], ::String, context: "#{context}[:page_token]")
      end
    end

    class GetRelationalDatabaseBlueprintsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRelationalDatabaseBlueprintsOutput, context: context)
        RelationalDatabaseBlueprintList.validate!(input[:blueprints], context: "#{context}[:blueprints]") unless input[:blueprints].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class GetRelationalDatabaseBundlesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRelationalDatabaseBundlesInput, context: context)
        Hearth::Validator.validate!(input[:page_token], ::String, context: "#{context}[:page_token]")
        Hearth::Validator.validate!(input[:include_inactive], ::TrueClass, ::FalseClass, context: "#{context}[:include_inactive]")
      end
    end

    class GetRelationalDatabaseBundlesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRelationalDatabaseBundlesOutput, context: context)
        RelationalDatabaseBundleList.validate!(input[:bundles], context: "#{context}[:bundles]") unless input[:bundles].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class GetRelationalDatabaseEventsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRelationalDatabaseEventsInput, context: context)
        Hearth::Validator.validate!(input[:relational_database_name], ::String, context: "#{context}[:relational_database_name]")
        Hearth::Validator.validate!(input[:duration_in_minutes], ::Integer, context: "#{context}[:duration_in_minutes]")
        Hearth::Validator.validate!(input[:page_token], ::String, context: "#{context}[:page_token]")
      end
    end

    class GetRelationalDatabaseEventsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRelationalDatabaseEventsOutput, context: context)
        RelationalDatabaseEventList.validate!(input[:relational_database_events], context: "#{context}[:relational_database_events]") unless input[:relational_database_events].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class GetRelationalDatabaseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRelationalDatabaseInput, context: context)
        Hearth::Validator.validate!(input[:relational_database_name], ::String, context: "#{context}[:relational_database_name]")
      end
    end

    class GetRelationalDatabaseLogEventsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRelationalDatabaseLogEventsInput, context: context)
        Hearth::Validator.validate!(input[:relational_database_name], ::String, context: "#{context}[:relational_database_name]")
        Hearth::Validator.validate!(input[:log_stream_name], ::String, context: "#{context}[:log_stream_name]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:start_from_head], ::TrueClass, ::FalseClass, context: "#{context}[:start_from_head]")
        Hearth::Validator.validate!(input[:page_token], ::String, context: "#{context}[:page_token]")
      end
    end

    class GetRelationalDatabaseLogEventsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRelationalDatabaseLogEventsOutput, context: context)
        LogEventList.validate!(input[:resource_log_events], context: "#{context}[:resource_log_events]") unless input[:resource_log_events].nil?
        Hearth::Validator.validate!(input[:next_backward_token], ::String, context: "#{context}[:next_backward_token]")
        Hearth::Validator.validate!(input[:next_forward_token], ::String, context: "#{context}[:next_forward_token]")
      end
    end

    class GetRelationalDatabaseLogStreamsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRelationalDatabaseLogStreamsInput, context: context)
        Hearth::Validator.validate!(input[:relational_database_name], ::String, context: "#{context}[:relational_database_name]")
      end
    end

    class GetRelationalDatabaseLogStreamsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRelationalDatabaseLogStreamsOutput, context: context)
        StringList.validate!(input[:log_streams], context: "#{context}[:log_streams]") unless input[:log_streams].nil?
      end
    end

    class GetRelationalDatabaseMasterUserPasswordInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRelationalDatabaseMasterUserPasswordInput, context: context)
        Hearth::Validator.validate!(input[:relational_database_name], ::String, context: "#{context}[:relational_database_name]")
        Hearth::Validator.validate!(input[:password_version], ::String, context: "#{context}[:password_version]")
      end
    end

    class GetRelationalDatabaseMasterUserPasswordOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRelationalDatabaseMasterUserPasswordOutput, context: context)
        Hearth::Validator.validate!(input[:master_user_password], ::String, context: "#{context}[:master_user_password]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
      end
    end

    class GetRelationalDatabaseMetricDataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRelationalDatabaseMetricDataInput, context: context)
        Hearth::Validator.validate!(input[:relational_database_name], ::String, context: "#{context}[:relational_database_name]")
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate!(input[:period], ::Integer, context: "#{context}[:period]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
        MetricStatisticList.validate!(input[:statistics], context: "#{context}[:statistics]") unless input[:statistics].nil?
      end
    end

    class GetRelationalDatabaseMetricDataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRelationalDatabaseMetricDataOutput, context: context)
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        MetricDatapointList.validate!(input[:metric_data], context: "#{context}[:metric_data]") unless input[:metric_data].nil?
      end
    end

    class GetRelationalDatabaseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRelationalDatabaseOutput, context: context)
        RelationalDatabase.validate!(input[:relational_database], context: "#{context}[:relational_database]") unless input[:relational_database].nil?
      end
    end

    class GetRelationalDatabaseParametersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRelationalDatabaseParametersInput, context: context)
        Hearth::Validator.validate!(input[:relational_database_name], ::String, context: "#{context}[:relational_database_name]")
        Hearth::Validator.validate!(input[:page_token], ::String, context: "#{context}[:page_token]")
      end
    end

    class GetRelationalDatabaseParametersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRelationalDatabaseParametersOutput, context: context)
        RelationalDatabaseParameterList.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class GetRelationalDatabaseSnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRelationalDatabaseSnapshotInput, context: context)
        Hearth::Validator.validate!(input[:relational_database_snapshot_name], ::String, context: "#{context}[:relational_database_snapshot_name]")
      end
    end

    class GetRelationalDatabaseSnapshotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRelationalDatabaseSnapshotOutput, context: context)
        RelationalDatabaseSnapshot.validate!(input[:relational_database_snapshot], context: "#{context}[:relational_database_snapshot]") unless input[:relational_database_snapshot].nil?
      end
    end

    class GetRelationalDatabaseSnapshotsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRelationalDatabaseSnapshotsInput, context: context)
        Hearth::Validator.validate!(input[:page_token], ::String, context: "#{context}[:page_token]")
      end
    end

    class GetRelationalDatabaseSnapshotsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRelationalDatabaseSnapshotsOutput, context: context)
        RelationalDatabaseSnapshotList.validate!(input[:relational_database_snapshots], context: "#{context}[:relational_database_snapshots]") unless input[:relational_database_snapshots].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class GetRelationalDatabasesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRelationalDatabasesInput, context: context)
        Hearth::Validator.validate!(input[:page_token], ::String, context: "#{context}[:page_token]")
      end
    end

    class GetRelationalDatabasesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRelationalDatabasesOutput, context: context)
        RelationalDatabaseList.validate!(input[:relational_databases], context: "#{context}[:relational_databases]") unless input[:relational_databases].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class GetStaticIpInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetStaticIpInput, context: context)
        Hearth::Validator.validate!(input[:static_ip_name], ::String, context: "#{context}[:static_ip_name]")
      end
    end

    class GetStaticIpOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetStaticIpOutput, context: context)
        StaticIp.validate!(input[:static_ip], context: "#{context}[:static_ip]") unless input[:static_ip].nil?
      end
    end

    class GetStaticIpsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetStaticIpsInput, context: context)
        Hearth::Validator.validate!(input[:page_token], ::String, context: "#{context}[:page_token]")
      end
    end

    class GetStaticIpsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetStaticIpsOutput, context: context)
        StaticIpList.validate!(input[:static_ips], context: "#{context}[:static_ips]") unless input[:static_ips].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class HeaderForwardList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class HeaderObject
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HeaderObject, context: context)
        Hearth::Validator.validate!(input[:option], ::String, context: "#{context}[:option]")
        HeaderForwardList.validate!(input[:headers_allow_list], context: "#{context}[:headers_allow_list]") unless input[:headers_allow_list].nil?
      end
    end

    class HostKeyAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HostKeyAttributes, context: context)
        Hearth::Validator.validate!(input[:algorithm], ::String, context: "#{context}[:algorithm]")
        Hearth::Validator.validate!(input[:public_key], ::String, context: "#{context}[:public_key]")
        Hearth::Validator.validate!(input[:witnessed_at], ::Time, context: "#{context}[:witnessed_at]")
        Hearth::Validator.validate!(input[:fingerprint_sha1], ::String, context: "#{context}[:fingerprint_sha1]")
        Hearth::Validator.validate!(input[:fingerprint_sha256], ::String, context: "#{context}[:fingerprint_sha256]")
        Hearth::Validator.validate!(input[:not_valid_before], ::Time, context: "#{context}[:not_valid_before]")
        Hearth::Validator.validate!(input[:not_valid_after], ::Time, context: "#{context}[:not_valid_after]")
      end
    end

    class HostKeysList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          HostKeyAttributes.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ImportKeyPairInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportKeyPairInput, context: context)
        Hearth::Validator.validate!(input[:key_pair_name], ::String, context: "#{context}[:key_pair_name]")
        Hearth::Validator.validate!(input[:public_key_base64], ::String, context: "#{context}[:public_key_base64]")
      end
    end

    class ImportKeyPairOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportKeyPairOutput, context: context)
        Operation.validate!(input[:operation], context: "#{context}[:operation]") unless input[:operation].nil?
      end
    end

    class InputOrigin
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputOrigin, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:region_name], ::String, context: "#{context}[:region_name]")
        Hearth::Validator.validate!(input[:protocol_policy], ::String, context: "#{context}[:protocol_policy]")
      end
    end

    class Instance
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Instance, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:support_code], ::String, context: "#{context}[:support_code]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        ResourceLocation.validate!(input[:location], context: "#{context}[:location]") unless input[:location].nil?
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:blueprint_id], ::String, context: "#{context}[:blueprint_id]")
        Hearth::Validator.validate!(input[:blueprint_name], ::String, context: "#{context}[:blueprint_name]")
        Hearth::Validator.validate!(input[:bundle_id], ::String, context: "#{context}[:bundle_id]")
        AddOnList.validate!(input[:add_ons], context: "#{context}[:add_ons]") unless input[:add_ons].nil?
        Hearth::Validator.validate!(input[:is_static_ip], ::TrueClass, ::FalseClass, context: "#{context}[:is_static_ip]")
        Hearth::Validator.validate!(input[:private_ip_address], ::String, context: "#{context}[:private_ip_address]")
        Hearth::Validator.validate!(input[:public_ip_address], ::String, context: "#{context}[:public_ip_address]")
        Ipv6AddressList.validate!(input[:ipv6_addresses], context: "#{context}[:ipv6_addresses]") unless input[:ipv6_addresses].nil?
        Hearth::Validator.validate!(input[:ip_address_type], ::String, context: "#{context}[:ip_address_type]")
        InstanceHardware.validate!(input[:hardware], context: "#{context}[:hardware]") unless input[:hardware].nil?
        InstanceNetworking.validate!(input[:networking], context: "#{context}[:networking]") unless input[:networking].nil?
        InstanceState.validate!(input[:state], context: "#{context}[:state]") unless input[:state].nil?
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        Hearth::Validator.validate!(input[:ssh_key_name], ::String, context: "#{context}[:ssh_key_name]")
      end
    end

    class InstanceAccessDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceAccessDetails, context: context)
        Hearth::Validator.validate!(input[:cert_key], ::String, context: "#{context}[:cert_key]")
        Hearth::Validator.validate!(input[:expires_at], ::Time, context: "#{context}[:expires_at]")
        Hearth::Validator.validate!(input[:ip_address], ::String, context: "#{context}[:ip_address]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
        PasswordData.validate!(input[:password_data], context: "#{context}[:password_data]") unless input[:password_data].nil?
        Hearth::Validator.validate!(input[:private_key], ::String, context: "#{context}[:private_key]")
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
        Hearth::Validator.validate!(input[:instance_name], ::String, context: "#{context}[:instance_name]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        HostKeysList.validate!(input[:host_keys], context: "#{context}[:host_keys]") unless input[:host_keys].nil?
      end
    end

    class InstanceEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceEntry, context: context)
        Hearth::Validator.validate!(input[:source_name], ::String, context: "#{context}[:source_name]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:port_info_source], ::String, context: "#{context}[:port_info_source]")
        Hearth::Validator.validate!(input[:user_data], ::String, context: "#{context}[:user_data]")
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
      end
    end

    class InstanceEntryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InstanceEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InstanceHardware
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceHardware, context: context)
        Hearth::Validator.validate!(input[:cpu_count], ::Integer, context: "#{context}[:cpu_count]")
        DiskList.validate!(input[:disks], context: "#{context}[:disks]") unless input[:disks].nil?
        Hearth::Validator.validate!(input[:ram_size_in_gb], ::Float, context: "#{context}[:ram_size_in_gb]")
      end
    end

    class InstanceHealthSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceHealthSummary, context: context)
        Hearth::Validator.validate!(input[:instance_name], ::String, context: "#{context}[:instance_name]")
        Hearth::Validator.validate!(input[:instance_health], ::String, context: "#{context}[:instance_health]")
        Hearth::Validator.validate!(input[:instance_health_reason], ::String, context: "#{context}[:instance_health_reason]")
      end
    end

    class InstanceHealthSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InstanceHealthSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InstanceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Instance.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InstanceNetworking
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceNetworking, context: context)
        MonthlyTransfer.validate!(input[:monthly_transfer], context: "#{context}[:monthly_transfer]") unless input[:monthly_transfer].nil?
        InstancePortInfoList.validate!(input[:ports], context: "#{context}[:ports]") unless input[:ports].nil?
      end
    end

    class InstancePlatformList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InstancePortInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstancePortInfo, context: context)
        Hearth::Validator.validate!(input[:from_port], ::Integer, context: "#{context}[:from_port]")
        Hearth::Validator.validate!(input[:to_port], ::Integer, context: "#{context}[:to_port]")
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
        Hearth::Validator.validate!(input[:access_from], ::String, context: "#{context}[:access_from]")
        Hearth::Validator.validate!(input[:access_type], ::String, context: "#{context}[:access_type]")
        Hearth::Validator.validate!(input[:common_name], ::String, context: "#{context}[:common_name]")
        Hearth::Validator.validate!(input[:access_direction], ::String, context: "#{context}[:access_direction]")
        StringList.validate!(input[:cidrs], context: "#{context}[:cidrs]") unless input[:cidrs].nil?
        StringList.validate!(input[:ipv6_cidrs], context: "#{context}[:ipv6_cidrs]") unless input[:ipv6_cidrs].nil?
        StringList.validate!(input[:cidr_list_aliases], context: "#{context}[:cidr_list_aliases]") unless input[:cidr_list_aliases].nil?
      end
    end

    class InstancePortInfoList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InstancePortInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InstancePortState
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstancePortState, context: context)
        Hearth::Validator.validate!(input[:from_port], ::Integer, context: "#{context}[:from_port]")
        Hearth::Validator.validate!(input[:to_port], ::Integer, context: "#{context}[:to_port]")
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        StringList.validate!(input[:cidrs], context: "#{context}[:cidrs]") unless input[:cidrs].nil?
        StringList.validate!(input[:ipv6_cidrs], context: "#{context}[:ipv6_cidrs]") unless input[:ipv6_cidrs].nil?
        StringList.validate!(input[:cidr_list_aliases], context: "#{context}[:cidr_list_aliases]") unless input[:cidr_list_aliases].nil?
      end
    end

    class InstancePortStateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InstancePortState.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InstanceSnapshot
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceSnapshot, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:support_code], ::String, context: "#{context}[:support_code]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        ResourceLocation.validate!(input[:location], context: "#{context}[:location]") unless input[:location].nil?
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:progress], ::String, context: "#{context}[:progress]")
        DiskList.validate!(input[:from_attached_disks], context: "#{context}[:from_attached_disks]") unless input[:from_attached_disks].nil?
        Hearth::Validator.validate!(input[:from_instance_name], ::String, context: "#{context}[:from_instance_name]")
        Hearth::Validator.validate!(input[:from_instance_arn], ::String, context: "#{context}[:from_instance_arn]")
        Hearth::Validator.validate!(input[:from_blueprint_id], ::String, context: "#{context}[:from_blueprint_id]")
        Hearth::Validator.validate!(input[:from_bundle_id], ::String, context: "#{context}[:from_bundle_id]")
        Hearth::Validator.validate!(input[:is_from_auto_snapshot], ::TrueClass, ::FalseClass, context: "#{context}[:is_from_auto_snapshot]")
        Hearth::Validator.validate!(input[:size_in_gb], ::Integer, context: "#{context}[:size_in_gb]")
      end
    end

    class InstanceSnapshotInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceSnapshotInfo, context: context)
        Hearth::Validator.validate!(input[:from_bundle_id], ::String, context: "#{context}[:from_bundle_id]")
        Hearth::Validator.validate!(input[:from_blueprint_id], ::String, context: "#{context}[:from_blueprint_id]")
        DiskInfoList.validate!(input[:from_disk_info], context: "#{context}[:from_disk_info]") unless input[:from_disk_info].nil?
      end
    end

    class InstanceSnapshotList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InstanceSnapshot.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InstanceState
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceState, context: context)
        Hearth::Validator.validate!(input[:code], ::Integer, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class InvalidInputException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidInputException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:docs], ::String, context: "#{context}[:docs]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:tip], ::String, context: "#{context}[:tip]")
      end
    end

    class Ipv6AddressList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class IsVpcPeeredInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IsVpcPeeredInput, context: context)
      end
    end

    class IsVpcPeeredOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IsVpcPeeredOutput, context: context)
        Hearth::Validator.validate!(input[:is_peered], ::TrueClass, ::FalseClass, context: "#{context}[:is_peered]")
      end
    end

    class KeyPair
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KeyPair, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:support_code], ::String, context: "#{context}[:support_code]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        ResourceLocation.validate!(input[:location], context: "#{context}[:location]") unless input[:location].nil?
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:fingerprint], ::String, context: "#{context}[:fingerprint]")
      end
    end

    class KeyPairList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          KeyPair.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LightsailDistribution
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LightsailDistribution, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:support_code], ::String, context: "#{context}[:support_code]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        ResourceLocation.validate!(input[:location], context: "#{context}[:location]") unless input[:location].nil?
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        StringList.validate!(input[:alternative_domain_names], context: "#{context}[:alternative_domain_names]") unless input[:alternative_domain_names].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:is_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:is_enabled]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:bundle_id], ::String, context: "#{context}[:bundle_id]")
        Hearth::Validator.validate!(input[:certificate_name], ::String, context: "#{context}[:certificate_name]")
        Origin.validate!(input[:origin], context: "#{context}[:origin]") unless input[:origin].nil?
        Hearth::Validator.validate!(input[:origin_public_dns], ::String, context: "#{context}[:origin_public_dns]")
        CacheBehavior.validate!(input[:default_cache_behavior], context: "#{context}[:default_cache_behavior]") unless input[:default_cache_behavior].nil?
        CacheSettings.validate!(input[:cache_behavior_settings], context: "#{context}[:cache_behavior_settings]") unless input[:cache_behavior_settings].nil?
        CacheBehaviorList.validate!(input[:cache_behaviors], context: "#{context}[:cache_behaviors]") unless input[:cache_behaviors].nil?
        Hearth::Validator.validate!(input[:able_to_update_bundle], ::TrueClass, ::FalseClass, context: "#{context}[:able_to_update_bundle]")
        Hearth::Validator.validate!(input[:ip_address_type], ::String, context: "#{context}[:ip_address_type]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class LoadBalancer
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoadBalancer, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:support_code], ::String, context: "#{context}[:support_code]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        ResourceLocation.validate!(input[:location], context: "#{context}[:location]") unless input[:location].nil?
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:dns_name], ::String, context: "#{context}[:dns_name]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
        PortList.validate!(input[:public_ports], context: "#{context}[:public_ports]") unless input[:public_ports].nil?
        Hearth::Validator.validate!(input[:health_check_path], ::String, context: "#{context}[:health_check_path]")
        Hearth::Validator.validate!(input[:instance_port], ::Integer, context: "#{context}[:instance_port]")
        InstanceHealthSummaryList.validate!(input[:instance_health_summary], context: "#{context}[:instance_health_summary]") unless input[:instance_health_summary].nil?
        LoadBalancerTlsCertificateSummaryList.validate!(input[:tls_certificate_summaries], context: "#{context}[:tls_certificate_summaries]") unless input[:tls_certificate_summaries].nil?
        LoadBalancerConfigurationOptions.validate!(input[:configuration_options], context: "#{context}[:configuration_options]") unless input[:configuration_options].nil?
        Hearth::Validator.validate!(input[:ip_address_type], ::String, context: "#{context}[:ip_address_type]")
        Hearth::Validator.validate!(input[:https_redirection_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:https_redirection_enabled]")
        Hearth::Validator.validate!(input[:tls_policy_name], ::String, context: "#{context}[:tls_policy_name]")
      end
    end

    class LoadBalancerConfigurationOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class LoadBalancerList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LoadBalancer.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LoadBalancerTlsCertificate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoadBalancerTlsCertificate, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:support_code], ::String, context: "#{context}[:support_code]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        ResourceLocation.validate!(input[:location], context: "#{context}[:location]") unless input[:location].nil?
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:load_balancer_name], ::String, context: "#{context}[:load_balancer_name]")
        Hearth::Validator.validate!(input[:is_attached], ::TrueClass, ::FalseClass, context: "#{context}[:is_attached]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        LoadBalancerTlsCertificateDomainValidationRecordList.validate!(input[:domain_validation_records], context: "#{context}[:domain_validation_records]") unless input[:domain_validation_records].nil?
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:issued_at], ::Time, context: "#{context}[:issued_at]")
        Hearth::Validator.validate!(input[:issuer], ::String, context: "#{context}[:issuer]")
        Hearth::Validator.validate!(input[:key_algorithm], ::String, context: "#{context}[:key_algorithm]")
        Hearth::Validator.validate!(input[:not_after], ::Time, context: "#{context}[:not_after]")
        Hearth::Validator.validate!(input[:not_before], ::Time, context: "#{context}[:not_before]")
        LoadBalancerTlsCertificateRenewalSummary.validate!(input[:renewal_summary], context: "#{context}[:renewal_summary]") unless input[:renewal_summary].nil?
        Hearth::Validator.validate!(input[:revocation_reason], ::String, context: "#{context}[:revocation_reason]")
        Hearth::Validator.validate!(input[:revoked_at], ::Time, context: "#{context}[:revoked_at]")
        Hearth::Validator.validate!(input[:serial], ::String, context: "#{context}[:serial]")
        Hearth::Validator.validate!(input[:signature_algorithm], ::String, context: "#{context}[:signature_algorithm]")
        Hearth::Validator.validate!(input[:subject], ::String, context: "#{context}[:subject]")
        StringList.validate!(input[:subject_alternative_names], context: "#{context}[:subject_alternative_names]") unless input[:subject_alternative_names].nil?
      end
    end

    class LoadBalancerTlsCertificateDomainValidationOption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoadBalancerTlsCertificateDomainValidationOption, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:validation_status], ::String, context: "#{context}[:validation_status]")
      end
    end

    class LoadBalancerTlsCertificateDomainValidationOptionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LoadBalancerTlsCertificateDomainValidationOption.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LoadBalancerTlsCertificateDomainValidationRecord
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoadBalancerTlsCertificateDomainValidationRecord, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:validation_status], ::String, context: "#{context}[:validation_status]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
      end
    end

    class LoadBalancerTlsCertificateDomainValidationRecordList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LoadBalancerTlsCertificateDomainValidationRecord.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LoadBalancerTlsCertificateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LoadBalancerTlsCertificate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LoadBalancerTlsCertificateRenewalSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoadBalancerTlsCertificateRenewalSummary, context: context)
        Hearth::Validator.validate!(input[:renewal_status], ::String, context: "#{context}[:renewal_status]")
        LoadBalancerTlsCertificateDomainValidationOptionList.validate!(input[:domain_validation_options], context: "#{context}[:domain_validation_options]") unless input[:domain_validation_options].nil?
      end
    end

    class LoadBalancerTlsCertificateSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoadBalancerTlsCertificateSummary, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:is_attached], ::TrueClass, ::FalseClass, context: "#{context}[:is_attached]")
      end
    end

    class LoadBalancerTlsCertificateSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LoadBalancerTlsCertificateSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LoadBalancerTlsPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoadBalancerTlsPolicy, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:is_default], ::TrueClass, ::FalseClass, context: "#{context}[:is_default]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        StringList.validate!(input[:protocols], context: "#{context}[:protocols]") unless input[:protocols].nil?
        StringList.validate!(input[:ciphers], context: "#{context}[:ciphers]") unless input[:ciphers].nil?
      end
    end

    class LoadBalancerTlsPolicyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LoadBalancerTlsPolicy.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LogEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LogEvent, context: context)
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LogEventList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LogEvent.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MetricDatapoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetricDatapoint, context: context)
        Hearth::Validator.validate!(input[:average], ::Float, context: "#{context}[:average]")
        Hearth::Validator.validate!(input[:maximum], ::Float, context: "#{context}[:maximum]")
        Hearth::Validator.validate!(input[:minimum], ::Float, context: "#{context}[:minimum]")
        Hearth::Validator.validate!(input[:sample_count], ::Float, context: "#{context}[:sample_count]")
        Hearth::Validator.validate!(input[:sum], ::Float, context: "#{context}[:sum]")
        Hearth::Validator.validate!(input[:timestamp], ::Time, context: "#{context}[:timestamp]")
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
      end
    end

    class MetricDatapointList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MetricDatapoint.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MetricStatisticList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class MonitoredResourceInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MonitoredResourceInfo, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class MonthlyTransfer
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MonthlyTransfer, context: context)
        Hearth::Validator.validate!(input[:gb_per_month_allocated], ::Integer, context: "#{context}[:gb_per_month_allocated]")
      end
    end

    class NotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotFoundException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:docs], ::String, context: "#{context}[:docs]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:tip], ::String, context: "#{context}[:tip]")
      end
    end

    class NotificationTriggerList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class OpenInstancePublicPortsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OpenInstancePublicPortsInput, context: context)
        PortInfo.validate!(input[:port_info], context: "#{context}[:port_info]") unless input[:port_info].nil?
        Hearth::Validator.validate!(input[:instance_name], ::String, context: "#{context}[:instance_name]")
      end
    end

    class OpenInstancePublicPortsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OpenInstancePublicPortsOutput, context: context)
        Operation.validate!(input[:operation], context: "#{context}[:operation]") unless input[:operation].nil?
      end
    end

    class Operation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Operation, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        ResourceLocation.validate!(input[:location], context: "#{context}[:location]") unless input[:location].nil?
        Hearth::Validator.validate!(input[:is_terminal], ::TrueClass, ::FalseClass, context: "#{context}[:is_terminal]")
        Hearth::Validator.validate!(input[:operation_details], ::String, context: "#{context}[:operation_details]")
        Hearth::Validator.validate!(input[:operation_type], ::String, context: "#{context}[:operation_type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_changed_at], ::Time, context: "#{context}[:status_changed_at]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_details], ::String, context: "#{context}[:error_details]")
      end
    end

    class OperationFailureException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OperationFailureException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:docs], ::String, context: "#{context}[:docs]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:tip], ::String, context: "#{context}[:tip]")
      end
    end

    class OperationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Operation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Origin
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Origin, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:region_name], ::String, context: "#{context}[:region_name]")
        Hearth::Validator.validate!(input[:protocol_policy], ::String, context: "#{context}[:protocol_policy]")
      end
    end

    class PartnerIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PasswordData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PasswordData, context: context)
        Hearth::Validator.validate!(input[:ciphertext], ::String, context: "#{context}[:ciphertext]")
        Hearth::Validator.validate!(input[:key_pair_name], ::String, context: "#{context}[:key_pair_name]")
      end
    end

    class PeerVpcInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PeerVpcInput, context: context)
      end
    end

    class PeerVpcOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PeerVpcOutput, context: context)
        Operation.validate!(input[:operation], context: "#{context}[:operation]") unless input[:operation].nil?
      end
    end

    class PendingMaintenanceAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PendingMaintenanceAction, context: context)
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:current_apply_date], ::Time, context: "#{context}[:current_apply_date]")
      end
    end

    class PendingMaintenanceActionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PendingMaintenanceAction.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PendingModifiedRelationalDatabaseValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PendingModifiedRelationalDatabaseValues, context: context)
        Hearth::Validator.validate!(input[:master_user_password], ::String, context: "#{context}[:master_user_password]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:backup_retention_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:backup_retention_enabled]")
      end
    end

    class PortInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PortInfo, context: context)
        Hearth::Validator.validate!(input[:from_port], ::Integer, context: "#{context}[:from_port]")
        Hearth::Validator.validate!(input[:to_port], ::Integer, context: "#{context}[:to_port]")
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
        StringList.validate!(input[:cidrs], context: "#{context}[:cidrs]") unless input[:cidrs].nil?
        StringList.validate!(input[:ipv6_cidrs], context: "#{context}[:ipv6_cidrs]") unless input[:ipv6_cidrs].nil?
        StringList.validate!(input[:cidr_list_aliases], context: "#{context}[:cidr_list_aliases]") unless input[:cidr_list_aliases].nil?
      end
    end

    class PortInfoList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PortInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PortList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Integer, context: "#{context}[#{index}]")
        end
      end
    end

    class PortMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class PrivateRegistryAccess
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PrivateRegistryAccess, context: context)
        ContainerServiceECRImagePullerRole.validate!(input[:ecr_image_puller_role], context: "#{context}[:ecr_image_puller_role]") unless input[:ecr_image_puller_role].nil?
      end
    end

    class PrivateRegistryAccessRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PrivateRegistryAccessRequest, context: context)
        ContainerServiceECRImagePullerRoleRequest.validate!(input[:ecr_image_puller_role], context: "#{context}[:ecr_image_puller_role]") unless input[:ecr_image_puller_role].nil?
      end
    end

    class PutAlarmInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAlarmInput, context: context)
        Hearth::Validator.validate!(input[:alarm_name], ::String, context: "#{context}[:alarm_name]")
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate!(input[:monitored_resource_name], ::String, context: "#{context}[:monitored_resource_name]")
        Hearth::Validator.validate!(input[:comparison_operator], ::String, context: "#{context}[:comparison_operator]")
        Hearth::Validator.validate!(input[:threshold], ::Float, context: "#{context}[:threshold]")
        Hearth::Validator.validate!(input[:evaluation_periods], ::Integer, context: "#{context}[:evaluation_periods]")
        Hearth::Validator.validate!(input[:datapoints_to_alarm], ::Integer, context: "#{context}[:datapoints_to_alarm]")
        Hearth::Validator.validate!(input[:treat_missing_data], ::String, context: "#{context}[:treat_missing_data]")
        ContactProtocolsList.validate!(input[:contact_protocols], context: "#{context}[:contact_protocols]") unless input[:contact_protocols].nil?
        NotificationTriggerList.validate!(input[:notification_triggers], context: "#{context}[:notification_triggers]") unless input[:notification_triggers].nil?
        Hearth::Validator.validate!(input[:notification_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:notification_enabled]")
      end
    end

    class PutAlarmOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAlarmOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class PutInstancePublicPortsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutInstancePublicPortsInput, context: context)
        PortInfoList.validate!(input[:port_infos], context: "#{context}[:port_infos]") unless input[:port_infos].nil?
        Hearth::Validator.validate!(input[:instance_name], ::String, context: "#{context}[:instance_name]")
      end
    end

    class PutInstancePublicPortsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutInstancePublicPortsOutput, context: context)
        Operation.validate!(input[:operation], context: "#{context}[:operation]") unless input[:operation].nil?
      end
    end

    class QueryStringObject
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueryStringObject, context: context)
        Hearth::Validator.validate!(input[:option], ::TrueClass, ::FalseClass, context: "#{context}[:option]")
        StringList.validate!(input[:query_strings_allow_list], context: "#{context}[:query_strings_allow_list]") unless input[:query_strings_allow_list].nil?
      end
    end

    class RebootInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RebootInstanceInput, context: context)
        Hearth::Validator.validate!(input[:instance_name], ::String, context: "#{context}[:instance_name]")
      end
    end

    class RebootInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RebootInstanceOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class RebootRelationalDatabaseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RebootRelationalDatabaseInput, context: context)
        Hearth::Validator.validate!(input[:relational_database_name], ::String, context: "#{context}[:relational_database_name]")
      end
    end

    class RebootRelationalDatabaseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RebootRelationalDatabaseOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class Region
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Region, context: context)
        Hearth::Validator.validate!(input[:continent_code], ::String, context: "#{context}[:continent_code]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        AvailabilityZoneList.validate!(input[:availability_zones], context: "#{context}[:availability_zones]") unless input[:availability_zones].nil?
        AvailabilityZoneList.validate!(input[:relational_database_availability_zones], context: "#{context}[:relational_database_availability_zones]") unless input[:relational_database_availability_zones].nil?
      end
    end

    class RegionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Region.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RegisterContainerImageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterContainerImageInput, context: context)
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
        Hearth::Validator.validate!(input[:label], ::String, context: "#{context}[:label]")
        Hearth::Validator.validate!(input[:digest], ::String, context: "#{context}[:digest]")
      end
    end

    class RegisterContainerImageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterContainerImageOutput, context: context)
        ContainerImage.validate!(input[:container_image], context: "#{context}[:container_image]") unless input[:container_image].nil?
      end
    end

    class RelationalDatabase
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RelationalDatabase, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:support_code], ::String, context: "#{context}[:support_code]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        ResourceLocation.validate!(input[:location], context: "#{context}[:location]") unless input[:location].nil?
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:relational_database_blueprint_id], ::String, context: "#{context}[:relational_database_blueprint_id]")
        Hearth::Validator.validate!(input[:relational_database_bundle_id], ::String, context: "#{context}[:relational_database_bundle_id]")
        Hearth::Validator.validate!(input[:master_database_name], ::String, context: "#{context}[:master_database_name]")
        RelationalDatabaseHardware.validate!(input[:hardware], context: "#{context}[:hardware]") unless input[:hardware].nil?
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:secondary_availability_zone], ::String, context: "#{context}[:secondary_availability_zone]")
        Hearth::Validator.validate!(input[:backup_retention_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:backup_retention_enabled]")
        PendingModifiedRelationalDatabaseValues.validate!(input[:pending_modified_values], context: "#{context}[:pending_modified_values]") unless input[:pending_modified_values].nil?
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:latest_restorable_time], ::Time, context: "#{context}[:latest_restorable_time]")
        Hearth::Validator.validate!(input[:master_username], ::String, context: "#{context}[:master_username]")
        Hearth::Validator.validate!(input[:parameter_apply_status], ::String, context: "#{context}[:parameter_apply_status]")
        Hearth::Validator.validate!(input[:preferred_backup_window], ::String, context: "#{context}[:preferred_backup_window]")
        Hearth::Validator.validate!(input[:preferred_maintenance_window], ::String, context: "#{context}[:preferred_maintenance_window]")
        Hearth::Validator.validate!(input[:publicly_accessible], ::TrueClass, ::FalseClass, context: "#{context}[:publicly_accessible]")
        RelationalDatabaseEndpoint.validate!(input[:master_endpoint], context: "#{context}[:master_endpoint]") unless input[:master_endpoint].nil?
        PendingMaintenanceActionList.validate!(input[:pending_maintenance_actions], context: "#{context}[:pending_maintenance_actions]") unless input[:pending_maintenance_actions].nil?
        Hearth::Validator.validate!(input[:ca_certificate_identifier], ::String, context: "#{context}[:ca_certificate_identifier]")
      end
    end

    class RelationalDatabaseBlueprint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RelationalDatabaseBlueprint, context: context)
        Hearth::Validator.validate!(input[:blueprint_id], ::String, context: "#{context}[:blueprint_id]")
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:engine_description], ::String, context: "#{context}[:engine_description]")
        Hearth::Validator.validate!(input[:engine_version_description], ::String, context: "#{context}[:engine_version_description]")
        Hearth::Validator.validate!(input[:is_engine_default], ::TrueClass, ::FalseClass, context: "#{context}[:is_engine_default]")
      end
    end

    class RelationalDatabaseBlueprintList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RelationalDatabaseBlueprint.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RelationalDatabaseBundle
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RelationalDatabaseBundle, context: context)
        Hearth::Validator.validate!(input[:bundle_id], ::String, context: "#{context}[:bundle_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:price], ::Float, context: "#{context}[:price]")
        Hearth::Validator.validate!(input[:ram_size_in_gb], ::Float, context: "#{context}[:ram_size_in_gb]")
        Hearth::Validator.validate!(input[:disk_size_in_gb], ::Integer, context: "#{context}[:disk_size_in_gb]")
        Hearth::Validator.validate!(input[:transfer_per_month_in_gb], ::Integer, context: "#{context}[:transfer_per_month_in_gb]")
        Hearth::Validator.validate!(input[:cpu_count], ::Integer, context: "#{context}[:cpu_count]")
        Hearth::Validator.validate!(input[:is_encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:is_encrypted]")
        Hearth::Validator.validate!(input[:is_active], ::TrueClass, ::FalseClass, context: "#{context}[:is_active]")
      end
    end

    class RelationalDatabaseBundleList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RelationalDatabaseBundle.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RelationalDatabaseEndpoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RelationalDatabaseEndpoint, context: context)
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:address], ::String, context: "#{context}[:address]")
      end
    end

    class RelationalDatabaseEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RelationalDatabaseEvent, context: context)
        Hearth::Validator.validate!(input[:resource], ::String, context: "#{context}[:resource]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        StringList.validate!(input[:event_categories], context: "#{context}[:event_categories]") unless input[:event_categories].nil?
      end
    end

    class RelationalDatabaseEventList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RelationalDatabaseEvent.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RelationalDatabaseHardware
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RelationalDatabaseHardware, context: context)
        Hearth::Validator.validate!(input[:cpu_count], ::Integer, context: "#{context}[:cpu_count]")
        Hearth::Validator.validate!(input[:disk_size_in_gb], ::Integer, context: "#{context}[:disk_size_in_gb]")
        Hearth::Validator.validate!(input[:ram_size_in_gb], ::Float, context: "#{context}[:ram_size_in_gb]")
      end
    end

    class RelationalDatabaseList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RelationalDatabase.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RelationalDatabaseParameter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RelationalDatabaseParameter, context: context)
        Hearth::Validator.validate!(input[:allowed_values], ::String, context: "#{context}[:allowed_values]")
        Hearth::Validator.validate!(input[:apply_method], ::String, context: "#{context}[:apply_method]")
        Hearth::Validator.validate!(input[:apply_type], ::String, context: "#{context}[:apply_type]")
        Hearth::Validator.validate!(input[:data_type], ::String, context: "#{context}[:data_type]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:is_modifiable], ::TrueClass, ::FalseClass, context: "#{context}[:is_modifiable]")
        Hearth::Validator.validate!(input[:parameter_name], ::String, context: "#{context}[:parameter_name]")
        Hearth::Validator.validate!(input[:parameter_value], ::String, context: "#{context}[:parameter_value]")
      end
    end

    class RelationalDatabaseParameterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RelationalDatabaseParameter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RelationalDatabaseSnapshot
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RelationalDatabaseSnapshot, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:support_code], ::String, context: "#{context}[:support_code]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        ResourceLocation.validate!(input[:location], context: "#{context}[:location]") unless input[:location].nil?
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:size_in_gb], ::Integer, context: "#{context}[:size_in_gb]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:from_relational_database_name], ::String, context: "#{context}[:from_relational_database_name]")
        Hearth::Validator.validate!(input[:from_relational_database_arn], ::String, context: "#{context}[:from_relational_database_arn]")
        Hearth::Validator.validate!(input[:from_relational_database_bundle_id], ::String, context: "#{context}[:from_relational_database_bundle_id]")
        Hearth::Validator.validate!(input[:from_relational_database_blueprint_id], ::String, context: "#{context}[:from_relational_database_blueprint_id]")
      end
    end

    class RelationalDatabaseSnapshotList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RelationalDatabaseSnapshot.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReleaseStaticIpInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReleaseStaticIpInput, context: context)
        Hearth::Validator.validate!(input[:static_ip_name], ::String, context: "#{context}[:static_ip_name]")
      end
    end

    class ReleaseStaticIpOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReleaseStaticIpOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class RenewalSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RenewalSummary, context: context)
        DomainValidationRecordList.validate!(input[:domain_validation_records], context: "#{context}[:domain_validation_records]") unless input[:domain_validation_records].nil?
        Hearth::Validator.validate!(input[:renewal_status], ::String, context: "#{context}[:renewal_status]")
        Hearth::Validator.validate!(input[:renewal_status_reason], ::String, context: "#{context}[:renewal_status_reason]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
      end
    end

    class ResetDistributionCacheInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResetDistributionCacheInput, context: context)
        Hearth::Validator.validate!(input[:distribution_name], ::String, context: "#{context}[:distribution_name]")
      end
    end

    class ResetDistributionCacheOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResetDistributionCacheOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:create_time], ::Time, context: "#{context}[:create_time]")
        Operation.validate!(input[:operation], context: "#{context}[:operation]") unless input[:operation].nil?
      end
    end

    class ResourceLocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceLocation, context: context)
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:region_name], ::String, context: "#{context}[:region_name]")
      end
    end

    class ResourceNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ResourceReceivingAccess
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceReceivingAccess, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class ResourceRecord
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceRecord, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class SendContactMethodVerificationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendContactMethodVerificationInput, context: context)
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
      end
    end

    class SendContactMethodVerificationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendContactMethodVerificationOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class ServiceException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:docs], ::String, context: "#{context}[:docs]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:tip], ::String, context: "#{context}[:tip]")
      end
    end

    class SetIpAddressTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetIpAddressTypeInput, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
        Hearth::Validator.validate!(input[:ip_address_type], ::String, context: "#{context}[:ip_address_type]")
      end
    end

    class SetIpAddressTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetIpAddressTypeOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class SetResourceAccessForBucketInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetResourceAccessForBucketInput, context: context)
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
        Hearth::Validator.validate!(input[:access], ::String, context: "#{context}[:access]")
      end
    end

    class SetResourceAccessForBucketOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetResourceAccessForBucketOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class StartInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartInstanceInput, context: context)
        Hearth::Validator.validate!(input[:instance_name], ::String, context: "#{context}[:instance_name]")
      end
    end

    class StartInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartInstanceOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class StartRelationalDatabaseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartRelationalDatabaseInput, context: context)
        Hearth::Validator.validate!(input[:relational_database_name], ::String, context: "#{context}[:relational_database_name]")
      end
    end

    class StartRelationalDatabaseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartRelationalDatabaseOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class StaticIp
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StaticIp, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:support_code], ::String, context: "#{context}[:support_code]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        ResourceLocation.validate!(input[:location], context: "#{context}[:location]") unless input[:location].nil?
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:ip_address], ::String, context: "#{context}[:ip_address]")
        Hearth::Validator.validate!(input[:attached_to], ::String, context: "#{context}[:attached_to]")
        Hearth::Validator.validate!(input[:is_attached], ::TrueClass, ::FalseClass, context: "#{context}[:is_attached]")
      end
    end

    class StaticIpList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          StaticIp.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StopInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopInstanceInput, context: context)
        Hearth::Validator.validate!(input[:instance_name], ::String, context: "#{context}[:instance_name]")
        Hearth::Validator.validate!(input[:force], ::TrueClass, ::FalseClass, context: "#{context}[:force]")
      end
    end

    class StopInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopInstanceOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class StopRelationalDatabaseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopRelationalDatabaseInput, context: context)
        Hearth::Validator.validate!(input[:relational_database_name], ::String, context: "#{context}[:relational_database_name]")
        Hearth::Validator.validate!(input[:relational_database_snapshot_name], ::String, context: "#{context}[:relational_database_snapshot_name]")
      end
    end

    class StopRelationalDatabaseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopRelationalDatabaseOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class StringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SubjectAlternativeNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class TestAlarmInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestAlarmInput, context: context)
        Hearth::Validator.validate!(input[:alarm_name], ::String, context: "#{context}[:alarm_name]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class TestAlarmOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestAlarmOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class UnauthenticatedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnauthenticatedException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:docs], ::String, context: "#{context}[:docs]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:tip], ::String, context: "#{context}[:tip]")
      end
    end

    class UnpeerVpcInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnpeerVpcInput, context: context)
      end
    end

    class UnpeerVpcOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnpeerVpcOutput, context: context)
        Operation.validate!(input[:operation], context: "#{context}[:operation]") unless input[:operation].nil?
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class UpdateBucketBundleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBucketBundleInput, context: context)
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
        Hearth::Validator.validate!(input[:bundle_id], ::String, context: "#{context}[:bundle_id]")
      end
    end

    class UpdateBucketBundleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBucketBundleOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class UpdateBucketInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBucketInput, context: context)
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
        AccessRules.validate!(input[:access_rules], context: "#{context}[:access_rules]") unless input[:access_rules].nil?
        Hearth::Validator.validate!(input[:versioning], ::String, context: "#{context}[:versioning]")
        PartnerIdList.validate!(input[:readonly_access_accounts], context: "#{context}[:readonly_access_accounts]") unless input[:readonly_access_accounts].nil?
        BucketAccessLogConfig.validate!(input[:access_log_config], context: "#{context}[:access_log_config]") unless input[:access_log_config].nil?
      end
    end

    class UpdateBucketOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBucketOutput, context: context)
        Bucket.validate!(input[:bucket], context: "#{context}[:bucket]") unless input[:bucket].nil?
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class UpdateContainerServiceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateContainerServiceInput, context: context)
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
        Hearth::Validator.validate!(input[:power], ::String, context: "#{context}[:power]")
        Hearth::Validator.validate!(input[:scale], ::Integer, context: "#{context}[:scale]")
        Hearth::Validator.validate!(input[:is_disabled], ::TrueClass, ::FalseClass, context: "#{context}[:is_disabled]")
        ContainerServicePublicDomains.validate!(input[:public_domain_names], context: "#{context}[:public_domain_names]") unless input[:public_domain_names].nil?
        PrivateRegistryAccessRequest.validate!(input[:private_registry_access], context: "#{context}[:private_registry_access]") unless input[:private_registry_access].nil?
      end
    end

    class UpdateContainerServiceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateContainerServiceOutput, context: context)
        ContainerService.validate!(input[:container_service], context: "#{context}[:container_service]") unless input[:container_service].nil?
      end
    end

    class UpdateDistributionBundleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDistributionBundleInput, context: context)
        Hearth::Validator.validate!(input[:distribution_name], ::String, context: "#{context}[:distribution_name]")
        Hearth::Validator.validate!(input[:bundle_id], ::String, context: "#{context}[:bundle_id]")
      end
    end

    class UpdateDistributionBundleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDistributionBundleOutput, context: context)
        Operation.validate!(input[:operation], context: "#{context}[:operation]") unless input[:operation].nil?
      end
    end

    class UpdateDistributionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDistributionInput, context: context)
        Hearth::Validator.validate!(input[:distribution_name], ::String, context: "#{context}[:distribution_name]")
        InputOrigin.validate!(input[:origin], context: "#{context}[:origin]") unless input[:origin].nil?
        CacheBehavior.validate!(input[:default_cache_behavior], context: "#{context}[:default_cache_behavior]") unless input[:default_cache_behavior].nil?
        CacheSettings.validate!(input[:cache_behavior_settings], context: "#{context}[:cache_behavior_settings]") unless input[:cache_behavior_settings].nil?
        CacheBehaviorList.validate!(input[:cache_behaviors], context: "#{context}[:cache_behaviors]") unless input[:cache_behaviors].nil?
        Hearth::Validator.validate!(input[:is_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:is_enabled]")
      end
    end

    class UpdateDistributionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDistributionOutput, context: context)
        Operation.validate!(input[:operation], context: "#{context}[:operation]") unless input[:operation].nil?
      end
    end

    class UpdateDomainEntryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDomainEntryInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        DomainEntry.validate!(input[:domain_entry], context: "#{context}[:domain_entry]") unless input[:domain_entry].nil?
      end
    end

    class UpdateDomainEntryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDomainEntryOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class UpdateLoadBalancerAttributeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateLoadBalancerAttributeInput, context: context)
        Hearth::Validator.validate!(input[:load_balancer_name], ::String, context: "#{context}[:load_balancer_name]")
        Hearth::Validator.validate!(input[:attribute_name], ::String, context: "#{context}[:attribute_name]")
        Hearth::Validator.validate!(input[:attribute_value], ::String, context: "#{context}[:attribute_value]")
      end
    end

    class UpdateLoadBalancerAttributeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateLoadBalancerAttributeOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class UpdateRelationalDatabaseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRelationalDatabaseInput, context: context)
        Hearth::Validator.validate!(input[:relational_database_name], ::String, context: "#{context}[:relational_database_name]")
        Hearth::Validator.validate!(input[:master_user_password], ::String, context: "#{context}[:master_user_password]")
        Hearth::Validator.validate!(input[:rotate_master_user_password], ::TrueClass, ::FalseClass, context: "#{context}[:rotate_master_user_password]")
        Hearth::Validator.validate!(input[:preferred_backup_window], ::String, context: "#{context}[:preferred_backup_window]")
        Hearth::Validator.validate!(input[:preferred_maintenance_window], ::String, context: "#{context}[:preferred_maintenance_window]")
        Hearth::Validator.validate!(input[:enable_backup_retention], ::TrueClass, ::FalseClass, context: "#{context}[:enable_backup_retention]")
        Hearth::Validator.validate!(input[:disable_backup_retention], ::TrueClass, ::FalseClass, context: "#{context}[:disable_backup_retention]")
        Hearth::Validator.validate!(input[:publicly_accessible], ::TrueClass, ::FalseClass, context: "#{context}[:publicly_accessible]")
        Hearth::Validator.validate!(input[:apply_immediately], ::TrueClass, ::FalseClass, context: "#{context}[:apply_immediately]")
        Hearth::Validator.validate!(input[:ca_certificate_identifier], ::String, context: "#{context}[:ca_certificate_identifier]")
      end
    end

    class UpdateRelationalDatabaseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRelationalDatabaseOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

    class UpdateRelationalDatabaseParametersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRelationalDatabaseParametersInput, context: context)
        Hearth::Validator.validate!(input[:relational_database_name], ::String, context: "#{context}[:relational_database_name]")
        RelationalDatabaseParameterList.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
      end
    end

    class UpdateRelationalDatabaseParametersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRelationalDatabaseParametersOutput, context: context)
        OperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
      end
    end

  end
end
